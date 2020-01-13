Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF181393A4
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jan 2020 15:24:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9ECBA85044;
	Mon, 13 Jan 2020 14:24:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QHnbjNofC98P; Mon, 13 Jan 2020 14:24:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7B8E984E2E;
	Mon, 13 Jan 2020 14:24:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0F9991BF388
 for <devel@linuxdriverproject.org>; Mon, 13 Jan 2020 14:24:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0C15C83336
 for <devel@linuxdriverproject.org>; Mon, 13 Jan 2020 14:24:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1nLZKovoSuHO for <devel@linuxdriverproject.org>;
 Mon, 13 Jan 2020 14:24:39 +0000 (UTC)
X-Greylist: delayed 00:09:25 by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.74])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2337983470
 for <devel@driverdev.osuosl.org>; Mon, 13 Jan 2020 14:24:38 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MGz5h-1iwBUR0EjL-00E8lZ; Mon, 13 Jan 2020 15:19:20 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id 0C80B64F293;
 Mon, 13 Jan 2020 14:19:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0lxoVKmw2u_b; Mon, 13 Jan 2020 15:19:18 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id B6DD064E2F2;
 Mon, 13 Jan 2020 15:19:18 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.10.2.141) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1320.4; Mon, 13 Jan 2020 15:19:18 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 5F3B8804EB; Mon, 13 Jan 2020 15:19:18 +0100 (CET)
Date: Mon, 13 Jan 2020 15:19:18 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH 0/8] media: i2c: adv748x: add support for HDMI audio
Message-ID: <cover.1578924232.git.alexander.riesen@cetitec.com>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, devel@driverdev.osuosl.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
MIME-Version: 1.0
Content-Disposition: inline
X-Originating-IP: [10.10.2.141]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A29536F936F657D64
X-Provags-ID: V03:K1:GZirzY4gCBAvcVAoboEzo8PAmOSS+Q2zeRvV3WJSr+8Is0fiFOf
 V9gcwiqbgtsVSnjFWBiLabOkfnkWR7gy1HiJkuENofkVBr5+8eqdUAyPHMbLhyweLTDtkvN
 4HPZKfE3Vln6hG3a3jSe0K6jqYPkkgSMLB1Apuz+dNjUgxJHPtaYinkiCIvS4wYQ9Wa8oLn
 ZqEA35/Tx8CR0TM6+izZg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:M+16Yc5xrkQ=:oO3DzM03cC1BFOPELrAlDi
 RPuRa4O9PnkZZscGnqrZzbDgR1pt6M3oGQR328fjKL+sEpjShXGxjUGG5dZQU60BJl1YhgxYh
 xl0p26kx33+gjR0dPYBcexs/hWiqjWRFiryCORtld4Do/QpJw5D602Jr2yjHICgabkr2N+ytb
 TpnaT3VrSe+FkyjNNgmSoOoHZeZ6TCl6kif5RcycXBcxCSq0xcpgUEpq2hD0r6j0HJBxsHq/x
 mhrNxk2j7Pc3GclPCcXqqCNfqZmk+MZ0UiPm9t4VK8Xplh0tBg0SLaZXU1aisBMczZJw5jgs6
 TkOM4RGlO+Z5VOMEsZFPz7Gagaafhr5zZVWS6AvSK3zExXJ5cU4IRp0oXqR/NGDj2G7rsSUfd
 ur9Je35BPdYTkXYCimFXqZg6jlgathu+9E4I/jF+gnmd1WdoQktx0e1tV//6dZEVvKW0q95QJ
 tv5Q9fwrbwfg01Hr6W8OZHjcaggdUqeT0LnzRRBR904DcwZDr41dzWBcLlkJayCumDVE+t2Sy
 g/Xx+WHwsm6//EyTaz6J3h2BoSwIhmV2Cqw3weR/hA+FEpzqEtYFgWTRQDuU7GStY2U08HOh7
 yczOZcuqrmBqXK34K1yXR0iz7e+Pn4xclDNx4U/yxlvUtLJWUbKOXxmvIlb3wUr8Bp1hia75z
 jEPClSEs6B7obV0h8H5TRFew7QcMA2M+ekZRVEAoo2xkUMrAvOey4K0e3DQ/AljlVW5bCTtwF
 JxhFHTzucnHsWNKp8T2T1AxMiZtmaLKRXfedaChhaWasUGTGm6HBv1ZNm+h0X9rNpo66ckp0w
 M7DPLqpjj4Vqt3Yzg4Z/8vjmVPZiVaa8cgrlv2xMPpErZjWBzqpES3VChIfD4hJTiZw1RiQ18
 1rDPw821hnUpXRf4a1EJY3TWk/k1LJOo9TVLNnrnc=
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
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This adds minimal support for controlling the audio output I2S port available
on ADV7481 and ADV7482 HDMI decoder devices by ADI. The port carries audio
signal from the decoded HDMI stream.

An ADV7482 on the Renesas Salvator-X ES1.1 was used during development of this
code.

Alex Riesen (8):
  media: adv748x: add a device-specific wrapper for register block read
  media: adv748x: add audio mute control and output selection ioctls
  media: adv748x: add log_status ioctl
  media: adv748x: reserve space for the audio (I2S) port in the driver
    structures
  media: adv748x: add an ASoC DAI definition to the driver
  media: adv748x: reduce amount of code for bitwise modification of
    device registers
  dt-bindings: adv748x: add information about serial audio interface
    (I2S/TDM)
  arm64: dts: renesas: salvator: add a connection from adv748x codec
    (HDMI input) to the R-Car SoC

 .../devicetree/bindings/media/i2c/adv748x.txt |  13 +-
 .../dts/renesas/r8a7795-es1-salvator-x.dts    |  24 +-
 .../boot/dts/renesas/salvator-common.dtsi     |  35 +-
 drivers/media/i2c/adv748x/adv748x-core.c      |  54 +++
 drivers/media/i2c/adv748x/adv748x-hdmi.c      | 355 ++++++++++++++++++
 drivers/media/i2c/adv748x/adv748x.h           |  53 ++-
 6 files changed, 523 insertions(+), 11 deletions(-)

-- 
2.24.1.508.g91d2dafee0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
