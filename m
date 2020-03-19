Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1475A18B84C
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Mar 2020 14:44:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1110985A7D;
	Thu, 19 Mar 2020 13:44:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N0VdGxmq9DMQ; Thu, 19 Mar 2020 13:44:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4F60A85A80;
	Thu, 19 Mar 2020 13:43:59 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 662151BF2AF
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 13:43:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 60C162012F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 13:43:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dz+Os+5kWNsM
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 13:43:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 215A320029
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 13:43:56 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id 13so2670798oiy.9
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 06:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2oPevrqiL/gHNiz+7FWr0snTOi9TpQB1cIf58i1alrM=;
 b=KIlrff/80uh4aVSs3yFT5YZ2cPBAvyS4bkNtweQ5kxdM7XW6zRSBbx3X1n0BCZdNrC
 tHFG6tgGlP64fh0H3N00UNodDpYB6k00b1rAa+S7e7zUghiDh5wmBc7OWkMPgEYXlTxC
 igJbFCpK53+sJa8jfPnN64waagBDaGHEsQf2oll38/IA02TaNHvFq50bHC5g8aYLDh82
 dYt8uTZ4ipbBooqnrmypXc/TAWw15jAhlV63K8b4doKrXT1MdeuNfUkWsur4rjD58IPi
 dFcAF0rE6TPk7dLHSB/ZTRmgqvlPgWmVVDTHwGVKq2EZPJhol7YuVhrxvyjlHDsdkP5N
 6KeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2oPevrqiL/gHNiz+7FWr0snTOi9TpQB1cIf58i1alrM=;
 b=PxbOnoiMHcqhngr9ZxqjDFS8ypRinv+vsEOL/BgEe3kzk3BHHSmai13s7roA8WDfbM
 +a/pb4542AIPifIRBUR7fwmqMc0zoFx+no5hGyphEw8QvvHkX+BFefIlfgIFvlFYwarb
 q+1w8SypAoywj93CwgsGi5TJ/oSSEMx9TF82y3znaD4Q5hf5yFLWSPJszWpNvBRYo/Ic
 IyypzoViofUlLARVhoD2cQQen+p+ty+fDojvJTAhw8xjPRRpMaJGaqteIFD2C5NR5WD6
 1WTIhJ9dW0+/Hi/AeXwt8e8iYPle0Oc0s1d2Xegh5j8Gbm847b+inrQgexXfaHG3eS/R
 uYGQ==
X-Gm-Message-State: ANhLgQ0p86R5ErfDNmmqR1P0r2mkD0KCVtfho+giYYOipCPywuJnPwIP
 McUR9OUhn8z0TpKLeDZvzRcmls6h/OY9Lz+WHPw=
X-Google-Smtp-Source: ADFU+vtZ6OrXZMufP5flSHQHi9877sVj4nt2l0dIhMJMDpNscJBnmEYpz4facS87uGnrzSeQGzICAkF4C+8qf/2DfQI=
X-Received: by 2002:aca:3255:: with SMTP id y82mr2467020oiy.44.1584625435277; 
 Thu, 19 Mar 2020 06:43:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200313200913.24321-1-sergio.paracuellos@gmail.com>
 <0e15884b-de8d-a7a0-7560-3221a2c8a978@kernel.org>
In-Reply-To: <0e15884b-de8d-a7a0-7560-3221a2c8a978@kernel.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 19 Mar 2020 14:43:44 +0100
Message-ID: <CAMhs-H-GEAA79HdzvPJnJ-hBOKDUh15GiQ0qWKw2tKCpbVvCHw@mail.gmail.com>
Subject: Re: [PATCH v4 0/6] staging: mt7621-pci: re-do reset boot process
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

On Thu, Mar 19, 2020 at 1:42 PM Greg Ungerer <gerg@kernel.org> wrote:
>
> Hi Sergio,
>
> On 14/3/20 6:09 am, Sergio Paracuellos wrote:
> > Some time ago Greg Ungerer reported some random hangs using
> > the staging mt7621-pci driver:
> >
> > See:
> > * http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2019-June/134947.html
> >
> > Try to fix that is the main motivation of this patch series.
> >
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
> >
> > Changes in v4:
> > * Make use of 'devm_gpiod_get_index_optional' instead of 'devm_gpiod_get_index'.
> > * Use 'dev_err' instead of 'dev_notice' and return ERR_PTR if
> > 'devm_gpiod_get_index_optional' fails.
> > * Rename pers dealy macro to PERST_DELAY_MS.
> > * Add new patch 6 which removes function 'mt7621_reset_port' not needed anymore.
>
> Testing this v4 series always fails during boot with:
>
> ...
> NET: Registered protocol family 17
> NET: Registered protocol family 15
> 8021q: 802.1Q VLAN Support v1.8
> Loading compiled-in X.509 certificates
> AppArmor: AppArmor sha1 policy hashing enabled
>
> rt2880-pinmux pinctrl: pcie is already enabled
> mt7621-pci 1e140000.pcie: Error applying setting, reverse things back
> mt7621-pci 1e140000.pcie: Failed to get GPIO for PCIe1
> mt7621-pci 1e140000.pcie: Parsing DT failed
> mt7621-pci: probe of 1e140000.pcie failed with error -16

Looks like the gpio is valid but has been assigned to anything else.
It looks like a device-tree issue for me.
Does your hardware follows the indications of the mediatek application note?

https://github.com/openwrt/openwrt/files/4317436/an-mt7621-pcie-application-note-v0.1.pdf

To be able to test this you can just change the device tree and set
reset gpios to only perst-reset pin

reset-gpios = <&gpio 19 GPIO_ACTIVE_LOW>;

or avoid the "return PTR_ERR(port->gpio_rst);" after the call to
'devm_gpiod_get_index_optional'.

Or just make an exception if the pin is busy, which seems to be the
problem here:

>
> UBI error: cannot open mtd 3, error -19
> hctosys: unable to open rtc device (rtc0)
> cfg80211: Loading compiled-in X.509 certificates for regulatory database
> cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
> ...
>
> It never hangs, always boots up all the way. But always the same failure
> with PCIe.

This series has been applied to the staging tree and are properly
running for me in gnubee pc1.

You should test using all confirmed changes in staging-next branch and
this patch which fix a wrong register usage issue:

http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2020-March/142472.html


>
> Regards
> Greg
>
>
>
> > Changes in v3:
> > * Avoid to fail if gpio descriptor fails on get.
> > * re-do PATCH 1 commit message.
> > * Take into account gpio low polarity on request and assert and deassert.
> > * Review error path of driver to properly release gpio's resources.
> >
> > Changes in v2:
> > * restore configuration for pers mode to GPIO.
> > * Avoid to read FTS_NUM register in reset state.
> > * Release gpio's patch added
> >
> > Best regards,
> >      Sergio Paracuellos
> >
> >
> > Sergio Paracuellos (6):
> >    staging: mt7621-pci: use gpios for properly reset
> >    staging: mt7621-pci: change value for 'PERST_DELAY_MS'
> >    staging: mt7621-dts: make use of 'reset-gpios' property for pci
> >    staging: mt7621-pci: bindings: update doc accordly to last changes
> >    staging: mt7621-pci: release gpios after pci initialization
> >    staging: mt7621-pci: delete no more needed 'mt7621_reset_port'
> >
> >   drivers/staging/mt7621-dts/mt7621.dtsi        |  11 +-
> >   .../mt7621-pci/mediatek,mt7621-pci.txt        |   7 +-
> >   drivers/staging/mt7621-pci/pci-mt7621.c       | 122 ++++++++++--------
> >   3 files changed, 82 insertions(+), 58 deletions(-)
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
