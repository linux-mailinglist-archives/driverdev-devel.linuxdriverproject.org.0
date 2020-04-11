Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CF51A4E07
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Apr 2020 06:43:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9751587A9C;
	Sat, 11 Apr 2020 04:43:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1Arx9gexLtzK; Sat, 11 Apr 2020 04:43:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9BF1687A1D;
	Sat, 11 Apr 2020 04:43:26 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 531FF1BF276
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 04:43:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 401DC879F5
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 04:43:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bu-6Nsx5xWcH
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 04:43:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 24011879C5
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 04:43:20 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id m14so3101109oic.0
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 21:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3buNu1Vs7BZCQ2S/CovnA7EY28XLtyw2rS5bzsjFIR4=;
 b=pWA6GeEtYBWUHFg1Y1h0yOD+ceicWneqnWem0PvwXmT8KZTPiEX9x8RyzntBs3Mvz0
 cydUcY+zUAVuxEuQ/QGiq/XSUocldvLcL64EoFPlfrNJDAnUHuQMMJTfFXUNi29IRlup
 xaet9BarDTGuC9uFWez8OfzBbZ9l9dBn8l/71OOydJo5FL7DZ8MPVkMwRZIy/yf0/mw2
 Ht8p/ECQx98EDZ4BEptLQQC4EWIe0ElGHQCmMdaTCd1y7B+yaZ6AZzv5LWBxtALr6H6E
 MtiarWZBre5boT79itLL4MNbH1aUeIMbvd3PbRynlE+omGLLnnGVduG6IZX2BPxxB0K+
 1Hig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3buNu1Vs7BZCQ2S/CovnA7EY28XLtyw2rS5bzsjFIR4=;
 b=HyaqhsrbY1ThydxQxcBuP/1lrhAv4ozZ9vR9nrT2azix2ysEifr2vOfofBVL1deRWD
 OFxEfttp0m2DChztl4FQQ5OQaA0Wxv/CFvg7LgLfuvZ7NRgxrikVKzyP78GRLlQTgGsb
 jxFn5wd/MRm0CKMttcjYB8KrNepdMSqlNK7f0v3tsMFbJVckEmrnuKUHyr5Nak+95HMK
 z1iwKgWa58zC0RpNgiSQmh367paBfYg2XVHkEmgPDMuhLVI4tRmSI4QI2pgWeiA1TqNt
 JYbMG4+zAnv56rujMXRbrjIzDZh9VA5B8IUiSBidUsnCVw4gEk0Bedcuq8LJ+C910UDa
 TDWA==
X-Gm-Message-State: AGi0PubtK7xa1lbSiQICYOzWrDqN24I0O+WVrl74C92NGOehILaUEmDU
 2ZzwY3RYzttxXDmijhVgc8WcADmTZAQFZKeE8MNTEEJ1
X-Google-Smtp-Source: APiQypIvBikBibD4iLwh0jSKspleJs0R+eLujrej0Aw/PhNBkrXIulnaslwSs6tNy5BoTIXB7TJqiR72co9G1Eca508=
X-Received: by 2002:a05:6808:288:: with SMTP id
 z8mr5357680oic.149.1586580200164; 
 Fri, 10 Apr 2020 21:43:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200410091836.13068-1-sergio.paracuellos@gmail.com>
 <875ze6vg64.fsf@notabene.neil.brown.name>
In-Reply-To: <875ze6vg64.fsf@notabene.neil.brown.name>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sat, 11 Apr 2020 06:43:09 +0200
Message-ID: <CAMhs-H84P+n4KY04Bbu7LzHqcERzfbuSDTmjpCpvCs+G3S32Eg@mail.gmail.com>
Subject: Re: [PATCH 0/2] staging: mt7621-pci-phy: dt: bindings: convert
 bindings file from txt to yaml
To: NeilBrown <neil@brown.name>
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
Cc: Greg KH <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org, Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Neil,

On Sat, Apr 11, 2020 at 5:45 AM NeilBrown <neil@brown.name> wrote:
>
>
> Hi Sergio,
>  thanks for your continuing work on mt7621-pci.
>  I've looked through you patches and while things seem to make sense I
>  don't have the expertise to review them properly.
>
>  I've just a build a kernel based on v5.6.3 with the patches listed
>  below applied from your various emails over the last couple of months.
>
>  I have confirm that PCI works and in particular I don't get the
>  cold-boot hangs that are common without these patches.  So that is an
>  excellent result.

Yes, it seems it is not hanging anymore and that is always a good thing :-).
For me the pci phy driver is ready to be mainlined if the two phys
approach is correct.
and for the pci controller part I need to review how interrupts are
being mapped and
then convert bindings into a yaml file and get feedback about what to
do with the clock stuff.
According to this thread and because there is not a clock plan for
mt7621 assumptions should not be done for peripherals clocks:

http://archive.lwn.net:8080/devicetree/20190724022310.28010-1-gch981213@gmail.com/

So maybe we can just forget about clocks and clock-names stuff in the
pci controller binding and do what we are doing with the clock gate
now which is setting up the bit manually as other similar drivers do.

What do you think? (your tree has the patches of the thread I am
pointed out here applied)

>
> Thanks,
> NeilBrown

Best regards,
    Sergio Paracuellos
>
> 7e4350e416ed staging: mt7621-pci: simplify 'mt7621_pcie_init_virtual_bridges' function
> 283e56fe3f49 staging: mt7621-pci: enable clock bit for each port
> 5edfd9ca31ad MIPS: ralink: mt7621: introduce 'soc_device' initialization
> 7ce68fa530ad staging: mt7621-pci: use gpios for properly reset
> ccffb8f9a204 staging: mt7621-pci: change value for 'PERST_DELAY_MS'
> 840b0de42c22 staging: mt7621-dts: make use of 'reset-gpios' property for pci
> bd44f2c46e60 staging: mt7621-pci: bindings: update doc accordly to last changes
> a83cb7040463 staging: mt7621-pci: release gpios after pci initialization
> 51ae5f557464 staging: mt7621-pci: delete no more needed 'mt7621_reset_port'
> 6d5af2af8fdd staging: mt7621-pci-phy: add 'mt7621_phy_rmw' to simplify code
> 8f4e9d5f57ca staging: mt7621-pci: fix io space and properly set resource limits
> d907c205371d staging: mt7621-pci: fix register to set up virtual bridges
> 1a87910faf27 staging: mt7621-pci: don't return if get gpio fails
> dcd05b5bda59 staging: mt7621-pci-phy: avoid to create to different phys for a dual port one
> b2c3746212ae staging: mt7621-dts: set up only two pcie phys
> ef178ecf08bd staging: mt7621-pci: use only two phys from device tree
> 2553c237ffdc staging: mt7621-pci: change variable to print for slot
> 0bcb3caed96e staging: mt7621-pci: be sure gpio descriptor is null on fails
> 07d3877ebc7e staging: mt7621-pci: avoid to poweroff the phy for slot one
> ba5687b6220b staging: mt7621-dts: gpio 8 and 9 are vendor specific
> 04c8eb6ff776 staging: mt7621-pci: delete release gpios related code
> d3b3de21837b staging: mt7621-pci: use builtin_platform_driver()
> 41cd2464a89e staging: mt7621-pci: add myself as a contributor of the driver
^^^^
This one is not applied to the tree. This should be do throug the
MAINTAINERS file. Will do when this is mainlined.

> 815535a5b6ad staging: mt7621-pci-phy: use builtin_platform_driver()
> 8c26a5eec020 staging: mt7621-pci-phy: re-do 'xtal_mode' detection
> ccaa47aeb530 staging: mt7621-pci: avoid to set 'iomem_resource' addresses
> 28dd5daf3b55 staging: mt7621-pci: properly power off dual-ported pcie phy
> 10e6aa437d6e staging: mt7621-pci-phy: dt: bindings: add mediatek,mt7621-pci-phy.yaml
> 8dc6eec861d2 staging: mt7621-pci-phy: dt: bindings: remove bindings txt file
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
