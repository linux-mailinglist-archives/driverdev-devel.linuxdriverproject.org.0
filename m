Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C3EEA4227DF
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Oct 2021 15:31:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 25B8060B76;
	Tue,  5 Oct 2021 13:31:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dGON3JJZ1XTy; Tue,  5 Oct 2021 13:31:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76A4360B74;
	Tue,  5 Oct 2021 13:31:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E5F91BF2A5
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 13:31:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8DBF383CBC
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 13:31:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m3ASFuheiUix for <devel@linuxdriverproject.org>;
 Tue,  5 Oct 2021 13:31:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 86B3583C36
 for <devel@driverdev.osuosl.org>; Tue,  5 Oct 2021 13:31:03 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A1BBA61401;
 Tue,  5 Oct 2021 13:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1633440663;
 bh=fGNf6lFeNsKzE8dzg3ltef34M0dC0Pd10/yR6RlZFFU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=C4p+2jhEnb9QTBRus6fMLknmLkI38NEKt2yByvrsNiCUNH08YlVW5pstXr8CFLe/v
 qMAE/705Qs9RDN0P5G5BxbUt+dYHQF+FsSixW1Da/0AFM0ndmFjVF0+zf/tuMa3OMz
 JcE6MJgWVJma8Orz7xXBkgzJLuzmxs84Ps8xyWuc=
Date: Tue, 5 Oct 2021 15:31:00 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Todd Kjos <tkjos@google.com>
Subject: Re: [PATCH v2] binder: use cred instead of task for selinux checks
Message-ID: <YVxTlBMSWBkLgSi9@kroah.com>
References: <20211001175521.3853257-1-tkjos@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211001175521.3853257-1-tkjos@google.com>
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
Cc: devel@driverdev.osuosl.org, linux-security-module@vger.kernel.org,
 kernel-team@android.com, tkjos@android.com, paul@paul-moore.com,
 keescook@chromium.org, jannh@google.com, selinux@vger.kernel.org,
 jeffv@google.com, stephen.smalley.work@gmail.com, jmorris@namei.org,
 zohar@linux.ibm.com, linux-kernel@vger.kernel.org, arve@android.com,
 stable@vger.kernel.org, joel@joelfernandes.org, eparis@parisplace.org,
 maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 01, 2021 at 10:55:21AM -0700, Todd Kjos wrote:
> Save the struct cred associated with a binder process
> at initial open to avoid potential race conditions
> when converting to a security ID.
> 
> Since binder was integrated with selinux, it has passed
> 'struct task_struct' associated with the binder_proc
> to represent the source and target of transactions.
> The conversion of task to SID was then done in the hook
> implementations. It turns out that there are race conditions
> which can result in an incorrect security context being used.
> 
> Fix by saving the 'struct cred' during binder_open and pass
> it to the selinux subsystem.
> 
> Fixes: 79af73079d75 ("Add security hooks to binder and implement the
> hooks for SELinux.")
> Signed-off-by: Todd Kjos <tkjos@google.com>
> Cc: stable@vger.kernel.org # 5.14+ (need backport for earlier stables)
> ---
> v2: updated comments as suggested by Paul Moore
> 
>  drivers/android/binder.c          | 14 +++++----
>  drivers/android/binder_internal.h |  4 +++
>  include/linux/lsm_hook_defs.h     | 14 ++++-----
>  include/linux/lsm_hooks.h         | 14 ++++-----
>  include/linux/security.h          | 28 +++++++++---------
>  security/security.c               | 14 ++++-----
>  security/selinux/hooks.c          | 48 +++++++++----------------------
>  7 files changed, 60 insertions(+), 76 deletions(-)

Ideally I could get an ack from the security developers before taking
this in my tree...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
