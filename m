Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7674943163B
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Oct 2021 12:35:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3193404B2;
	Mon, 18 Oct 2021 10:35:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z-1HG0FsybkL; Mon, 18 Oct 2021 10:35:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD8DE40477;
	Mon, 18 Oct 2021 10:35:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3AECD1BF3D4
 for <devel@linuxdriverproject.org>; Mon, 18 Oct 2021 10:35:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2A0DF6069C
 for <devel@linuxdriverproject.org>; Mon, 18 Oct 2021 10:35:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iN346nJBDNky for <devel@linuxdriverproject.org>;
 Mon, 18 Oct 2021 10:35:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8705A60585
 for <devel@driverdev.osuosl.org>; Mon, 18 Oct 2021 10:35:29 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 33C6B6103B;
 Mon, 18 Oct 2021 10:35:26 +0000 (UTC)
Date: Mon, 18 Oct 2021 12:35:23 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Todd Kjos <tkjos@google.com>
Subject: Re: [PATCH] binder: don't detect sender/target during buffer cleanup
Message-ID: <20211018103523.dn5rnrefulhd2gzc@wittgenstein>
References: <20211015233811.3532235-1-tkjos@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211015233811.3532235-1-tkjos@google.com>
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
Cc: devel@driverdev.osuosl.org, jannh@google.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, arve@android.com, maco@google.com,
 joel@joelfernandes.org, kernel-team@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 15, 2021 at 04:38:11PM -0700, Todd Kjos wrote:
> When freeing txn buffers, binder_transaction_buffer_release()
> attempts to detect whether the current context is the target by
> comparing current->group_leader to proc->tsk. This is an unreliable
> test. Instead explicitly pass an 'is_failure' boolean.
> 
> Detecting the sender was being used as a way to tell if the
> transaction failed to be sent.  When cleaning up after
> failing to send a transaction, there is no need to close
> the fds associated with a BINDER_TYPE_FDA object. Now
> 'is_failure' can be used to accurately detect this case.
> 
> Fixes: 44d8047f1d87 ("binder: use standard functions to allocate fds")
> Signed-off-by: Todd Kjos <tkjos@google.com>
> ---

Looks good to me.
Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
