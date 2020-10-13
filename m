Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F9D28D533
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Oct 2020 22:08:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0825F2E1A7;
	Tue, 13 Oct 2020 20:08:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y+g3+C2Wk9d7; Tue, 13 Oct 2020 20:08:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ECAE12E197;
	Tue, 13 Oct 2020 20:08:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C05781BF422
 for <devel@linuxdriverproject.org>; Tue, 13 Oct 2020 20:08:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B27002E191
 for <devel@linuxdriverproject.org>; Tue, 13 Oct 2020 20:08:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WjEF8T10Daul for <devel@linuxdriverproject.org>;
 Tue, 13 Oct 2020 20:08:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id 7D1322E18C
 for <devel@driverdev.osuosl.org>; Tue, 13 Oct 2020 20:08:28 +0000 (UTC)
Received: from ip5f5af0a0.dynamic.kabel-deutschland.de ([95.90.240.160]
 helo=wittgenstein) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1kSQau-0000ZR-Ht; Tue, 13 Oct 2020 20:08:24 +0000
Date: Tue, 13 Oct 2020 22:08:23 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Todd Kjos <tkjos@google.com>
Subject: Re: [PATCH] binder: fix UAF when releasing todo list
Message-ID: <20201013200823.mxu7g6zsogmfjon4@wittgenstein>
References: <20201009232455.4054810-1-tkjos@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201009232455.4054810-1-tkjos@google.com>
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, arve@android.com, maco@google.com,
 joel@joelfernandes.org, kernel-team@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 09, 2020 at 04:24:55PM -0700, Todd Kjos wrote:
> When releasing a thread todo list when tearing down
> a binder_proc, the following race was possible which
> could result in a use-after-free:
> 
> 1.  Thread 1: enter binder_release_work from binder_thread_release
> 2.  Thread 2: binder_update_ref_for_handle() -> binder_dec_node_ilocked()
> 3.  Thread 2: dec nodeA --> 0 (will free node)
> 4.  Thread 1: ACQ inner_proc_lock
> 5.  Thread 2: block on inner_proc_lock
> 6.  Thread 1: dequeue work (BINDER_WORK_NODE, part of nodeA)
> 7.  Thread 1: REL inner_proc_lock
> 8.  Thread 2: ACQ inner_proc_lock
> 9.  Thread 2: todo list cleanup, but work was already dequeued
> 10. Thread 2: free node
> 11. Thread 2: REL inner_proc_lock
> 12. Thread 1: deref w->type (UAF)
> 
> The problem was that for a BINDER_WORK_NODE, the binder_work element
> must not be accessed after releasing the inner_proc_lock while
> processing the todo list elements since another thread might be
> handling a deref on the node containing the binder_work element
> leading to the node being freed.
> 
> Signed-off-by: Todd Kjos <tkjos@google.com>
> ---

Thanks!
Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
