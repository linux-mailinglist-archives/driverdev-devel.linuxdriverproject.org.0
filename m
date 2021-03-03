Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59D9D32B89F
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Mar 2021 15:34:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E867183563;
	Wed,  3 Mar 2021 14:34:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5u3Dr6Vc0LGi; Wed,  3 Mar 2021 14:34:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F2AA383422;
	Wed,  3 Mar 2021 14:34:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD73D1BF2B3
 for <devel@linuxdriverproject.org>; Wed,  3 Mar 2021 14:33:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D60124010A
 for <devel@linuxdriverproject.org>; Wed,  3 Mar 2021 14:33:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CY1C8r7h3v1P for <devel@linuxdriverproject.org>;
 Wed,  3 Mar 2021 14:33:47 +0000 (UTC)
X-Greylist: delayed 00:15:32 by SQLgrey-1.8.0
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de
 [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A3CE8400F4
 for <devel@driverdev.osuosl.org>; Wed,  3 Mar 2021 14:33:47 +0000 (UTC)
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1lHSZE-00035P-Ab; Wed, 03 Mar 2021 15:33:36 +0100
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1lHSZ7-00008R-0c; Wed, 03 Mar 2021 15:33:29 +0100
Message-ID: <38119c7bab7b550cff0300b596611a7d9d3b6737.camel@pengutronix.de>
Subject: Re: [PATCH v3 3/5] reset: Add reset driver for IMX8MQ VPU block
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, 
 ezequiel@collabora.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Date: Wed, 03 Mar 2021 15:33:28 +0100
In-Reply-To: <20210301151754.104749-4-benjamin.gaignard@collabora.com>
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
 <20210301151754.104749-4-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: devel@driverdev.osuosl.org
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-imx@nxp.com, kernel@pengutronix.de, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2021-03-01 at 16:17 +0100, Benjamin Gaignard wrote:
> IMX8MQ SoC got a dedicated hardware block to reset the video processor
> units (G1 and G2).
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/reset/Kconfig            |   8 ++
>  drivers/reset/Makefile           |   1 +
>  drivers/reset/reset-imx8mq-vpu.c | 169 +++++++++++++++++++++++++++++++
>  3 files changed, 178 insertions(+)
>  create mode 100644 drivers/reset/reset-imx8mq-vpu.c
> 
> diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
> index 71ab75a46491..fa95380b271a 100644
> --- a/drivers/reset/Kconfig
> +++ b/drivers/reset/Kconfig
> @@ -80,6 +80,14 @@ config RESET_IMX7
>  	help
>  	  This enables the reset controller driver for i.MX7 SoCs.
>  
> +config RESET_VPU_IMX8MQ
> +	tristate "i.MX8MQ VPU Reset Driver"
> +	depends on HAS_IOMEM
> +	depends on (ARM64 && ARCH_MXC) || COMPILE_TEST
> +	select MFD_SYSCON
> +	help
> +	  This enables the VPU reset controller driver for i.MX8MQ SoCs.
> +
>  config RESET_INTEL_GW
>  	bool "Intel Reset Controller Driver"
>  	depends on OF && HAS_IOMEM
> diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
> index 1054123fd187..6007e0cdfc05 100644
> --- a/drivers/reset/Makefile
> +++ b/drivers/reset/Makefile
> @@ -12,6 +12,7 @@ obj-$(CONFIG_RESET_BRCMSTB) += reset-brcmstb.o
>  obj-$(CONFIG_RESET_BRCMSTB_RESCAL) += reset-brcmstb-rescal.o
>  obj-$(CONFIG_RESET_HSDK) += reset-hsdk.o
>  obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
> +obj-$(CONFIG_RESET_VPU_IMX8MQ) += reset-imx8mq-vpu.o
>  obj-$(CONFIG_RESET_INTEL_GW) += reset-intel-gw.o
>  obj-$(CONFIG_RESET_LANTIQ) += reset-lantiq.o
>  obj-$(CONFIG_RESET_LPC18XX) += reset-lpc18xx.o
> diff --git a/drivers/reset/reset-imx8mq-vpu.c b/drivers/reset/reset-imx8mq-vpu.c
> new file mode 100644
> index 000000000000..14c589f19266
> --- /dev/null
> +++ b/drivers/reset/reset-imx8mq-vpu.c
> @@ -0,0 +1,169 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2021, Collabora
> + *
> + * i.MX8MQ VPU Reset Controller driver
> + *
> + * Author: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/reset-controller.h>
> +#include <linux/regmap.h>
> +#include <dt-bindings/reset/imx8mq-vpu-reset.h>
> +
> +#define CTRL_SOFT_RESET		0x00
> +#define RESET_G1		((u32)BIT(1))
> +#define RESET_G2		((u32)BIT(0))
> +
> +#define CTRL_ENABLE		0x04
> +#define ENABLE_G1		BIT(1)
> +#define ENABLE_G2		BIT(0)
> +
> +#define CTRL_G1_DEC_FUSE	0x08
> +#define CTRL_G1_PP_FUSE		0x0c
> +#define CTRL_G2_DEC_FUSE	0x10
> +
> +struct imx8mq_vpu_reset {
> +	struct reset_controller_dev rcdev;
> +	struct regmap *regmap;
> +	struct clk_bulk_data *clocks;
> +	int num_clocks;
> +	struct device *dev;
> +};
> +
> +static inline struct imx8mq_vpu_reset *to_imx8mq_vpu_reset(struct reset_controller_dev *rcdev)
> +{
> +	return container_of(rcdev, struct imx8mq_vpu_reset, rcdev);
> +}
> +
> +static int imx8mq_vpu_reset_assert(struct reset_controller_dev *rcdev,
> +				   unsigned long id)
> +{
> +	struct imx8mq_vpu_reset *reset = to_imx8mq_vpu_reset(rcdev);
> +	int ret = -EINVAL;
> +
> +	ret = clk_bulk_prepare_enable(reset->num_clocks, reset->clocks);
> +	if (ret) {
> +		dev_err(reset->dev, "Failed to prepare clocks\n");
> +		return ret;
> +	}
> +
> +	switch (id) {
> +	case IMX8MQ_RESET_VPU_RESET_G1:
> +		ret = regmap_update_bits(reset->regmap, CTRL_SOFT_RESET, RESET_G1, ~RESET_G1);
> +		ret |= regmap_update_bits(reset->regmap, CTRL_ENABLE, ENABLE_G1, ENABLE_G1);
> +		break;
> +	case IMX8MQ_RESET_VPU_RESET_G2:
> +		ret = regmap_update_bits(reset->regmap, CTRL_SOFT_RESET, RESET_G2, ~RESET_G2);
> +		ret |= regmap_update_bits(reset->regmap, CTRL_ENABLE, ENABLE_G2, ENABLE_G2);

This doesn't belong in reset_assert.

> +		break;
> +	}
> +
> +	/* Set values of the fuse registers */
> +	ret |= regmap_write(reset->regmap, CTRL_G1_DEC_FUSE, 0xffffffff);
> +	ret |= regmap_write(reset->regmap, CTRL_G1_PP_FUSE, 0xffffffff);
> +	ret |= regmap_write(reset->regmap, CTRL_G2_DEC_FUSE, 0xffffffff);

Same as above, this doesn't belong in reset_assert.

> +	clk_bulk_disable_unprepare(reset->num_clocks, reset->clocks);

Also I assume that only the VPU_DEC_ROOT clock is required to control
these registers. Enabling the VPU_G1_ROOT and VPU_G2_ROOT clocks
(presumably to make sure the resets propagate into the respective VPU
core) would be the reset consumer's responsibility.

regards
Philipp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
