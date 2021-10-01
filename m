Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B09EB41EFE9
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 16:45:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DAA20401FA;
	Fri,  1 Oct 2021 14:45:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pdiHSIA5P7rn; Fri,  1 Oct 2021 14:45:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D22A5400C1;
	Fri,  1 Oct 2021 14:45:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A1D51BF424
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 14:45:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 78C714029B
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 14:45:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S55gVBNEmRv3 for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 14:45:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com
 [IPv6:2a00:1450:4864:20::536])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6D07C40278
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 14:45:05 +0000 (UTC)
Received: by mail-ed1-x536.google.com with SMTP id g8so35836893edt.7
 for <devel@driverdev.osuosl.org>; Fri, 01 Oct 2021 07:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/H4joMu0i9PRc5y/5IfyO1O3DFiCiHeAFXYOy9MybLU=;
 b=Sqtq3HVEmFqyq/iZGy3bAUBBvoIIgqDCQe03hPij1pHQ+afGQ+qW4oxzfc6+IQYFAk
 8sdQMlTfSDwM/Vdd1CJBkNXlYzqUIs7kjIrH/2t+zg3ttq27VO3sQ43AlcBfvpXxKTvl
 LJ3PlZ6m4VGH2MQRjDVCng2EuhT9h0wVEaeNU4baqn2jFjdOfQHFiF2yKOb9Jj/nE2WT
 +c/MWFqDTQ0Mz7EPjLT8UhMOzISMjhG8DhpniuDVQDNev5vXymJFaLiemoBg6FM8YkNB
 qKOz2aScbgR3tKjPuAU54oJVPgg5Bzspd8vBSSjyF4fyOuUspQHrydXkPUbbOutVmVuA
 y+2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/H4joMu0i9PRc5y/5IfyO1O3DFiCiHeAFXYOy9MybLU=;
 b=gREHMSSHyrbmBS/rjo23tIkG4rE1Ndut8D3OuzMif7qgmVKzzlvtISAlIP6/Fgf4yq
 wdQI6cRzidDtDltatfMBFWl00kFa0ZOTQQujzqXZNJyalN6B5/5poKC/cT2JvvLPM2DC
 f3TH1mfVC51bQKDyLipvBw+34xHBmZmYQz3jBdqz58/2Mo7/3iApctf91mtwsSmwOM2Y
 aII20WvdXVtgYer+wBLgz5XbXHtPmQyEv5CZkdJolcoEE/Xyyr3PrBEuDfIED6+am+iu
 rbdxjkK5J29veZfzUEyGKSHJPQ8IiWvslwuj+YqbxOCPUA1OciYN3YtJxMuC3cy9q9u6
 P62g==
X-Gm-Message-State: AOAM533hbudBbuXDC35pWjBpqNy4lDdFR/hKiL0gjqWJUNXpH0JS5CeM
 2QdzU5qLkZvmILbUTP1/E54UDq6pEYb9CHPEPo+v
X-Google-Smtp-Source: ABdhPJzS4Iw/cDlHH6KS55tisJ+ktQs+SukEzIuiCOuC5dk2GUdyTS52lv4qmMGUFGDGNBh9PabWSBxWmsNBGr46Xdw=
X-Received: by 2002:a50:9b06:: with SMTP id o6mr14719691edi.284.1633099502606; 
 Fri, 01 Oct 2021 07:45:02 -0700 (PDT)
MIME-Version: 1.0
References: <20211001024506.3762647-1-tkjos@google.com>
 <CAHC9VhQ-uziaYRYWaah=RMmz7HUVvxGs+4F=g2sizVXR0ZSWVw@mail.gmail.com>
In-Reply-To: <CAHC9VhQ-uziaYRYWaah=RMmz7HUVvxGs+4F=g2sizVXR0ZSWVw@mail.gmail.com>
From: Paul Moore <paul@paul-moore.com>
Date: Fri, 1 Oct 2021 10:44:51 -0400
Message-ID: <CAHC9VhSet40x697Of5GJhpuWo-AH4TzEu_SgfBDMmANSzByQEw@mail.gmail.com>
Subject: Re: [PATCH] binder: use cred instead of task for selinux checks
To: Todd Kjos <tkjos@google.com>
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
 kernel-team@android.com, tkjos@android.com, keescook@chromium.org,
 jannh@google.com, selinux@vger.kernel.org, gregkh@linuxfoundation.org,
 Stephen Smalley <stephen.smalley.work@gmail.com>,
 James Morris <jmorris@namei.org>, zohar@linux.ibm.com,
 linux-kernel@vger.kernel.org, arve@android.com, stable@vger.kernel.org,
 Jeffrey Vander Stoep <jeffv@google.com>, joel@joelfernandes.org,
 Eric Paris <eparis@parisplace.org>, maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 1, 2021 at 10:38 AM Paul Moore <paul@paul-moore.com> wrote:
> On Thu, Sep 30, 2021 at 10:45 PM Todd Kjos <tkjos@google.com> wrote:
> >
> > Save the struct cred associated with a binder process
> > at initial open to avoid potential race conditions
> > when converting to a security ID.
> >
> > Since binder was integrated with selinux, it has passed
> > 'struct task_struct' associated with the binder_proc
> > to represent the source and target of transactions.
> > The conversion of task to SID was then done in the hook
> > implementations. It turns out that there are race conditions
> > which can result in an incorrect security context being used.
> >
> > Fix by saving the 'struct cred' during binder_open and pass
> > it to the selinux subsystem.
> >
> > Fixes: 79af73079d75 ("Add security hooks to binder and implement the
> > hooks for SELinux.")
> > Signed-off-by: Todd Kjos <tkjos@google.com>
> > Cc: stable@vger.kernel.org # 5.14 (need backport for earlier stables)
> > ---
> >  drivers/android/binder.c          | 14 +++++----
> >  drivers/android/binder_internal.h |  3 ++
> >  include/linux/lsm_hook_defs.h     | 14 ++++-----
> >  include/linux/security.h          | 28 +++++++++---------
> >  security/security.c               | 14 ++++-----
> >  security/selinux/hooks.c          | 48 +++++++++----------------------
> >  6 files changed, 52 insertions(+), 69 deletions(-)
>
> Thanks Todd, I'm happy to see someone with a better understanding of
> binder than me pitch in to clean this up :)  A couple of quick
> comments/questions below ...

Ooops, I was a little over zealous when trimming my response and I
accidentally cut off my comment that the associated comment blocks in
include/linux/lsm_hooks.h should also be updated to reflect the binder
LSM hook changes.

-- 
paul moore
www.paul-moore.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
