Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C09F33F7B9
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 19:01:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F291F4ECD6;
	Wed, 17 Mar 2021 18:01:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nLSxt2nBkxqI; Wed, 17 Mar 2021 18:01:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A66AD4EC8C;
	Wed, 17 Mar 2021 18:01:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 043811BF9AD
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 18:00:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 008CE4303A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 18:00:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j6yXpdn1-aVV for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 18:00:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 44F6D4150B
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 18:00:54 +0000 (UTC)
Received: from ip5f5af0a0.dynamic.kabel-deutschland.de ([95.90.240.160]
 helo=wittgenstein) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1lMaTS-0001oJ-Bj; Wed, 17 Mar 2021 18:00:50 +0000
Date: Wed, 17 Mar 2021 19:00:48 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Li Li <dualli@chromium.org>
Subject: Re: [PATCH v3 0/3] Binder: Enable App Freezing Capability
Message-ID: <20210317180048.inzdursqmnvxkgwp@wittgenstein>
References: <20210316011630.1121213-1-dualli@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210316011630.1121213-1-dualli@chromium.org>
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
Cc: dualli@google.com, devel@driverdev.osuosl.org, kernel-team@android.com,
 jannh@google.com, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 joel@joelfernandes.org, arve@android.com, maco@google.com, hridya@google.com,
 surenb@google.com, christian@brauner.io, tkjos@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 15, 2021 at 06:16:27PM -0700, Li Li wrote:
> From: Li Li <dualli@google.com>
> 
> To improve the user experience when switching between recently used
> applications, the background applications which are not currently needed
> are cached in the memory. Normally, a well designed application will not
> consume valuable CPU resources in the background. However, it's possible
> some applications are not able or willing to behave as expected, wasting
> energy even after being cached.
> 
> It is a good idea to freeze those applications when they're only being
> kept alive for the sake of faster startup and energy saving. These kernel
> patches will provide the necessary infrastructure for user space framework
> to freeze and thaw a cached process, check the current freezing status and
> correctly deal with outstanding binder transactions to frozen processes.
> 
> Changes in v2: avoid panic by using pr_warn for unexpected cases.
> Changes in v3: improved errcode logic in binder_proc_transaction().
> 
> Marco Ballesio (3):
>   binder: BINDER_FREEZE ioctl
>   binder: use EINTR for interrupted wait for work
>   binder: BINDER_GET_FROZEN_INFO ioctl
> 
>  drivers/android/binder.c            | 198 ++++++++++++++++++++++++++--
>  drivers/android/binder_internal.h   |  18 +++
>  include/uapi/linux/android/binder.h |  20 +++
>  3 files changed, 224 insertions(+), 12 deletions(-)

[+Cc Jann]

Christian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
