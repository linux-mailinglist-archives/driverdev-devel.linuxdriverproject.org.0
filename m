Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36ED61393AD
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jan 2020 15:28:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 629D42043E;
	Mon, 13 Jan 2020 14:28:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6hex12qmNGO6; Mon, 13 Jan 2020 14:28:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BDE8120417;
	Mon, 13 Jan 2020 14:28:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 257211BF388
 for <devel@linuxdriverproject.org>; Mon, 13 Jan 2020 14:28:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 18E7684E2E
 for <devel@linuxdriverproject.org>; Mon, 13 Jan 2020 14:28:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nWTnISLbHtAP for <devel@linuxdriverproject.org>;
 Mon, 13 Jan 2020 14:28:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D2AD784353
 for <devel@driverdev.osuosl.org>; Mon, 13 Jan 2020 14:28:05 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MS4ab-1jFunO26Yd-00TY9y; Mon, 13 Jan 2020 15:15:01 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id 9578164E74F;
 Mon, 13 Jan 2020 14:15:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gxXippCj9pKV; Mon, 13 Jan 2020 15:15:00 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 469E564F41A;
 Mon, 13 Jan 2020 15:15:00 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.10.2.141) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1320.4; Mon, 13 Jan 2020 15:15:00 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id DF1DB804E9; Mon, 13 Jan 2020 15:14:59 +0100 (CET)
Date: Mon, 13 Jan 2020 15:14:59 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH 0/8] media: i2c: adv748x: add support for HDMI audio
Message-ID: <20200113141459.GA3606@pflmari>
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
X-Provags-ID: V03:K1:WRn8kDWvZJBZV9XEgaD3WUPXDBg4Z7NvFJjTF4aIMVraTsReI3K
 ZcsHHb4pG6K4QW6TmSwNunYqt6h5vAqCzkLEAEt9VoSiY6t982MwHJjy/h/bWdFA9fLqdWY
 O24c0J+NcsX/+TqxgVvxNG11l5+I2NY7YuLbeatvNuNRy7ockntQgEsQpx8yPBURsRFtCsx
 25EduWThKhIb/PDEDDR0Q==
X-UI-Out-Filterresults: notjunk:1;V03:K0:NcCQI9A5+Og=:XMEvLM9tS8WGB+aMO8q5dC
 uuTCS99piGghNfPouYESC4HmjeND5VwGyx8auOyUHluR/de92luKhOOgdpHWbXaWCgzeqrck+
 lHvlixAlATcqvr7S67oN0DKlFNgZxC89DVTieAZHqTkn5Sxu7MsdgTjxaQ0queZOPfalrBGh4
 BZjxmiolUI3mvzL6oojeeslegPbf1h7oaWwa20vkUVZrv4HNNBQKdYoeZERO5HVkMwiyojJJf
 CEVNuklGVPIMip2tp41SUjNPgoM/wuaX1j8h+WkXUfHzFwtghBZCA4vYP9DRcTw0KXqoT3+HL
 XIc7s0UCOmEjwBnfoBlk5TJ119GemJB+rRg7YWw/tzL4jt/U5skErymTJHuLO0woSELA8Zp7g
 UdfBKfqQX5Egz5lF4KXByCiJhsroBI9wIypxytDcvonUi8i8lw14fPHrbmtr9k5Y5bU+eLkD+
 06kCkbe8mxcfmjN+NmrJsBSC77CEiqy0+6HQMRkeyO9vqlYH5lRJV2l/xnoZA6BX4H5z8PXJr
 HEPzONbyKe1NfXj5wVX+SzWh/FX9eB8Kq3sOmRbsUrino+E8DJjg1QArmI106wZDcj1gSaH0H
 4q7CmMg1yq7V10yNMtwUxRI5dmRO/ZjFSL/ISXqMMBY2vBnkDlLNzJeiXYFoxtG9cbQsr/1fu
 MObdHd8bunhAWbNAAzLgvEIqHiErbrFF6umNn4MFdAsB+QAAkn9QFY/FAlIz5wdSUal1H6UQq
 bzgG3VDF8Bp88PFd3fY7L3k9ftrgPkjDPYfyNLChq6SmeBRcOaYcph1FOE7Fq2upzATcgNLsC
 Qq4nHVpDkIqxqpVQhRvnQG3MPQX8oYKZQC1eJS6WHAACpoQju2p6fxubzm4BkV/Pb6JHiyQA/
 ub2SIybCgow3vRu3jPlPqa9QCTbt7w11QmS/71FvE=
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
