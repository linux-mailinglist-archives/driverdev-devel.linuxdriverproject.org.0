Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 114DC18DE80
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 08:28:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2790727A04;
	Sat, 21 Mar 2020 07:28:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NvWpTQwnKucw; Sat, 21 Mar 2020 07:28:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 31F722154C;
	Sat, 21 Mar 2020 07:28:15 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 53B2D1BF2B9
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 07:28:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4FB792152C
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 07:28:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8FXd1Njrlm9i
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 07:28:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 5A9FF2078B
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 07:28:12 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id a49so8325095otc.11
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 00:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ehmxsElx8JC4+OTBkwJv81nkSr8Vpt5h0hNdNvgDzB8=;
 b=D+drk0+FSDXYLQttkSOz4WWJlscrl2SpQlDWNqJNDIGr/zWmt0G2yZzYpO9yhh+qEV
 qWzLHbpjKmDGy/dJQupxoLy07Wu7s3dUzfbpCpqBkiYIzCjAqZE4x126MuxP8pFzlSz+
 4Hzh3409zN//LKDifyNzSRDq4ZC7sEO7S/3sV6cH1aZGM5ih2nq52Y8PuLTsNuTHNhep
 pXyMiQgJ2lK+2BmX88D12q8LjuVP8YQYrJy2Ya0oLTtRfi6vooq74nO7YUrZBJcEAEFo
 koXQTw8nipymNqwzhPbjXvhvjFaeLf2RSoPanEWlHDrPNivNR07leGx3qFwfUcHOtzi+
 u5KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ehmxsElx8JC4+OTBkwJv81nkSr8Vpt5h0hNdNvgDzB8=;
 b=jy/XRgDFTrIseN0i2TFuWuKKiZOEXj/MtK/cs6lM+lteEYnNEQZHGHDN83sJ/7YOq7
 JTuNxhb4GHuRKboq6OhAzmhCNNEkNwc7/7qcMGpd2C4pFlY2CnE7akZjVljiCiHc4tLm
 HN00u+jG6paB5j9TB6cBsEY+wuW0GDifQpPf4A6Uep1xy6chkV+CFIMOK1HeXnxxb7v8
 cZmWK99Uhd4SeHJaCY6Rnmzow3Pe8fTrw77yCfNesXrnigJRoaKkLCuAwmxg9fssgQSX
 JlbnPD6I6P5afxn9V80SBAatIUyHU62vqRq8Yobqfi7LfqwZ7JudAXHvqD+xrCa37lTy
 NinA==
X-Gm-Message-State: ANhLgQ0aVkE93cOnI5cTbgAk/rRv2APdWM6P/SrfhwA6Vd4JEI55xPNn
 6P7P6n9pHQE7RGK2DcE1QlieP20F4YQeCO7ZRzEGL/V/
X-Google-Smtp-Source: ADFU+vtyOyC/eqr/jPVd00MkaLdk/9M4jPOujjkMpnGVkn604ntMVCfBROCGXbA+MtZ+6hBazrzT95hBdZz4hJAYdTQ=
X-Received: by 2002:a05:6830:3151:: with SMTP id
 c17mr10626266ots.310.1584775691484; 
 Sat, 21 Mar 2020 00:28:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200313200913.24321-1-sergio.paracuellos@gmail.com>
 <20200313200913.24321-6-sergio.paracuellos@gmail.com>
 <CAJsYDVKgx419P9f-Y7DaETejwaHwdbnT8+g-Uk4NoKB0qgqPKA@mail.gmail.com>
 <CAMhs-H9-F+6QwD_LFihUk31mHn1B72LxR+i=AXgCFP0ESyjxKA@mail.gmail.com>
 <CAJsYDV+O9TY2uDHrFU5+RxEsurowMH4uskkdkGnfQb9cxTk76g@mail.gmail.com>
 <CAMhs-H9MdudEij_D84gFNSt70r_gv5joOxCCB+X4foHGeLTpEA@mail.gmail.com>
 <CAMhs-H-jB3LT_hfZ2+FiqjmqaTRJwUfTGKxF852xBny-mMEO7Q@mail.gmail.com>
 <CAJsYDVJF5eRiHdJpfHAvGwP3qNcq=X0FaGARH9JX5xbPmOjd+Q@mail.gmail.com>
In-Reply-To: <CAJsYDVJF5eRiHdJpfHAvGwP3qNcq=X0FaGARH9JX5xbPmOjd+Q@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sat, 21 Mar 2020 08:28:00 +0100
Message-ID: <CAMhs-H8rWDf0ifqXCp_dFcGw37KOuL9BrZDKLot=_LyG4cN=Dw@mail.gmail.com>
Subject: Re: [PATCH v4 5/6] staging: mt7621-pci: release gpios after pci
 initialization
To: Chuanhong Guo <gch981213@gmail.com>
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
Cc: ryder.lee@mediatek.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org, weijie.gao@mediatek.com,
 Greg Ungerer <gerg@kernel.org>, NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On Sat, Mar 21, 2020 at 7:36 AM Chuanhong Guo <gch981213@gmail.com> wrote:
>
> Hi!
>
> On Sat, Mar 21, 2020 at 12:34 AM Sergio Paracuellos
> <sergio.paracuellos@gmail.com> wrote:
> > > If I am understanding correctly for example for my gnubee this should
> > > be as follows:
> > >
> > > diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi
> > > b/drivers/staging/mt7621-dts/mt7621.dtsi
> > > index 10fb497cf81a..9e5cf68731bb 100644
> > > --- a/drivers/staging/mt7621-dts/mt7621.dtsi
> > > +++ b/drivers/staging/mt7621-dts/mt7621.dtsi
> > > @@ -538,9 +538,7 @@ pcie: pcie@1e140000 {
> > >                 phys = <&pcie0_phy 1>, <&pcie2_phy 0>;
> > >                 phy-names = "pcie-phy0", "pcie-phy2";
> > >
> > > -               reset-gpios = <&gpio 19 GPIO_ACTIVE_LOW>,
> > > -                               <&gpio 8 GPIO_ACTIVE_LOW>,
> > > -                               <&gpio 7 GPIO_ACTIVE_LOW>;
> > > +               reset-gpios = <&gpio 19 GPIO_ACTIVE_LOW>;
> > >
> > >                 pcie@0,0 {
> > >                         reg = <0x0000 0 0 0 0>;
> > > sergio@camaron:~/staging$ git diff drivers/staging/mt7621-dts/gbpc1.dts
> > > diff --git a/drivers/staging/mt7621-dts/gbpc1.dts
> > > b/drivers/staging/mt7621-dts/gbpc1.dts
> > > index 1fb560ff059c..a7c0d3115d72 100644
> > > --- a/drivers/staging/mt7621-dts/gbpc1.dts
> > > +++ b/drivers/staging/mt7621-dts/gbpc1.dts
> > > @@ -114,6 +114,10 @@ &cpuclock {
> > >  &pcie {
> > >         pinctrl-names = "default";
> > >         pinctrl-0 = <&pcie_pins>;
> > > +
> > > +       reset-gpios = <&gpio 19 GPIO_ACTIVE_LOW>,
> > > +                       <&gpio 8 GPIO_ACTIVE_LOW>,
> > > +                       <&gpio 7 GPIO_ACTIVE_LOW>;
> > >         status = "okay";
> > >  };
> > >
> > > Is this true? So changes will be only in the device tree but driver is
> > > ok as it is.
> >
> > Well, I mean I should only remove the release part for gpios, right?
>
> Correct :)

Thanks for let me know the correct way of doing this. Sent:

http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2020-March/142567.html

>
> --
> Regards,
> Chuanhong Guo

Best regards,
    Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
