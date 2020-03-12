Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C00AE182908
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 07:29:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 019BE862AC;
	Thu, 12 Mar 2020 06:29:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9PABhWjadjFR; Thu, 12 Mar 2020 06:29:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A0337860EF;
	Thu, 12 Mar 2020 06:29:26 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 28A001BF859
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 06:29:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 256B78927D
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 06:29:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mSlZ9cPv2uFy
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 06:29:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 50BD98923C
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 06:29:23 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id k18so4436846oib.3
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 23:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dnMwUAB15wgpNWOHa8sm+WWYkKQMQB4eQP2zYng24gE=;
 b=C6lWwGvFaJsLxfPMWdILkvUWAbfY1sqJomCSRHwbV2XbDpn5EmHJpMwDFxmXzPuJ0P
 0HcOZvoyRdl/LDK9tv1VoxzRCdk66MacZjwU5fRX83CEbvTLEcvZqn5Towz2sZ57VLqV
 kGJRlVflTH7IKar7Nyh7wGwUoJXh6eVbfVnfkLIcEsWoDWqwrvHoJrfw1Uu0EtAqk3aN
 al6V042cNVmXa6RVSqCrEVSfXX5CtSXyyhjDs9zhXjk+BOvvBaoW2jSgG5U79sQ61+Ax
 TrHmu8kJtByNiqybEO4UpREmB26xjBYCstpyQik7/k7Zg/oHOPV2Ku1EMZ9MHUFP4+kH
 OZug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dnMwUAB15wgpNWOHa8sm+WWYkKQMQB4eQP2zYng24gE=;
 b=oSHaTvitf9upQJR8mHirPrBkHBgAA/i9g37S94ILRMX4SvgCkeN9SA6to+eo6uz6uo
 wO9q3D9LULYBbviJGNIlxSyuLCO3X60pcFI9yVZ55vwzifql+qNxzQcbrfuGXrZvNX5n
 ZJJB5Mn8ILtpGScUUHmeLyT7QMR5diKkMjiw+7GPsqX4GG5IxhMAiRwTXPkuzSM8obfI
 n/G6V6mDgFIn1ZV2NPyHdF7bOYEVewmFObKckHzVKziDuW//NWUO+fxsm/jKF9SODLul
 G0W0f6+9yGFHcBRpvoytGf90UJZlb4fKeivLFLCjaGDiofSU8BpM5b8J9hNaEV0jn6w9
 Isvw==
X-Gm-Message-State: ANhLgQ3gT3i/rJQnh84xF4ve0fPeFjcdMRuKYcHhwOtyXQlK2SlIJC7V
 uX8aZy0Y1qKCvo+S8N++fgaSAaJYKWrECwcTMmo=
X-Google-Smtp-Source: ADFU+vv8G/EOZTZYcPrdXCPczio1LUQO7GJp5rqdfECy9aXbqIuxnO0aO+E5fjoa68niWdfa2uDUbqnor8ajq6h5ZTs=
X-Received: by 2002:a05:6808:b17:: with SMTP id
 s23mr1572650oij.166.1583994562437; 
 Wed, 11 Mar 2020 23:29:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200311185808.29166-1-sergio.paracuellos@gmail.com>
 <fec91f9d-1ad0-d98a-9f4a-346e70f3c22d@kernel.org>
In-Reply-To: <fec91f9d-1ad0-d98a-9f4a-346e70f3c22d@kernel.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 12 Mar 2020 07:29:11 +0100
Message-ID: <CAMhs-H-WF9gwhU+KbiWzvyQeL8wxcEANtVfEtp2LWM3adutmVA@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] staging: mt7621-pci: re-do reset boot process
To: Greg Ungerer <gerg@kernel.org>
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
Cc: ryder.lee@mediatek.com, Greg KH <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org, weijie.gao@mediatek.com,
 NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

On Thu, Mar 12, 2020 at 5:56 AM Greg Ungerer <gerg@kernel.org> wrote:
>
> Hi Sergio,
>
> On 12/3/20 4:58 am, Sergio Paracuellos wrote:
> > Some time ago Greg Ungerer reported some random hangs using
> > the staging mt7621-pci driver:
> >
> > See:
> > * http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2019-June/134947.html
> >
> > Try to fix that is the main motivation of this patch series.
>
> Excellent!  I am glad to see an effort to get these problems resolved.
> I still have to switch back to much earlier version of this PCI
> driving code to get reliable working behavior.
>
>
> > Also in openwrt there is a driver for mt7621-pci which seems was rewritten
> > from scratch (for kernel 4.14) by Ryder Lee and Weijie Gao from mediatek.
> > There the approach for reset assert-deassert process is to set as 'gpio'
> > the function for all the 'pcie' group for the pinctrl driver and use those
> > gpio's as a reset for the end points. The driver I am talking about is still
> > using legacy pci and legacy gpio kernel interfaces. IMHO, the correct thing
> > to do is make this staging driver properly clean and functional and put it
> > in its correct place in the mainline.
> >
> > See:
> > * https://gist.github.com/dengqf6/7a9e9b4032d99f1a91dd9256c8a65c36
> >
> > Because of all of this this patch series tries to avoid random hangs of boot
> > trying to use the 'reset-gpios' approach.
> >
> > Changes are being tested by openwrt people and seems to work.
> >
> > Hope this helps.
>
> What kernel did you generate these patches against?
> They didn't apply completely cleanly for me against 5.5 or 5.6.0-rc5.
> Minor reject and some fuzzing, easy enough to fix for testing.
>

This is rebased on the top of staging-testing branch of git staging tree.

> Running 5.6.0-rc5 I get the following failure on my hardware during boot:
>
> ...
> rt2880-pinmux pinctrl: pcie is already enabled
> mt7621-pci 1e140000.pcie: Error applying setting, reverse things back
> mt7621-pci 1e140000.pcie: Unable to request GPIO reset in slot 1
> mt7621-pci 1e140000.pcie: Parsing DT failed
> mt7621-pci: probe of 1e140000.pcie failed with error -16
>

Ok, so it seems depending of boards gpio's can or not can be
requested, so maybe we have to do this optional
an don't fail on parsing the device tree.

>
> FWIW: running the original 5.6.0-rc5 code gives a few different
> PCI startup failures - but PCI devices never work properly. I can
> send the error trace output if useful, but it is similar to what
> I have posted in the past.

Mmmm. This patches were tested yesterday and I was told they were
working. I will change this patches to
avoid gpio's to be mandatory and send v3, thanks.

See:
https://github.com/openwrt/openwrt/pull/2798

>
> Regards
> Greg

Best regards,
    Sergio Paracuellos
>
>
> > Changes in v2:
> >      * restore configuration for pers mode to GPIO.
> >      * Avoid to read FTS_NUM register in reset state.
> >
> > Best regards,
> >      Sergio Paracuellos
> >
> >
> > Sergio Paracuellos (5):
> >    staging: mt7621-pci: use gpios for properly reset
> >    staging: mt7621-pci: change value for 'PERST_DELAY_US'
> >    staging: mt7621-dts: make use of 'reset-gpios' property for pci
> >    staging: mt7621-pci: bindings: update doc accordly to last changes
> >    staging: mt7621-pci: release gpios after pci initialization
> >
> >   drivers/staging/mt7621-dts/mt7621.dtsi        | 11 ++-
> >   .../mt7621-pci/mediatek,mt7621-pci.txt        |  7 +-
> >   drivers/staging/mt7621-pci/pci-mt7621.c       | 94 ++++++++++++-------
> >   3 files changed, 72 insertions(+), 40 deletions(-)
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
