Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D8D2A1108
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Oct 2020 23:44:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A07CF2E177;
	Fri, 30 Oct 2020 22:44:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z57dTs3f+HOk; Fri, 30 Oct 2020 22:44:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 393552E16D;
	Fri, 30 Oct 2020 22:44:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 453921BF9BA
 for <devel@linuxdriverproject.org>; Fri, 30 Oct 2020 22:44:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3B16086E6F
 for <devel@linuxdriverproject.org>; Fri, 30 Oct 2020 22:44:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5VXIDsh8UzyO for <devel@linuxdriverproject.org>;
 Fri, 30 Oct 2020 22:44:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9086686E6E
 for <devel@driverdev.osuosl.org>; Fri, 30 Oct 2020 22:44:41 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 327E91F45F45
Subject: Re: [PATCH 00/14] Allwinner MIPI CSI-2 support for A31/V3s/A83T
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-sunxi@googlegroups.com
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <d15d724b-6af7-3e51-1316-7bdde5a42c60@collabora.com>
Date: Fri, 30 Oct 2020 19:44:28 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
Content-Language: en-US
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>,
 Yong Deng <yong.deng@magewell.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kevin.lhopital@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Paul,

I have some comments through the series, I hope this helps.

On 10/23/20 2:45 PM, Paul Kocialkowski wrote:
> This series introduces support for MIPI CSI-2, with the A31 controller that is
> found on most SoCs (A31, V3s and probably V5) as well as the A83T-specific
> controller. While the former uses the same MIPI D-PHY that is already supported
> for DSI, the latter embeds its own D-PHY.
> 
> In order to distinguish the use of the D-PHY between Rx mode (for MIPI CSI-2)
> and Tx mode (for MIPI DSI), a submode is introduced for D-PHY in the PHY API.
> This allows adding Rx support in the A31 D-PHY driver.
> 
> A few changes and fixes are applied to the A31 CSI controller driver, in order
> to support the MIPI CSI-2 use-case.
> 
> Follows is the V4L2 device topology representing the interactions between
> the MIPI CSI-2 sensor, the MIPI CSI-2 controller (which controls the D-PHY)
> and the CSI controller:
> - entity 1: sun6i-csi (1 pad, 1 link)
>             type Node subtype V4L flags 0
>             device node name /dev/video0
> 	pad0: Sink
> 		<- "sun6i-mipi-csi2":1 [ENABLED,IMMUTABLE]
> 
> - entity 5: sun6i-mipi-csi2 (2 pads, 2 links)
>             type V4L2 subdev subtype Unknown flags 0
> 	pad0: Sink
> 		<- "ov5648 0-0036":0 [ENABLED,IMMUTABLE]
> 	pad1: Source
> 		-> "sun6i-csi":0 [ENABLED,IMMUTABLE]
> 
> - entity 8: ov5648 0-0036 (1 pad, 1 link)
>             type V4L2 subdev subtype Sensor flags 0
>             device node name /dev/v4l-subdev0

Question: I noticed is that sun6i-mipi-csi2 doesn't expose a node under /dev/, but the sensor
exposes it. Probably because it uses V4L2_SUBDEV_FL_HAS_DEVNODE and sun6i-csi() calls
v4l2_device_register_subdev_nodes().

I find this weird from a userspace pov, since usually we don't mix manual and auto propagation
of the configs, so I started wondering if sun6i-csi driver should be calling
v4l2_device_register_subdev_nodes() in the first place.

Also, sun6i-csi doesn't seem to be used by any board dts (it's declared on the dtsi, but I
didn't find any dts enabling it), so I wonder if it would be a bad thing if we update it.

> 	pad0: Source
> 		[fmt:SBGGR8_1X8/640x480@1/30 field:none colorspace:raw xfer:none ycbcr:601 quantization:full-range]
> 		-> "sun6i-mipi-csi2":0 [ENABLED,IMMUTABLE]

If I understand correctly, this is very similar to ipu3:
    sensor->bus->dma_engine

in the case of ipu3-cio2:
    sensor->ipu3-csi2->ipu3-cio2

in this case:
    ov5648->sun6i-mipi-csi2->sun6i-csi

On thing that is confusing me is the name csi2 with csi (that makes me think of csi
vesun6i-csirsion one, which is not the case), I would rename it to sun6i-video (or maybe
it is just me who gets confused).
I know this driver is already upstream and not part of this series, but on the other hand it
doesn't seem to be used.

On another note, I always wonder if we should expose the bus in the topology, I'm not
sure if it provides any useful API or information for userspace, and you could have
a cleaner code (maybe code could be under phy subsystem). But at the same time, it
seems this is a pattern on v4l2.

I'd like to hear what others think on the above.

Regards,
Helen

> 
> Happy reviewing!
> 
> Paul Kocialkowski (14):
>   phy: Distinguish between Rx and Tx for MIPI D-PHY with submodes
>   phy: allwinner: phy-sun6i-mipi-dphy: Support D-PHY Rx mode for MIPI
>     CSI-2
>   media: sun6i-csi: Support an optional dedicated memory pool
>   media: sun6i-csi: Fix the image storage bpp for 10/12-bit Bayer
>     formats
>   media: sun6i-csi: Only configure the interface data width for parallel
>   media: sun6i-csi: Support feeding from the MIPI CSI-2 controller
>   dt-bindings: media: i2c: Add A31 MIPI CSI-2 bindings documentation
>   media: sunxi: Add support for the A31 MIPI CSI-2 controller
>   ARM: dts: sun8i: v3s: Add CSI0 camera interface node
>   ARM: dts: sun8i: v3s: Add MIPI D-PHY and MIPI CSI-2 interface nodes
>   dt-bindings: media: i2c: Add A83T MIPI CSI-2 bindings documentation
>   media: sunxi: Add support for the A83T MIPI CSI-2 controller
>   ARM: dts: sun8i: a83t: Add MIPI CSI-2 controller node
>   media: sunxi: sun8i-a83t-mipi-csi2: Avoid using the (unsolicited)
>     interrupt
> 
>  .../media/allwinner,sun6i-a31-mipi-csi2.yaml  | 168 +++++
>  .../media/allwinner,sun8i-a83t-mipi-csi2.yaml | 158 +++++
>  arch/arm/boot/dts/sun8i-a83t.dtsi             |  26 +
>  arch/arm/boot/dts/sun8i-v3s.dtsi              |  62 ++
>  drivers/media/platform/sunxi/Kconfig          |   2 +
>  drivers/media/platform/sunxi/Makefile         |   2 +
>  .../platform/sunxi/sun6i-csi/sun6i_csi.c      |  54 +-
>  .../platform/sunxi/sun6i-csi/sun6i_csi.h      |  20 +-
>  .../platform/sunxi/sun6i-mipi-csi2/Kconfig    |  11 +
>  .../platform/sunxi/sun6i-mipi-csi2/Makefile   |   4 +
>  .../sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c   | 635 +++++++++++++++++
>  .../sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.h   | 116 +++
>  .../sunxi/sun8i-a83t-mipi-csi2/Kconfig        |  11 +
>  .../sunxi/sun8i-a83t-mipi-csi2/Makefile       |   4 +
>  .../sun8i-a83t-mipi-csi2/sun8i_a83t_dphy.c    |  92 +++
>  .../sun8i-a83t-mipi-csi2/sun8i_a83t_dphy.h    |  39 ++
>  .../sun8i_a83t_mipi_csi2.c                    | 660 ++++++++++++++++++
>  .../sun8i_a83t_mipi_csi2.h                    | 196 ++++++
>  drivers/phy/allwinner/phy-sun6i-mipi-dphy.c   | 164 ++++-
>  drivers/staging/media/rkisp1/rkisp1-isp.c     |   3 +-
>  include/linux/phy/phy-mipi-dphy.h             |  13 +
>  21 files changed, 2408 insertions(+), 32 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml
>  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml
>  create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/Kconfig
>  create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/Makefile
>  create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c
>  create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.h
>  create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/Kconfig
>  create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/Makefile
>  create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun8i_a83t_dphy.c
>  create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun8i_a83t_dphy.h
>  create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun8i_a83t_mipi_csi2.c
>  create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun8i_a83t_mipi_csi2.h
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
