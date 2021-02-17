Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D11031D5FA
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 09:03:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7236485F0E;
	Wed, 17 Feb 2021 08:03:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CWbKFXDQPDs7; Wed, 17 Feb 2021 08:03:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 70CC485B09;
	Wed, 17 Feb 2021 08:03:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2E2CB1BF306
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 08:03:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2415D871B4
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 08:03:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BNHH+1TXeB+l for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 08:03:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 169ED8716C
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 08:03:27 +0000 (UTC)
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:fd6e:12cd:95d7:3350])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8CF451F44FDF;
 Wed, 17 Feb 2021 08:03:23 +0000 (GMT)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 krzk@kernel.org, shengjiu.wang@nxp.com, adrian.ratiu@collabora.com,
 aisheng.dong@nxp.com, peng.fan@nxp.com, Anson.Huang@nxp.com,
 hverkuil-cisco@xs4all.nl
Subject: [PATCH v1 00/18] Add HANTRO G2/HEVC decoder support for IMX8MQ
Date: Wed, 17 Feb 2021 09:02:48 +0100
Message-Id: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The IMX8MQ got two VPUs but until now only G1 has been enabled.
This series aim to add the second VPU (aka G2) and provide basic 
HEVC decoding support.

To be able to decode HEVC it is needed to add/update some of the
structures in the uapi. In addition of them one HANTRO dedicated
control is required to inform the driver of the numbre of bits to skip
at the beginning of the slice header.
The hardware require to allocate few auxiliary buffers to store the
references frame, scaling list or tile size data.

The driver has been tested with fluster test suite stream.
For example with this command: ./fluster.py run -ts JCT-VC-HEVC_V1 -d GStreamer-H.265-V4L2SL-Gst1.0
 
This series depends of the reset rework posted here: https://www.spinics.net/lists/arm-kernel/msg875766.html

Finally the both VPUs will have a node the device-tree and be
independent from v4l2 point of view.

./v4l2-compliance -m 1 
v4l2-compliance 1.21.0-4705, 64 bits, 64-bit time_t
v4l2-compliance SHA: 733f7a54f79d 2021-02-03 08:25:49

Compliance test for hantro-vpu device /dev/media1:

Media Driver Info:
	Driver name      : hantro-vpu
	Model            : hantro-vpu
	Serial           : 
	Bus info         : platform: hantro-vpu
	Media version    : 5.11.0
	Hardware revision: 0x00000000 (0)
	Driver version   : 5.11.0

Required ioctls:
	test MEDIA_IOC_DEVICE_INFO: OK
	test invalid ioctls: OK

Allow for multiple opens:
	test second /dev/media1 open: OK
	test MEDIA_IOC_DEVICE_INFO: OK
	test for unlimited opens: OK

Media Controller ioctls:
	test MEDIA_IOC_G_TOPOLOGY: OK
	Entities: 3 Interfaces: 1 Pads: 4 Links: 4
	test MEDIA_IOC_ENUM_ENTITIES/LINKS: OK
	test MEDIA_IOC_SETUP_LINK: OK

Total for hantro-vpu device /dev/media1: 8, Succeeded: 8, Failed: 0, Warnings: 0
--------------------------------------------------------------------------------
Compliance test for hantro-vpu device /dev/video1:

Driver Info:
	Driver name      : hantro-vpu
	Card type        : nxp,imx8mq-vpu-g2-dec
	Bus info         : platform: hantro-vpu
	Driver version   : 5.11.0
	Capabilities     : 0x84204000
		Video Memory-to-Memory Multiplanar
		Streaming
		Extended Pix Format
		Device Capabilities
	Device Caps      : 0x04204000
		Video Memory-to-Memory Multiplanar
		Streaming
		Extended Pix Format
Media Driver Info:
	Driver name      : hantro-vpu
	Model            : hantro-vpu
	Serial           : 
	Bus info         : platform: hantro-vpu
	Media version    : 5.11.0
	Hardware revision: 0x00000000 (0)
	Driver version   : 5.11.0
Interface Info:
	ID               : 0x0300000c
	Type             : V4L Video
Entity Info:
	ID               : 0x00000001 (1)
	Name             : nxp,imx8mq-vpu-g2-dec-source
	Function         : V4L2 I/O
	Pad 0x01000002   : 0: Source
	  Link 0x02000008: to remote pad 0x1000004 of entity 'nxp,imx8mq-vpu-g2-dec-proc': Data, Enabled, Immutable

Required ioctls:
	test MC information (see 'Media Driver Info' above): OK
	test VIDIOC_QUERYCAP: OK
	test invalid ioctls: OK

Allow for multiple opens:
	test second /dev/video1 open: OK
	test VIDIOC_QUERYCAP: OK
	test VIDIOC_G/S_PRIORITY: OK
	test for unlimited opens: OK

Debug ioctls:
	test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
	test VIDIOC_LOG_STATUS: OK (Not Supported)

Input ioctls:
	test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
	test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
	test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
	test VIDIOC_ENUMAUDIO: OK (Not Supported)
	test VIDIOC_G/S/ENUMINPUT: OK (Not Supported)
	test VIDIOC_G/S_AUDIO: OK (Not Supported)
	Inputs: 0 Audio Inputs: 0 Tuners: 0

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

Control ioctls:
	test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
	test VIDIOC_QUERYCTRL: OK
	test VIDIOC_G/S_CTRL: OK
	test VIDIOC_G/S/TRY_EXT_CTRLS: OK
	test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
	test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
	Standard Controls: 10 Private Controls: 1

Format ioctls:
	test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: OK
	test VIDIOC_G/S_PARM: OK (Not Supported)
	test VIDIOC_G_FBUF: OK (Not Supported)
	test VIDIOC_G_FMT: OK
	test VIDIOC_TRY_FMT: OK
	test VIDIOC_S_FMT: OK
	test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
	test Cropping: OK (Not Supported)
	test Composing: OK (Not Supported)
	test Scaling: OK (Not Supported)

Codec ioctls:
	test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
	test VIDIOC_G_ENC_INDEX: OK (Not Supported)
	test VIDIOC_(TRY_)DECODER_CMD: OK (Not Supported)

Buffer ioctls:
	test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
	test VIDIOC_EXPBUF: OK
	test Requests: OK

Total for hantro-vpu device /dev/video1: 46, Succeeded: 46, Failed: 0, Warnings: 0

Grand Total for hantro-vpu device /dev/media1: 54, Succeeded: 54, Failed: 0, Warnings: 0

Benjamin
 
Benjamin Gaignard (18):
  include: media: hevc: Add scaling and decode params controls
  media: hantro: Define HEVC codec profiles and supported features
  arm64: dts: imx8mq-evk: add reserve memory node for CMA region
  media: hevc: add structures for hevc codec
  media: controls: Add control for HEVC codec
  media: hantro: Make sure that ctx->codex_ops is set
  media: hantro: Add a field to distinguish the hardware versions
  media: hantro: Add HEVC structures
  media: hantro: move hantro_needs_postproc function
  media: hantro: Add helper functions for buffer information
  media: hantro: Add helper function for auxiliary buffers allocation
  media: uapi: Add a control for HANTRO driver
  media: hantro: Introduce G2/HEVC decoder
  media: hantro: add G2 support to postproc
  media: hantro: handle V4L2_PIX_FMT_HEVC_SLICE control
  media: hantro: IMX8M: add variant for G2/HEVC codec
  dt-bindings: media: nxp,imx8mq-vpu: Update bindings
  arm64: dts: imx8mq: Add node to G2 hardware

 .../bindings/media/nxp,imx8mq-vpu.yaml        |  54 +-
 arch/arm64/boot/dts/freescale/imx8mq-evk.dts  |  15 +
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  43 +-
 drivers/media/v4l2-core/v4l2-ctrls.c          |  36 +-
 drivers/staging/media/hantro/Makefile         |   2 +
 drivers/staging/media/hantro/hantro.h         |  58 +-
 drivers/staging/media/hantro/hantro_drv.c     | 110 ++-
 .../staging/media/hantro/hantro_g2_hevc_dec.c | 637 ++++++++++++++++++
 drivers/staging/media/hantro/hantro_g2_regs.h | 198 ++++++
 drivers/staging/media/hantro/hantro_hevc.c    | 274 ++++++++
 drivers/staging/media/hantro/hantro_hw.h      |  50 ++
 .../staging/media/hantro/hantro_postproc.c    |  52 +-
 drivers/staging/media/hantro/hantro_v4l2.c    |   3 +-
 drivers/staging/media/hantro/imx8m_vpu_hw.c   |  95 ++-
 drivers/staging/media/sunxi/cedrus/cedrus.c   |   6 +
 drivers/staging/media/sunxi/cedrus/cedrus.h   |   1 +
 .../staging/media/sunxi/cedrus/cedrus_dec.c   |   2 +
 .../staging/media/sunxi/cedrus/cedrus_h265.c  |   6 +-
 include/media/hevc-ctrls.h                    |  56 +-
 include/uapi/linux/hantro-v4l2-controls.h     |  20 +
 include/uapi/linux/v4l2-controls.h            |   5 +
 21 files changed, 1654 insertions(+), 69 deletions(-)
 create mode 100644 drivers/staging/media/hantro/hantro_g2_hevc_dec.c
 create mode 100644 drivers/staging/media/hantro/hantro_g2_regs.h
 create mode 100644 drivers/staging/media/hantro/hantro_hevc.c
 create mode 100644 include/uapi/linux/hantro-v4l2-controls.h

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
