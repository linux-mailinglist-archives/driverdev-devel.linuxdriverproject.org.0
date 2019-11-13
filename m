Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CBAFB93A
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Nov 2019 20:57:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 702C488503;
	Wed, 13 Nov 2019 19:57:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M7tnw0T2Jk4C; Wed, 13 Nov 2019 19:57:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4E831884EB;
	Wed, 13 Nov 2019 19:57:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 088131BF41D
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 19:57:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F36A5884D9
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 19:57:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y4Bc7Gbn6o7r for <devel@linuxdriverproject.org>;
 Wed, 13 Nov 2019 19:57:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 472C4884DB
 for <devel@driverdev.osuosl.org>; Wed, 13 Nov 2019 19:57:08 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id h27so2043115pgn.0
 for <devel@driverdev.osuosl.org>; Wed, 13 Nov 2019 11:57:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Jg8cz0y37PGedisjI6oZVlv6zSbjyEWbAD1JRgl8Rwc=;
 b=l3P8EdSp5zUkFVa/mKha8mCCt25EXgbAEmZuTkjOqnHhzjXKBik3B9g2dBKZNj8WWR
 CfO2ixua5HkdM6T5iuGof39AX/Cw8b0zlQ3PZzvwnwq9cbeXQjbc/XIH8NCwwDBqd0HK
 qFtZD4GUGDKGS8VRZ+s1XmdlhHmwtR0karVrbEjG3Kgi0/vC+Vet2or9pOh99aPKinoj
 1qNn66PXO8oSzyhW2nkkQMxm5sWHJKEgQ9G3ojEnXVV5RyEZvGd1kb/1K/rz1+PO1Spn
 1HL8+xkHMjceDdr37QFmkKgpyNq3kxG+u4bKSjVN8XLe71eBNoXzJ6bEUAZLhwpSRJUo
 Tyjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Jg8cz0y37PGedisjI6oZVlv6zSbjyEWbAD1JRgl8Rwc=;
 b=pbl19JxXkWGXBaLAGDRnZl8BfLuJwIRelyxJLws7tkOGuYAKfZiqYNOJNUPU04X1XT
 aOo/0Rl3Tsak9nWkeEt7VLr4nOwiwGaZj7jNiN+kzmcK5ApkoBOkIPC2xi8a+LsFY7Lc
 Wt2oueaP9UB/63c7oCUrH09Ezc+VCtW6PMz61B5qx2fhTToNrNRwLApgKXxTK2ziv6g+
 4dqZHqZDoa41eQ5rjd1wqwkphw0iKvm4puntmvcRdMBuHgrw2TIhZZLY1q5P5S5QRk3K
 d1uRRh+EQfnhZzPPuxTrMIXAEhD/OTAXqoGi8UKMg70GIw1s18GIbw1MngzMUHu1B6fW
 tlhg==
X-Gm-Message-State: APjAAAVIfnSZTS6/UIAYsBmPFFqTvtfj40msXnUsaaJ0HPDMKtjoaRcd
 cl6eSkYSMMwvTLLfWmR+WswTj9UifyLEeQyjSAWjZQ==
X-Google-Smtp-Source: APXvYqwqtBfsxD15Ze/GSYiWTQsz7cEOq0ryaTo5onNcdi3d3VP6nFbRioZVEy/K1OaZLRdIJksqunin46hmVNcwyv4=
X-Received: by 2002:a62:aa0a:: with SMTP id e10mr6450408pff.46.1573675027297; 
 Wed, 13 Nov 2019 11:57:07 -0800 (PST)
MIME-Version: 1.0
References: <cover.1573482698.git.marcgonzalez@google.com>
 <bfad5318dbecc1705416a554dc806a99069247b0.1573482698.git.marcgonzalez@google.com>
 <8634c030-7abe-4446-9803-d4964311990b@gmx.net>
In-Reply-To: <8634c030-7abe-4446-9803-d4964311990b@gmx.net>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Wed, 13 Nov 2019 14:56:56 -0500
Message-ID: <CAKvFj6qUDJUoZUG_Lcm1NpOS-y-OZmf6e-4pSKaHwpVs5RA0QA@mail.gmail.com>
Subject: Re: [PATCH 2/2] staging: vchiq: Remove global bcm*_drvdata
To: Stefan Wahren <wahrenst@gmx.net>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-rpi-kernel@lists.infradead.org, eric@anholt.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Nov 13, 2019 at 1:40 PM Stefan Wahren <wahrenst@gmx.net> wrote:
>
> Hello Marcelo,
>
> Am 11.11.19 um 18:14 schrieb Marcelo Diop-Gonzalez:
> > Moving the DT node check to vchiq_platform_init()
> > removes the need for these.
>
> this comment does match to your changes. Also i'm missing a why this is
> necessary.
>
> >
> > Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
> > ---
> >  .../interface/vchiq_arm/vchiq_2835_arm.c      |  4 ++--
> >  .../interface/vchiq_arm/vchiq_arm.c           | 20 ++-----------------
> >  .../interface/vchiq_arm/vchiq_arm.h           |  4 ----
> >  3 files changed, 4 insertions(+), 24 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> > index 5ac88be9496b..b133b25c44af 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
> > @@ -78,7 +78,6 @@ free_pagelist(struct vchiq_pagelist_info *pagelistinfo,
> >  int vchiq_platform_init(struct platform_device *pdev, struct vchiq_state *state)
> >  {
> >       struct device *dev = &pdev->dev;
> > -     struct vchiq_drvdata *drvdata = platform_get_drvdata(pdev);
> >       struct device_node *fw_node;
> >       struct rpi_firmware *fw;
> >       struct vchiq_slot_zero *vchiq_slot_zero;
> > @@ -109,7 +108,8 @@ int vchiq_platform_init(struct platform_device *pdev, struct vchiq_state *state)
> >       if (err < 0)
> >               return err;
> >
> > -     g_cache_line_size = drvdata->cache_line_size;
> > +     if (of_device_is_compatible(dev->of_node, "brcm,bcm2836-vchiq"))
> > +             g_cache_line_size = 64;
> >       g_fragments_size = 2 * g_cache_line_size;
> >
> >       /* Allocate space for the channels in coherent memory */
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > index c666c8b5eda2..cc753ba9c68c 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
> > @@ -140,14 +140,6 @@ static DEFINE_SPINLOCK(msg_queue_spinlock);
> >  static struct platform_device *bcm2835_camera;
> >  static struct platform_device *bcm2835_audio;
> >
> > -static struct vchiq_drvdata bcm2835_drvdata = {
> > -     .cache_line_size = 32,
> > -};
> > -
> > -static struct vchiq_drvdata bcm2836_drvdata = {
> > -     .cache_line_size = 64,
> > -};
> You are touching new code which was introduced to keep the driver easier
> to maintain (e.g. add support for new SoCs like BCM2711 on Raspberry Pi 4).
>
> So please keep the OF match data handling. But i'm happy to see the
> platform data as a const.
>

Oh ok I see, didn't realize that was the reason for it. I think we
should just scrap this patchset in that case.

Thanks,

-Marcelo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
