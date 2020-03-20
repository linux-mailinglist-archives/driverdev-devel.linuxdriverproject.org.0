Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8481418D48F
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 17:35:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 28B1C25E5B;
	Fri, 20 Mar 2020 16:35:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 17AYPsEEqXk9; Fri, 20 Mar 2020 16:35:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2A72B25C36;
	Fri, 20 Mar 2020 16:35:05 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5C5FD1BF278
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 16:35:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5474887A4F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 16:35:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ejdXxG6LuCwg
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 16:34:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7DCF287A72
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 16:34:59 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id e9so6518810otr.12
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 09:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zt3Zd0Y65NoSvKu3xwnIKus8/VKJ37kEL4hY3NgFI+M=;
 b=efpY9ceH3FdvSVidqVlXOvXTWaJ8/KrDpj8DqVQcGH+BwBE+Y3DWKLLfx1L0hp9n+4
 by8r22x9sZ8RfTDpe2i6NXYl/QpCxMK4a38X/uMnIXZnXuBREDyHYpouciDFHloIG9Vc
 dC4lrNL8WXPKiwCtLiz+0FI/Yot/m+TB2mAH28FJOElLHk18sgdd5mPAf4dK0q2/Ikjv
 ExEuha8XFZaOeIl3+SG6z1bwMQ/uaJeoNE6URVst5uruVNks7yT1C7r9tawmfFgEw3Sr
 pdMfeBKAPv2kqdqj4a08q7vvjpkIJ/L6e1/gZh44UvowVOne5jzmUUU2Z27z6It7Gn5u
 oraA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zt3Zd0Y65NoSvKu3xwnIKus8/VKJ37kEL4hY3NgFI+M=;
 b=RB80lSSAbLWBYxj5EOCxCBB0o7TPPvAmbdz/eq9RCKhf7whlXFcIxYsdD9H8ZFZNYW
 6M/EtUtCW+wjO/H936ljtXZh+kEeoU/saiEh3OzNFeInCyQuNHlNg1iczyT18Wou1iO7
 uS/uV5yeQ8VBtzm7P2aqXTKOM7EBrqiqaiob87ibAH/7Uvv4u6Q8A/lQ5l00pTkHGLHT
 TpL1Pqb5DD7fPc0wDBJ4o4GvWKj2HvNCemZBCMtmLKJIamOwCVhzD6WykqOHUvijiKB+
 MKNuM5Bs2RoGOI/wPnd8aXVhwPNw/RspmMyIuZWiJNbqNC+lV0cQbwTqAuUfYHRXqybm
 qmeQ==
X-Gm-Message-State: ANhLgQ0zL3qZ8NetYF5De+D7g8jDxyYdUFiP1G/ECYA5eRh3urGjoQtu
 F/M0hFIWLOc1uWPL262L+RHeJad9umIcihV3S9E=
X-Google-Smtp-Source: ADFU+vueFS5EXTPkXPfy5KZquvtnvgRZSLZPFDybVYfjKoTEpOykXxpEJN3xLU5SkRQa2UZOojEpmmrBmyBQz2Hlel8=
X-Received: by 2002:a05:6830:8d:: with SMTP id
 a13mr442910oto.321.1584722098629; 
 Fri, 20 Mar 2020 09:34:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200313200913.24321-1-sergio.paracuellos@gmail.com>
 <20200313200913.24321-6-sergio.paracuellos@gmail.com>
 <CAJsYDVKgx419P9f-Y7DaETejwaHwdbnT8+g-Uk4NoKB0qgqPKA@mail.gmail.com>
 <CAMhs-H9-F+6QwD_LFihUk31mHn1B72LxR+i=AXgCFP0ESyjxKA@mail.gmail.com>
 <CAJsYDV+O9TY2uDHrFU5+RxEsurowMH4uskkdkGnfQb9cxTk76g@mail.gmail.com>
 <CAMhs-H9MdudEij_D84gFNSt70r_gv5joOxCCB+X4foHGeLTpEA@mail.gmail.com>
In-Reply-To: <CAMhs-H9MdudEij_D84gFNSt70r_gv5joOxCCB+X4foHGeLTpEA@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 20 Mar 2020 17:34:46 +0100
Message-ID: <CAMhs-H-jB3LT_hfZ2+FiqjmqaTRJwUfTGKxF852xBny-mMEO7Q@mail.gmail.com>
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

On Fri, Mar 20, 2020 at 5:32 PM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> Hi,
>
> On Fri, Mar 20, 2020 at 4:39 PM Chuanhong Guo <gch981213@gmail.com> wrote:
> >
> > Hi!
> >
> > On Fri, Mar 20, 2020 at 11:29 PM Sergio Paracuellos
> > <sergio.paracuellos@gmail.com> wrote:
> > > > This pin conflict comes from incorrectly occupying pins that are not
> > > > used by pcie,
> > > > and should be fixed by not occupying those pins in the first place.
> > > > Releasing all
> > > > gpios isn't the proper way to go.
> > >
> > > So, you are saying we just have to get gpio for the pin 19 and forget
> > > about the others?
> >
> > Not really "forget about the others". We should use only gpio19
> > in mt7621.dtsi and others should be added to device dts if it's
> > actually needed. e.g. if pcie cards can't be detected on a specific
> > board without gpio7 and/or gpio8, override gpio-resets in dts of
> > that board.
>
> If I am understanding correctly for example for my gnubee this should
> be as follows:
>
> diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi
> b/drivers/staging/mt7621-dts/mt7621.dtsi
> index 10fb497cf81a..9e5cf68731bb 100644
> --- a/drivers/staging/mt7621-dts/mt7621.dtsi
> +++ b/drivers/staging/mt7621-dts/mt7621.dtsi
> @@ -538,9 +538,7 @@ pcie: pcie@1e140000 {
>                 phys = <&pcie0_phy 1>, <&pcie2_phy 0>;
>                 phy-names = "pcie-phy0", "pcie-phy2";
>
> -               reset-gpios = <&gpio 19 GPIO_ACTIVE_LOW>,
> -                               <&gpio 8 GPIO_ACTIVE_LOW>,
> -                               <&gpio 7 GPIO_ACTIVE_LOW>;
> +               reset-gpios = <&gpio 19 GPIO_ACTIVE_LOW>;
>
>                 pcie@0,0 {
>                         reg = <0x0000 0 0 0 0>;
> sergio@camaron:~/staging$ git diff drivers/staging/mt7621-dts/gbpc1.dts
> diff --git a/drivers/staging/mt7621-dts/gbpc1.dts
> b/drivers/staging/mt7621-dts/gbpc1.dts
> index 1fb560ff059c..a7c0d3115d72 100644
> --- a/drivers/staging/mt7621-dts/gbpc1.dts
> +++ b/drivers/staging/mt7621-dts/gbpc1.dts
> @@ -114,6 +114,10 @@ &cpuclock {
>  &pcie {
>         pinctrl-names = "default";
>         pinctrl-0 = <&pcie_pins>;
> +
> +       reset-gpios = <&gpio 19 GPIO_ACTIVE_LOW>,
> +                       <&gpio 8 GPIO_ACTIVE_LOW>,
> +                       <&gpio 7 GPIO_ACTIVE_LOW>;
>         status = "okay";
>  };
>
> Is this true? So changes will be only in the device tree but driver is
> ok as it is.

Well, I mean I should only remove the release part for gpios, right?
>
> >
> > --
> > Regards,
> > Chuanhong Guo
>
> Best regards,
>     Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
