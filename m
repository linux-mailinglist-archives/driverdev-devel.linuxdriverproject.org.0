Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5182AD5F2
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 13:15:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5DC0286416;
	Tue, 10 Nov 2020 12:15:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DaNcOPFWM306; Tue, 10 Nov 2020 12:15:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 25B74863FD;
	Tue, 10 Nov 2020 12:15:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 466381BF2F1
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 12:15:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 42EEA863FD
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 12:15:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FT5ErCTX7b4y for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 12:15:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6CE8A863D5
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 12:15:01 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id c80so14064194oib.2
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 04:15:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NXVA6gANg+kUdTv0XM3m4DOE8TPHRDIl2ApbFI0TBTs=;
 b=KMZ7J4waRamxT4RuPHKDBMnNhvLIR5UCq4cYhrOxG9lHO739497yMuDD53qlvGHYeA
 URD53r/QG5BqC4KUTSBVcaS72uzs612nf5A1zJAFO2pwcACpXhniVf6lnGCt01O1T0g9
 42KEKMwwAGhIjqvN7REXgOAnJJlsK1f/qXSGyfChW2N2rCBuvO0MliAzB2awlmPXFeno
 d1qXBOSNrrw7x5hH+c63qUsf1pdEGWC4DnLAuhUsW2G2OrEllkENGK6yel1gRU2qlHlz
 ZcktG5UGd1ucObfyovM7vsZUnTMnaPAOlywF9Wp7fRuo+f1KZXYfzLsEOAeb+AnYTYla
 kUew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NXVA6gANg+kUdTv0XM3m4DOE8TPHRDIl2ApbFI0TBTs=;
 b=PdZpIvVfSrZTiQ6BER7e1c5s0MxVA9iPuPffX+tdQ30SoXYau4ueM6bvnxObbuT1dc
 dJ7UBKUUtvN9aiZxjQW6AJnDbit3e3jP5LQZ31BXxK1hh+tQ/7n0xI/3jcHWllmGvtZU
 8yuEq53DeKkiFJb1orwr7z1epFo/bK3/VrNoOJxG5vBjsY4mb6PKWklpH6/CeHfx5sbZ
 8ef3JlI4a124rVR7i8ibR7D09sTf5wao0NcuYtHsQv/xcGAihjw5CqDycDQHvqeFJ6Sd
 8p0+72/qM7Uu5YD3jkHi3QUChsOqNLYfvHFEGThOmy4XfP6VF2KPgMu/286ZafYJeHY9
 qTXQ==
X-Gm-Message-State: AOAM531IF5r26leWOkGMLQXEtXcGY+ngbNGchb2iqiPf6gLuzgRl13Jp
 iTBTatKireaxK3/Ons0rZ0pnV3PI2NrsXmjmF9Q=
X-Google-Smtp-Source: ABdhPJz3eCeA4ktyBHhjHi405nhwJm6+sxL0YRsg+0udTXD8ax7qb3xFq3Dj85OcbbinHmi5hWhUj6tdXCHfc50yrfU=
X-Received: by 2002:aca:59c3:: with SMTP id n186mr2438187oib.149.1605010500593; 
 Tue, 10 Nov 2020 04:15:00 -0800 (PST)
MIME-Version: 1.0
References: <20201031122246.16497-1-sergio.paracuellos@gmail.com>
In-Reply-To: <20201031122246.16497-1-sergio.paracuellos@gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Tue, 10 Nov 2020 13:14:49 +0100
Message-ID: <CAMhs-H8_+YSi0x+YhjuQCQE9Fix-Y5URNca=Z+MphO=s+AeO-g@mail.gmail.com>
Subject: Re: [PATCH v4 0/4] MT7621 PCIe PHY
To: Kishon Vijay Abraham I <kishon@ti.com>
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 vkoul@kernel.org, Rob Herring <robh+dt@kernel.org>,
 NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

On Sat, Oct 31, 2020 at 1:22 PM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> This series adds support for the PCIe PHY found in the Mediatek
> MT7621 SoC.
>
> This is the first attempt to get feedback of what is missing in
> this driver to be promoted from staging.
>
> There is also a 'mt7621-pci' driver which is the controller part
> which is still in staging and is a client of this phy.
>
> Both drivers have been tested together in a gnubee1 board.
>
> This series are rebased on the top of linux-next:
> commit 4e78c578cb98 ("Add linux-next specific files for 20201030")
>
> Changes in v4:
>     - Bindings moved from txt to yaml so previous Rob's Reviewed-by
>       is not in the new patch with the yaml file.
>     - 'phy-cells' property means now if phy is dual-ported.
>     - Avoid custom 'xlate' function and properly set registers
>       when the phy is dual ported.
>     - Add use of 'builtin_platform_driver'.
>     - Added a patch including myself as maintainer in the
>       MAINTAINERS file.
>     - Add a patch removing patch from staging to make easier
>       the complete inclusion and avoid possible problems might
>       appear in 'linux-next' if the series are included.

Kishon, Vinod, any comments on this? Is here something wrong or
missing in order to get this accepted through your tree?

Thanks in advance for your time.

Best regards,
    Sergio Paracuellos
>
> Changes in v3:
>     - Recollect Rob's Reviewed-by of bindings.
>     - Make Kishon Vijay suggested changes in v2:
>     (See https://lkml.org/lkml/2019/4/17/53)
>     - Kconfig:
>         * Add depends on COMPILE_TEST
>         * Select REGMAP_MMIO
>     - Make use of 'soc_device_attribute' and 'soc_device_match'
>     - Use regmap mmio API instead of directly 'readl' and 'writel'.
>     - Use 'platform_get_resource' instead of 'of_address_to_resource'.
>
> Changes in v2:
>     - Reorder patches to get bindings first in the series.
>     - Don't use child nodes in the device tree. Use #phy-cells=1 instead.
>     - Update driver code with new 'xlate' function for the new device tree.
>     - Minor changes in driver's macros changing some spaces to tabs.
>
> Thanks in advance for your time.
>
> Best regards,
>     Sergio Paracuellos
>
> Sergio Paracuellos (4):
>   dt-bindings: phy: Add binding for Mediatek MT7621 PCIe PHY
>   phy: ralink: Add PHY driver for MT7621 PCIe PHY
>   MAINTAINERS: add MT7621 PHY PCI maintainer
>   staging: mt7621-pci-phy: remove driver from staging
>
>  .../devicetree/bindings/phy}/mediatek,mt7621-pci-phy.yaml | 0
>  MAINTAINERS                                               | 6 ++++++
>  drivers/phy/ralink/Kconfig                                | 8 ++++++++
>  drivers/phy/ralink/Makefile                               | 1 +
>  .../pci-mt7621-phy.c => phy/ralink/phy-mt7621-pci.c}      | 0
>  drivers/staging/Kconfig                                   | 2 --
>  drivers/staging/Makefile                                  | 1 -
>  drivers/staging/mt7621-pci-phy/Kconfig                    | 8 --------
>  drivers/staging/mt7621-pci-phy/Makefile                   | 2 --
>  drivers/staging/mt7621-pci-phy/TODO                       | 4 ----
>  10 files changed, 15 insertions(+), 17 deletions(-)
>  rename {drivers/staging/mt7621-pci-phy => Documentation/devicetree/bindings/phy}/mediatek,mt7621-pci-phy.yaml (100%)
>  rename drivers/{staging/mt7621-pci-phy/pci-mt7621-phy.c => phy/ralink/phy-mt7621-pci.c} (100%)
>  delete mode 100644 drivers/staging/mt7621-pci-phy/Kconfig
>  delete mode 100644 drivers/staging/mt7621-pci-phy/Makefile
>  delete mode 100644 drivers/staging/mt7621-pci-phy/TODO
>
> --
> 2.25.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
