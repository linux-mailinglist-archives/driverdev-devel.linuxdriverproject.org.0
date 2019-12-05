Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CF91146F9
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Dec 2019 19:37:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CA86B874D4;
	Thu,  5 Dec 2019 18:37:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2PImwsdDouV2; Thu,  5 Dec 2019 18:37:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5BBA4874AE;
	Thu,  5 Dec 2019 18:36:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EC9DA1BF477
 for <devel@linuxdriverproject.org>; Thu,  5 Dec 2019 18:36:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E956788C19
 for <devel@linuxdriverproject.org>; Thu,  5 Dec 2019 18:36:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PUcik7ptZOOh for <devel@linuxdriverproject.org>;
 Thu,  5 Dec 2019 18:36:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4F16888AEE
 for <devel@driverdev.osuosl.org>; Thu,  5 Dec 2019 18:36:56 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id b19so2018749pfo.2
 for <devel@driverdev.osuosl.org>; Thu, 05 Dec 2019 10:36:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HI4uYxR0J9DMTnkRmLhO8esoltr/E7e+IU0bpfvbumQ=;
 b=nyVc4+A6dtfKp5EmT95300EFmgP7gQevt7DIkRtreep8yQoK/jQBq0+L1A8HZcKZ78
 QRG4IEHOi5aWaS9lsMHV3GbAXZvJY9MLXnMEU2+6QavOQp2OWJtwa0Pptfl/0G0nbPkw
 A5dUqhKJX//j7CfYxhguSqmpkWUuFJAlgYvl2k1OPeRVuccYRDkHm0XCLbug23jNOZYQ
 kpWBQ8JOOQJhPXc1gquKDxEtatESK9i0Vp0slDyquhiYpOXg3sgBWReeMYPFhzJliLh4
 H8zfIHq/o+wPO7DaGs5h/6XozND/CQUe62mautLmZCoa0sUQddpX0fFXfl5n+jLXrjsl
 UIeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HI4uYxR0J9DMTnkRmLhO8esoltr/E7e+IU0bpfvbumQ=;
 b=Z8G7vSCYmiYhruy4HYu9I6GxzmFRrOMLFqmSHgHYohOg7rbdCYvvaBg1CtCf1DTDaL
 UyzJHYAcnuIh16/iD5rHGGuNVdDwVPpA/DKlLVo8tjhyHMxSTKA6+5LHbl/OT1xvxSSj
 4uqVMUESWOnNuxwmEE0H/Rn79iO3fcQa4AvAnxQb892a5YgYjFVCOxR98AeUS073Yu4G
 SZhnPHnLaBXirnfW46iuZQoD63D9ksVCtO88+KIavyJV+n7tFlMRV2S1C5WIG75tDzjI
 aJjQ7GPQJ3jks+Jnp+BWKyS5CYeACheL/etvs68amnexEb41Eo8wfvsbXw9p3+yLLp6a
 CwYQ==
X-Gm-Message-State: APjAAAWgiYfTfxaxKrDquLwtML3V4AnhZrKlVShBgbPNpBeiJiShhedH
 +hyTa0wNX/N6MFT/L46Ofl5pha8CkuzRWuph7Xrjyw==
X-Google-Smtp-Source: APXvYqwT7ShzxGreCEuYPGEZxiVNpcROPBYQcRibsPumhz7L933fr9ODqh2A0iIKt0qHZJKolpaaSUV3b12srJ+FST0=
X-Received: by 2002:aa7:961b:: with SMTP id q27mr10426991pfg.23.1575570671690; 
 Thu, 05 Dec 2019 10:31:11 -0800 (PST)
MIME-Version: 1.0
References: <20191204234522.42855-1-brendanhiggins@google.com>
 <CABVgOSn7tTYuMZ8ArA3fRWp4aeKAcKJ3qNL+SgtFt5fkBLnc-A@mail.gmail.com>
In-Reply-To: <CABVgOSn7tTYuMZ8ArA3fRWp4aeKAcKJ3qNL+SgtFt5fkBLnc-A@mail.gmail.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 5 Dec 2019 10:31:00 -0800
Message-ID: <CAFd5g446ippuyNN5ej0hEiz1Rv9hqpke55pE0en15U=gG3zX0A@mail.gmail.com>
Subject: Re: [PATCH v1] staging: exfat: fix multiple definition error of
 `rename_file'
To: David Gow <davidgow@google.com>
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
Cc: linux-fsdevel <linux-fsdevel@vger.kernel.org>, devel@driverdev.osuosl.org,
 valdis.kletnieks@vt.edu,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Dec 5, 2019 at 9:51 AM David Gow <davidgow@google.com> wrote:
>
> On Wed, Dec 4, 2019 at 3:46 PM Brendan Higgins
> <brendanhiggins@google.com> wrote:
> >
> > `rename_file' was exported but not properly namespaced causing a
> > multiple definition error because `rename_file' is already defined in
> > fs/hostfs/hostfs_user.c:
> >
> > ld: drivers/staging/exfat/exfat_core.o: in function `rename_file':
> > drivers/staging/exfat/exfat_core.c:2327: multiple definition of
> > `rename_file'; fs/hostfs/hostfs_user.o:fs/hostfs/hostfs_user.c:350:
> > first defined here
> > make: *** [Makefile:1077: vmlinux] Error 1
> >
> > This error can be reproduced on ARCH=um by selecting:
> >
> > CONFIG_EXFAT_FS=y
> > CONFIG_HOSTFS=y
> >
> > Add a namespace prefix exfat_* to fix this error.
> >
> > Reported-by: Brendan Higgins <brendanhiggins@google.com>
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > Cc: Valdis Kletnieks <valdis.kletnieks@vt.edu>
> > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>
> Tested-by: David Gow <davidgow@google.com>
> Reviewed-by: David Gow <davidgow@google.com>
>
> This works for me: I was able to reproduce the compile error without
> this patch, and successfully compile a UML kernel and mount an exfat
> fs after applying it.
>
> > ---
> >  drivers/staging/exfat/exfat.h       | 4 ++--
> >  drivers/staging/exfat/exfat_core.c  | 4 ++--
> >  drivers/staging/exfat/exfat_super.c | 4 ++--
> >  3 files changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
> > index 2aac1e000977e..51c665a924b76 100644
> > --- a/drivers/staging/exfat/exfat.h
> > +++ b/drivers/staging/exfat/exfat.h
> > @@ -805,8 +805,8 @@ s32 create_dir(struct inode *inode, struct chain_t *p_dir,
> >  s32 create_file(struct inode *inode, struct chain_t *p_dir,
> >                 struct uni_name_t *p_uniname, u8 mode, struct file_id_t *fid);
> >  void remove_file(struct inode *inode, struct chain_t *p_dir, s32 entry);
> > -s32 rename_file(struct inode *inode, struct chain_t *p_dir, s32 old_entry,
> > -               struct uni_name_t *p_uniname, struct file_id_t *fid);
> > +s32 exfat_rename_file(struct inode *inode, struct chain_t *p_dir, s32 old_entry,
> > +                     struct uni_name_t *p_uniname, struct file_id_t *fid);
> >  s32 move_file(struct inode *inode, struct chain_t *p_olddir, s32 oldentry,
> >               struct chain_t *p_newdir, struct uni_name_t *p_uniname,
> >               struct file_id_t *fid);
>
> It seems a bit ugly to add the exfat_ prefix to just rename_file,
> rather than all of the above functions (e.g., create_dir, remove_file,
> etc). It doesn't look like any of the others are causing any issues
> though (while, for example, there is another remove_file in
> drivers/infiniband/hw/qib/qib_fs.c, it's static, so shouldn't be a
> problem).

Agreed; however, given that this is a fix, I didn't want to overreach
in the scope of this change since I want to make sure it gets accepted
in 5.5 and it probably won't make it in the merge window. I also
figured that, since this is in staging, this might be one of the
things that needs to happen before being promoted out of staging.

Nevertheless, I don't mind going through and adding the namespace
prefix to the other non-static functions if that's what Valdis and
Greg want.

Thanks!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
