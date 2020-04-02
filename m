Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBAD19C8D7
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 20:34:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AA0B58929B;
	Thu,  2 Apr 2020 18:34:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jf49U5JqNzqb; Thu,  2 Apr 2020 18:34:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2058589213;
	Thu,  2 Apr 2020 18:34:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 525691BF3E9
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 18:34:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4E47589213
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 18:34:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZeH7rspToQNv for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 18:34:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DE22189211
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 18:34:17 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Md6dH-1ikk7A0zR5-00aAV8 for <devel@driverdev.osuosl.org>; Thu, 02 Apr
 2020 20:34:15 +0200
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id AE0AC650846
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 18:34:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u74NPEYx2bIg for <devel@driverdev.osuosl.org>;
 Thu,  2 Apr 2020 20:34:14 +0200 (CEST)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 26E9164FD93
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 20:34:14 +0200 (CEST)
Received: from pflmari.corp.cetitec.com (10.8.5.12) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 2 Apr 2020 20:34:14 +0200
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id BBC93804FB; Thu,  2 Apr 2020 20:33:58 +0200 (CEST)
Date: Thu, 2 Apr 2020 20:33:58 +0200
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH v5 0/9] media: adv748x: add support for HDMI audio
Message-ID: <cover.1585852001.git.alexander.riesen@cetitec.com>
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
X-Originating-IP: [10.8.5.12]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6C7266
X-Provags-ID: V03:K1:XOBTLW4ckWG8hKujvfzja5jI8S06QgNwxyrnWBH5+vpSLK4T/PD
 VNH2n+RqDAtBKq7EY1uDOcBacOXIsm0Wtlxq6EPNWjrNM9WrF2M4P4H7G/XeJ9WslLy2fpx
 Mj5GOWUg1e3GAX2Y0fMynJf3+ZbptcergwQsK3ZqnYKgin2DK5WV2OAq46n94XLz53c4RA7
 VxWhvdIJg9J9pQovSpF2w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:DQXy/1TprrE=:RaWljJTTC2ng38wfx1KoUm
 dD2ZfXfHXQ6b7AqgVuj/urtItForSFImkdgx6nTt3rjnyOCWi0KvoGHOq02FoCG5DaXpf/MIt
 7BGKyYPsA1KgvVTCHIyXaEQXAnwjW7A4/T8pPQAlfxgEQK31zzF2xaJdRZzeOs2KJ8vYD2GRM
 es/60TUKRRkAbV8tLX+RVCexZDUCf+5Eb9v7K2PDcMYpU67NGn2rr/L1F8AHpYz4wo3ZiqE7r
 tQrdCyAt5nE3ZAos3cDcTNncg76aTa7Az3m7reiNA8OUYttRT1JCsBsTyb02PGN1AUpeDokoa
 RXYy5lf7tYdUBYQ/BqixuA6dnMlgGVm8+q37Ppz61uo5d57Bo9PKaeHzSzSWql95yE/7hY54Q
 znlxfsAiz8vu4JB1lI/a0oGIB4TZExAwqk4KKFI56M4cjlO7j45GUoJ3009HCbvMosK7/43Nm
 qz88oeA3BwqkmKzKEAuWS4ji75I34SLatDo5bQ81lfgFxwUYXhbt1RzmcoSsWKmhIF2rvMAfh
 tmvnrDncglfHX0+qtqXt92elSoRZi72WynuL+tXoK6AO0zoUtobMBBLNVXyBsCUmNqW8qMwBo
 hTmyrBNFLusw0gpFSQWX5AILW1ADtqzJf3xhwhnnnKjxebFDzssItWi0WZ9oLSMdTyoBCkFi+
 0wqL0LnUgzaMyzMIaNx/ZFO/pbGWAHFC8dLjRufdCsHNlHL7AQQXcqM4i07OmgAUoTrHzRfKy
 tA8Jv/lrBY36/3RD599GfC0dGYvSnUGl8Gd0XD22rIqR8/eYep6UnwAjOdLa5cZT1Q/4jZLvm
 PZAx9VCNbJ21KEMOjdM2pbHjytPm1wwXoinnnOMNRGggAX/LGPd+XpG9CMejG+hznhz7u1H
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

Changes since v4:
  - rebased on v5.6

  - Add dummy ssi4 node to the rcar sound card, as the r8a77961
    devices also reference salvator-common.dts.
    Suggested-by: Geert Uytterhoeven <geert@linux-m68k.org>

Changes since v3:
  - use clk_hw instead of clk
    Suggested-by: Stephen Boyd <sboyd@kernel.org>

  - formatting improvements and use const where possible

  - removed implementation of log_status and EDID setting ioctls,
    those will be submitted as separate patches.
    Suggested-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>

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

Alex Riesen (9):
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

 .../devicetree/bindings/media/i2c/adv748x.txt |  16 +-
 .../boot/dts/renesas/r8a77950-salvator-x.dts  |   3 +-
 arch/arm64/boot/dts/renesas/r8a77961.dtsi     |   1 +
 .../boot/dts/renesas/salvator-common.dtsi     |  47 ++-
 drivers/media/i2c/adv748x/Makefile            |   3 +-
 drivers/media/i2c/adv748x/adv748x-afe.c       |   6 +-
 drivers/media/i2c/adv748x/adv748x-core.c      |  45 +--
 drivers/media/i2c/adv748x/adv748x-csi2.c      |   8 +-
 drivers/media/i2c/adv748x/adv748x-dai.c       | 278 ++++++++++++++++++
 drivers/media/i2c/adv748x/adv748x-hdmi.c      |   6 +-
 drivers/media/i2c/adv748x/adv748x.h           |  65 +++-
 11 files changed, 436 insertions(+), 42 deletions(-)
 create mode 100644 drivers/media/i2c/adv748x/adv748x-dai.c

-- 
2.25.1.25.g9ecbe7eb18

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
