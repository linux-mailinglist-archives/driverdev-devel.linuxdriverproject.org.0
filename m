Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 521BD1A5E5F
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 Apr 2020 13:56:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 659502045F;
	Sun, 12 Apr 2020 11:56:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZRGodvcyzM-L; Sun, 12 Apr 2020 11:56:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 21E3B2042A;
	Sun, 12 Apr 2020 11:56:39 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C2D421BF5A7
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 12 Apr 2020 11:56:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BF1CB86CD7
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 12 Apr 2020 11:56:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e3Nm9eL7apMZ
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 12 Apr 2020 11:56:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F169A86C94
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 12 Apr 2020 11:56:35 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id x11so6455595otp.6
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 12 Apr 2020 04:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h5r3LliWQ3VcYXyNYI+MjSL4Rvk8c00ETY3JZt0otwU=;
 b=flXoDhO3B77CF6RbEI3XIxqCN8kAZoNGZHo9IM321JeExrTAv/FMp+hdWbK3hzUxeO
 x8hkL2gd6JuMyVE42eMfUSgGqWTF1OTB1SZpCszs6UFkVA/SPbMIwE2Mcc2/Aje2+yW4
 wOYicBR57mLkM/0XhDZb1S2sT+dhiFusbsL5giQ8EPXgnWuC+2kQ+ZnEoMuXKLm1iN2b
 FwHOwKvTkLhnEDpbR+5VRzbbZConwAFppnwKOR4ITzPT6JiwFElWeP+qega7ttzhfhv3
 Q+fKqumv1b9nHXYdZCjQqcV4947Kc8Sue7kReRtLpe+ariygJGdFE3noGL/rXPnEubAO
 qcVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h5r3LliWQ3VcYXyNYI+MjSL4Rvk8c00ETY3JZt0otwU=;
 b=eVo6w/3+33tCfCq04sC4YKkvIQqJUMi7aIAK2o0PJtK78gK3RPaupKeGjjhaEPyXid
 K9t+7FZiI0/5UuWHIg9mAm2OnwF7Ax71E6OAe7td6n1OFKoh+roUg3vRxiRedUen/Vvq
 1ZaLmfD9EdU00m594A2TuU9hkcai3y/UFeHg8y6yDhaTer82sI+ue+nT0UkUN0YPIPMR
 uZcTwyjkLaBrGImh3cGLVwx1yzcRYnmgiP6rObbLVUJnoJUhAYUg03b36Vt9JUg0CoXQ
 hjwkJK6/6k44lrxwO60xco71IR1MOR3vawwSAoqLP3HzpadSfd8/lnFYGj2KxzhbW2a3
 92aA==
X-Gm-Message-State: AGi0PuaCBBwFf5oDV1qawNyto12WoEDT3kAEJdkVH/E/EK3Kplq3kIL0
 1L6b5SAFGfjBWoqtGyV7Z0RUZjSxth11lLebPxy5xDzN
X-Google-Smtp-Source: APiQypJlyjCT3S3M74ZE7pk4tkZOmyM1b+JMATERkeB8PqbcJAvHR2pCwkTsOrwKBnxZyYdUVy5a11qfAt6HgFAFyVw=
X-Received: by 2002:a05:6830:1d67:: with SMTP id
 l7mr10590336oti.72.1586692595098; 
 Sun, 12 Apr 2020 04:56:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200412102926.15346-1-sergio.paracuellos@gmail.com>
In-Reply-To: <20200412102926.15346-1-sergio.paracuellos@gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sun, 12 Apr 2020 13:56:24 +0200
Message-ID: <CAMhs-H9DE-CQ=f5qqnuHPddm7E-vFK1j3j54WXz3ckZPrziTHA@mail.gmail.com>
Subject: Re: [PATCH] staging: mt7621-dts: fix PCIe interrupt mapping
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
Cc: NeilBrown <neil@brown.name>, driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi all,

On Sun, Apr 12, 2020 at 12:29 PM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> MT7621 has three assigned interrupts for the pcie. This
> interrupts should properly being mapped taking into account
> which devices are finally connected in which bus. Because of
> this current information of these mappings is not enough and
> should be a little modified to properly got interrupts working
> for any scenario. For example, as it is now, if we only have
> connected pcie1 on PCI enumeration will get that bus 1 is using
> slot 0 for this pci device and the interrupt will be wrongly
> mapped to the one in pcie0 istead of use the good one for pcie1.
> Hence, add interrupt map information to pcie child nodes and
> properly update the global pcie node information.
>
> Fixes: 46d093124df4 ("staging: mt7621-pci: improve interrupt mapping")
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>
> Tested in gnubee pc1 (which uses all the buses and also worked without
> changes) and tested also in ZyXEL LTE3301-PLUS which has PCIe and a
> mt7615e connected to second bus on the first phy where the current
> mapping was failing and this changes seems to fix the mapping problems.
>
> On gnubee we get:
>
> # cat /proc/interrupts
>          CPU0       CPU1       CPU2       CPU3
> ...
>
> 23:          0          0          0          0  MIPS GIC  11  ahci[0000:01:00.0]
> 24:          0          0          0          0  MIPS GIC  31  ahci[0000:02:00.0]
> 25:        279          0          0          0  MIPS GIC  32  ahci[0000:03:00.0]
>
> On the ZyXEL LTE3301-PLUS before this changes (wrongly '23' (pcie0 one) is assigned):
>
> root@OpenWrt:/# cat /proc/interrupts
>           CPU0       CPU1       CPU2       CPU3
> ...
>
> 23:          0          0          0          0  MIPS GIC  11  mt7615e
>
> After this changes:
>
> root@OpenWrt:/# cat /proc/interrupts
>           CPU0       CPU1       CPU2       CPU3
> ...
>
> 24:         85          0          0          0  MIPS GIC  31  mt7615e
>
> Thanks!
>
>  drivers/staging/mt7621-dts/mt7621.dtsi | 17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
> index 9e5cf68731bb..bee7731eb60a 100644
> --- a/drivers/staging/mt7621-dts/mt7621.dtsi
> +++ b/drivers/staging/mt7621-dts/mt7621.dtsi
> @@ -524,10 +524,10 @@ pcie: pcie@1e140000 {
>                 >;
>
>                 #interrupt-cells = <1>;
> -               interrupt-map-mask = <0xF0000 0 0 1>;
> -               interrupt-map = <0x10000 0 0 1 &gic GIC_SHARED 4 IRQ_TYPE_LEVEL_HIGH>,
> -                               <0x20000 0 0 1 &gic GIC_SHARED 24 IRQ_TYPE_LEVEL_HIGH>,
> -                               <0x30000 0 0 1 &gic GIC_SHARED 25 IRQ_TYPE_LEVEL_HIGH>;
> +               interrupt-map-mask = <0xF800 0 0 0>;
> +               interrupt-map = <0x0000 0 0 0 &gic GIC_SHARED 4 IRQ_TYPE_LEVEL_HIGH>,
> +                               <0x0800 0 0 0 &gic GIC_SHARED 24 IRQ_TYPE_LEVEL_HIGH>,
> +                               <0x1000 0 0 0 &gic GIC_SHARED 25 IRQ_TYPE_LEVEL_HIGH>;
>
>                 status = "disabled";
>
> @@ -544,6 +544,9 @@ pcie@0,0 {
>                         reg = <0x0000 0 0 0 0>;
>                         #address-cells = <3>;
>                         #size-cells = <2>;
> +                       #interrupt-cells = <1>;
> +                       interrupt-map-mask = <0 0 0 0>;
> +                       interrupt-map = <0 0 0 0 &gic GIC_SHARED 4 IRQ_TYPE_LEVEL_HIGH>;
>                         ranges;
>                         bus-range = <0x00 0xff>;
>                 };
> @@ -552,6 +555,9 @@ pcie@1,0 {
>                         reg = <0x0800 0 0 0 0>;
>                         #address-cells = <3>;
>                         #size-cells = <2>;
> +                       #interrupt-cells = <1>;
> +                       interrupt-map-mask = <0 0 0 0>;
> +                       interrupt-map = <0 0 0 0 &gic GIC_SHARED 24 IRQ_TYPE_LEVEL_HIGH>;
>                         ranges;
>                         bus-range = <0x00 0xff>;
>                 };
> @@ -560,6 +566,9 @@ pcie@2,0 {
>                         reg = <0x1000 0 0 0 0>;
>                         #address-cells = <3>;
>                         #size-cells = <2>;
> +                       #interrupt-cells = <1>;
> +                       interrupt-map-mask = <0 0 0 0>;
> +                       interrupt-map = <0 0 0 0 &gic GIC_SHARED 25 IRQ_TYPE_LEVEL_HIGH>;
>                         ranges;
>                         bus-range = <0x00 0xff>;
>                 };
> --
> 2.25.1
>

Forget about this patch I was told the ZyXEL side was not working as
expected. Sorry for the noise. Keep investigating.

Thanks,
    Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
