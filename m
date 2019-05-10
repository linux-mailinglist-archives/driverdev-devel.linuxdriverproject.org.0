Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB8819F60
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 May 2019 16:36:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5CF8D87A26;
	Fri, 10 May 2019 14:36:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oZhmrWGwqCuJ; Fri, 10 May 2019 14:36:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 787D2879A7;
	Fri, 10 May 2019 14:36:02 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B5A0F1BF983
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 10 May 2019 14:36:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B27AD232F2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 10 May 2019 14:36:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yTfVeUZfko0a
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 10 May 2019 14:35:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 57118232D7
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 10 May 2019 14:35:58 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id g18so5526868otj.11
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 10 May 2019 07:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0vHNe8n5sAaxqmrkhdQQP639CxwC2AADOyLbX9B3yig=;
 b=tn7dJw2WCtRqZWxREfduwNs9iywjUf+bd9882LI9W7UPFsMVrQ2tq+A+UAyd7Eawug
 skldTQ5+NtaR5Vs+PdKOgiOnEKtLEgVGQNW6FJ2vDNzWf98wFtoWg4tgNzPU1/DF+mVt
 IiZBavClEPlMkfEw2/tDWI9ZFuasnHfdc7s1YnICOLR6zLyuWooGTJEW/6YuC+Ffjf39
 K263z19SEWXlrdAqcWApLrD8zugWIdrM/T0/E4f5bvsGXmeSo0uthBE8C8CQcQRuezEZ
 8k+TkVy6wkM5rWFwWmr18uz3qOxTmibV0P6WmjY2ojoTt5lmu9WHT51aP+7xRU8YhJkz
 mP7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0vHNe8n5sAaxqmrkhdQQP639CxwC2AADOyLbX9B3yig=;
 b=QkiRBAu5H/q8+vLCtpWJAspjPsOAvyoCGi2q7VUzs2m0cJ3MTF8BBmA6nA+dKx3y52
 rLLX8A2NDE2xhKoTFEa/1f20oEDDWKDmt9Lj2o6t6JiIACZ6B2FU/iMIWVLUOg2t0nfR
 w99esh6TyultrluCnn8cWudr5FVrPbLjPCUysA+33kQArC0s2jVMIb9m2A+Rk0yzsLS7
 jC/ykKgFaubVx1/deiceMfAZtRHUkyQ21frAeBMm9ecH0BlbDBfjXfTiX1472+hKNNAj
 fGctYB3JTR0h0XKsntHVm+qHyuaUf+HNX/08Ee+ZRZwfcWLkz0sWM6fClu9cKxWtxFf/
 L1TQ==
X-Gm-Message-State: APjAAAWEdj5LoYHv78DTSELzJ72x+kCj3epDv/xZLHB3gtpzHbIcHiaP
 naqNR1szHm+Z+CmFAR1bkPrnaHWEYaqgD/ATONA=
X-Google-Smtp-Source: APXvYqy878+Iy62QZLfqVz2Bex2+AWsbqbTKaqSm4p+8No239W5BtZiiIGVy+Hd7kWSDXN4g+s0ebjwrqq5VlwYgFQM=
X-Received: by 2002:a9d:7445:: with SMTP id p5mr7363374otk.26.1557498957527;
 Fri, 10 May 2019 07:35:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190425154122.24122-1-sergio.paracuellos@gmail.com>
 <20190425154122.24122-3-sergio.paracuellos@gmail.com>
In-Reply-To: <20190425154122.24122-3-sergio.paracuellos@gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 10 May 2019 16:35:46 +0200
Message-ID: <CAMhs-H_Q2_5-T4kuKi80Qn2U8jUm2EabKNaDXwCME9LU1QGy6g@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] phy: ralink: Add PHY driver for MT7621 PCIe PHY
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, driverdev-devel@linuxdriverproject.org,
 linux-mips@vger.kernel.org, linux-kernel <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, John Crispin <john@phrozen.org>,
 NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi all,

On Thu, Apr 25, 2019 at 5:41 PM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> This patch adds a driver for the PCIe PHY of MT7621 SoC.
>
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  drivers/phy/ralink/Kconfig          |   8 +
>  drivers/phy/ralink/Makefile         |   1 +
>  drivers/phy/ralink/phy-mt7621-pci.c | 423 ++++++++++++++++++++++++++++
>  3 files changed, 432 insertions(+)
>  create mode 100644 drivers/phy/ralink/phy-mt7621-pci.c

Any comments on this?

Thanks in advance for your time.

Best regards,
    Sergio Paracuellos
>
> diff --git a/drivers/phy/ralink/Kconfig b/drivers/phy/ralink/Kconfig
> index 14fd219535ef..429187ff02e2 100644
> --- a/drivers/phy/ralink/Kconfig
> +++ b/drivers/phy/ralink/Kconfig
> @@ -1,6 +1,14 @@
>  #
>  # PHY drivers for Ralink platforms.
>  #
> +config PHY_MT7621_PCI
> +       tristate "MediaTek MT7621 PCI PHY Driver"
> +       depends on (RALINK || COMPILE_TEST) && OF
> +       select GENERIC_PHY
> +       select REGMAP_MMIO
> +       help
> +         Say 'Y' here to add support for MediaTek MT7621 PCI PHY driver,
> +
>  config PHY_RALINK_USB
>         tristate "Ralink USB PHY driver"
>         depends on RALINK || COMPILE_TEST
> diff --git a/drivers/phy/ralink/Makefile b/drivers/phy/ralink/Makefile
> index 5c9e326e8757..2052d5649863 100644
> --- a/drivers/phy/ralink/Makefile
> +++ b/drivers/phy/ralink/Makefile
> @@ -1 +1,2 @@
> +obj-$(CONFIG_PHY_MT7621_PCI)   += phy-mt7621-pci.o
>  obj-$(CONFIG_PHY_RALINK_USB)   += phy-ralink-usb.o
> diff --git a/drivers/phy/ralink/phy-mt7621-pci.c b/drivers/phy/ralink/phy-mt7621-pci.c
> new file mode 100644
> index 000000000000..2576f179e30a
> --- /dev/null
> +++ b/drivers/phy/ralink/phy-mt7621-pci.c
> @@ -0,0 +1,423 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Mediatek MT7621 PCI PHY Driver
> + * Author: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> + */
> +
> +#include <dt-bindings/phy/phy.h>
> +#include <linux/bitops.h>
> +#include <linux/module.h>
> +#include <linux/of_address.h>
> +#include <linux/of_device.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +#include <linux/sys_soc.h>
> +#include <mt7621.h>
> +#include <ralink_regs.h>
> +
> +#define RALINK_CLKCFG1                         0x30
> +
> +#define PCIE_PORT_CLK_EN(x)                    BIT(24 + (x))
> +
> +#define RG_PE1_PIPE_REG                                0x02c
> +#define RG_PE1_PIPE_RST                                BIT(12)
> +#define RG_PE1_PIPE_CMD_FRC                    BIT(4)
> +
> +#define RG_P0_TO_P1_WIDTH                      0x100
> +#define RG_PE1_H_LCDDS_REG                     0x49c
> +#define RG_PE1_H_LCDDS_PCW                     GENMASK(30, 0)
> +#define RG_PE1_H_LCDDS_PCW_VAL(x)              ((0x7fffffff & (x)) << 0)
> +
> +#define RG_PE1_FRC_H_XTAL_REG                  0x400
> +#define RG_PE1_FRC_H_XTAL_TYPE                 BIT(8)
> +#define RG_PE1_H_XTAL_TYPE                     GENMASK(10, 9)
> +#define RG_PE1_H_XTAL_TYPE_VAL(x)              ((0x3 & (x)) << 9)
> +
> +#define RG_PE1_FRC_PHY_REG                     0x000
> +#define RG_PE1_FRC_PHY_EN                      BIT(4)
> +#define RG_PE1_PHY_EN                          BIT(5)
> +
> +#define RG_PE1_H_PLL_REG                       0x490
> +#define RG_PE1_H_PLL_BC                                GENMASK(23, 22)
> +#define RG_PE1_H_PLL_BC_VAL(x)                 ((0x3 & (x)) << 22)
> +#define RG_PE1_H_PLL_BP                                GENMASK(21, 18)
> +#define RG_PE1_H_PLL_BP_VAL(x)                 ((0xf & (x)) << 18)
> +#define RG_PE1_H_PLL_IR                                GENMASK(15, 12)
> +#define RG_PE1_H_PLL_IR_VAL(x)                 ((0xf & (x)) << 12)
> +#define RG_PE1_H_PLL_IC                                GENMASK(11, 8)
> +#define RG_PE1_H_PLL_IC_VAL(x)                 ((0xf & (x)) << 8)
> +#define RG_PE1_H_PLL_PREDIV                    GENMASK(7, 6)
> +#define RG_PE1_H_PLL_PREDIV_VAL(x)             ((0x3 & (x)) << 6)
> +#define RG_PE1_PLL_DIVEN                       GENMASK(3, 1)
> +#define RG_PE1_PLL_DIVEN_VAL(x)                        ((0x7 & (x)) << 1)
> +
> +#define RG_PE1_H_PLL_FBKSEL_REG                        0x4bc
> +#define RG_PE1_H_PLL_FBKSEL                    GENMASK(5, 4)
> +#define RG_PE1_H_PLL_FBKSEL_VAL(x)             ((0x3 & (x)) << 4)
> +
> +#define        RG_PE1_H_LCDDS_SSC_PRD_REG              0x4a4
> +#define RG_PE1_H_LCDDS_SSC_PRD                 GENMASK(15, 0)
> +#define RG_PE1_H_LCDDS_SSC_PRD_VAL(x)          ((0xffff & (x)) << 0)
> +
> +#define RG_PE1_H_LCDDS_SSC_DELTA_REG           0x4a8
> +#define RG_PE1_H_LCDDS_SSC_DELTA               GENMASK(11, 0)
> +#define RG_PE1_H_LCDDS_SSC_DELTA_VAL(x)                ((0xfff & (x)) << 0)
> +#define RG_PE1_H_LCDDS_SSC_DELTA1              GENMASK(27, 16)
> +#define RG_PE1_H_LCDDS_SSC_DELTA1_VAL(x)       ((0xff & (x)) << 16)
> +
> +#define RG_PE1_LCDDS_CLK_PH_INV_REG            0x4a0
> +#define RG_PE1_LCDDS_CLK_PH_INV                        BIT(5)
> +
> +#define RG_PE1_H_PLL_BR_REG                    0x4ac
> +#define RG_PE1_H_PLL_BR                                GENMASK(18, 16)
> +#define RG_PE1_H_PLL_BR_VAL(x)                 ((0x7 & (x)) << 16)
> +
> +#define        RG_PE1_MSTCKDIV_REG                     0x414
> +#define RG_PE1_MSTCKDIV                                GENMASK(7, 6)
> +#define RG_PE1_MSTCKDIV_VAL(x)                 ((0x3 & (x)) << 6)
> +
> +#define RG_PE1_FRC_MSTCKDIV                    BIT(5)
> +
> +#define MAX_PHYS       2
> +
> +/**
> + * struct mt7621_pci_phy_instance - Mt7621 Pcie PHY device
> + * @phy: pointer to the kernel PHY device
> + * @port_base: base register
> + * @index: internal ID to identify the Mt7621 PCIe PHY
> + */
> +struct mt7621_pci_phy_instance {
> +       struct phy *phy;
> +       void __iomem *port_base;
> +       u32 index;
> +};
> +
> +/**
> + * struct mt7621_pci_phy - Mt7621 Pcie PHY core
> + * @dev: pointer to device
> + * @regmap: kernel regmap pointer
> + * @phys: pointer to Mt7621 PHY device
> + * @nphys: number of PHY devices for this core
> + * @bypass_pipe_rst: mark if 'mt7621_bypass_pipe_rst'
> + * needs to be executed. Depends on chip revision.
> + */
> +struct mt7621_pci_phy {
> +       struct device *dev;
> +       struct regmap *regmap;
> +       struct mt7621_pci_phy_instance **phys;
> +       int nphys;
> +       bool bypass_pipe_rst;
> +};
> +
> +static inline u32 phy_read(struct mt7621_pci_phy *phy, u32 reg)
> +{
> +       u32 val;
> +
> +       regmap_read(phy->regmap, reg, &val);
> +
> +       return val;
> +}
> +
> +static inline void phy_write(struct mt7621_pci_phy *phy, u32 val, u32 reg)
> +{
> +       regmap_write(phy->regmap, reg, val);
> +}
> +
> +static void mt7621_bypass_pipe_rst(struct mt7621_pci_phy *phy,
> +                                  struct mt7621_pci_phy_instance *instance)
> +{
> +       u32 offset = (instance->index != 1) ?
> +               RG_PE1_PIPE_REG : RG_PE1_PIPE_REG + RG_P0_TO_P1_WIDTH;
> +       u32 reg;
> +
> +       reg = phy_read(phy, offset);
> +       reg &= ~(RG_PE1_PIPE_RST | RG_PE1_PIPE_CMD_FRC);
> +       reg |= (RG_PE1_PIPE_RST | RG_PE1_PIPE_CMD_FRC);
> +       phy_write(phy, reg, offset);
> +}
> +
> +static void mt7621_set_phy_for_ssc(struct mt7621_pci_phy *phy,
> +                                  struct mt7621_pci_phy_instance *instance)
> +{
> +       struct device *dev = phy->dev;
> +       u32 reg = rt_sysc_r32(SYSC_REG_SYSTEM_CONFIG0);
> +       u32 offset;
> +       u32 val;
> +
> +       reg = (reg >> 6) & 0x7;
> +       /* Set PCIe Port PHY to disable SSC */
> +       /* Debug Xtal Type */
> +       val = phy_read(phy, RG_PE1_FRC_H_XTAL_REG);
> +       val &= ~(RG_PE1_FRC_H_XTAL_TYPE | RG_PE1_H_XTAL_TYPE);
> +       val |= RG_PE1_FRC_H_XTAL_TYPE;
> +       val |= RG_PE1_H_XTAL_TYPE_VAL(0x00);
> +       phy_write(phy, val, RG_PE1_FRC_H_XTAL_REG);
> +
> +       /* disable port */
> +       offset = (instance->index != 1) ?
> +               RG_PE1_FRC_PHY_REG : RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH;
> +       val = phy_read(phy, offset);
> +       val &= ~(RG_PE1_FRC_PHY_EN | RG_PE1_PHY_EN);
> +       val |= RG_PE1_FRC_PHY_EN;
> +       phy_write(phy, val, offset);
> +
> +       /* Set Pre-divider ratio (for host mode) */
> +       val = phy_read(phy, RG_PE1_H_PLL_REG);
> +       val &= ~(RG_PE1_H_PLL_PREDIV);
> +
> +       if (reg <= 5 && reg >= 3) { /* 40MHz Xtal */
> +               val |= RG_PE1_H_PLL_PREDIV_VAL(0x01);
> +               phy_write(phy, val, RG_PE1_H_PLL_REG);
> +               dev_info(dev, "Xtal is 40MHz\n");
> +       } else { /* 25MHz | 20MHz Xtal */
> +               val |= RG_PE1_H_PLL_PREDIV_VAL(0x00);
> +               phy_write(phy, val, RG_PE1_H_PLL_REG);
> +               if (reg >= 6) {
> +                       dev_info(dev, "Xtal is 25MHz\n");
> +
> +                       /* Select feedback clock */
> +                       val = phy_read(phy, RG_PE1_H_PLL_FBKSEL_REG);
> +                       val &= ~(RG_PE1_H_PLL_FBKSEL);
> +                       val |= RG_PE1_H_PLL_FBKSEL_VAL(0x01);
> +                       phy_write(phy, val, RG_PE1_H_PLL_FBKSEL_REG);
> +
> +                       /* DDS NCPO PCW (for host mode) */
> +                       val = phy_read(phy, RG_PE1_H_LCDDS_SSC_PRD_REG);
> +                       val &= ~(RG_PE1_H_LCDDS_SSC_PRD);
> +                       val |= RG_PE1_H_LCDDS_SSC_PRD_VAL(0x18000000);
> +                       phy_write(phy, val, RG_PE1_H_LCDDS_SSC_PRD_REG);
> +
> +                       /* DDS SSC dither period control */
> +                       val = phy_read(phy, RG_PE1_H_LCDDS_SSC_PRD_REG);
> +                       val &= ~(RG_PE1_H_LCDDS_SSC_PRD);
> +                       val |= RG_PE1_H_LCDDS_SSC_PRD_VAL(0x18d);
> +                       phy_write(phy, val, RG_PE1_H_LCDDS_SSC_PRD_REG);
> +
> +                       /* DDS SSC dither amplitude control */
> +                       val = phy_read(phy, RG_PE1_H_LCDDS_SSC_DELTA_REG);
> +                       val &= ~(RG_PE1_H_LCDDS_SSC_DELTA |
> +                                RG_PE1_H_LCDDS_SSC_DELTA1);
> +                       val |= RG_PE1_H_LCDDS_SSC_DELTA_VAL(0x4a);
> +                       val |= RG_PE1_H_LCDDS_SSC_DELTA1_VAL(0x4a);
> +                       phy_write(phy, val, RG_PE1_H_LCDDS_SSC_DELTA_REG);
> +               } else {
> +                       dev_info(dev, "Xtal is 20MHz\n");
> +               }
> +       }
> +
> +       /* DDS clock inversion */
> +       val = phy_read(phy, RG_PE1_LCDDS_CLK_PH_INV_REG);
> +       val &= ~(RG_PE1_LCDDS_CLK_PH_INV);
> +       val |= RG_PE1_LCDDS_CLK_PH_INV;
> +       phy_write(phy, val, RG_PE1_LCDDS_CLK_PH_INV_REG);
> +
> +       /* Set PLL bits */
> +       val = phy_read(phy, RG_PE1_H_PLL_REG);
> +       val &= ~(RG_PE1_H_PLL_BC | RG_PE1_H_PLL_BP | RG_PE1_H_PLL_IR |
> +                RG_PE1_H_PLL_IC | RG_PE1_PLL_DIVEN);
> +       val |= RG_PE1_H_PLL_BC_VAL(0x02);
> +       val |= RG_PE1_H_PLL_BP_VAL(0x06);
> +       val |= RG_PE1_H_PLL_IR_VAL(0x02);
> +       val |= RG_PE1_H_PLL_IC_VAL(0x01);
> +       val |= RG_PE1_PLL_DIVEN_VAL(0x02);
> +       phy_write(phy, val, RG_PE1_H_PLL_REG);
> +
> +       val = phy_read(phy, RG_PE1_H_PLL_BR_REG);
> +       val &= ~(RG_PE1_H_PLL_BR);
> +       val |= RG_PE1_H_PLL_BR_VAL(0x00);
> +       phy_write(phy, val, RG_PE1_H_PLL_BR_REG);
> +
> +       if (reg <= 5 && reg >= 3) { /* 40MHz Xtal */
> +               /* set force mode enable of da_pe1_mstckdiv */
> +               val = phy_read(phy, RG_PE1_MSTCKDIV_REG);
> +               val &= ~(RG_PE1_MSTCKDIV | RG_PE1_FRC_MSTCKDIV);
> +               val |= (RG_PE1_MSTCKDIV_VAL(0x01) | RG_PE1_FRC_MSTCKDIV);
> +               phy_write(phy, val, RG_PE1_MSTCKDIV_REG);
> +       }
> +}
> +
> +static int mt7621_pci_phy_init(struct phy *phy)
> +{
> +       struct mt7621_pci_phy_instance *instance = phy_get_drvdata(phy);
> +       struct mt7621_pci_phy *mphy = dev_get_drvdata(phy->dev.parent);
> +
> +       if (mphy->bypass_pipe_rst)
> +               mt7621_bypass_pipe_rst(mphy, instance);
> +
> +       mt7621_set_phy_for_ssc(mphy, instance);
> +
> +       return 0;
> +}
> +
> +static int mt7621_pci_phy_power_on(struct phy *phy)
> +{
> +       struct mt7621_pci_phy_instance *instance = phy_get_drvdata(phy);
> +       struct mt7621_pci_phy *mphy = dev_get_drvdata(phy->dev.parent);
> +       u32 offset = (instance->index != 1) ?
> +               RG_PE1_FRC_PHY_REG : RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH;
> +       u32 val;
> +
> +       /* Enable PHY and disable force mode */
> +       val = phy_read(mphy, offset);
> +       val &= ~(RG_PE1_FRC_PHY_EN | RG_PE1_PHY_EN);
> +       val |= (RG_PE1_FRC_PHY_EN | RG_PE1_PHY_EN);
> +       phy_write(mphy, val, offset);
> +
> +       return 0;
> +}
> +
> +static int mt7621_pci_phy_power_off(struct phy *phy)
> +{
> +       struct mt7621_pci_phy_instance *instance = phy_get_drvdata(phy);
> +       struct mt7621_pci_phy *mphy = dev_get_drvdata(phy->dev.parent);
> +       u32 offset = (instance->index != 1) ?
> +               RG_PE1_FRC_PHY_REG : RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH;
> +       u32 val;
> +
> +       /* Disable PHY */
> +       val = phy_read(mphy, offset);
> +       val &= ~(RG_PE1_FRC_PHY_EN | RG_PE1_PHY_EN);
> +       val |= RG_PE1_FRC_PHY_EN;
> +       phy_write(mphy, val, offset);
> +
> +       return 0;
> +}
> +
> +static int mt7621_pci_phy_exit(struct phy *phy)
> +{
> +       struct mt7621_pci_phy_instance *instance = phy_get_drvdata(phy);
> +
> +       rt_sysc_m32(PCIE_PORT_CLK_EN(instance->index), 0, RALINK_CLKCFG1);
> +
> +       return 0;
> +}
> +
> +static const struct phy_ops mt7621_pci_phy_ops = {
> +       .init           = mt7621_pci_phy_init,
> +       .exit           = mt7621_pci_phy_exit,
> +       .power_on       = mt7621_pci_phy_power_on,
> +       .power_off      = mt7621_pci_phy_power_off,
> +       .owner          = THIS_MODULE,
> +};
> +
> +static struct phy *mt7621_pcie_phy_of_xlate(struct device *dev,
> +                                           struct of_phandle_args *args)
> +{
> +       struct mt7621_pci_phy *mt7621_phy = dev_get_drvdata(dev);
> +
> +       if (args->args_count == 0)
> +               return mt7621_phy->phys[0]->phy;
> +
> +       if (WARN_ON(args->args[0] >= MAX_PHYS))
> +               return ERR_PTR(-ENODEV);
> +
> +       return mt7621_phy->phys[args->args[0]]->phy;
> +}
> +
> +static const struct soc_device_attribute mt7621_pci_quirks_match[] = {
> +       { .soc_id = "mt7621", .revision = "E2" }
> +};
> +
> +static const struct regmap_config mt7621_pci_phy_regmap_config = {
> +       .reg_bits = 32,
> +       .val_bits = 32,
> +       .reg_stride = 4,
> +       .max_register = 0x700,
> +};
> +
> +static int mt7621_pci_phy_probe(struct platform_device *pdev)
> +{
> +       struct device *dev = &pdev->dev;
> +       const struct soc_device_attribute *attr;
> +       struct phy_provider *provider;
> +       struct mt7621_pci_phy *phy;
> +       struct resource *res;
> +       int port;
> +       void __iomem *port_base;
> +
> +       phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
> +       if (!phy)
> +               return -ENOMEM;
> +
> +       phy->nphys = MAX_PHYS;
> +       phy->phys = devm_kcalloc(dev, phy->nphys,
> +                                sizeof(*phy->phys), GFP_KERNEL);
> +       if (!phy->phys)
> +               return -ENOMEM;
> +
> +       attr = soc_device_match(mt7621_pci_quirks_match);
> +       if (attr)
> +               phy->bypass_pipe_rst = true;
> +
> +       phy->dev = dev;
> +       platform_set_drvdata(pdev, phy);
> +
> +       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +       if (!res) {
> +               dev_err(dev, "failed to get address resource\n");
> +               return -ENXIO;
> +       }
> +
> +       port_base = devm_ioremap_resource(dev, res);
> +       if (IS_ERR(port_base)) {
> +               dev_err(dev, "failed to remap phy regs\n");
> +               return PTR_ERR(port_base);
> +       }
> +
> +       phy->regmap = devm_regmap_init_mmio(phy->dev, port_base,
> +                                           &mt7621_pci_phy_regmap_config);
> +       if (IS_ERR(phy->regmap))
> +               return PTR_ERR(phy->regmap);
> +
> +       for (port = 0; port < MAX_PHYS; port++) {
> +               struct mt7621_pci_phy_instance *instance;
> +               struct phy *pphy;
> +
> +               instance = devm_kzalloc(dev, sizeof(*instance), GFP_KERNEL);
> +               if (!instance)
> +                       return -ENOMEM;
> +
> +               phy->phys[port] = instance;
> +
> +               pphy = devm_phy_create(dev, dev->of_node, &mt7621_pci_phy_ops);
> +               if (IS_ERR(phy)) {
> +                       dev_err(dev, "failed to create phy\n");
> +                       return PTR_ERR(phy);
> +               }
> +
> +               instance->port_base = port_base;
> +               instance->phy = pphy;
> +               instance->index = port;
> +               phy_set_drvdata(pphy, instance);
> +       }
> +
> +       provider = devm_of_phy_provider_register(dev, mt7621_pcie_phy_of_xlate);
> +
> +       return PTR_ERR_OR_ZERO(provider);
> +}
> +
> +static const struct of_device_id mt7621_pci_phy_ids[] = {
> +       { .compatible = "mediatek,mt7621-pci-phy" },
> +       {},
> +};
> +MODULE_DEVICE_TABLE(of, mt7621_pci_ids);
> +
> +static struct platform_driver mt7621_pci_phy_driver = {
> +       .probe = mt7621_pci_phy_probe,
> +       .driver = {
> +               .name = "mt7621-pci-phy",
> +               .of_match_table = of_match_ptr(mt7621_pci_phy_ids),
> +       },
> +};
> +
> +static int __init mt7621_pci_phy_drv_init(void)
> +{
> +       return platform_driver_register(&mt7621_pci_phy_driver);
> +}
> +
> +module_init(mt7621_pci_phy_drv_init);
> +
> +MODULE_AUTHOR("Sergio Paracuellos <sergio.paracuellos@gmail.com>");
> +MODULE_DESCRIPTION("MediaTek MT7621 PCIe PHY driver");
> +MODULE_LICENSE("GPL v2");
> --
> 2.19.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
