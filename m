Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5051C18D3D0
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 17:12:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D720E8833D;
	Fri, 20 Mar 2020 16:12:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lxHDJDAgoqC3; Fri, 20 Mar 2020 16:12:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 45C16882B5;
	Fri, 20 Mar 2020 16:12:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DCB961BF278
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 16:12:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D8E1F884D2
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 16:12:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tODJ5o5EH8cO for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 16:12:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6D50287F71
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 16:12:00 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MLz3X-1ixvp62eB7-00Hw0d for <devel@driverdev.osuosl.org>; Fri, 20 Mar
 2020 17:11:57 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id 17F8665034C
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 16:11:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FO1T_V58DKeJ for <devel@driverdev.osuosl.org>;
 Fri, 20 Mar 2020 17:11:56 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 8B46664DC9E
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 17:11:56 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.41) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Fri, 20 Mar 2020 17:11:56 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 37E03804FB; Fri, 20 Mar 2020 17:11:40 +0100 (CET)
Date: Fri, 20 Mar 2020 17:11:40 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH v3 00/11] media: adv748x: add support for HDMI audio
Message-ID: <cover.1584720678.git.alexander.riesen@cetitec.com>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devel@driverdev.osuosl.org, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
MIME-Version: 1.0
Content-Disposition: inline
X-Originating-IP: [10.8.5.41]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6D7662
X-Provags-ID: V03:K1:wuMsJ+UMVhe4apsv6ce5YSydgcnztUt8jKiHFQTVLhgF/FUL1W0
 flRPWG4tibNb4L0XQFapYgqk4J6OslQ5wx9Tt+6dP031K6o+DloNGQ4/yNrvRQSfYvVv6lE
 4PXxRnuc2nPaSBb0ca4YQngo/88TQhT9/thps+c0qWfQlppkl7xDqQ2+mHsI+rMteAevK48
 8NFuskjNlJd+HIRA1np/Q==
X-UI-Out-Filterresults: notjunk:1;V03:K0:4w50oln7ujI=:JVVhnx3lJ1dMSMXOadvgIq
 8lBl1gfWHwOqSKohyLxFVIp6WT+BaukA1iWyYxa6OTqwb8jo+TFt4VLv926SEkONz7ulY5TP+
 shi4sKkRxz5Tj2opyxRqiXjdqv/UiGgusktn9nBPLtD9Gadp6pb8nK5FB04YimfToJRJL0s3v
 fHIZqBVSQ02/z8a0uGUzdb8J+U5k90S/9YxE+f1O+X9L30ziG2UZo9y4WLIaf56GWVGLrlYqi
 1646u26n1O0y9vNR3PYbibz2bx+vHvqU23pE+1RKn5/3NVhKZ3N+MRvuoQ4Q3QDbFhUt/v0M8
 PYzf9TqLSyKG6yrAzmI1FEm6aWTZzTEu0gNNUxS1dJV1zeWcEZMrfhl11WlqpMC/meiN76W3q
 ip7PkuZ10nu3o/x3zJPG1lxWjw8K30IMHQNDfnENz2St7Ts/jPxUzmdK9Cs4qDPOh5DOMwtkH
 ll6kwiDXP/qcVTO1Sl0Q6cSGrwkwhjGl+YMZJyddsQDmzDz4c7KeB15OrSY5s6Of1KNrSNS8p
 x7ZMREAG7+tOQYXzumAquQJqemLYKocfmBnsWFnFzYfMgOcJ6cUHLhvh3FD8Y8/Xbf1SovNrF
 2gHAenSdzwDSAqTLCabACMo7jKK5Q/nt6mXJNgzqPRrX6lm7l0OGK7VfP1YikpOW+rHUlmvws
 ES6w0f830XhO+x5ugNzN+XU9pla9L2lMQoaBGCyIDhAIrl5FfKhWkGInr5TsnvJ7jQdAQfl5A
 jWmeat2Px+w1GBY8Stjq5WaCq7ltpW2uWMnCSRR4DR1/bgfeS7gxgqvGWPHBR56TYxMry7G/g
 CyNIsPspOfYV8QLpDyEvUgKXnhKZ5VxCUpK4QXNtK/EqxU4TZH3cCTSGlNwO7m88UuL+vI1
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
Cc: Mark Rutland <mark.rutland@arm.com>, devel@driverdev.osuosl.org,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This adds minimal support for accessing the HDMI audio provided through the
I2S port available on ADV7481 and ADV7482 decoder devices by ADI.
The port carries audio signal from the decoded HDMI stream.

Currently, the driver only supports I2S in TDM, 8 channels a 24bit at 48kHz.
Furthermore, only left-justified, 8 slots, 32bit/slot TDM, at 256fs has been
ever tried.

An ADV7482 on the Renesas Salvator-X ES1.1 (R8A77950 SoC) was used during
development of this code.

Changes since v2:
  - prepare/enable the clock when it is used, as it seems nothing else does
    this otherwise

  - give the clock a unique name to ensure it can be registered if there are
    multiple adv748x devices in the system

  - remove optionality note from clock cell description to ensure the device
    description matches the real device (the line is always present, even
    if not used)

Changes since v1:
  - Add ssi4_ctrl pin group to the sound pins. The pins are responsible for
    SCK4 (sample clock) WS4 and (word boundary input), and are required for
    SSI audio input over I2S.
    Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>

  - Removed the audio clock C from the list of clocks of adv748x,
    it is exactly the other way around.
    Reported-by: Geert Uytterhoeven <geert@linux-m68k.org>

  - Add an instance of (currently) fixed rate I2S master clock (MCLK),
    connected to the audio_clk_c line of the R-Car SoC.
    Explicitly declare the device a clock producer and add it to the
    list of clocks used by the audio system of the Salvator-X board.
    Suggested-by: Geert Uytterhoeven <geert@linux-m68k.org>

  - The implementation of DAI driver has been moved in a separate file
    and modified to activate audio decoding and I2S streaming using
    snd_soc_dai_... interfaces. This allows the driver to be used with
    just ALSA interfaces.

  - The ioctls for selecting audio output and muting have been removed,
    as not applicable.
    Suggested-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
    I have left implementation of the QUERYCAP in, as it seems to be required
    by v4l-ctl to support loading of EDID for this node. And setting the EDID
    is one feature I desperately need: there are devices which plainly refuse
    to talk to the sink if it does not provide EDID they like.

  - A device tree configuration without audio port will disable the audio code
    altogether, supporting integrations where the port is not connected.

  - The patches have been re-arranged, starting with the generic changes and
    changes not related to audio directly. Those will be probably sent as a
    separate series later.

  - The whole series has been rebased on top of v5.6-rc6

Alex Riesen (11):
  media: adv748x: fix end-of-line terminators in diagnostic statements
  media: adv748x: include everything adv748x.h needs into the file
  media: adv748x: reduce amount of code for bitwise modifications of
    device registers
  media: adv748x: add definitions for audio output related registers
  media: adv748x: add support for HDMI audio
  media: adv748x: prepare/enable mclk when the audio is used
  media: adv748x: only activate DAI if it is described in device tree
  dt-bindings: adv748x: add information about serial audio interface
    (I2S/TDM)
  arm64: dts: renesas: salvator: add a connection from adv748x codec
    (HDMI input) to the R-Car SoC
  media: adv748x: add support for log_status ioctl
  media: adv748x: allow the HDMI sub-device to accept EDID

 .../devicetree/bindings/media/i2c/adv748x.txt |  16 +-
 .../boot/dts/renesas/r8a77950-salvator-x.dts  |   3 +-
 .../boot/dts/renesas/salvator-common.dtsi     |  47 ++-
 drivers/media/i2c/adv748x/Makefile            |   3 +-
 drivers/media/i2c/adv748x/adv748x-afe.c       |   6 +-
 drivers/media/i2c/adv748x/adv748x-core.c      |  60 ++--
 drivers/media/i2c/adv748x/adv748x-csi2.c      |   8 +-
 drivers/media/i2c/adv748x/adv748x-dai.c       | 282 ++++++++++++++++++
 drivers/media/i2c/adv748x/adv748x-hdmi.c      | 212 ++++++++++++-
 drivers/media/i2c/adv748x/adv748x.h           |  67 ++++-
 10 files changed, 662 insertions(+), 42 deletions(-)
 create mode 100644 drivers/media/i2c/adv748x/adv748x-dai.c

-- 
2.25.1.25.g9ecbe7eb18

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
