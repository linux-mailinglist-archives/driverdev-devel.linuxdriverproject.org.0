Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9C52A7998
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 09:46:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DD9568574F;
	Thu,  5 Nov 2020 08:46:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3PX2n-PQdtZB; Thu,  5 Nov 2020 08:46:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 591BF85319;
	Thu,  5 Nov 2020 08:46:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 457271BF3C4
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 08:46:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1277620026
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 08:46:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lv1T+wJBGqvy for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 08:46:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id 131072000B
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 08:46:05 +0000 (UTC)
IronPort-SDR: BIpj7VmRK210RXkSYiKh4jW3GGF75AiZR46D1h8Z0LW/LMmFzBRqcs6cLo0yXmm+Peezlt+WQi
 FJwNnHQOCp7g==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="168566633"
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="168566633"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 00:46:03 -0800
IronPort-SDR: O8h9/cY6HlQaQfBGbXmlrhlx20tuh8wkOUTDV2USZzTrohB4BNZzBs8zQDtcdujYHSy0FIJBey
 TXFo4gSRieKg==
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="426949322"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 00:45:58 -0800
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id CF7D420901; Thu,  5 Nov 2020 10:45:56 +0200 (EET)
Date: Thu, 5 Nov 2020 10:45:56 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 08/14] media: sunxi: Add support for the A31 MIPI CSI-2
 controller
Message-ID: <20201105084556.GZ26150@paasikivi.fi.intel.com>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-9-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023174546.504028-9-paul.kocialkowski@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 Philipp Zabel <p.zabel@pengutronix.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Yong Deng <yong.deng@magewell.com>, Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kevin.lhopital@hotmail.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Paul,

On Fri, Oct 23, 2020 at 07:45:40PM +0200, Paul Kocialkowski wrote:
> The A31 MIPI CSI-2 controller is a dedicated MIPI CSI-2 controller
> found on Allwinner SoCs such as the A31 and V3/V3s.
> 
> It is a standalone block, connected to the CSI controller on one side
> and to the MIPI D-PHY block on the other. It has a dedicated address
> space, interrupt line and clock.
> 
> Currently, the MIPI CSI-2 controller is hard-tied to a specific CSI
> controller (CSI0) but newer SoCs (such as the V5) may allow switching
> MIPI CSI-2 controllers between CSI controllers.
> 
> It is represented as a V4L2 subdev to the CSI controller and takes a
> MIPI CSI-2 sensor as its own subdev, all using the fwnode graph and
> media controller API.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  drivers/media/platform/sunxi/Kconfig          |   1 +
>  drivers/media/platform/sunxi/Makefile         |   1 +
>  .../platform/sunxi/sun6i-mipi-csi2/Kconfig    |  11 +
>  .../platform/sunxi/sun6i-mipi-csi2/Makefile   |   4 +
>  .../sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c   | 635 ++++++++++++++++++
>  .../sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.h   | 116 ++++
>  6 files changed, 768 insertions(+)
>  create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/Kconfig
>  create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/Makefile
>  create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c
>  create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.h
> 
> diff --git a/drivers/media/platform/sunxi/Kconfig b/drivers/media/platform/sunxi/Kconfig
> index 7151cc249afa..9684e07454ad 100644
> --- a/drivers/media/platform/sunxi/Kconfig
> +++ b/drivers/media/platform/sunxi/Kconfig
> @@ -2,3 +2,4 @@
>  
>  source "drivers/media/platform/sunxi/sun4i-csi/Kconfig"
>  source "drivers/media/platform/sunxi/sun6i-csi/Kconfig"
> +source "drivers/media/platform/sunxi/sun6i-mipi-csi2/Kconfig"
> diff --git a/drivers/media/platform/sunxi/Makefile b/drivers/media/platform/sunxi/Makefile
> index fc537c9f5ca9..887a7cae8fca 100644
> --- a/drivers/media/platform/sunxi/Makefile
> +++ b/drivers/media/platform/sunxi/Makefile
> @@ -2,5 +2,6 @@
>  
>  obj-y		+= sun4i-csi/
>  obj-y		+= sun6i-csi/
> +obj-y		+= sun6i-mipi-csi2/
>  obj-y		+= sun8i-di/
>  obj-y		+= sun8i-rotate/
> diff --git a/drivers/media/platform/sunxi/sun6i-mipi-csi2/Kconfig b/drivers/media/platform/sunxi/sun6i-mipi-csi2/Kconfig
> new file mode 100644
> index 000000000000..7033bda483b4
> --- /dev/null
> +++ b/drivers/media/platform/sunxi/sun6i-mipi-csi2/Kconfig
> @@ -0,0 +1,11 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +config VIDEO_SUN6I_MIPI_CSI2
> +	tristate "Allwinner A31 MIPI CSI-2 Controller Driver"
> +	depends on VIDEO_V4L2 && COMMON_CLK
> +	depends on ARCH_SUNXI || COMPILE_TEST
> +	select MEDIA_CONTROLLER
> +	select VIDEO_V4L2_SUBDEV_API
> +	select REGMAP_MMIO
> +	select V4L2_FWNODE
> +	help
> +	   Support for the Allwinner A31 MIPI CSI-2 Controller.
> diff --git a/drivers/media/platform/sunxi/sun6i-mipi-csi2/Makefile b/drivers/media/platform/sunxi/sun6i-mipi-csi2/Makefile
> new file mode 100644
> index 000000000000..14e4e03818b5
> --- /dev/null
> +++ b/drivers/media/platform/sunxi/sun6i-mipi-csi2/Makefile
> @@ -0,0 +1,4 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +sun6i-mipi-csi2-y += sun6i_mipi_csi2.o
> +
> +obj-$(CONFIG_VIDEO_SUN6I_MIPI_CSI2) += sun6i-mipi-csi2.o
> diff --git a/drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c b/drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c
> new file mode 100644
> index 000000000000..ce89c35f5b86
> --- /dev/null
> +++ b/drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c
> @@ -0,0 +1,635 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2020 Bootlin
> + * Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/interrupt.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_device.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +#include <linux/reset.h>
> +#include <media/v4l2-ctrls.h>
> +#include <media/v4l2-device.h>
> +#include <media/v4l2-fwnode.h>
> +
> +#include "sun6i_mipi_csi2.h"
> +
> +#define MODULE_NAME	"sun6i-mipi-csi2"
> +
> +/* Core */
> +
> +static irqreturn_t sun6i_mipi_csi2_isr(int irq, void *dev_id)
> +{
> +	struct sun6i_mipi_csi2_dev *cdev = (struct sun6i_mipi_csi2_dev *)dev_id;

Unnecessary casting from void *.

> +	struct regmap *regmap = cdev->regmap;
> +	u32 pending;
> +
> +	WARN_ONCE(1, MODULE_NAME
> +		  ": Unsolicited interrupt, an error likely occurred!\n");
> +
> +	regmap_read(regmap, SUN6I_MIPI_CSI2_CH_INT_PD_REG, &pending);
> +	regmap_write(regmap, SUN6I_MIPI_CSI2_CH_INT_PD_REG, pending);
> +
> +	/*
> +	 * The interrupt can be used to catch transmission errors.
> +	 * However, we currently lack plumbing for reporting that to the
> +	 * A31 CSI controller driver.
> +	 */
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static int sun6i_mipi_csi2_s_power(struct v4l2_subdev *subdev, int on)

Please use runtime PM instead.

> +{
> +	struct sun6i_mipi_csi2_video *video =
> +		sun6i_mipi_csi2_subdev_video(subdev);
> +	struct sun6i_mipi_csi2_dev *cdev = sun6i_mipi_csi2_video_dev(video);
> +	int ret;
> +
> +	if (!on) {
> +		clk_disable_unprepare(cdev->clk_mod);
> +		reset_control_assert(cdev->reset);
> +
> +		return 0;
> +	}
> +
> +	ret = clk_prepare_enable(cdev->clk_mod);
> +	if (ret) {
> +		dev_err(cdev->dev, "failed to enable module clock\n");
> +		return ret;
> +	}
> +
> +	ret = reset_control_deassert(cdev->reset);
> +	if (ret) {
> +		dev_err(cdev->dev, "failed to deassert reset\n");
> +		goto error_clk;
> +	}
> +
> +	return 0;
> +
> +error_clk:
> +	clk_disable_unprepare(cdev->clk_mod);
> +
> +	return ret;
> +}
> +
> +static const struct v4l2_subdev_core_ops sun6i_mipi_csi2_subdev_core_ops = {
> +	.s_power	= sun6i_mipi_csi2_s_power,
> +};
> +
> +/* Video */
> +
> +static int sun6i_mipi_csi2_s_stream(struct v4l2_subdev *subdev, int on)
> +{
> +	struct sun6i_mipi_csi2_video *video =
> +		sun6i_mipi_csi2_subdev_video(subdev);
> +	struct sun6i_mipi_csi2_dev *cdev = sun6i_mipi_csi2_video_dev(video);
> +	struct v4l2_subdev *remote_subdev = video->remote_subdev;
> +	struct v4l2_fwnode_bus_mipi_csi2 *bus_mipi_csi2 =
> +		&video->endpoint.bus.mipi_csi2;
> +	union phy_configure_opts dphy_opts = { 0 };
> +	struct phy_configure_opts_mipi_dphy *dphy_cfg = &dphy_opts.mipi_dphy;
> +	struct regmap *regmap = cdev->regmap;
> +	struct v4l2_ctrl *ctrl;
> +	unsigned int lanes_count;
> +	unsigned int bpp;
> +	unsigned long pixel_rate;
> +	u8 data_type = 0;
> +	u32 version = 0;
> +	/* Initialize to 0 to use both in disable label (ret != 0) and off. */
> +	int ret = 0;
> +
> +	if (!remote_subdev)
> +		return -ENODEV;
> +
> +	if (!on) {
> +		v4l2_subdev_call(remote_subdev, video, s_stream, 0);
> +
> +disable:

I think this label would be nicer at the end of the function (so you'd have
a goto here).

> +		regmap_update_bits(regmap, SUN6I_MIPI_CSI2_CTL_REG,
> +				   SUN6I_MIPI_CSI2_CTL_EN, 0);
> +
> +		phy_power_off(cdev->dphy);
> +
> +		return ret;
> +	}
> +
> +	switch (video->mbus_code) {
> +	case MEDIA_BUS_FMT_SBGGR8_1X8:
> +	case MEDIA_BUS_FMT_SGBRG8_1X8:
> +	case MEDIA_BUS_FMT_SGRBG8_1X8:
> +	case MEDIA_BUS_FMT_SRGGB8_1X8:
> +		data_type = MIPI_CSI2_DATA_TYPE_RAW8;
> +		bpp = 8;
> +		break;
> +	case MEDIA_BUS_FMT_SBGGR10_1X10:
> +	case MEDIA_BUS_FMT_SGBRG10_1X10:
> +	case MEDIA_BUS_FMT_SGRBG10_1X10:
> +	case MEDIA_BUS_FMT_SRGGB10_1X10:
> +		data_type = MIPI_CSI2_DATA_TYPE_RAW10;
> +		bpp = 10;
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	/* Sensor pixel rate */
> +
> +	ctrl = v4l2_ctrl_find(remote_subdev->ctrl_handler, V4L2_CID_PIXEL_RATE);
> +	if (!ctrl) {
> +		dev_err(cdev->dev,
> +			"%s: no MIPI CSI-2 pixel rate from the sensor\n",
> +			__func__);
> +		return -ENODEV;
> +	}
> +
> +	pixel_rate = (unsigned long)v4l2_ctrl_g_ctrl_int64(ctrl);
> +	if (!pixel_rate) {
> +		dev_err(cdev->dev,
> +			"%s: zero MIPI CSI-2 pixel rate from the sensor\n",
> +			__func__);
> +		return -ENODEV;
> +	}
> +
> +	/* D-PHY configuration */
> +
> +	lanes_count = bus_mipi_csi2->num_data_lanes;
> +	phy_mipi_dphy_get_default_config(pixel_rate, bpp, lanes_count,
> +					 dphy_cfg);
> +
> +
> +	/*
> +	 * Note that our hardware is using DDR, which is not taken in account by
> +	 * phy_mipi_dphy_get_default_config when calculating hs_clk_rate from
> +	 * the pixel rate, lanes count and bpp.
> +	 *
> +	 * The resulting clock rate is basically the symbol rate over the whole
> +	 * link. The actual clock rate is calculated with division by two since
> +	 * DDR samples both on rising and falling edges.
> +	 */
> +
> +	dev_dbg(cdev->dev, "A31 MIPI CSI-2 config:\n");
> +	dev_dbg(cdev->dev, "%ld pixels/s, %u bits/pixel, %lu Hz clock\n",
> +		pixel_rate, bpp, dphy_cfg->hs_clk_rate / 2);
> +
> +	ret = 0;
> +	ret |= phy_reset(cdev->dphy);
> +	ret |= phy_set_mode_ext(cdev->dphy, PHY_MODE_MIPI_DPHY,
> +				PHY_MIPI_DPHY_SUBMODE_RX);
> +	ret |= phy_configure(cdev->dphy, &dphy_opts);

Huh. Please don't do bitwise or operations on error codes.

> +
> +	if (ret) {
> +		dev_err(cdev->dev, "failed to setup MIPI D-PHY\n");
> +		return ret;
> +	}
> +
> +	ret = phy_power_on(cdev->dphy);
> +	if (ret) {
> +		dev_err(cdev->dev, "failed to power on MIPI D-PHY\n");
> +		return ret;
> +	}
> +
> +	/* MIPI CSI-2 controller setup */
> +
> +	/*
> +	 * The enable flow in the Allwinner BSP is a bit different: the enable
> +	 * and reset bits are set together before starting the CSI controller.
> +	 *
> +	 * In mainline we enable the CSI controller first (due to subdev logic).
> +	 * One reliable way to make this work is to deassert reset, configure
> +	 * registers and enable the controller when everything's ready.
> +	 *
> +	 * However, reading the version appears necessary for it to work
> +	 * reliably. Replacing it with a delay doesn't do the trick.
> +	 */
> +	regmap_write(regmap, SUN6I_MIPI_CSI2_CTL_REG,
> +		     SUN6I_MIPI_CSI2_CTL_RESET_N |
> +		     SUN6I_MIPI_CSI2_CTL_VERSION_EN |
> +		     SUN6I_MIPI_CSI2_CTL_UNPK_EN);
> +
> +	regmap_read(regmap, SUN6I_MIPI_CSI2_VERSION_REG, &version);
> +
> +	regmap_update_bits(regmap, SUN6I_MIPI_CSI2_CTL_REG,
> +				   SUN6I_MIPI_CSI2_CTL_VERSION_EN, 0);
> +
> +	dev_dbg(cdev->dev, "A31 MIPI CSI-2 version: %04x\n", version);
> +
> +	regmap_write(regmap, SUN6I_MIPI_CSI2_CFG_REG,
> +		     SUN6I_MIPI_CSI2_CFG_CHANNEL_MODE(1) |
> +		     SUN6I_MIPI_CSI2_CFG_LANE_COUNT(lanes_count));
> +
> +	regmap_write(regmap, SUN6I_MIPI_CSI2_VCDT_RX_REG,
> +		     SUN6I_MIPI_CSI2_VCDT_RX_CH_VC(3, 3) |
> +		     SUN6I_MIPI_CSI2_VCDT_RX_CH_VC(2, 2) |
> +		     SUN6I_MIPI_CSI2_VCDT_RX_CH_VC(1, 1) |
> +		     SUN6I_MIPI_CSI2_VCDT_RX_CH_VC(0, 0) |
> +		     SUN6I_MIPI_CSI2_VCDT_RX_CH_DT(0, data_type));
> +
> +	regmap_update_bits(regmap, SUN6I_MIPI_CSI2_CTL_REG,
> +			   SUN6I_MIPI_CSI2_CTL_EN, SUN6I_MIPI_CSI2_CTL_EN);
> +
> +	ret = v4l2_subdev_call(remote_subdev, video, s_stream, 1);
> +	if (ret)
> +		goto disable;
> +
> +	return 0;
> +}
> +
> +static const struct v4l2_subdev_video_ops sun6i_mipi_csi2_subdev_video_ops = {
> +	.s_stream	= sun6i_mipi_csi2_s_stream,
> +};
> +
> +/* Pad */
> +
> +static int sun6i_mipi_csi2_enum_mbus_code(struct v4l2_subdev *subdev,
> +					  struct v4l2_subdev_pad_config *config,
> +					  struct v4l2_subdev_mbus_code_enum *code_enum)

You can easily get under 80 characters per line if you wrap after the
function's return type.

> +{
> +	struct sun6i_mipi_csi2_video *video =
> +		sun6i_mipi_csi2_subdev_video(subdev);
> +
> +	if (!video->remote_subdev)
> +		return -ENODEV;
> +
> +	/* Forward to the sensor. */
> +	code_enum->pad = video->remote_pad_index;
> +
> +	return v4l2_subdev_call(video->remote_subdev, pad, enum_mbus_code,
> +				config, code_enum);
> +}
> +
> +static int sun6i_mipi_csi2_get_fmt(struct v4l2_subdev *subdev,
> +				   struct v4l2_subdev_pad_config *config,
> +				   struct v4l2_subdev_format *format)
> +{
> +	struct sun6i_mipi_csi2_video *video =
> +		sun6i_mipi_csi2_subdev_video(subdev);
> +
> +	if (!video->remote_subdev)
> +		return -ENODEV;
> +
> +	/* Forward to the sensor. */
> +	format->pad = video->remote_pad_index;
> +
> +	return v4l2_subdev_call(video->remote_subdev, pad, get_fmt, config,
> +				format);

The entity this driver controls is independent of the upstream device in
its configuratione, you should not try to propagate the configuration
upstream in the pipeline.

The same applies to other similar functions in the driver.

> +}
> +
> +static int sun6i_mipi_csi2_set_fmt(struct v4l2_subdev *subdev,
> +				   struct v4l2_subdev_pad_config *config,
> +				   struct v4l2_subdev_format *format)
> +{
> +	struct sun6i_mipi_csi2_video *video =
> +		sun6i_mipi_csi2_subdev_video(subdev);
> +
> +	if (!video->remote_subdev)
> +		return -ENODEV;
> +
> +	/* Forward to the sensor. */
> +	format->pad = video->remote_pad_index;
> +
> +	return v4l2_subdev_call(video->remote_subdev, pad, set_fmt, config,
> +				format);
> +}
> +
> +static int sun6i_mipi_csi2_enum_frame_size(struct v4l2_subdev *subdev,
> +					   struct v4l2_subdev_pad_config *config,
> +					   struct v4l2_subdev_frame_size_enum *size_enum)
> +{
> +	struct sun6i_mipi_csi2_video *video =
> +		sun6i_mipi_csi2_subdev_video(subdev);
> +
> +	if (!video->remote_subdev)
> +		return -ENODEV;
> +
> +	/* Forward to the sensor. */
> +	size_enum->pad = video->remote_pad_index;
> +
> +	return v4l2_subdev_call(video->remote_subdev, pad, enum_frame_size,
> +				config, size_enum);
> +}
> +
> +static int sun6i_mipi_csi2_enum_frame_interval(struct v4l2_subdev *subdev,
> +					       struct v4l2_subdev_pad_config *config,
> +					       struct v4l2_subdev_frame_interval_enum *interval_enum)
> +{
> +	struct sun6i_mipi_csi2_video *video =
> +		sun6i_mipi_csi2_subdev_video(subdev);
> +
> +	if (!video->remote_subdev)
> +		return -ENODEV;
> +
> +	/* Forward to the sensor. */
> +	interval_enum->pad = video->remote_pad_index;
> +
> +	return v4l2_subdev_call(video->remote_subdev, pad, enum_frame_interval,
> +				config, interval_enum);
> +}
> +
> +static const struct v4l2_subdev_pad_ops sun6i_mipi_csi2_subdev_pad_ops = {
> +	.enum_mbus_code		= sun6i_mipi_csi2_enum_mbus_code,
> +	.get_fmt		= sun6i_mipi_csi2_get_fmt,
> +	.set_fmt		= sun6i_mipi_csi2_set_fmt,
> +	.enum_frame_size	= sun6i_mipi_csi2_enum_frame_size,
> +	.enum_frame_interval	= sun6i_mipi_csi2_enum_frame_interval,
> +};
> +
> +/* Subdev */
> +
> +static const struct v4l2_subdev_ops sun6i_mipi_csi2_subdev_ops = {
> +	.core		= &sun6i_mipi_csi2_subdev_core_ops,
> +	.video		= &sun6i_mipi_csi2_subdev_video_ops,
> +	.pad		= &sun6i_mipi_csi2_subdev_pad_ops,
> +};
> +
> +/* Notifier */
> +
> +static int sun6i_mipi_csi2_notifier_bound(struct v4l2_async_notifier *notifier,
> +					  struct v4l2_subdev *remote_subdev,
> +					  struct v4l2_async_subdev *remote_subdev_async)
> +{
> +	struct v4l2_subdev *subdev = notifier->sd;
> +	struct sun6i_mipi_csi2_video *video =
> +		sun6i_mipi_csi2_subdev_video(subdev);
> +	struct sun6i_mipi_csi2_dev *cdev = sun6i_mipi_csi2_video_dev(video);
> +	int source_pad;
> +	int ret;
> +
> +	source_pad = media_entity_get_fwnode_pad(&remote_subdev->entity,
> +						 remote_subdev->fwnode,
> +						 MEDIA_PAD_FL_SOURCE);
> +	if (source_pad < 0)
> +		return source_pad;
> +
> +	ret = media_create_pad_link(&remote_subdev->entity, source_pad,
> +				    &subdev->entity, 0,
> +				    MEDIA_LNK_FL_ENABLED |
> +				    MEDIA_LNK_FL_IMMUTABLE);
> +	if (ret) {
> +		dev_err(cdev->dev, "failed to create %s:%u -> %s:%u link\n",
> +			remote_subdev->entity.name, source_pad,
> +			subdev->entity.name, 0);
> +		return ret;
> +	}
> +
> +	video->remote_subdev = remote_subdev;
> +	video->remote_pad_index = source_pad;
> +
> +	return 0;
> +}
> +
> +static const struct v4l2_async_notifier_operations sun6i_mipi_csi2_notifier_ops = {
> +	.bound		= sun6i_mipi_csi2_notifier_bound,
> +};
> +
> +/* Media Entity */
> +
> +static int sun6i_mipi_csi2_link_validate(struct media_link *link)
> +{
> +	struct v4l2_subdev *subdev =
> +		container_of(link->sink->entity, struct v4l2_subdev, entity);
> +	struct sun6i_mipi_csi2_video *video =
> +		sun6i_mipi_csi2_subdev_video(subdev);
> +	struct v4l2_subdev *remote_subdev;
> +	struct v4l2_subdev_format format = { 0 };
> +	int ret;
> +
> +	if (!is_media_entity_v4l2_subdev(link->source->entity))
> +		return -EINVAL;
> +
> +	remote_subdev = media_entity_to_v4l2_subdev(link->source->entity);
> +
> +	format.which = V4L2_SUBDEV_FORMAT_ACTIVE;
> +	format.pad = link->source->index;
> +
> +	ret = v4l2_subdev_call(remote_subdev, pad, get_fmt, NULL, &format);
> +	if (ret)
> +		return ret;
> +
> +	video->mbus_code = format.format.code;
> +
> +	return 0;
> +}
> +
> +static const struct media_entity_operations sun6i_mipi_csi2_entity_ops = {
> +	.link_validate	= sun6i_mipi_csi2_link_validate,
> +};
> +
> +/* Base Driver */
> +
> +static int sun6i_mipi_csi2_v4l2_setup(struct sun6i_mipi_csi2_dev *cdev)
> +{
> +	struct sun6i_mipi_csi2_video *video = &cdev->video;
> +	struct v4l2_subdev *subdev = &video->subdev;
> +	struct v4l2_async_notifier *notifier = &video->notifier;
> +	struct fwnode_handle *handle;
> +	struct v4l2_fwnode_endpoint *endpoint;
> +	int ret;
> +
> +	/* Subdev */
> +
> +	v4l2_subdev_init(subdev, &sun6i_mipi_csi2_subdev_ops);
> +	subdev->dev = cdev->dev;
> +	strscpy(subdev->name, MODULE_NAME, sizeof(subdev->name));
> +	v4l2_set_subdevdata(subdev, cdev);
> +
> +	/* Entity */
> +
> +	subdev->entity.function = MEDIA_ENT_F_VID_IF_BRIDGE;
> +	subdev->entity.ops = &sun6i_mipi_csi2_entity_ops;

Why is there no device node? This driver appears to be MC-enabled.

> +
> +	/* Pads */
> +
> +	video->pads[0].flags = MEDIA_PAD_FL_SINK;
> +	video->pads[1].flags = MEDIA_PAD_FL_SOURCE;
> +
> +	ret = media_entity_pads_init(&subdev->entity, 2, video->pads);
> +	if (ret)
> +		return ret;
> +
> +	/* Endpoint */
> +
> +	handle = fwnode_graph_get_endpoint_by_id(dev_fwnode(cdev->dev), 0, 0,
> +						 FWNODE_GRAPH_ENDPOINT_NEXT);
> +	if (!handle)
> +		goto error_media_entity;
> +
> +	endpoint = &video->endpoint;
> +	endpoint->bus_type = V4L2_MBUS_CSI2_DPHY;
> +
> +	ret = v4l2_fwnode_endpoint_parse(handle, endpoint);
> +	fwnode_handle_put(handle);
> +	if (ret)
> +		goto error_media_entity;
> +
> +	/* Notifier */
> +
> +	v4l2_async_notifier_init(notifier);
> +
> +	ret = v4l2_async_notifier_add_fwnode_remote_subdev(notifier, handle,
> +							   &video->subdev_async);
> +	if (ret)
> +		goto error_media_entity;
> +
> +	video->notifier.ops = &sun6i_mipi_csi2_notifier_ops;
> +
> +	ret = v4l2_async_subdev_notifier_register(subdev, notifier);
> +	if (ret < 0)
> +		goto error_notifier;
> +
> +	/* Subdev */
> +
> +	ret = v4l2_async_register_subdev(subdev);
> +	if (ret < 0)
> +		goto error_notifier_registered;
> +
> +	return 0;
> +
> +error_notifier_registered:
> +	v4l2_async_notifier_unregister(notifier);
> +error_notifier:
> +	v4l2_async_notifier_cleanup(notifier);
> +error_media_entity:
> +	media_entity_cleanup(&subdev->entity);
> +
> +	return ret;
> +}
> +
> +static int sun6i_mipi_csi2_v4l2_teardown(struct sun6i_mipi_csi2_dev *cdev)
> +{
> +	struct sun6i_mipi_csi2_video *video = &cdev->video;
> +	struct v4l2_subdev *subdev = &video->subdev;
> +	struct v4l2_async_notifier *notifier = &video->notifier;
> +
> +	v4l2_async_unregister_subdev(subdev);
> +	v4l2_async_notifier_unregister(notifier);
> +	v4l2_async_notifier_cleanup(notifier);
> +	media_entity_cleanup(&subdev->entity);
> +	v4l2_device_unregister_subdev(subdev);
> +
> +	return 0;
> +}
> +
> +static const struct regmap_config sun6i_mipi_csi2_regmap_config = {
> +	.reg_bits       = 32,
> +	.reg_stride     = 4,
> +	.val_bits       = 32,
> +	.max_register	= 0x400,
> +};
> +
> +static int sun6i_mipi_csi2_resource_request(struct sun6i_mipi_csi2_dev *cdev,
> +					    struct platform_device *pdev)
> +{
> +	struct resource *res;
> +	void __iomem *io_base;
> +	int irq;
> +	int ret;
> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	io_base = devm_ioremap_resource(&pdev->dev, res);
> +	if (IS_ERR(io_base))
> +		return PTR_ERR(io_base);
> +
> +	cdev->regmap = devm_regmap_init_mmio_clk(&pdev->dev, "bus", io_base,
> +						 &sun6i_mipi_csi2_regmap_config);
> +	if (IS_ERR(cdev->regmap)) {
> +		dev_err(&pdev->dev, "failed to init register map\n");
> +		return PTR_ERR(cdev->regmap);
> +	}
> +
> +	cdev->clk_mod = devm_clk_get(&pdev->dev, "mod");
> +	if (IS_ERR(cdev->clk_mod)) {
> +		dev_err(&pdev->dev, "failed to acquire csi clock\n");
> +		return PTR_ERR(cdev->clk_mod);
> +	}
> +
> +	cdev->reset = devm_reset_control_get_shared(&pdev->dev, NULL);
> +	if (IS_ERR(cdev->reset)) {
> +		dev_err(&pdev->dev, "failed to get reset controller\n");
> +		return PTR_ERR(cdev->reset);
> +	}
> +
> +	irq = platform_get_irq(pdev, 0);
> +	if (irq < 0)
> +		return -ENXIO;
> +
> +	ret = devm_request_irq(&pdev->dev, irq, sun6i_mipi_csi2_isr, 0,
> +			       MODULE_NAME, cdev);
> +	if (ret) {
> +		dev_err(&pdev->dev, "failed to request MIPI CSI-2 IRQ\n");
> +		return ret;
> +	}
> +
> +	cdev->dphy = devm_phy_get(&pdev->dev, "dphy");
> +	if (IS_ERR(cdev->dphy)) {
> +		dev_err(&pdev->dev, "failed to get the MIPI D-PHY\n");
> +		return PTR_ERR(cdev->dphy);
> +	}
> +
> +	ret = phy_init(cdev->dphy);
> +	if (ret) {
> +		dev_err(&pdev->dev, "failed to initialize the MIPI D-PHY\n");
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static int sun6i_mipi_csi2_probe(struct platform_device *pdev)
> +{
> +	struct sun6i_mipi_csi2_dev *cdev;
> +	int ret;
> +
> +	cdev = devm_kzalloc(&pdev->dev, sizeof(*cdev), GFP_KERNEL);
> +	if (!cdev)
> +		return -ENOMEM;
> +
> +	cdev->dev = &pdev->dev;
> +
> +	ret = sun6i_mipi_csi2_resource_request(cdev, pdev);
> +	if (ret)
> +		return ret;
> +
> +	platform_set_drvdata(pdev, cdev);
> +
> +	ret = sun6i_mipi_csi2_v4l2_setup(cdev);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static int sun6i_mipi_csi2_remove(struct platform_device *pdev)
> +{
> +	struct sun6i_mipi_csi2_dev *cdev = platform_get_drvdata(pdev);
> +
> +	phy_exit(cdev->dphy);
> +
> +	return sun6i_mipi_csi2_v4l2_teardown(cdev);
> +}
> +
> +static const struct of_device_id sun6i_mipi_csi2_of_match[] = {
> +	{ .compatible = "allwinner,sun6i-a31-mipi-csi2" },
> +	{ .compatible = "allwinner,sun8i-v3s-mipi-csi2", },
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, sun6i_mipi_csi2_of_match);
> +
> +static struct platform_driver sun6i_mipi_csi2_platform_driver = {
> +	.probe = sun6i_mipi_csi2_probe,
> +	.remove = sun6i_mipi_csi2_remove,
> +	.driver = {
> +		.name = MODULE_NAME,
> +		.of_match_table = of_match_ptr(sun6i_mipi_csi2_of_match),
> +	},
> +};
> +module_platform_driver(sun6i_mipi_csi2_platform_driver);
> +
> +MODULE_DESCRIPTION("Allwinner A31 MIPI CSI-2 Controller Driver");
> +MODULE_AUTHOR("Paul Kocialkowski <paul.kocialkowski@bootlin.com>");
> +MODULE_LICENSE("GPL");
> diff --git a/drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.h b/drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.h
> new file mode 100644
> index 000000000000..f3cce99bfd44
> --- /dev/null
> +++ b/drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.h
> @@ -0,0 +1,116 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Copyright 2020 Bootlin
> + * Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> + */
> +
> +#ifndef __SUN6I_MIPI_CSI2_H__
> +#define __SUN6I_MIPI_CSI2_H__
> +
> +#include <linux/phy/phy.h>
> +#include <linux/regmap.h>
> +#include <linux/reset.h>
> +#include <media/v4l2-device.h>
> +#include <media/v4l2-fwnode.h>
> +
> +#define SUN6I_MIPI_CSI2_CTL_REG				0x0
> +#define SUN6I_MIPI_CSI2_CTL_RESET_N			BIT(31)
> +#define SUN6I_MIPI_CSI2_CTL_VERSION_EN			BIT(30)
> +#define SUN6I_MIPI_CSI2_CTL_UNPK_EN			BIT(1)
> +#define SUN6I_MIPI_CSI2_CTL_EN				BIT(0)
> +#define SUN6I_MIPI_CSI2_CFG_REG				0x4
> +#define SUN6I_MIPI_CSI2_CFG_CHANNEL_MODE(v)		((((v) - 1) << 8) & \
> +							 GENMASK(9, 8))
> +#define SUN6I_MIPI_CSI2_CFG_LANE_COUNT(v)		(((v) - 1) & GENMASK(1, 0))
> +#define SUN6I_MIPI_CSI2_VCDT_RX_REG			0x8
> +#define SUN6I_MIPI_CSI2_VCDT_RX_CH_VC(ch, vc)		(((vc) & GENMASK(1, 0)) << \
> +							 ((ch) * 8 + 6))
> +#define SUN6I_MIPI_CSI2_VCDT_RX_CH_DT(ch, t)		(((t) & GENMASK(5, 0)) << \
> +							 ((ch) * 8))
> +#define SUN6I_MIPI_CSI2_RX_PKT_NUM_REG			0xc
> +
> +#define SUN6I_MIPI_CSI2_VERSION_REG			0x3c
> +
> +#define SUN6I_MIPI_CSI2_CH_BASE				0x1000
> +#define SUN6I_MIPI_CSI2_CH_OFFSET			0x100
> +
> +#define SUN6I_MIPI_CSI2_CH_CFG_REG			0x40
> +#define SUN6I_MIPI_CSI2_CH_INT_EN_REG			0x50
> +#define SUN6I_MIPI_CSI2_CH_INT_EN_EOT_ERR		BIT(29)
> +#define SUN6I_MIPI_CSI2_CH_INT_EN_CHKSUM_ERR		BIT(28)
> +#define SUN6I_MIPI_CSI2_CH_INT_EN_ECC_WRN		BIT(27)
> +#define SUN6I_MIPI_CSI2_CH_INT_EN_ECC_ERR		BIT(26)
> +#define SUN6I_MIPI_CSI2_CH_INT_EN_LINE_SYNC_ERR		BIT(25)
> +#define SUN6I_MIPI_CSI2_CH_INT_EN_FRAME_SYNC_ERR	BIT(24)
> +#define SUN6I_MIPI_CSI2_CH_INT_EN_EMB_DATA		BIT(18)
> +#define SUN6I_MIPI_CSI2_CH_INT_EN_PF			BIT(17)
> +#define SUN6I_MIPI_CSI2_CH_INT_EN_PH_UPDATE		BIT(16)
> +#define SUN6I_MIPI_CSI2_CH_INT_EN_LINE_START_SYNC	BIT(11)
> +#define SUN6I_MIPI_CSI2_CH_INT_EN_LINE_END_SYNC	BIT(10)
> +#define SUN6I_MIPI_CSI2_CH_INT_EN_FRAME_START_SYNC	BIT(9)
> +#define SUN6I_MIPI_CSI2_CH_INT_EN_FRAME_END_SYNC	BIT(8)
> +#define SUN6I_MIPI_CSI2_CH_INT_EN_FIFO_OVER		BIT(0)
> +
> +#define SUN6I_MIPI_CSI2_CH_INT_PD_REG			0x58
> +#define SUN6I_MIPI_CSI2_CH_INT_PD_EOT_ERR		BIT(29)
> +#define SUN6I_MIPI_CSI2_CH_INT_PD_CHKSUM_ERR		BIT(28)
> +#define SUN6I_MIPI_CSI2_CH_INT_PD_ECC_WRN		BIT(27)
> +#define SUN6I_MIPI_CSI2_CH_INT_PD_ECC_ERR		BIT(26)
> +#define SUN6I_MIPI_CSI2_CH_INT_PD_LINE_SYNC_ERR		BIT(25)
> +#define SUN6I_MIPI_CSI2_CH_INT_PD_FRAME_SYNC_ERR	BIT(24)
> +#define SUN6I_MIPI_CSI2_CH_INT_PD_EMB_DATA		BIT(18)
> +#define SUN6I_MIPI_CSI2_CH_INT_PD_PF			BIT(17)
> +#define SUN6I_MIPI_CSI2_CH_INT_PD_PH_UPDATE		BIT(16)
> +#define SUN6I_MIPI_CSI2_CH_INT_PD_LINE_START_SYNC	BIT(11)
> +#define SUN6I_MIPI_CSI2_CH_INT_PD_LINE_END_SYNC		BIT(10)
> +#define SUN6I_MIPI_CSI2_CH_INT_PD_FRAME_START_SYNC	BIT(9)
> +#define SUN6I_MIPI_CSI2_CH_INT_PD_FRAME_END_SYNC	BIT(8)
> +#define SUN6I_MIPI_CSI2_CH_INT_PD_FIFO_OVER		BIT(0)
> +
> +#define SUN6I_MIPI_CSI2_CH_DT_TRIGGER_REG		0x60
> +#define SUN6I_MIPI_CSI2_CH_CUR_PH_REG			0x70
> +#define SUN6I_MIPI_CSI2_CH_ECC_REG			0x74
> +#define SUN6I_MIPI_CSI2_CH_CKS_REG			0x78
> +#define SUN6I_MIPI_CSI2_CH_FRAME_NUM_REG		0x7c
> +#define SUN6I_MIPI_CSI2_CH_LINE_NUM_REG			0x80
> +
> +#define SUN6I_MIPI_CSI2_CH_REG(reg, ch) \
> +	(SUN6I_MIPI_CSI2_CH_BASE + SUN6I_MIPI_CSI2_CH_OFFSET * (ch) + (reg))
> +
> +enum mipi_csi2_data_type {
> +	MIPI_CSI2_DATA_TYPE_RAW8	= 0x2a,
> +	MIPI_CSI2_DATA_TYPE_RAW10	= 0x2b,
> +	MIPI_CSI2_DATA_TYPE_RAW12	= 0x2c,
> +};
> +
> +struct sun6i_mipi_csi2_video {
> +	struct v4l2_fwnode_endpoint endpoint;
> +	struct v4l2_subdev subdev;
> +	struct media_pad pads[2];
> +
> +	struct v4l2_async_subdev subdev_async;
> +	struct v4l2_async_notifier notifier;
> +
> +	struct v4l2_subdev *remote_subdev;
> +	u32 remote_pad_index;
> +	u32 mbus_code;
> +};
> +
> +struct sun6i_mipi_csi2_dev {
> +	struct device *dev;
> +
> +	struct regmap *regmap;
> +	struct clk *clk_mod;
> +	struct reset_control *reset;
> +	struct phy *dphy;
> +
> +	struct sun6i_mipi_csi2_video video;
> +};
> +
> +#define sun6i_mipi_csi2_subdev_video(subdev) \
> +	container_of(subdev, struct sun6i_mipi_csi2_video, subdev)
> +
> +#define sun6i_mipi_csi2_video_dev(video) \
> +	container_of(video, struct sun6i_mipi_csi2_dev, video)
> +
> +#endif /* __SUN6I_MIPI_CSI2_H__ */

-- 
Regards,

Sakari Ailus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
