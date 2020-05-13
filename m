Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD711D1243
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 May 2020 14:06:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0B42787FA6;
	Wed, 13 May 2020 12:06:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Eqvy6dMBscTA; Wed, 13 May 2020 12:06:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 84ABB87EF6;
	Wed, 13 May 2020 12:06:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F70D1BF2E5
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 12:06:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 931CE2042B
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 12:06:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6UnMsZOSuY6s for <devel@linuxdriverproject.org>;
 Wed, 13 May 2020 12:06:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 43ECF1FD90
 for <devel@driverdev.osuosl.org>; Wed, 13 May 2020 12:06:21 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id u15so17499630ljd.3
 for <devel@driverdev.osuosl.org>; Wed, 13 May 2020 05:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:reply-to:from:date:message-id
 :subject:to:cc;
 bh=rqWzzkOtBCpmgaVCKpj7+jaGD37zCFqeMtexNP5QRuE=;
 b=qeD6Nm2mKPVu1exoYnpXJhhjBKHZdaUMDm2AWDFhZys9RnaspB+P9VkYujGl31nKqn
 WagkYgVtSZCMVipmZjuysPlRWLkGigdsNodZaDhc8L2KEn/n+Aw5NlowCNryZdhwjJuZ
 I9a/eMvfwWEwNfBAin+KyqE8TYwXYIKwsKK5kx0W4srvRYKEU6cic5if37CexbOe7xS0
 bzXvtii3T3raofA0lLhK649Whj5GXdeYkJEF+6/JSFgiGI9sB03QalwmwGx5+Beo6eyE
 B8IRfi1FpydyMtcRG9+Cz8cFmpY5Io9Gk1UvzF3XnQ59sCTh9fi8i9S9h6NmsJmNxg4i
 Tgkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
 :from:date:message-id:subject:to:cc;
 bh=rqWzzkOtBCpmgaVCKpj7+jaGD37zCFqeMtexNP5QRuE=;
 b=MU6PFydR47iqAY0EhClSDci4BLA8BcEM0PyslNOnBCj2xfDgMKTVgq3HqbTbnCCM1j
 Z+T/41abT12h/FpRTYcbNML3vtVbBFC66OitkIVfFJQW/YR8uxRo3BsjOIEjCwqqXcYa
 4h9glT59fI/ow6lLtL0DTDL+Ye0XULvu5SXOUU5/6YaxOk2BQHtkkFf+HKJSoJyJpUGG
 qJJPeLNVWxGiWOolqHD02IUoIhGrVCz7l7JlYqcHuSqQkAZOXFTWzTowa0hP1Nfp3e6l
 aLlQNfq6VZCa56o/gk84v+uKZx6rhyX06BkfU2sLxvHgqYrXHfgmtPcNes4a1Oq0fg0R
 mOpA==
X-Gm-Message-State: AOAM533JCAdhlTzES0pkiGkWFWvhfkuCSWTvNcRBlXKDTp3+LXfUJ9pa
 g/soXdEkZeOl3stM8oihwDPAXtsL4FHE/sNZoLY=
X-Google-Smtp-Source: ABdhPJySqd5aKEee2N8mNCkrbF8REchFhQ7yF5jLHkOX7270Pxv7mqJsGVq7Ix9WFSznPLx8EacrYqvbMQJ7yygKp68=
X-Received: by 2002:a2e:8590:: with SMTP id b16mr17846575lji.45.1589371579390; 
 Wed, 13 May 2020 05:06:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200510101308.10451-1-john.oldman@polehill.co.uk>
 <20200513115823.GC953616@kroah.com>
In-Reply-To: <20200513115823.GC953616@kroah.com>
From: John Oldman <john.oldman60@gmail.com>
Date: Wed, 13 May 2020 13:06:08 +0100
Message-ID: <CAMJX__Qx_MyOmqiphz_Fg0X8itu8PDtNNpFTKqxGabK6v1bsLg@mail.gmail.com>
Subject: Re: [PATCH V3] staging: vc04_services: vchiq_connected.c: Block
 comment alignment
To: Greg KH <gregkh@linuxfoundation.org>
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
Reply-To: john.oldman@polehill.co.uk
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 John Oldman <john.oldman@polehill.co.uk>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

yea I agree, will re-submit...
Cheers
john

On Wed, 13 May 2020 at 12:58, Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Sun, May 10, 2020 at 11:13:08AM +0100, John Oldman wrote:
> > Coding style issue
> > This patch clears the checkpatch.pl "Block comments should align the * on each line" warning.
> >
> > Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
> > ---
> > v1: Initial attempt.
> > v2: Resubmitted with shorter comment line, as suggested by Greg KH.
> > v3: Resubmitted with descriptiuon text moved into the comment area.
> >
> >  .../interface/vchiq_arm/vchiq_connected.c     | 32 +++++++++----------
> >  1 file changed, 16 insertions(+), 16 deletions(-)
> >
> > diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
> > index 1640906e3929..993535bbc479 100644
> > --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
> > +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
> > @@ -15,10 +15,10 @@ static   int                        g_once_init;
> >  static   struct mutex               g_connected_mutex;
> >
> >  /****************************************************************************
> > -*
> > -* Function to initialize our lock.
> > -*
> > -***************************************************************************/
> > + *
> > + * Function to initialize our lock.
> > + *
> > + ***************************************************************************/
> >
> >  static void connected_init(void)
>
> Shouldn't that really be written as:
>
> /* Function to initialize our lock */
> static void connect_init(void);
>
>
> No need for the /****** mess, and no need for the blank line.
>
> Simple and clean is best.
>
> thanks,
>
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
