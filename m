Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A5B18B852
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Mar 2020 14:47:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A88D286C99;
	Thu, 19 Mar 2020 13:47:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FEGnP0C8pxoE; Thu, 19 Mar 2020 13:47:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C22E186C92;
	Thu, 19 Mar 2020 13:47:44 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A9D61BF2AF
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 13:47:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 679C987EC3
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 13:47:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uJsn24S3YsYJ
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 13:47:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 762DC87EC2
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 13:47:41 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id j5so2736376oij.1
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 19 Mar 2020 06:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Va1W5O3eNFYddbD85RSLNoF1zA4I4BQLO7WYsUEwPx8=;
 b=Rka02ZmbIH3lh12Vq1hI3e96XTz7I5kvFvMrxwITvXI2TVo+/XgXBwqZYL7xvioh9K
 Ek4V1ZC0ak/m7qPseFtsPFxsGMwZz0hudaKSXFGgq2Z0MVJ3+IYyKRHkQ7D2LZm7isk/
 Ux1RKUZfzRW8cdy8GYYjTyGMvxa1Km90pm/7KmxsotQymM6wXLlW88u5ltd7GObNg6RQ
 e8nPZYvYR1G1sonNm3Hufl4KhOh6YkJrT3C6MNP2o+R5QF3sTCzmahkDsqD3YSmYXtNU
 gMs/EFOrP867W75vQYXloa63JBIlJLjW6cdFM9rY7BbST33NwH5V7MDoQ49xDdLDRNpt
 kQEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Va1W5O3eNFYddbD85RSLNoF1zA4I4BQLO7WYsUEwPx8=;
 b=PxMvvTubPjW3ocvzyQvHrcrIuEHMH2wB/V5FhH6fNEqBJgSk5s1bfYdifxYGZ+ve2t
 H6DTj4wGwtm1MW81Td/M1EQcKcxnANcNxCf3w8eqLWYphTZKMu+8j7k9tSGsjjCweQbN
 N3lkERvwGww+6Dmi/PBNFbkjoV8r3S4Lb9UGCWRo6Qy+o27Fvg7laH9vz9u7+Ux8ogco
 HWHd3I/WsSy3kVjhGwd8TdZfHTvDUYBjEu/XCdbEISrzclMpjisdqdZK5iFddxie4eqw
 6bq4D+0YE0s3h/1sDgFO1mmC3xF8HrDM7lb4ycHUeZ8A5563Chw6P88n+6SQlmJ0cqyP
 XpFg==
X-Gm-Message-State: ANhLgQ3A3YySCUoUFmUvTKY9eIox9X24BDeYGZRtk0xcumKOnXH4U3jf
 PDKVmyzhchLPIF4zo1dRcG13u9GPB2Qpn2hTYLQ=
X-Google-Smtp-Source: ADFU+vsXUwRjxUHQGy3CtXPddiHWggqTTBfF2bumVbFqUtm2+dB+asP3JztS4M/VQ2h+K8V7gbMtMUsUW9BYS02yyqc=
X-Received: by 2002:a05:6808:56:: with SMTP id
 v22mr2267592oic.116.1584625660479; 
 Thu, 19 Mar 2020 06:47:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200313200913.24321-1-sergio.paracuellos@gmail.com>
 <0e15884b-de8d-a7a0-7560-3221a2c8a978@kernel.org>
 <CAMhs-H-GEAA79HdzvPJnJ-hBOKDUh15GiQ0qWKw2tKCpbVvCHw@mail.gmail.com>
In-Reply-To: <CAMhs-H-GEAA79HdzvPJnJ-hBOKDUh15GiQ0qWKw2tKCpbVvCHw@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 19 Mar 2020 14:47:29 +0100
Message-ID: <CAMhs-H_ry5RMOR6At3xQga6o3YrVwt44OJJUBHgQJ8_t7Tmgxw@mail.gmail.com>
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

Sorry the mail was sent while I was still writing :)

On Thu, Mar 19, 2020 at 2:43 PM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> Hi Greg,
>
> On Thu, Mar 19, 2020 at 1:42 PM Greg Ungerer <gerg@kernel.org> wrote:
> >
> > Hi Sergio,
> >
> > On 14/3/20 6:09 am, Sergio Paracuellos wrote:
> > > Some time ago Greg Ungerer reported some random hangs using
> > > the staging mt7621-pci driver:
> > >
> > > See:
> > > * http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2019-June/134947.html
> > >
> > > Try to fix that is the main motivation of this patch series.
> > >
> > > Also in openwrt there is a driver for mt7621-pci which seems was rewritten
> > > from scratch (for kernel 4.14) by Ryder Lee and Weijie Gao from mediatek.
> > > There the approach for reset assert-deassert process is to set as 'gpio'
> > > the function for all the 'pcie' group for the pinctrl driver and use those
> > > gpio's as a reset for the end points. The driver I am talking about is still
> > > using legacy pci and legacy gpio kernel interfaces. IMHO, the correct thing
> > > to do is make this staging driver properly clean and functional and put it
> > > in its correct place in the mainline.
> > >
> > > See:
> > > * https://gist.github.com/dengqf6/7a9e9b4032d99f1a91dd9256c8a65c36
> > >
> > > Because of all of this this patch series tries to avoid random hangs of boot
> > > trying to use the 'reset-gpios' approach.
> > >
> > > Changes are being tested by openwrt people and seems to work.
> > >
> > > Hope this helps.
> > >
> > > Changes in v4:
> > > * Make use of 'devm_gpiod_get_index_optional' instead of 'devm_gpiod_get_index'.
> > > * Use 'dev_err' instead of 'dev_notice' and return ERR_PTR if
> > > 'devm_gpiod_get_index_optional' fails.
> > > * Rename pers dealy macro to PERST_DELAY_MS.
> > > * Add new patch 6 which removes function 'mt7621_reset_port' not needed anymore.
> >
> > Testing this v4 series always fails during boot with:
> >
> > ...
> > NET: Registered protocol family 17
> > NET: Registered protocol family 15
> > 8021q: 802.1Q VLAN Support v1.8
> > Loading compiled-in X.509 certificates
> > AppArmor: AppArmor sha1 policy hashing enabled
> >
> > rt2880-pinmux pinctrl: pcie is already enabled
> > mt7621-pci 1e140000.pcie: Error applying setting, reverse things back
> > mt7621-pci 1e140000.pcie: Failed to get GPIO for PCIe1
> > mt7621-pci 1e140000.pcie: Parsing DT failed
> > mt7621-pci: probe of 1e140000.pcie failed with error -16
>
> Looks like the gpio is valid but has been assigned to anything else.
> It looks like a device-tree issue for me.
> Does your hardware follows the indications of the mediatek application note?
>
> https://github.com/openwrt/openwrt/files/4317436/an-mt7621-pcie-application-note-v0.1.pdf
>
> To be able to test this you can just change the device tree and set
> reset gpios to only perst-reset pin
>
> reset-gpios = <&gpio 19 GPIO_ACTIVE_LOW>;
>
> or avoid the "return PTR_ERR(port->gpio_rst);" after the call to
> 'devm_gpiod_get_index_optional'.
>
> Or just make an exception if the pin is busy, which seems to be the
> problem here:

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c
b/drivers/staging/mt7621-pci/pci-mt7621.c
index 13b272597442..767b10fce18f 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -369,7 +369,8 @@ static int mt7621_pcie_parse_port(struct mt7621_pcie *pcie,
                                                       GPIOD_OUT_LOW);
        if (IS_ERR(port->gpio_rst)) {
                dev_err(dev, "Failed to get GPIO for PCIe%d\n", slot);
-               return PTR_ERR(port->gpio_rst);
+               if (PTR_ERR(port->gpio_rst) != -EBUSY)
+                       return PTR_ERR(port->gpio_rst);
        }

        port->slot = slot;

>
> >
> > UBI error: cannot open mtd 3, error -19
> > hctosys: unable to open rtc device (rtc0)
> > cfg80211: Loading compiled-in X.509 certificates for regulatory database
> > cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
> > ...
> >
> > It never hangs, always boots up all the way. But always the same failure
> > with PCIe.

If it hangs it should hang on the pci initilization process...

>
> This series has been applied to the staging tree and are properly
> running for me in gnubee pc1.
>
> You should test using all confirmed changes in staging-next branch and
> this patch which fix a wrong register usage issue:
>
> http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2020-March/142472.html
>
>
> >
> > Regards
> > Greg

Hope this helps.

Best regards,
    Sergio Paracuellos
> >
> >
> >
> > > Changes in v3:
> > > * Avoid to fail if gpio descriptor fails on get.
> > > * re-do PATCH 1 commit message.
> > > * Take into account gpio low polarity on request and assert and deassert.
> > > * Review error path of driver to properly release gpio's resources.
> > >
> > > Changes in v2:
> > > * restore configuration for pers mode to GPIO.
> > > * Avoid to read FTS_NUM register in reset state.
> > > * Release gpio's patch added
> > >
> > > Best regards,
> > >      Sergio Paracuellos
> > >
> > >
> > > Sergio Paracuellos (6):
> > >    staging: mt7621-pci: use gpios for properly reset
> > >    staging: mt7621-pci: change value for 'PERST_DELAY_MS'
> > >    staging: mt7621-dts: make use of 'reset-gpios' property for pci
> > >    staging: mt7621-pci: bindings: update doc accordly to last changes
> > >    staging: mt7621-pci: release gpios after pci initialization
> > >    staging: mt7621-pci: delete no more needed 'mt7621_reset_port'
> > >
> > >   drivers/staging/mt7621-dts/mt7621.dtsi        |  11 +-
> > >   .../mt7621-pci/mediatek,mt7621-pci.txt        |   7 +-
> > >   drivers/staging/mt7621-pci/pci-mt7621.c       | 122 ++++++++++--------
> > >   3 files changed, 82 insertions(+), 58 deletions(-)
> > >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
