Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6F72D7A0D
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Dec 2020 16:57:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9D3A0228EA;
	Fri, 11 Dec 2020 15:57:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7LfOEbXSfKcc; Fri, 11 Dec 2020 15:57:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D5F092E0DC;
	Fri, 11 Dec 2020 15:57:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DC2491BF2A1
 for <devel@linuxdriverproject.org>; Fri, 11 Dec 2020 15:57:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D2F6222F05
 for <devel@linuxdriverproject.org>; Fri, 11 Dec 2020 15:57:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4N5c1X3oRIMm for <devel@linuxdriverproject.org>;
 Fri, 11 Dec 2020 15:57:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
 [217.70.183.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 99F63227F8
 for <devel@driverdev.osuosl.org>; Fri, 11 Dec 2020 15:57:23 +0000 (UTC)
X-Originating-IP: 93.29.109.196
Received: from localhost.localdomain (196.109.29.93.rev.sfr.net
 [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id CC43B60005;
 Fri, 11 Dec 2020 15:57:14 +0000 (UTC)
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-sunxi@googlegroups.com
Subject: [PATCH v3 00/15] Allwinner MIPI CSI-2 support for A31/V3s/A83T
Date: Fri, 11 Dec 2020 16:56:53 +0100
Message-Id: <20201211155708.154710-1-paul.kocialkowski@bootlin.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Jonathan Corbet <corbet@lwn.net>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>, Vinod Koul <vkoul@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, Yong Deng <yong.deng@magewell.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kevin.lhopital@hotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This series introduces support for MIPI CSI-2, with the A31 controller that is
found on most SoCs (A31, V3s and probably V5) as well as the A83T-specific
controller. While the former uses the same MIPI D-PHY that is already supported
for DSI, the latter embeds its own D-PHY.

In order to distinguish the use of the D-PHY between Rx mode (for MIPI CSI-2)
and Tx mode (for MIPI DSI), a submode is introduced for D-PHY in the PHY API.
This allows adding Rx support in the A31 D-PHY driver.

A few changes and fixes are applied to the A31 CSI controller driver, in order
to support the MIPI CSI-2 use-case.

Changes since v2:
- added Kconfig depend on PM since it's not optional;
- removed phy-names for A31 MIPI CSI-2 controller;
- removed v3s compatible in the A31 MIPI CSI-2 controller driver;
- removed A31 CSI controller single-port binding deprecation;
- removed empty dt port definitions;
- fixed minor checkpatch warnings;
- added collected tags;
- added media-ctl output in cover letter.

Changes since v1:
- reworked fwnode and media graph on the CSI controller end to have one port
  per interface, which solves the bus type representation issue;
- removed unused IRQ handlers in the MIPI CSI-2 bridges;
- avoided the use of devm_regmap_init_mmio_clk;
- deasserted reset before enabling clocks;
- fixed reported return code issues (ret |=, missing checks);
- applied requested cosmetic changes (backward goto, etc);
- switched over to runtime PM for the mipi csi-2 bridge drivers;
- selected PHY_SUN6I_MIPI_DPHY in Kconfig for sun6i-mipi-csi2;
- registered nodes with mipi csi-2 bridge subdevs;
- used V4L2 format info instead of switch/case for sun6i-csi bpp;
- fixed device-tree bindings as requested (useless properties, license);
- fixed mipi bridge dt instances names;
- added PHY API documentation about mode/power on order requirement;
- fixed clock error return code in d-phy code;
- fixed D-PHY mode check in d-phy code;
- added MAINTAINERS entries for the new drivers;
- added V4L2 compliance results;
- added various comments and rework commit mesages as requested.

Media ctl outputs for the testing setups are available below:

# sun6i-csi + sun6i-mipi-csi2 + ov5648

Media device information
------------------------
driver          sun6i-csi
model           Allwinner Video Capture Device
serial          
bus info        platform:1cb0000.camera
hw revision     0x0
driver version  5.10.0

Device topology
- entity 1: sun6i-csi (2 pads, 1 link)
            type Node subtype V4L flags 0
            device node name /dev/video0
	pad0: Sink
	pad1: Sink
		<- "sun6i-mipi-csi2":1 [ENABLED]

- entity 6: sun6i-mipi-csi2 (2 pads, 2 links)
            type V4L2 subdev subtype Unknown flags 0
            device node name /dev/v4l-subdev0
	pad0: Sink
		[fmt:unknown/0x0]
		<- "ov5648 0-0036":0 [ENABLED,IMMUTABLE]
	pad1: Source
		[fmt:unknown/0x0]
		-> "sun6i-csi":1 [ENABLED]

- entity 9: ov5648 0-0036 (1 pad, 1 link)
            type V4L2 subdev subtype Sensor flags 0
            device node name /dev/v4l-subdev1
	pad0: Source
		[fmt:SBGGR8_1X8/2592x1944@1/15 field:none colorspace:raw xfer:none ycbcr:601 quantization:full-range]
		-> "sun6i-mipi-csi2":0 [ENABLED,IMMUTABLE]

# sun6i-csi + sun8i-a83t-mipi-csi2 + ov8865

Media device information
------------------------
driver          sun6i-csi
model           Allwinner Video Capture Device
serial          
bus info        platform:1cb0000.camera
hw revision     0x0
driver version  5.10.0

Device topology
- entity 1: sun6i-csi (2 pads, 1 link)
            type Node subtype V4L flags 0
            device node name /dev/video0
	pad0: Sink
	pad1: Sink
		<- "sun8i-a83t-mipi-csi2":1 [ENABLED]

- entity 6: sun8i-a83t-mipi-csi2 (2 pads, 2 links)
            type V4L2 subdev subtype Unknown flags 0
            device node name /dev/v4l-subdev0
	pad0: Sink
		[fmt:unknown/0x0]
		<- "ov8865 1-0036":0 [ENABLED,IMMUTABLE]
	pad1: Source
		[fmt:unknown/0x0]
		-> "sun6i-csi":1 [ENABLED]

- entity 9: ov8865 1-0036 (1 pad, 1 link)
            type V4L2 subdev subtype Sensor flags 0
            device node name /dev/v4l-subdev1
	pad0: Source
		[fmt:SBGGR10_1X10/3264x2448@1/30 field:none colorspace:raw xfer:none ycbcr:601 quantization:full-range]
		-> "sun8i-a83t-mipi-csi2":0 [ENABLED,IMMUTABLE]

V4L2 compliance runs are available below:

# sun6i-csi + sun6i-mipi-csi2 + ov5648

v4l2-compliance SHA: not available, 32 bits

Compliance test for sun6i-video device /dev/video0:

Driver Info:
	Driver name      : sun6i-video
	Card type        : sun6i-csi
	Bus info         : platform:camera
	Driver version   : 5.10.0
	Capabilities     : 0x84200001
		Video Capture
		Streaming
		Extended Pix Format
		Device Capabilities
	Device Caps      : 0x04200001
		Video Capture
		Streaming
		Extended Pix Format
Media Driver Info:
	Driver name      : sun6i-csi
	Model            : Allwinner Video Capture Device
	Serial           : 
	Bus info         : platform:1cb0000.camera
	Media version    : 5.10.0
	Hardware revision: 0x00000000 (0)
	Driver version   : 5.10.0
Interface Info:
	ID               : 0x03000004
	Type             : V4L Video
Entity Info:
	ID               : 0x00000001 (1)
	Name             : sun6i-csi
	Function         : V4L2 I/O
	Pad 0x01000002   : 0: Sink
	Pad 0x01000003   : 1: Sink
	  Link 0x0200000d: from remote pad 0x1000008 of entity 'sun6i-mipi-csi2': Data, Enabled

Required ioctls:
	test MC information (see 'Media Driver Info' above): OK
		warn: v4l2-compliance.cpp(633): media bus_info 'platform:1cb0000.camera' differs from V4L2 bus_info 'platform:camera'
	test VIDIOC_QUERYCAP: OK

Allow for multiple opens:
	test second /dev/video0 open: OK
		warn: v4l2-compliance.cpp(633): media bus_info 'platform:1cb0000.camera' differs from V4L2 bus_info 'platform:camera'
	test VIDIOC_QUERYCAP: OK
	test VIDIOC_G/S_PRIORITY: OK
	test for unlimited opens: OK

Debug ioctls:
	test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
	test VIDIOC_LOG_STATUS: OK

Input ioctls:
	test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
	test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
	test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
	test VIDIOC_ENUMAUDIO: OK (Not Supported)
	test VIDIOC_G/S/ENUMINPUT: OK
	test VIDIOC_G/S_AUDIO: OK (Not Supported)
	Inputs: 1 Audio Inputs: 0 Tuners: 0

Output ioctls:
	test VIDIOC_G/S_MODULATOR: OK (Not Supported)
	test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
	test VIDIOC_ENUMAUDOUT: OK (Not Supported)
	test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
	test VIDIOC_G/S_AUDOUT: OK (Not Supported)
	Outputs: 0 Audio Outputs: 0 Modulators: 0

Input/Output configuration ioctls:
	test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
	test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
	test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
	test VIDIOC_G/S_EDID: OK (Not Supported)

Control ioctls (Input 0):
		warn: v4l2-test-controls.cpp(92): Exposure: (max - min) % step != 0
		warn: v4l2-test-controls.cpp(92): Gain: (max - min) % step != 0
		warn: v4l2-test-controls.cpp(92): Exposure: (max - min) % step != 0
		warn: v4l2-test-controls.cpp(92): Gain: (max - min) % step != 0
	test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
	test VIDIOC_QUERYCTRL: OK
		warn: v4l2-test-controls.cpp(368): Gain: returned control value 44 not a multiple of step
		warn: v4l2-test-controls.cpp(368): Gain: returned control value 44 not a multiple of step
		warn: v4l2-test-controls.cpp(368): Gain: returned control value 44 not a multiple of step
		warn: v4l2-test-controls.cpp(368): Gain: returned control value 44 not a multiple of step
	test VIDIOC_G/S_CTRL: OK
		warn: v4l2-test-controls.cpp(555): Gain: returned control value 44 not a multiple of step
	test VIDIOC_G/S/TRY_EXT_CTRLS: OK
	test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
	test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
	Standard Controls: 15 Private Controls: 0

Format ioctls (Input 0):
	test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
	test VIDIOC_G/S_PARM: OK (Not Supported)
	test VIDIOC_G_FBUF: OK (Not Supported)
	test VIDIOC_G_FMT: OK
	test VIDIOC_TRY_FMT: OK
	test VIDIOC_S_FMT: OK
	test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
	test Cropping: OK (Not Supported)
	test Composing: OK (Not Supported)
	test Scaling: OK

Codec ioctls (Input 0):
	test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
	test VIDIOC_G_ENC_INDEX: OK (Not Supported)
	test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)

Buffer ioctls (Input 0):
	test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
		fail: v4l2-test-buffers.cpp(755): q.export_bufs(node, q.g_type())
	test VIDIOC_EXPBUF: FAIL
	test Requests: OK (Not Supported)

Total for sun6i-video device /dev/video0: 45, Succeeded: 44, Failed: 1, Warnings: 1

# sun6i-csi + sun8i-a83t-mipi-csi2 + ov8865

v4l2-compliance SHA: not available, 32 bits

Compliance test for sun6i-video device /dev/video0:

Driver Info:
	Driver name      : sun6i-video
	Card type        : sun6i-csi
	Bus info         : platform:camera
	Driver version   : 5.10.0
	Capabilities     : 0x84200001
		Video Capture
		Streaming
		Extended Pix Format
		Device Capabilities
	Device Caps      : 0x04200001
		Video Capture
		Streaming
		Extended Pix Format
Media Driver Info:
	Driver name      : sun6i-csi
	Model            : Allwinner Video Capture Device
	Serial           : 
	Bus info         : platform:1cb0000.camera
	Media version    : 5.10.0
	Hardware revision: 0x00000000 (0)
	Driver version   : 5.10.0
Interface Info:
	ID               : 0x03000004
	Type             : V4L Video
Entity Info:
	ID               : 0x00000001 (1)
	Name             : sun6i-csi
	Function         : V4L2 I/O
	Pad 0x01000002   : 0: Sink
	Pad 0x01000003   : 1: Sink
	  Link 0x0200000d: from remote pad 0x1000008 of entity 'sun8i-a83t-mipi-csi2': Data, Enabled

Required ioctls:
	test MC information (see 'Media Driver Info' above): OK
		warn: v4l2-compliance.cpp(633): media bus_info 'platform:1cb0000.camera' differs from V4L2 bus_info 'platform:camera'
	test VIDIOC_QUERYCAP: OK

Allow for multiple opens:
	test second /dev/video0 open: OK
		warn: v4l2-compliance.cpp(633): media bus_info 'platform:1cb0000.camera' differs from V4L2 bus_info 'platform:camera'
	test VIDIOC_QUERYCAP: OK
	test VIDIOC_G/S_PRIORITY: OK
	test for unlimited opens: OK

Debug ioctls:
	test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
	test VIDIOC_LOG_STATUS: OK

Input ioctls:
	test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
	test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
	test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
	test VIDIOC_ENUMAUDIO: OK (Not Supported)
	test VIDIOC_G/S/ENUMINPUT: OK
	test VIDIOC_G/S_AUDIO: OK (Not Supported)
	Inputs: 1 Audio Inputs: 0 Tuners: 0

Output ioctls:
	test VIDIOC_G/S_MODULATOR: OK (Not Supported)
	test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
	test VIDIOC_ENUMAUDOUT: OK (Not Supported)
	test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
	test VIDIOC_G/S_AUDOUT: OK (Not Supported)
	Outputs: 0 Audio Outputs: 0 Modulators: 0

Input/Output configuration ioctls:
	test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
	test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
	test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
	test VIDIOC_G/S_EDID: OK (Not Supported)

Control ioctls (Input 0):
		warn: v4l2-test-controls.cpp(92): Exposure: (max - min) % step != 0
		warn: v4l2-test-controls.cpp(92): Gain: (max - min) % step != 0
		warn: v4l2-test-controls.cpp(92): Exposure: (max - min) % step != 0
		warn: v4l2-test-controls.cpp(92): Gain: (max - min) % step != 0
	test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
	test VIDIOC_QUERYCTRL: OK
	test VIDIOC_G/S_CTRL: OK
	test VIDIOC_G/S/TRY_EXT_CTRLS: OK
	test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
	test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
	Standard Controls: 11 Private Controls: 0

Format ioctls (Input 0):
	test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
	test VIDIOC_G/S_PARM: OK (Not Supported)
	test VIDIOC_G_FBUF: OK (Not Supported)
	test VIDIOC_G_FMT: OK
	test VIDIOC_TRY_FMT: OK
	test VIDIOC_S_FMT: OK
	test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
	test Cropping: OK (Not Supported)
	test Composing: OK (Not Supported)
	test Scaling: OK

Codec ioctls (Input 0):
	test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
	test VIDIOC_G_ENC_INDEX: OK (Not Supported)
	test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)

Buffer ioctls (Input 0):
	test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
	test VIDIOC_EXPBUF: OK
	test Requests: OK (Not Supported)

Total for sun6i-video device /dev/video0: 45, Succeeded: 45, Failed: 0, Warnings: 6

Paul Kocialkowski (15):
  docs: phy: Add a part about PHY mode and submode
  phy: Distinguish between Rx and Tx for MIPI D-PHY with submodes
  phy: allwinner: phy-sun6i-mipi-dphy: Support D-PHY Rx mode for MIPI
    CSI-2
  media: sun6i-csi: Use common V4L2 format info for storage bpp
  media: sun6i-csi: Only configure the interface data width for parallel
  dt-bindings: media: sun6i-a31-csi: Add MIPI CSI-2 input port
  media: sun6i-csi: Add support for MIPI CSI-2 bridge input
  dt-bindings: media: Add A31 MIPI CSI-2 bindings documentation
  media: sunxi: Add support for the A31 MIPI CSI-2 controller
  ARM: dts: sun8i: v3s: Add nodes for MIPI CSI-2 support
  MAINTAINERS: Add entry for the Allwinner A31 MIPI CSI-2 bridge
  dt-bindings: media: Add A83T MIPI CSI-2 bindings documentation
  media: sunxi: Add support for the A83T MIPI CSI-2 controller
  ARM: dts: sun8i: a83t: Add MIPI CSI-2 controller node
  MAINTAINERS: Add entry for the Allwinner A83T MIPI CSI-2 bridge

 .../media/allwinner,sun6i-a31-csi.yaml        |  88 ++-
 .../media/allwinner,sun6i-a31-mipi-csi2.yaml  | 149 ++++
 .../media/allwinner,sun8i-a83t-mipi-csi2.yaml | 147 ++++
 Documentation/driver-api/phy/phy.rst          |  18 +
 MAINTAINERS                                   |  16 +
 arch/arm/boot/dts/sun8i-a83t-bananapi-m3.dts  |   2 +-
 arch/arm/boot/dts/sun8i-a83t.dtsi             |  26 +
 arch/arm/boot/dts/sun8i-v3s.dtsi              |  67 ++
 drivers/media/platform/sunxi/Kconfig          |   2 +
 drivers/media/platform/sunxi/Makefile         |   2 +
 .../platform/sunxi/sun6i-csi/sun6i_csi.c      | 165 +++--
 .../platform/sunxi/sun6i-csi/sun6i_csi.h      |  58 +-
 .../platform/sunxi/sun6i-csi/sun6i_video.c    |  53 +-
 .../platform/sunxi/sun6i-csi/sun6i_video.h    |   7 +-
 .../platform/sunxi/sun6i-mipi-csi2/Kconfig    |  12 +
 .../platform/sunxi/sun6i-mipi-csi2/Makefile   |   4 +
 .../sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c   | 590 ++++++++++++++++
 .../sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.h   | 117 ++++
 .../sunxi/sun8i-a83t-mipi-csi2/Kconfig        |  11 +
 .../sunxi/sun8i-a83t-mipi-csi2/Makefile       |   4 +
 .../sun8i-a83t-mipi-csi2/sun8i_a83t_dphy.c    |  92 +++
 .../sun8i-a83t-mipi-csi2/sun8i_a83t_dphy.h    |  39 ++
 .../sun8i_a83t_mipi_csi2.c                    | 657 ++++++++++++++++++
 .../sun8i_a83t_mipi_csi2.h                    | 197 ++++++
 drivers/phy/allwinner/phy-sun6i-mipi-dphy.c   | 164 ++++-
 drivers/staging/media/rkisp1/rkisp1-isp.c     |   3 +-
 include/linux/phy/phy-mipi-dphy.h             |  13 +
 27 files changed, 2581 insertions(+), 122 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml
 create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml
 create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/Kconfig
 create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/Makefile
 create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.c
 create mode 100644 drivers/media/platform/sunxi/sun6i-mipi-csi2/sun6i_mipi_csi2.h
 create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/Kconfig
 create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/Makefile
 create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun8i_a83t_dphy.c
 create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun8i_a83t_dphy.h
 create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun8i_a83t_mipi_csi2.c
 create mode 100644 drivers/media/platform/sunxi/sun8i-a83t-mipi-csi2/sun8i_a83t_mipi_csi2.h

-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
