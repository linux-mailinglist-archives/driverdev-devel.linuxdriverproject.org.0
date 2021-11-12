Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BF944EB2C
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Nov 2021 17:14:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6A28561510;
	Fri, 12 Nov 2021 16:14:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HyKC_CJI7vte; Fri, 12 Nov 2021 16:14:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BEF8E60BA1;
	Fri, 12 Nov 2021 16:14:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EA5861BF3BF
 for <devel@linuxdriverproject.org>; Fri, 12 Nov 2021 16:14:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D9D3F4032D
 for <devel@linuxdriverproject.org>; Fri, 12 Nov 2021 16:14:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GkhH8IgRSfjS for <devel@linuxdriverproject.org>;
 Fri, 12 Nov 2021 16:14:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 69B0D40327
 for <devel@driverdev.osuosl.org>; Fri, 12 Nov 2021 16:14:25 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7D17E60FBF;
 Fri, 12 Nov 2021 16:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1636733665;
 bh=RIhgLGlbVI/EfLApHCgYj3d81dxiL3rZzeCX2oxIf/M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Dvo6f03ZNLw//eKjAx5yBs1egP7X2+gTihASGhw+uL+cytvxlur79wluED84elvF1
 MKMja8fpMwF0k3pIbcYIrOncDbTtkbdisnCXhGG15sLiQ8fMUInTQR+9MUoCOaN0l2
 UWZsZDNGXCJwg95EBBsMUIsRpev2FGM88Wrsu2EY=
Date: Fri, 12 Nov 2021 17:14:22 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Todd Kjos <tkjos@google.com>
Subject: Re: [PATCH 4.4 2/2] binder: use cred instead of task for selinux
 checks
Message-ID: <YY6S3uN478Mk6+Y1@kroah.com>
References: <20211110225910.3268106-1-tkjos@google.com>
 <20211110225910.3268106-2-tkjos@google.com>
 <YY6SOlQicRp1/BZF@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YY6SOlQicRp1/BZF@kroah.com>
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
 stable@vger.kernel.org, Casey Schaufler <casey@schaufler-ca.com>,
 arve@android.com, zohar@linux.ibm.com, joel@joelfernandes.org,
 eparis@parisplace.org, maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 12, 2021 at 05:11:38PM +0100, Greg KH wrote:
> On Wed, Nov 10, 2021 at 02:59:10PM -0800, Todd Kjos wrote:
> > commit 52f88693378a58094c538662ba652aff0253c4fe upstream.
> > 
> > Since binder was integrated with selinux, it has passed
> > 'struct task_struct' associated with the binder_proc
> > to represent the source and target of transactions.
> > The conversion of task to SID was then done in the hook
> > implementations. It turns out that there are race conditions
> > which can result in an incorrect security context being used.
> > 
> > Fix by using the 'struct cred' saved during binder_open and pass
> > it to the selinux subsystem.
> > 
> > Cc: stable@vger.kernel.org # 5.14 (need backport for earlier stables)
> > Fixes: 79af73079d75 ("Add security hooks to binder and implement the hooks for SELinux.")
> > Suggested-by: Jann Horn <jannh@google.com>
> > Signed-off-by: Todd Kjos <tkjos@google.com>
> > Acked-by: Casey Schaufler <casey@schaufler-ca.com>
> > Signed-off-by: Paul Moore <paul@paul-moore.com>
> > Change-Id: Id7157515d2b08f11683aeb8ad9b8f1da075d34e7
> > ---
> >  drivers/android/binder.c  | 18 +++++++++---------
> >  include/linux/lsm_hooks.h | 32 ++++++++++++++++----------------
> >  include/linux/security.h  | 28 ++++++++++++++--------------
> >  security/security.c       | 14 +++++++-------
> >  security/selinux/hooks.c  | 31 +++++++++++++------------------
> >  5 files changed, 59 insertions(+), 64 deletions(-)
> 
> This doesn't apply at all.  I've applied patch 1/2 here, but can you
> redo this one and submit it again?

Ugh, nope, my fault, sorry, this worked just fine.

It's been a long day...

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
