Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8D42CBFF7
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Dec 2020 15:45:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0C65E878F4;
	Wed,  2 Dec 2020 14:45:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CKQuHt+pjaIV; Wed,  2 Dec 2020 14:45:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 01733878BC;
	Wed,  2 Dec 2020 14:45:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0B9461BF281
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 14:45:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 07DB186FBA
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 14:45:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rkzewCj8G6YY for <devel@linuxdriverproject.org>;
 Wed,  2 Dec 2020 14:44:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net
 [217.70.183.201])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E136186F8E
 for <devel@driverdev.osuosl.org>; Wed,  2 Dec 2020 14:44:57 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 8B8891BF217;
 Wed,  2 Dec 2020 14:44:47 +0000 (UTC)
Date: Wed, 2 Dec 2020 15:44:47 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2 13/19] media: sunxi: Add support for the A31 MIPI
 CSI-2 controller
Message-ID: <X8eoX+M650sMXqpx@aptenodytes>
References: <20201128142839.517949-1-paul.kocialkowski@bootlin.com>
 <20201128142839.517949-14-paul.kocialkowski@bootlin.com>
 <20201201122038.bxk3vu2w3mg43ayq@gilmour>
MIME-Version: 1.0
In-Reply-To: <20201201122038.bxk3vu2w3mg43ayq@gilmour>
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
Cc: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-doc@vger.kernel.org, linux-sunxi@googlegroups.com,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, kevin.lhopital@hotmail.com,
 devel@driverdev.osuosl.org, Jonathan Corbet <corbet@lwn.net>,
 Kishon Vijay Abraham I <kishon@ti.com>, Chen-Yu Tsai <wens@csie.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Helen Koike <helen.koike@collabora.com>, Rob Herring <robh+dt@kernel.org>,
 Yong Deng <yong.deng@magewell.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: multipart/mixed; boundary="===============2471749680440723451=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============2471749680440723451==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="TaE5UDuue3o8CB8f"
Content-Disposition: inline


--TaE5UDuue3o8CB8f
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue 01 Dec 20, 13:20, Maxime Ripard wrote:
> Hi,
>=20
> On Sat, Nov 28, 2020 at 03:28:33PM +0100, Paul Kocialkowski wrote:
> > The A31 MIPI CSI-2 controller is a dedicated MIPI CSI-2 bridge
> > found on Allwinner SoCs such as the A31 and V3/V3s.
> >=20
> > It is a standalone block, connected to the CSI controller on one side
> > and to the MIPI D-PHY block on the other. It has a dedicated address
> > space, interrupt line and clock.
> >=20
> > It is represented as a V4L2 subdev to the CSI controller and takes a
> > MIPI CSI-2 sensor as its own subdev, all using the fwnode graph and
> > media controller API.
> >=20
> > Only 8-bit and 10-bit Bayer formats are currently supported.
> > While up to 4 internal channels to the CSI controller exist, only one
> > is currently supported by this implementation.
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  drivers/media/platform/sunxi/Kconfig          |   1 +
> >  drivers/media/platform/sunxi/Makefile         |   1 +
> >  .../platform/sunxi/sun6i-mipi-csi2/Kconfig    |  12 +
> >  .../platform/sunxi/sun6i-mipi-csi2/Makefile   |   4 +
> >  .../sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c   | 591 ++++++++++++++++++
> >  .../sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.h   | 117 ++++
> >  6 files changed, 726 insertions(+)
> >  create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/Kconfig
> >  create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/Makefi=
le
> >  create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_=
mipi_csi2.c
> >  create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_=
mipi_csi2.h
> >=20
> > diff --git a/drivers/media/platform/sunxi/Kconfig b/drivers/media/platf=
orm/sunxi/Kconfig
> > index 7151cc249afa..9684e07454ad 100644
> > --- a/drivers/media/platform/sunxi/Kconfig
> > +++ b/drivers/media/platform/sunxi/Kconfig
> > @@ -2,3 +2,4 @@
> > =20
> >  source "drivers/media/platform/sunxi/sun4i-csi/Kconfig"
> >  source "drivers/media/platform/sunxi/sun6i-csi/Kconfig"
> > +source "drivers/media/platform/sunxi/sun6i-mipi-csi2/Kconfig"
> > diff --git a/drivers/media/platform/sunxi/Makefile b/drivers/media/plat=
form/sunxi/Makefile
> > index fc537c9f5ca9..887a7cae8fca 100644
> > --- a/drivers/media/platform/sunxi/Makefile
> > +++ b/drivers/media/platform/sunxi/Makefile
> > @@ -2,5 +2,6 @@
> > =20
> >  obj-y		+=3D sun4i-csi/
> >  obj-y		+=3D sun6i-csi/
> > +obj-y		+=3D sun6i-mipi-csi2/
>=20
> I'm not sure we need a new folder here, it's only ever tied to sun6i-csi
> so it would make more sense to have it in the same folder.

My thinking was that it's a different driver and a different hardware block,
so it's less confusing to have it in a different directory. I think many wo=
uld
expect the driver to share code with sun6i-csi (in a component driver kind =
of
way) if it was in the same directory, which is not the case here.

> >  obj-y		+=3D sun8i-di/
> >  obj-y		+=3D sun8i-rotate/
> > diff --git a/drivers/media/platform/sunxi/sun6i-mipi-csi2/Kconfig b/dri=
vers/media/platform/sunxi/sun6i-mipi-csi2/Kconfig
> > new file mode 100644
> > index 000000000000..3260591ed5c0
> > --- /dev/null
> > +++ b/drivers/media/platform/sunxi/sun6i-mipi-csi2/Kconfig
> > @@ -0,0 +1,12 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +config VIDEO_SUN6I_MIPI_CSI2
> > +	tristate "Allwinner A31 MIPI CSI-2 Controller Driver"
> > +	depends on VIDEO_V4L2 && COMMON_CLK
> > +	depends on ARCH_SUNXI || COMPILE_TEST
> > +	select PHY_SUN6I_MIPI_DPHY
> > +	select MEDIA_CONTROLLER
> > +	select VIDEO_V4L2_SUBDEV_API
> > +	select REGMAP_MMIO
> > +	select V4L2_FWNODE
> > +	help
> > +	   Support for the Allwinner A31 MIPI CSI-2 Controller.
> > diff --git a/drivers/media/platform/sunxi/sun6i-mipi-csi2/Makefile b/dr=
ivers/media/platform/sunxi/sun6i-mipi-csi2/Makefile
> > new file mode 100644
> > index 000000000000..14e4e03818b5
> > --- /dev/null
> > +++ b/drivers/media/platform/sunxi/sun6i-mipi-csi2/Makefile
> > @@ -0,0 +1,4 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +sun6i-mipi-csi2-y +=3D sun6i_mipi_csi2.o
> > +
> > +obj-$(CONFIG_VIDEO_SUN6I_MIPI_CSI2) +=3D sun6i-mipi-csi2.o
> > diff --git a/drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_cs=
i2.c b/drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c
> > new file mode 100644
> > index 000000000000..a6567ef82fb4
> > --- /dev/null
> > +++ b/drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c
> > @@ -0,0 +1,591 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Copyright 2020 Bootlin
> > + * Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > + */
> > +
> > +#include <linux/clk.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/of_device.h>
> > +#include <linux/phy/phy.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/pm_runtime.h>
> > +#include <linux/regmap.h>
> > +#include <linux/reset.h>
> > +#include <media/v4l2-ctrls.h>
> > +#include <media/v4l2-device.h>
> > +#include <media/v4l2-fwnode.h>
> > +
> > +#include "sun6i_mipi_csi2.h"
> > +
> > +#define MODULE_NAME	"sun6i-mipi-csi2"
> > +
> > +static const u32 sun6i_mipi_csi2_mbus_codes[] =3D {
> > +	MEDIA_BUS_FMT_SBGGR8_1X8,
> > +	MEDIA_BUS_FMT_SGBRG8_1X8,
> > +	MEDIA_BUS_FMT_SGRBG8_1X8,
> > +	MEDIA_BUS_FMT_SRGGB8_1X8,
> > +	MEDIA_BUS_FMT_SBGGR10_1X10,
> > +	MEDIA_BUS_FMT_SGBRG10_1X10,
> > +	MEDIA_BUS_FMT_SGRBG10_1X10,
> > +	MEDIA_BUS_FMT_SRGGB10_1X10,
> > +};
> > +
> > +/* Video */
> > +
> > +static int sun6i_mipi_csi2_s_stream(struct v4l2_subdev *subdev, int on)
> > +{
> > +	struct sun6i_mipi_csi2_video *video =3D
> > +		sun6i_mipi_csi2_subdev_video(subdev);
> > +	struct sun6i_mipi_csi2_dev *cdev =3D sun6i_mipi_csi2_video_dev(video);
> > +	struct v4l2_subdev *remote_subdev =3D video->remote_subdev;
> > +	struct v4l2_fwnode_bus_mipi_csi2 *bus_mipi_csi2 =3D
> > +		&video->endpoint.bus.mipi_csi2;
> > +	union phy_configure_opts dphy_opts =3D { 0 };
> > +	struct phy_configure_opts_mipi_dphy *dphy_cfg =3D &dphy_opts.mipi_dph=
y;
> > +	struct regmap *regmap =3D cdev->regmap;
> > +	struct v4l2_ctrl *ctrl;
> > +	unsigned int lanes_count;
> > +	unsigned int bpp;
> > +	unsigned long pixel_rate;
> > +	u8 data_type =3D 0;
> > +	u32 version =3D 0;
> > +	/* Initialize to 0 to use both in disable label (ret !=3D 0) and off.=
 */
> > +	int ret =3D 0;
> > +
> > +	if (!remote_subdev)
> > +		return -ENODEV;
> > +
> > +	if (!on) {
> > +		v4l2_subdev_call(remote_subdev, video, s_stream, 0);
> > +		goto disable;
> > +	}
> > +
> > +	switch (video->mbus_format.code) {
> > +	case MEDIA_BUS_FMT_SBGGR8_1X8:
> > +	case MEDIA_BUS_FMT_SGBRG8_1X8:
> > +	case MEDIA_BUS_FMT_SGRBG8_1X8:
> > +	case MEDIA_BUS_FMT_SRGGB8_1X8:
> > +		data_type =3D MIPI_CSI2_DATA_TYPE_RAW8;
> > +		bpp =3D 8;
> > +		break;
> > +	case MEDIA_BUS_FMT_SBGGR10_1X10:
> > +	case MEDIA_BUS_FMT_SGBRG10_1X10:
> > +	case MEDIA_BUS_FMT_SGRBG10_1X10:
> > +	case MEDIA_BUS_FMT_SRGGB10_1X10:
> > +		data_type =3D MIPI_CSI2_DATA_TYPE_RAW10;
> > +		bpp =3D 10;
> > +		break;
> > +	default:
> > +		return -EINVAL;
> > +	}
> > +
> > +	/* Sensor pixel rate */
> > +
> > +	ctrl =3D v4l2_ctrl_find(remote_subdev->ctrl_handler, V4L2_CID_PIXEL_R=
ATE);
> > +	if (!ctrl) {
> > +		dev_err(cdev->dev,
> > +			"%s: no MIPI CSI-2 pixel rate from the sensor\n",
> > +			__func__);
> > +		return -ENODEV;
> > +	}
> > +
> > +	pixel_rate =3D (unsigned long)v4l2_ctrl_g_ctrl_int64(ctrl);
> > +	if (!pixel_rate) {
> > +		dev_err(cdev->dev,
> > +			"%s: zero MIPI CSI-2 pixel rate from the sensor\n",
> > +			__func__);
> > +		return -ENODEV;
> > +	}
> > +
> > +	/* Power management */
> > +
> > +	ret =3D pm_runtime_get_sync(cdev->dev);
> > +	if (ret < 0) {
> > +		pm_runtime_put_noidle(cdev->dev);
> > +		return ret;
> > +	}
> > +
> > +	/* D-PHY configuration */
> > +
> > +	lanes_count =3D bus_mipi_csi2->num_data_lanes;
> > +	phy_mipi_dphy_get_default_config(pixel_rate, bpp, lanes_count,
> > +					 dphy_cfg);
> > +
> > +	/*
> > +	 * Note that our hardware is using DDR, which is not taken in account=
 by
> > +	 * phy_mipi_dphy_get_default_config when calculating hs_clk_rate from
> > +	 * the pixel rate, lanes count and bpp.
> > +	 *
> > +	 * The resulting clock rate is basically the symbol rate over the who=
le
> > +	 * link. The actual clock rate is calculated with division by two sin=
ce
> > +	 * DDR samples both on rising and falling edges.
> > +	 */
> > +
> > +	dev_dbg(cdev->dev, "A31 MIPI CSI-2 config:\n");
> > +	dev_dbg(cdev->dev, "%ld pixels/s, %u bits/pixel, %lu Hz clock\n",
> > +		pixel_rate, bpp, dphy_cfg->hs_clk_rate / 2);
> > +
> > +	ret =3D phy_reset(cdev->dphy);
> > +	if (ret) {
> > +		dev_err(cdev->dev, "failed to reset MIPI D-PHY\n");
> > +		goto error_pm;
> > +	}
> > +
> > +	ret =3D phy_set_mode_ext(cdev->dphy, PHY_MODE_MIPI_DPHY,
> > +			       PHY_MIPI_DPHY_SUBMODE_RX);
> > +	if (ret) {
> > +		dev_err(cdev->dev, "failed to set MIPI D-PHY mode\n");
> > +		goto error_pm;
> > +	}
> > +
> > +	ret =3D phy_configure(cdev->dphy, &dphy_opts);
> > +	if (ret) {
> > +		dev_err(cdev->dev, "failed to configure MIPI D-PHY\n");
> > +		goto error_pm;
> > +	}
> > +
> > +	ret =3D phy_power_on(cdev->dphy);
> > +	if (ret) {
> > +		dev_err(cdev->dev, "failed to power on MIPI D-PHY\n");
> > +		goto error_pm;
> > +	}
> > +
> > +	/* MIPI CSI-2 controller setup */
> > +
> > +	/*
> > +	 * The enable flow in the Allwinner BSP is a bit different: the enable
> > +	 * and reset bits are set together before starting the CSI controller.
> > +	 *
> > +	 * In mainline we enable the CSI controller first (due to subdev logi=
c).
> > +	 * One reliable way to make this work is to deassert reset, configure
> > +	 * registers and enable the controller when everything's ready.
> > +	 *
> > +	 * However, setting the version enable bit and removing it afterwards
> > +	 * appears necessary for capture to work reliably, while replacing it
> > +	 * with a delay doesn't do the trick.
> > +	 */
> > +	regmap_write(regmap, SUN6I_MIPI_CSI2_CTL_REG,
> > +		     SUN6I_MIPI_CSI2_CTL_RESET_N |
> > +		     SUN6I_MIPI_CSI2_CTL_VERSION_EN |
> > +		     SUN6I_MIPI_CSI2_CTL_UNPK_EN);
> > +
> > +	regmap_read(regmap, SUN6I_MIPI_CSI2_VERSION_REG, &version);
> > +
> > +	regmap_update_bits(regmap, SUN6I_MIPI_CSI2_CTL_REG,
> > +				   SUN6I_MIPI_CSI2_CTL_VERSION_EN, 0);
> > +
> > +	dev_dbg(cdev->dev, "A31 MIPI CSI-2 version: %04x\n", version);
> > +
> > +	regmap_write(regmap, SUN6I_MIPI_CSI2_CFG_REG,
> > +		     SUN6I_MIPI_CSI2_CFG_CHANNEL_MODE(1) |
> > +		     SUN6I_MIPI_CSI2_CFG_LANE_COUNT(lanes_count));
> > +
> > +	/*
> > +	 * Our MIPI CSI-2 controller has internal channels that can be
> > +	 * configured to match a specific MIPI CSI-2 virtual channel and/or
> > +	 * a specific data type. Each internal channel can be piped to an
> > +	 * internal channel of the CSI controller.
> > +	 *
> > +	 * We set virtual channel numbers to all channels to make sure that
> > +	 * virtual channel 0 goes to CSI channel 0 only.
> > +	 */
> > +	regmap_write(regmap, SUN6I_MIPI_CSI2_VCDT_RX_REG,
> > +		     SUN6I_MIPI_CSI2_VCDT_RX_CH_VC(3, 3) |
> > +		     SUN6I_MIPI_CSI2_VCDT_RX_CH_VC(2, 2) |
> > +		     SUN6I_MIPI_CSI2_VCDT_RX_CH_VC(1, 1) |
> > +		     SUN6I_MIPI_CSI2_VCDT_RX_CH_VC(0, 0) |
> > +		     SUN6I_MIPI_CSI2_VCDT_RX_CH_DT(0, data_type));
> > +
> > +	regmap_update_bits(regmap, SUN6I_MIPI_CSI2_CTL_REG,
> > +			   SUN6I_MIPI_CSI2_CTL_EN, SUN6I_MIPI_CSI2_CTL_EN);
> > +
> > +	ret =3D v4l2_subdev_call(remote_subdev, video, s_stream, 1);
> > +	if (ret)
> > +		goto disable;
> > +
> > +	return 0;
> > +
> > +disable:
> > +	regmap_update_bits(regmap, SUN6I_MIPI_CSI2_CTL_REG,
> > +			   SUN6I_MIPI_CSI2_CTL_EN, 0);
> > +
> > +	phy_power_off(cdev->dphy);
> > +
> > +error_pm:
> > +	pm_runtime_put(cdev->dev);
> > +
> > +	return ret;
> > +}
> > +
> > +static const struct v4l2_subdev_video_ops sun6i_mipi_csi2_subdev_video=
_ops =3D {
> > +	.s_stream	=3D sun6i_mipi_csi2_s_stream,
> > +};
> > +
> > +/* Pad */
> > +
> > +static int
> > +sun6i_mipi_csi2_enum_mbus_code(struct v4l2_subdev *subdev,
> > +			       struct v4l2_subdev_pad_config *config,
> > +			       struct v4l2_subdev_mbus_code_enum *code_enum)
> > +{
> > +	if (code_enum->index >=3D ARRAY_SIZE(sun6i_mipi_csi2_mbus_codes))
> > +		return -EINVAL;
> > +
> > +	code_enum->code =3D sun6i_mipi_csi2_mbus_codes[code_enum->index];
> > +
> > +	return 0;
> > +}
> > +
> > +static int sun6i_mipi_csi2_get_fmt(struct v4l2_subdev *subdev,
> > +				   struct v4l2_subdev_pad_config *config,
> > +				   struct v4l2_subdev_format *format)
> > +{
> > +	struct sun6i_mipi_csi2_video *video =3D
> > +		sun6i_mipi_csi2_subdev_video(subdev);
> > +	struct v4l2_mbus_framefmt *mbus_format =3D &format->format;
> > +
> > +	if (format->which =3D=3D V4L2_SUBDEV_FORMAT_TRY)
> > +		*mbus_format =3D *v4l2_subdev_get_try_format(subdev, config,
> > +							   format->pad);
> > +	else
> > +		*mbus_format =3D video->mbus_format;
> > +
> > +	return 0;
> > +}
> > +
> > +static int sun6i_mipi_csi2_set_fmt(struct v4l2_subdev *subdev,
> > +				   struct v4l2_subdev_pad_config *config,
> > +				   struct v4l2_subdev_format *format)
> > +{
> > +	struct sun6i_mipi_csi2_video *video =3D
> > +		sun6i_mipi_csi2_subdev_video(subdev);
> > +	struct v4l2_mbus_framefmt *mbus_format =3D &format->format;
> > +
> > +	if (format->which =3D=3D V4L2_SUBDEV_FORMAT_TRY)
> > +		*v4l2_subdev_get_try_format(subdev, config, format->pad) =3D
> > +			*mbus_format;
> > +	else
> > +		video->mbus_format =3D *mbus_format;
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct v4l2_subdev_pad_ops sun6i_mipi_csi2_subdev_pad_ops=
 =3D {
> > +	.enum_mbus_code	=3D sun6i_mipi_csi2_enum_mbus_code,
> > +	.get_fmt	=3D sun6i_mipi_csi2_get_fmt,
> > +	.set_fmt	=3D sun6i_mipi_csi2_set_fmt,
> > +};
> > +
> > +/* Subdev */
> > +
> > +static const struct v4l2_subdev_ops sun6i_mipi_csi2_subdev_ops =3D {
> > +	.video		=3D &sun6i_mipi_csi2_subdev_video_ops,
> > +	.pad		=3D &sun6i_mipi_csi2_subdev_pad_ops,
> > +};
> > +
> > +/* Notifier */
> > +
> > +static int
> > +sun6i_mipi_csi2_notifier_bound(struct v4l2_async_notifier *notifier,
> > +			       struct v4l2_subdev *remote_subdev,
> > +			       struct v4l2_async_subdev *remote_subdev_async)
> > +{
> > +	struct v4l2_subdev *subdev =3D notifier->sd;
> > +	struct sun6i_mipi_csi2_video *video =3D
> > +		sun6i_mipi_csi2_subdev_video(subdev);
> > +	struct sun6i_mipi_csi2_dev *cdev =3D sun6i_mipi_csi2_video_dev(video);
> > +	int source_pad;
> > +	int ret;
> > +
> > +	source_pad =3D media_entity_get_fwnode_pad(&remote_subdev->entity,
> > +						 remote_subdev->fwnode,
> > +						 MEDIA_PAD_FL_SOURCE);
> > +	if (source_pad < 0)
> > +		return source_pad;
> > +
> > +	ret =3D media_create_pad_link(&remote_subdev->entity, source_pad,
> > +				    &subdev->entity, 0,
> > +				    MEDIA_LNK_FL_ENABLED |
> > +				    MEDIA_LNK_FL_IMMUTABLE);
> > +	if (ret) {
> > +		dev_err(cdev->dev, "failed to create %s:%u -> %s:%u link\n",
> > +			remote_subdev->entity.name, source_pad,
> > +			subdev->entity.name, 0);
> > +		return ret;
> > +	}
> > +
> > +	video->remote_subdev =3D remote_subdev;
> > +
> > +	return 0;
> > +}
> > +
> > +static const
> > +struct v4l2_async_notifier_operations sun6i_mipi_csi2_notifier_ops =3D=
 {
> > +	.bound		=3D sun6i_mipi_csi2_notifier_bound,
> > +};
> > +
> > +/* Media Entity */
> > +
> > +static const struct media_entity_operations sun6i_mipi_csi2_entity_ops=
 =3D {
> > +	.link_validate	=3D v4l2_subdev_link_validate,
> > +};
> > +
> > +/* Base Driver */
> > +
> > +static int __maybe_unused sun6i_mipi_csi2_suspend(struct device *dev)
> > +{
> > +	struct sun6i_mipi_csi2_dev *cdev =3D dev_get_drvdata(dev);
> > +
> > +	clk_disable_unprepare(cdev->clk_mod);
> > +	clk_disable_unprepare(cdev->clk_bus);
> > +	reset_control_assert(cdev->reset);
> > +
> > +	return 0;
> > +}
> > +
> > +static int __maybe_unused sun6i_mipi_csi2_resume(struct device *dev)
> > +{
> > +	struct sun6i_mipi_csi2_dev *cdev =3D dev_get_drvdata(dev);
> > +	int ret;
> > +
> > +	ret =3D reset_control_deassert(cdev->reset);
> > +	if (ret) {
> > +		dev_err(cdev->dev, "failed to deassert reset\n");
> > +		return ret;
> > +	}
> > +
> > +	ret =3D clk_prepare_enable(cdev->clk_bus);
> > +	if (ret) {
> > +		dev_err(cdev->dev, "failed to enable bus clock\n");
> > +		goto error_reset;
> > +	}
> > +
> > +	ret =3D clk_prepare_enable(cdev->clk_mod);
> > +	if (ret) {
> > +		dev_err(cdev->dev, "failed to enable module clock\n");
> > +		goto error_clk_bus;
> > +	}
> > +
> > +	return 0;
> > +
> > +error_clk_bus:
> > +	clk_disable_unprepare(cdev->clk_bus);
> > +
> > +error_reset:
> > +	reset_control_assert(cdev->reset);
> > +
> > +	return ret;
> > +}
>=20
> I'm guessing you set the __maybe_unused attribute because you're using
> SET_RUNTIME_PM_OPS, but what would happen if runtime_pm isn't selected?
> It looks like you don't handle that case.

Indeed, __maybe_unused is because of the conditional definition of
SET_RUNTIME_PM_OPS. If CONFIG_PM is not selected, then I guess the controll=
er
wouldn't be powered and wouldn't work. So I should definitely add a Kconfig
dependency on PM then, right?

Thanks for catching this!

> > +static int sun6i_mipi_csi2_v4l2_setup(struct sun6i_mipi_csi2_dev *cdev)
> > +{
> > +	struct sun6i_mipi_csi2_video *video =3D &cdev->video;
> > +	struct v4l2_subdev *subdev =3D &video->subdev;
> > +	struct v4l2_async_notifier *notifier =3D &video->notifier;
> > +	struct fwnode_handle *handle;
> > +	struct v4l2_fwnode_endpoint *endpoint;
> > +	struct v4l2_async_subdev *subdev_async;
> > +	int ret;
> > +
> > +	/* Subdev */
> > +
> > +	v4l2_subdev_init(subdev, &sun6i_mipi_csi2_subdev_ops);
> > +	subdev->dev =3D cdev->dev;
> > +	subdev->flags |=3D V4L2_SUBDEV_FL_HAS_DEVNODE;
> > +	strscpy(subdev->name, MODULE_NAME, sizeof(subdev->name));
> > +	v4l2_set_subdevdata(subdev, cdev);
> > +
> > +	/* Entity */
> > +
> > +	subdev->entity.function =3D MEDIA_ENT_F_VID_IF_BRIDGE;
> > +	subdev->entity.ops =3D &sun6i_mipi_csi2_entity_ops;
> > +
> > +	/* Pads */
> > +
> > +	video->pads[0].flags =3D MEDIA_PAD_FL_SINK;
> > +	video->pads[1].flags =3D MEDIA_PAD_FL_SOURCE;
> > +
> > +	ret =3D media_entity_pads_init(&subdev->entity, 2, video->pads);
> > +	if (ret)
> > +		return ret;
> > +
> > +	/* Endpoint */
> > +
> > +	handle =3D fwnode_graph_get_endpoint_by_id(dev_fwnode(cdev->dev), 0, =
0,
> > +						 FWNODE_GRAPH_ENDPOINT_NEXT);
> > +	if (!handle) {
> > +		ret =3D -ENODEV;
> > +		goto error_media_entity;
> > +	}
> > +
> > +	endpoint =3D &video->endpoint;
> > +	endpoint->bus_type =3D V4L2_MBUS_CSI2_DPHY;
> > +
> > +	ret =3D v4l2_fwnode_endpoint_parse(handle, endpoint);
> > +	fwnode_handle_put(handle);
> > +	if (ret)
> > +		goto error_media_entity;
> > +
> > +	/* Notifier */
> > +
> > +	v4l2_async_notifier_init(notifier);
> > +
> > +	subdev_async =3D &video->subdev_async;
> > +	ret =3D v4l2_async_notifier_add_fwnode_remote_subdev(notifier, handle,
> > +							   subdev_async);
> > +	if (ret)
> > +		goto error_media_entity;
> > +
> > +	video->notifier.ops =3D &sun6i_mipi_csi2_notifier_ops;
> > +
> > +	ret =3D v4l2_async_subdev_notifier_register(subdev, notifier);
> > +	if (ret < 0)
> > +		goto error_notifier;
> > +
> > +	/* Subdev */
> > +
> > +	ret =3D v4l2_async_register_subdev(subdev);
> > +	if (ret < 0)
> > +		goto error_notifier_registered;
> > +
> > +	/* Runtime PM */
> > +
> > +	pm_runtime_enable(cdev->dev);
> > +	pm_runtime_set_suspended(cdev->dev);
> > +
> > +	return 0;
> > +
> > +error_notifier_registered:
> > +	v4l2_async_notifier_unregister(notifier);
> > +error_notifier:
> > +	v4l2_async_notifier_cleanup(notifier);
> > +error_media_entity:
> > +	media_entity_cleanup(&subdev->entity);
> > +
> > +	return ret;
> > +}
> > +
> > +static int sun6i_mipi_csi2_v4l2_teardown(struct sun6i_mipi_csi2_dev *c=
dev)
> > +{
> > +	struct sun6i_mipi_csi2_video *video =3D &cdev->video;
> > +	struct v4l2_subdev *subdev =3D &video->subdev;
> > +	struct v4l2_async_notifier *notifier =3D &video->notifier;
> > +
> > +	v4l2_async_unregister_subdev(subdev);
> > +	v4l2_async_notifier_unregister(notifier);
> > +	v4l2_async_notifier_cleanup(notifier);
> > +	media_entity_cleanup(&subdev->entity);
> > +	v4l2_device_unregister_subdev(subdev);
> > +
> > +	return 0;
> > +}
> > +
> > +static const struct regmap_config sun6i_mipi_csi2_regmap_config =3D {
> > +	.reg_bits       =3D 32,
> > +	.reg_stride     =3D 4,
> > +	.val_bits       =3D 32,
> > +	.max_register	=3D 0x400,
> > +};
> > +
> > +static int sun6i_mipi_csi2_probe(struct platform_device *pdev)
> > +{
> > +	struct sun6i_mipi_csi2_dev *cdev;
> > +	struct resource *res;
> > +	void __iomem *io_base;
> > +	int ret;
> > +
> > +	cdev =3D devm_kzalloc(&pdev->dev, sizeof(*cdev), GFP_KERNEL);
> > +	if (!cdev)
> > +		return -ENOMEM;
> > +
> > +	cdev->dev =3D &pdev->dev;
> > +
> > +	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +	io_base =3D devm_ioremap_resource(&pdev->dev, res);
> > +	if (IS_ERR(io_base))
> > +		return PTR_ERR(io_base);
> > +
> > +	cdev->regmap =3D devm_regmap_init_mmio(&pdev->dev, io_base,
> > +					     &sun6i_mipi_csi2_regmap_config);
> > +	if (IS_ERR(cdev->regmap)) {
> > +		dev_err(&pdev->dev, "failed to init register map\n");
> > +		return PTR_ERR(cdev->regmap);
> > +	}
> > +
> > +	cdev->clk_bus =3D devm_clk_get(&pdev->dev, "bus");
> > +	if (IS_ERR(cdev->clk_bus)) {
> > +		dev_err(&pdev->dev, "failed to acquire bus clock\n");
> > +		return PTR_ERR(cdev->clk_bus);
> > +	}
> > +
> > +	cdev->clk_mod =3D devm_clk_get(&pdev->dev, "mod");
> > +	if (IS_ERR(cdev->clk_mod)) {
> > +		dev_err(&pdev->dev, "failed to acquire mod clock\n");
> > +		return PTR_ERR(cdev->clk_mod);
> > +	}
> > +
> > +	cdev->reset =3D devm_reset_control_get_shared(&pdev->dev, NULL);
> > +	if (IS_ERR(cdev->reset)) {
> > +		dev_err(&pdev->dev, "failed to get reset controller\n");
> > +		return PTR_ERR(cdev->reset);
> > +	}
> > +
> > +	cdev->dphy =3D devm_phy_get(&pdev->dev, "dphy");
> > +	if (IS_ERR(cdev->dphy)) {
> > +		dev_err(&pdev->dev, "failed to get the MIPI D-PHY\n");
> > +		return PTR_ERR(cdev->dphy);
> > +	}
> > +
> > +	ret =3D phy_init(cdev->dphy);
> > +	if (ret) {
> > +		dev_err(&pdev->dev, "failed to initialize the MIPI D-PHY\n");
> > +		return ret;
> > +	}
> > +
> > +	platform_set_drvdata(pdev, cdev);
> > +
> > +	ret =3D sun6i_mipi_csi2_v4l2_setup(cdev);
> > +	if (ret)
> > +		return ret;
> > +
> > +	return 0;
> > +}
> > +
> > +static int sun6i_mipi_csi2_remove(struct platform_device *pdev)
> > +{
> > +	struct sun6i_mipi_csi2_dev *cdev =3D platform_get_drvdata(pdev);
> > +
> > +	phy_exit(cdev->dphy);
> > +
> > +	return sun6i_mipi_csi2_v4l2_teardown(cdev);
>=20
> This seem to be the only user and its content is pretty straightforward,
> so we shouldn't have a separate function here

This is for symmetry with sun6i_mipi_csi2_v4l2_setup and the intent is to s=
plit
v4l2 setup/teardown from driver resources, which makes things clearer and n=
icer
to read overall.

What are the downsides and why is it a problem that it has a single caller?

> > +}
> > +
> > +static const struct dev_pm_ops sun6i_mipi_csi2_pm_ops =3D {
> > +	SET_RUNTIME_PM_OPS(sun6i_mipi_csi2_suspend, sun6i_mipi_csi2_resume,
> > +			   NULL)
> > +};
> > +
> > +static const struct of_device_id sun6i_mipi_csi2_of_match[] =3D {
> > +	{ .compatible =3D "allwinner,sun6i-a31-mipi-csi2" },
> > +	{ .compatible =3D "allwinner,sun8i-v3s-mipi-csi2", },
>=20
> There's no need for the v3s compatible here, it will fallback to the a31
> one anyway.

Understood.

Thanks for the review!

Cheers,

Paul


--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--TaE5UDuue3o8CB8f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl/HqF4ACgkQ3cLmz3+f
v9GxNQgAlXMK9bhO1HL5TWPg2N58oF1dhvi7Y6xK4JPkggdx6PHO6FhEwrbjFCVT
sgWPZVcynX/rtaEJ73lMuSapxoYw/HyDsJYtf6vxJTywnddOwNxdY14zgXnwUbVu
9/j1PwP75J3KIIlZxgRt3CTa4M9iMBwytauNe3KbvbEKbEXgQrgCJeYSh1/4mSbl
ktc0Z8CLlsNkRmZ5LRjGPmlBIsDWcUHg18pFS/eaROu28Yio3pD55mYKhmOCs2zT
/jBavDgLIQQuHh8XQkZ8LFYn95o3gBz2FK5pf1TGWRBVe+//4Bb+D9EF3KpjtsIF
fiMT65MDYtVuQSlT2nsbhmv7QjCBng==
=6284
-----END PGP SIGNATURE-----

--TaE5UDuue3o8CB8f--

--===============2471749680440723451==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============2471749680440723451==--
