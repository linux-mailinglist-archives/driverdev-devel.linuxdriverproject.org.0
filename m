Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8109EDD8EB
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Oct 2019 16:07:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1AE1821574;
	Sat, 19 Oct 2019 14:07:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O7uugASfZoqI; Sat, 19 Oct 2019 14:07:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0023E2155B;
	Sat, 19 Oct 2019 14:07:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 543CB1BF334
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 14:07:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 40CAF85727
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 14:07:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZbyO2URECZEZ for <devel@linuxdriverproject.org>;
 Sat, 19 Oct 2019 14:07:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4F2758557B
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 14:07:06 +0000 (UTC)
Received: from [213.220.153.21] (helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1iLpNn-0002CR-Jd; Sat, 19 Oct 2019 14:07:03 +0000
In-Reply-To: <20191018205631.248274-2-jannh@google.com>
Date: Sat, 19 Oct 2019 16:07:02 +0200
Subject: Re: [PATCH 2/3] binder: Prevent repeated use of ->mmap() via NULL
 mapping
To: "Jann Horn" <jannh@google.com>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, =?utf-8?q?Arve_Hj=C3=B8nnev=C3=A5g?=
 <arve@android.com>, "Todd Kjos" <tkjos@android.com>, "Martijn Coenen"
 <maco@android.com>, "Joel Fernandes" <joel@joelfernandes.org>, "Christian
 Brauner" <christian@brauner.io>, <jannh@google.com>
From: "Christian Brauner" <christian.brauner@ubuntu.com>
Message-Id: <BXTK4ZPTAH1J.TZS34Z5LVHR9@wittgenstein>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri Oct 18, 2019 at 10:56 PM Jann Horn wrote:
> binder_alloc_mmap_handler() attempts to detect the use of ->mmap() on a
> binder_proc whose binder_alloc has already been initialized by checking
> whether alloc->buffer is non-zero.
> 
> Before commit 880211667b20 ("binder: remove kernel vm_area for buffer
> space"), alloc->buffer was a kernel mapping address, which is always
> non-zero, but since that commit, it is a userspace mapping address.
> 
> A sufficiently privileged user can map /dev/binder at NULL, tricking
> binder_alloc_mmap_handler() into assuming that the binder_proc has not been
> mapped yet. This leads to memory unsafety.
> Luckily, no context on Android has such privileges, and on a typical Linux
> desktop system, you need to be root to do that.
> 
> Fix it by using the mapping size instead of the mapping address to
> distinguish the mapped case. A valid VMA can't have size zero.
> 
> Fixes: 880211667b20 ("binder: remove kernel vm_area for buffer space")
> Cc: stable@vger.kernel.org
> Signed-off-by: Jann Horn <jannh@google.com>

Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
