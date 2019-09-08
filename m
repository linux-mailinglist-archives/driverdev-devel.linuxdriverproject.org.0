Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B51C4ACB54
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 09:29:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A0781857FB;
	Sun,  8 Sep 2019 07:28:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c895aoZBLjh9; Sun,  8 Sep 2019 07:28:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3BF2185797;
	Sun,  8 Sep 2019 07:28:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E32651BF31C
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 07:28:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E04DF203AA
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 07:28:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AZzeDDOr4jvr for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 07:28:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f67.google.com (mail-ua1-f67.google.com
 [209.85.222.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 3297220104
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 07:28:54 +0000 (UTC)
Received: by mail-ua1-f67.google.com with SMTP id j6so3312764uae.12
 for <devel@driverdev.osuosl.org>; Sun, 08 Sep 2019 00:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nZOXnpRSOIwGxGOQbUAa/m+r2DFYsgm/VjsRgwgyCH0=;
 b=AA6XpGLK7ayHYOYoSDHBUE/uR14fJPTzEgsULa6RxSTSIzc+7gtF88+a9W9MlEd9re
 TLAon4w1WbVbdImGoBj0aMgCq0n+7sRpPnOMGPhsOMXN323drwsllVI6K3PvcWxnLbqv
 kboX5nSxkhN4/FRghsWxh7oTWry9CUklwnZeMqFFaST5Vd4ZJi6/r0EiDpCnKC+Kgqsb
 ka462DFwHyhQ74LXfgZ4Rl43SbLi7sxIfpNmP0p8CNjitX/r/83RWz4YPyYQLU+BXUbf
 i3V4Vyy8BiKJtgDCVX6CbGuoJ+eLmAPSCcvhG0WaXQqFaFpkx/FwLqIoxM8X6SHggEhm
 HRPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nZOXnpRSOIwGxGOQbUAa/m+r2DFYsgm/VjsRgwgyCH0=;
 b=ZxD+eQ6EznCxwZrMLtx9fRRjKXRGfDNJVn4WZnhDDCjeQ7vCtUZWg89aLndUnOvrLj
 oyzNPJUU7CqpFbQ5mzPsF1l5VZ+b2UU5UUz2vG+UIr2147ZewR/sHCzW2dzPeIahfYBU
 gK/YftyqCvbP543HF4ed6eyTKM+X/qVnxxFnT0UR2taap7226ZCg5w7Dnq8qAhiaOxrj
 JKSqrPnKMOXegGAckQRqJDwei1poDX7WIRYX23xMjQoRad3VhlH/+Fpc9pqcPzc+qB8D
 J9zvX61gZGwxc/mL40NV7/vpyfOq9MOMpZjqL7FUTpj/0HIs9uzExwGwKrcv4iReHIUA
 Fkrw==
X-Gm-Message-State: APjAAAU8Rxpd6twKgN5ZL9kscMZV0mdrb3Lq9zUTRFi7VbTs+kvQsEyX
 +vLzmYXD53AjiFjcOfAeNXD10Emp6kV0CZ58X/0=
X-Google-Smtp-Source: APXvYqwvtE43EVNHuYXwdSY+5wYKhu5ht20p2VydXdES8Yx4qp72whvdgpg/cdx6NAAABpO/Mfb92U7f7hsXOJP6W3o=
X-Received: by 2002:ab0:a6:: with SMTP id 35mr8271484uaj.26.1567927732951;
 Sun, 08 Sep 2019 00:28:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190826180909.27775-1-sylphrenadin@gmail.com>
 <20190827084319.GB23584@kadam>
In-Reply-To: <20190827084319.GB23584@kadam>
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
Date: Sun, 8 Sep 2019 12:58:39 +0530
Message-ID: <CACAkLupPBHeGSpYJQJ8eH1wnU2W+ff8rS8qzCG_P2hzDrwPLEQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] staging: rtl8192u: Add or remove spaces to fix
 style issues
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 27, 2019 at 2:13 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Mon, Aug 26, 2019 at 11:39:09PM +0530, Sumera Priyadarsini wrote:
> > This patch fixes the file r8190_rtl8256.c to avoid the following
> > checkpatch.pl warnings:
> >       CHECK: spaces preferred around that '<<' (ctx:VxV)
> >       CHECK: spaces preferred around that '-' (ctx:VxV)
> >       CHECK: No space is necessary after a cast
> >
> > Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
> > ---
> > Changes since v1:
> > - Split the commit into two patches
> > ---
> >  drivers/staging/rtl8192u/r8190_rtl8256.c | 30 ++++++++++++------------
> >  1 file changed, 15 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
> > index 0bedf88525cd..7c7f8247b27a 100644
> > --- a/drivers/staging/rtl8192u/r8190_rtl8256.c
> > +++ b/drivers/staging/rtl8192u/r8190_rtl8256.c
> > @@ -42,9 +42,9 @@ void phy_set_rf8256_bandwidth(struct net_device *dev, enum ht_channel_width Band
> >
> >               switch (Bandwidth) {
> >               case HT_CHANNEL_WIDTH_20:
> > -                             if (priv->card_8192_version == VERSION_819XU_A
> > -                                     || priv->card_8192_version
> > -                                     == VERSION_819XU_B) { /* 8256 D-cut, E-cut, xiong: consider it later! */
> > +                             if (priv->card_8192_version == VERSION_819XU_A ||
> > +                                     priv->card_8192_version ==
> > +                                     VERSION_819XU_B) { /* 8256 D-cut, E-cut, xiong: consider it later! */
>
> These lines are indented too far and the == should go on the first line
> like the || does.
>
>                         if (priv->card_8192_version == VERSION_819XU_A ||
>                             priv->card_8192_version == VERSION_819XU_B) {
>                                 /* 8256 D-cut, E-cut, xiong: consider it later! */
>
> Probably do this in a separate patch.  It's sort of not really related
> to the other changes.
>
> regards,
> dan carpenter
>
>
Hi, I am extremely sorry for a late response to this. I was caught up
with some laptop issues. I will send a separate patch making the
change right away.

Regards,
Sumera
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
