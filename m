Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C19718DE42
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 07:36:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6A5AB8770C;
	Sat, 21 Mar 2020 06:36:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zAH9AGj-mmsf; Sat, 21 Mar 2020 06:36:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 743DF876A2;
	Sat, 21 Mar 2020 06:36:43 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 104631BF842
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 06:36:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0D0B08937D
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 06:36:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LToVTsrOHkXu
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 06:36:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CBA658936E
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 06:36:39 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id w13so9064456oih.4
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 23:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CuZ12FujIY4AoNXcBsF0mbs6yyrfqsVnoxETt+4+6H4=;
 b=bQi+a9M8ZVWSrGE+hhPX+OOxalQc3+9fkuvfJp/RcdI5ePBJCUB5lq1SUqLOSOvz/N
 evUTY+X0XstdU0HLL+3gf9jn5vau5itkqnp658HrahNbWdZgez2qoaHgN8lNUQWWQqR4
 vAiBBBB9exGMmf5/e/Ew81rmXitGzkNkSHu09GZgAM6cYecOu3TzrfcDNFQuZL6sgBTd
 Fr+bTa7l0A10Hlu1WWldadi2ZjFeB/0eZsjEEakLZvQCsRKUylep8xVZD4wqLJNSqrK+
 6pcMbBo+36srQMqmMu0foDvajswqyq4Cia1gAzEANysrUgxGN794AH22hHnCxzl7D6CA
 HVnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CuZ12FujIY4AoNXcBsF0mbs6yyrfqsVnoxETt+4+6H4=;
 b=W1QsqeD369RzLq/yQzoVJFr4FBMUpPhaPrkGDtvSN/MrHqHD7p221xXFXd1NZqlyD6
 vDpHDVk35iEUy4NsztGuP1YzX8/MknFPjRQWm1eqPHt4U5P1VfH2+yeLtQT/2yjgynIL
 GVcRw9xjbJ9u0EiYOciEjReuU1k7M+f7dEwRujHVtiuTkxDTLqmZomeAzMESiR12x0GT
 TdefsG+SxvQtJBu6bE5gMqaY7RQho6iuQOkn9V4EPGbrgKgWpUPmyuGaadY1THGbLndX
 K3Q0DaRdzMjtbm9LepRXei36EttDNjEk3MDEtL4wiDU3nKuozv0/IR/vB1tmPC0Lr0Um
 wG6g==
X-Gm-Message-State: ANhLgQ19eeUolm4vKos0TxScXqIkGzwRF051m9roxb+v2HhE8W0wwTq4
 3rDmTu6Ypz9xhw3sfD8Id3cqCqxvwrUGvuA6KNY=
X-Google-Smtp-Source: ADFU+vtZ9pzQsiLmZZYrRNWVrypIrkKjHaNZ4sTWYuPmYysZYwiP2TYPqgd/9GKtTfdB28TYCuqLNyNoM/9bOHCnGsw=
X-Received: by 2002:aca:f491:: with SMTP id s139mr4554796oih.128.1584772598997; 
 Fri, 20 Mar 2020 23:36:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200313200913.24321-1-sergio.paracuellos@gmail.com>
 <20200313200913.24321-6-sergio.paracuellos@gmail.com>
 <CAJsYDVKgx419P9f-Y7DaETejwaHwdbnT8+g-Uk4NoKB0qgqPKA@mail.gmail.com>
 <CAMhs-H9-F+6QwD_LFihUk31mHn1B72LxR+i=AXgCFP0ESyjxKA@mail.gmail.com>
 <CAJsYDV+O9TY2uDHrFU5+RxEsurowMH4uskkdkGnfQb9cxTk76g@mail.gmail.com>
 <CAMhs-H9MdudEij_D84gFNSt70r_gv5joOxCCB+X4foHGeLTpEA@mail.gmail.com>
 <CAMhs-H-jB3LT_hfZ2+FiqjmqaTRJwUfTGKxF852xBny-mMEO7Q@mail.gmail.com>
In-Reply-To: <CAMhs-H-jB3LT_hfZ2+FiqjmqaTRJwUfTGKxF852xBny-mMEO7Q@mail.gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Sat, 21 Mar 2020 14:36:27 +0800
Message-ID: <CAJsYDVJF5eRiHdJpfHAvGwP3qNcq=X0FaGARH9JX5xbPmOjd+Q@mail.gmail.com>
Subject: Re: [PATCH v4 5/6] staging: mt7621-pci: release gpios after pci
 initialization
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
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

Hi!

On Sat, Mar 21, 2020 at 12:34 AM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
> > If I am understanding correctly for example for my gnubee this should
> > be as follows:
> >
> > diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi
> > b/drivers/staging/mt7621-dts/mt7621.dtsi
> > index 10fb497cf81a..9e5cf68731bb 100644
> > --- a/drivers/staging/mt7621-dts/mt7621.dtsi
> > +++ b/drivers/staging/mt7621-dts/mt7621.dtsi
> > @@ -538,9 +538,7 @@ pcie: pcie@1e140000 {
> >                 phys = <&pcie0_phy 1>, <&pcie2_phy 0>;
> >                 phy-names = "pcie-phy0", "pcie-phy2";
> >
> > -               reset-gpios = <&gpio 19 GPIO_ACTIVE_LOW>,
> > -                               <&gpio 8 GPIO_ACTIVE_LOW>,
> > -                               <&gpio 7 GPIO_ACTIVE_LOW>;
> > +               reset-gpios = <&gpio 19 GPIO_ACTIVE_LOW>;
> >
> >                 pcie@0,0 {
> >                         reg = <0x0000 0 0 0 0>;
> > sergio@camaron:~/staging$ git diff drivers/staging/mt7621-dts/gbpc1.dts
> > diff --git a/drivers/staging/mt7621-dts/gbpc1.dts
> > b/drivers/staging/mt7621-dts/gbpc1.dts
> > index 1fb560ff059c..a7c0d3115d72 100644
> > --- a/drivers/staging/mt7621-dts/gbpc1.dts
> > +++ b/drivers/staging/mt7621-dts/gbpc1.dts
> > @@ -114,6 +114,10 @@ &cpuclock {
> >  &pcie {
> >         pinctrl-names = "default";
> >         pinctrl-0 = <&pcie_pins>;
> > +
> > +       reset-gpios = <&gpio 19 GPIO_ACTIVE_LOW>,
> > +                       <&gpio 8 GPIO_ACTIVE_LOW>,
> > +                       <&gpio 7 GPIO_ACTIVE_LOW>;
> >         status = "okay";
> >  };
> >
> > Is this true? So changes will be only in the device tree but driver is
> > ok as it is.
>
> Well, I mean I should only remove the release part for gpios, right?

Correct :)

-- 
Regards,
Chuanhong Guo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
