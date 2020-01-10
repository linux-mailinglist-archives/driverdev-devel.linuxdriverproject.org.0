Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D10136E80
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Jan 2020 14:48:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CA90787605;
	Fri, 10 Jan 2020 13:48:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CkTEkALJPYDT; Fri, 10 Jan 2020 13:48:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5B8D18756D;
	Fri, 10 Jan 2020 13:48:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EA0B41BF3C0
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 13:48:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E699988268
 for <devel@linuxdriverproject.org>; Fri, 10 Jan 2020 13:48:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lBIztpF+BXfa for <devel@linuxdriverproject.org>;
 Fri, 10 Jan 2020 13:48:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com
 [210.131.2.91])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DE08E880E7
 for <devel@driverdev.osuosl.org>; Fri, 10 Jan 2020 13:48:37 +0000 (UTC)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com
 [209.85.217.45]) (authenticated)
 by conssluserg-06.nifty.com with ESMTP id 00ADmDqK003069
 for <devel@driverdev.osuosl.org>; Fri, 10 Jan 2020 22:48:14 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com 00ADmDqK003069
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1578664094;
 bh=YW6gHC2/TBjxwotOxX5lv+0ESK1IMSnDrePMsS8Y854=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=v8CCJuH8FvCsIv3IH6Axc4E20isn2xwbyKkmVAwDnVUUP7XTnqD3pjWapoBDw1lDK
 50Kzuo/MtEXB6Hdwr/DwS4PqEiEcxxek9hC0xXLPGBXvk23RQcvKWJOdPrXh+dbFTm
 hpmWbFoqq3663QSC/2QzPboUMx6ebwb3aacYQkNQCrA5Y+ZDRM5od9ZbSll/jAcAHt
 tP1tLunrgFSOOGMTJQQt5oqhrSUz3D+a5yFCzM/uA1ViWLaKv4o+xwleENqDjAhw/d
 k1iD3mjIpplBsfHoDvGo0Ec7ARWXd5VV2aA0C0JsGj//ZOe644CI/9zUvVUrt5f+JH
 5+wStLmWTZdTg==
X-Nifty-SrcIP: [209.85.217.45]
Received: by mail-vs1-f45.google.com with SMTP id u14so1272097vsu.3
 for <devel@driverdev.osuosl.org>; Fri, 10 Jan 2020 05:48:14 -0800 (PST)
X-Gm-Message-State: APjAAAUszM+GdpTi785yRDJQoM3V9ILgnNyXcuct25zd9x/rlO4PrxZB
 ypg4/jZ2kpplTi5Z47WUFIT47njU1xhc48G6H+Q=
X-Google-Smtp-Source: APXvYqyTXk/T86I7dlwE/veGRIdMLqTqb+cooe/0yqEITlDnMG/B+hHLqdaNi4yTMsk16cN+BBr421ehKsnP9BOOcVw=
X-Received: by 2002:a67:f8ca:: with SMTP id c10mr1743990vsp.54.1578664092752; 
 Fri, 10 Jan 2020 05:48:12 -0800 (PST)
MIME-Version: 1.0
References: <20200104162829.20400-1-masahiroy@kernel.org>
 <20200110121951.GA1047840@kroah.com>
In-Reply-To: <20200110121951.GA1047840@kroah.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 10 Jan 2020 22:47:37 +0900
X-Gmail-Original-Message-ID: <CAK7LNATGZwPE9m=4L6n-OFPSmenQvoRvNR=c4Go65x1opjkpOQ@mail.gmail.com>
Message-ID: <CAK7LNATGZwPE9m=4L6n-OFPSmenQvoRvNR=c4Go65x1opjkpOQ@mail.gmail.com>
Subject: Re: [PATCH] staging: vc04_service: remove unused header include path
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org,
 Broadcom Kernel Feedback List <bcm-kernel-feedback-list@broadcom.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rpi-kernel <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jan 10, 2020 at 9:24 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Sun, Jan 05, 2020 at 01:28:29AM +0900, Masahiro Yamada wrote:
> > I can build drivers/staging/vc04_services without this.
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > ---
> >
> >  drivers/staging/vc04_services/Makefile | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/vc04_services/Makefile b/drivers/staging/vc04_services/Makefile
> > index afe43fa5a6d7..54d9e2f31916 100644
> > --- a/drivers/staging/vc04_services/Makefile
> > +++ b/drivers/staging/vc04_services/Makefile
> > @@ -13,5 +13,5 @@ vchiq-objs := \
> >  obj-$(CONFIG_SND_BCM2835)    += bcm2835-audio/
> >  obj-$(CONFIG_VIDEO_BCM2835)  += bcm2835-camera/
> >
> > -ccflags-y += -Idrivers/staging/vc04_services -D__VCCOREVER__=0x04000000
> > +ccflags-y += -D__VCCOREVER__=0x04000000
> >
> > --
>
> This patch breaks the build for me:
> drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c:6:10: fatal error: interface/vchi/vchi.h: No such file or directory
>     6 | #include "interface/vchi/vchi.h"
>       |          ^~~~~~~~~~~~~~~~~~~~~~~
> compilation terminated.
>
> So maybe you did't select all of the modules to build?
>
> Sorry, I can't take this as-is :(
>
> greg k-h


Sorry, I compile-tested it with O= option.

I should have tested it with/without O=
for this kind of patch.


I will fix up some relative paths.


-- 
Best Regards
Masahiro Yamada
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
