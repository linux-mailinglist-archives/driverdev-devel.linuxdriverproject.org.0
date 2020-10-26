Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 397C929889A
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 09:40:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B39AA86742;
	Mon, 26 Oct 2020 08:40:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DAI3WqCfYAUu; Mon, 26 Oct 2020 08:40:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4293F866E7;
	Mon, 26 Oct 2020 08:40:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E27C31BF375
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 08:40:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CC8A22D946
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 08:40:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r5SFKkjHA+ie for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 08:40:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id AA10A274E3
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 08:40:22 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09Q8YojN130953;
 Mon, 26 Oct 2020 08:40:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=F5LlvzPNIF5Il7U0Hj7prxHic4yEfs/S65y2+xsCuw4=;
 b=eiiV/epQ4XPYppVkw6Lbd85pWHWAYftU1SkYnx4tUegG99eaw9Ei9dP+yAOEFENZNJ2f
 LbdVgrWNwvrjzzCMCSaPoubud/De3KZJdxnWAPXU05++8dNIJO89/eE2qdhjsKcpsIz/
 dVqAMMVta+UQKDVoEA+a3Ufc5pNofBhRIYpKk4ZiClRebxwnaFn62QJz/ucaqBnsR/Rd
 dvDluSFG/H53VJpfKpXzwnA8lPZiEWQgzFPyQaercRGym4WmkeBo1+ucaiUrFCcmEP7H
 F+OiRUG8nphFdrJ/ePvU2HUSrnNEcxiOxmbFtVqoUG8P5q4r1OFUX6GCIRyfRIFflV68 jQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 34dgm3s3c4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 26 Oct 2020 08:40:07 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09Q8aJrw137883;
 Mon, 26 Oct 2020 08:40:07 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 34cwuk1g4m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 26 Oct 2020 08:40:06 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 09Q8dtYt020584;
 Mon, 26 Oct 2020 08:39:56 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 26 Oct 2020 01:39:54 -0700
Date: Mon, 26 Oct 2020 11:39:43 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 08/14] media: sunxi: Add support for the A31 MIPI CSI-2
 controller
Message-ID: <20201026083943.GB1042@kadam>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-9-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023174546.504028-9-paul.kocialkowski@bootlin.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9785
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxscore=0 bulkscore=0
 spamscore=0 adultscore=0 malwarescore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010260062
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9785
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 lowpriorityscore=0 impostorscore=0
 adultscore=0 bulkscore=0 spamscore=0 phishscore=0 mlxlogscore=999
 suspectscore=0 clxscore=1011 mlxscore=0 malwarescore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010260062
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
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Vinod Koul <vkoul@kernel.org>,
 Yong Deng <yong.deng@magewell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Chen-Yu Tsai <wens@csie.org>,
 kevin.lhopital@hotmail.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 23, 2020 at 07:45:40PM +0200, Paul Kocialkowski wrote:
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
> +		regmap_update_bits(regmap, SUN6I_MIPI_CSI2_CTL_REG,
> +				   SUN6I_MIPI_CSI2_CTL_EN, 0);
> +
> +		phy_power_off(cdev->dphy);
> +
> +		return ret;

This would be better as a separate function.  (I hate backwards gotos
like this.)

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

[ snip ]

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

Missing error code.

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

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
