Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FF472C8C
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2019 12:47:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CBB2187E27;
	Wed, 24 Jul 2019 10:47:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ziiUecMnrsQb; Wed, 24 Jul 2019 10:47:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 26B2587C72;
	Wed, 24 Jul 2019 10:47:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 78FBA1BF59A
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 10:47:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 75F6587DA6
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 10:47:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dc82xoOmkDUO for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2019 10:47:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B5B0F87C72
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 10:47:45 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id x21so8908875otq.12
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 03:47:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=c/u6Ul6eSGfqr/SaYhCYPb/PuuVt6oryQFyHXq1Lw6M=;
 b=EK8m57GWsorqR6PN8Fc1QeDOA+iyhHouiH0L7g4Brjxe4bNV0GK1HJ++2mdbcK3QP2
 dzKo0BaHn/mLCoXfbgS+IopyHEHSt6xditsw2HDjZfPHCcqSyeP4MgJoUVKlAyjxkPHO
 9JPLKaHM9xp2FtoiB5CO//8r31Ju5aaAKVM5fSBkm3Y7/IRMVbRNMqkiALqwdvvZe3xT
 4TzTCIPeiLGVc2WpWx1XZTarUUqm4cGEtm1cU7JzrhD51J16YS4unIMTA07WwY+nwb9b
 N0/b6qi18o9lZcwJF0tKSUvE00WrZEMZarAsxD/ARIBL8ANiloNL4gxYOWB+jWJ0W6vG
 gSfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c/u6Ul6eSGfqr/SaYhCYPb/PuuVt6oryQFyHXq1Lw6M=;
 b=dzV39TrGyV8+UKyhGI5VHLS/wtV0CIw4IYf4wY0mWX3+OO2bWMe20lhbySoGFwBdv6
 FWAOCqkYCoWOgX/SzOA0gMHAa4cXGu8P1PC69IJTNh1sGnCewG/Jxq85tnu9Ffg+vPdM
 DcjlyqmdylZbfgiShs29H9QlLN2khmKo9NespTY+KtohD95Kkz4+Pzzb+y5XVQkCXrkb
 oWGrQllp53v4IvVZZNkIMXB3NtgzTTrB0UBv+xtxWkxOPWRs90+8SuUDr+dH99tWpb4+
 0Xoc8vYz3MLUJHUIVEjhCu7giNgteRfjhjn1iTVZ9RWlEYXxsg+cAWjM8ZrvIgchopxa
 2B+g==
X-Gm-Message-State: APjAAAUuzZV1bj8yzxuAy1ujs9dlMl9yD1IESRqGWSgnsqSlgL1qwM36
 L7XIQquRrux1ZclWkWCKZiWflUgh1mE0iqApXVo=
X-Google-Smtp-Source: APXvYqz9QA6BCf/a/Wq0ly9dhpDoTP4VWgL7lYOSAzAslHP6ajhVOITUuZlJh+mqz4Al7PbxDBDxMiZxoUsC6o+NTws=
X-Received: by 2002:a05:6830:157:: with SMTP id
 j23mr36863462otp.198.1563965264852; 
 Wed, 24 Jul 2019 03:47:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190723104602.3215243-1-arnd@arndb.de>
In-Reply-To: <20190723104602.3215243-1-arnd@arndb.de>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 24 Jul 2019 11:47:17 +0100
Message-ID: <CA+V-a8uVt5GD=XZuCubFf8ZFacxPLofUdU3HKNZsbU4aQr5X7w@mail.gmail.com>
Subject: Re: [PATCH] media: staging: davinci: remove vpfe driver
To: Arnd Bergmann <arnd@arndb.de>
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
Cc: OSUOSL Drivers <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sekhar Nori <nsekhar@ti.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 23, 2019 at 11:46 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> The davinci_vpfe driver was merged into staging back in 2012 by Manjunath
> Hadli from TI, with a long TODO list.
>
> For all I can tell, since then it has only seen fixes for compile-time
> issues and global cleanups, but nobody has actually worked on the items
> on the TODO list.
>
> To make things worse, the driver in its current form is incompatible with
> the platform code in arch/arm/mach-davinci, i.e. the driver expects to
> get its platform_data passed to the device as a 'struct vpfe_config',
> but uses a differnet definition for that structure compared to what the

s/differnet/different

> platform uses.
>
> Finally, there is another driver for the same device in
> drivers/media/platform/davinci/vpfe_capture.c. From all I can tell, the
> staging version was originally a copy of a more featureful driver in TI's
> downstream kernels. However, that kernel no longer supports dm365 after
> linux-2.6.37, and the mainline version moved in a different direction.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/staging/media/Kconfig                 |    2 -
>  drivers/staging/media/Makefile                |    1 -
>  drivers/staging/media/davinci_vpfe/Kconfig    |   13 -
>  drivers/staging/media/davinci_vpfe/Makefile   |   11 -
>  drivers/staging/media/davinci_vpfe/TODO       |   38 -
>  .../media/davinci_vpfe/davinci-vpfe-mc.txt    |  154 --
>  .../media/davinci_vpfe/davinci_vpfe_user.h    | 1287 ----------
>  .../staging/media/davinci_vpfe/dm365_ipipe.c  | 1852 ---------------
>  .../staging/media/davinci_vpfe/dm365_ipipe.h  |  174 --
>  .../media/davinci_vpfe/dm365_ipipe_hw.c       | 1038 --------
>  .../media/davinci_vpfe/dm365_ipipe_hw.h       |  556 -----
>  .../media/davinci_vpfe/dm365_ipipeif.c        | 1070 ---------
>  .../media/davinci_vpfe/dm365_ipipeif.h        |  228 --
>  .../media/davinci_vpfe/dm365_ipipeif_user.h   |   90 -
>  .../staging/media/davinci_vpfe/dm365_isif.c   | 2097 -----------------
>  .../staging/media/davinci_vpfe/dm365_isif.h   |  200 --
>  .../media/davinci_vpfe/dm365_isif_regs.h      |  291 ---
>  .../media/davinci_vpfe/dm365_resizer.c        | 1995 ----------------
>  .../media/davinci_vpfe/dm365_resizer.h        |  241 --
>  drivers/staging/media/davinci_vpfe/vpfe.h     |   83 -
>  .../media/davinci_vpfe/vpfe_mc_capture.c      |  716 ------
>  .../media/davinci_vpfe/vpfe_mc_capture.h      |   90 -
>  .../staging/media/davinci_vpfe/vpfe_video.c   | 1646 -------------
>  .../staging/media/davinci_vpfe/vpfe_video.h   |  150 --
>  24 files changed, 14023 deletions(-)
>  delete mode 100644 drivers/staging/media/davinci_vpfe/Kconfig
>  delete mode 100644 drivers/staging/media/davinci_vpfe/Makefile
>  delete mode 100644 drivers/staging/media/davinci_vpfe/TODO
>  delete mode 100644 drivers/staging/media/davinci_vpfe/davinci-vpfe-mc.txt
>  delete mode 100644 drivers/staging/media/davinci_vpfe/davinci_vpfe_user.h
>  delete mode 100644 drivers/staging/media/davinci_vpfe/dm365_ipipe.c
>  delete mode 100644 drivers/staging/media/davinci_vpfe/dm365_ipipe.h
>  delete mode 100644 drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.c
>  delete mode 100644 drivers/staging/media/davinci_vpfe/dm365_ipipe_hw.h
>  delete mode 100644 drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
>  delete mode 100644 drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
>  delete mode 100644 drivers/staging/media/davinci_vpfe/dm365_ipipeif_user.h
>  delete mode 100644 drivers/staging/media/davinci_vpfe/dm365_isif.c
>  delete mode 100644 drivers/staging/media/davinci_vpfe/dm365_isif.h
>  delete mode 100644 drivers/staging/media/davinci_vpfe/dm365_isif_regs.h
>  delete mode 100644 drivers/staging/media/davinci_vpfe/dm365_resizer.c
>  delete mode 100644 drivers/staging/media/davinci_vpfe/dm365_resizer.h
>  delete mode 100644 drivers/staging/media/davinci_vpfe/vpfe.h
>  delete mode 100644 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
>  delete mode 100644 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.h
>  delete mode 100644 drivers/staging/media/davinci_vpfe/vpfe_video.c
>  delete mode 100644 drivers/staging/media/davinci_vpfe/vpfe_video.h
>

Acked-by: Lad, Prabhakar <prabhakar.csengg@gmail.com>

Regards,
--Prabhakar Lad
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
