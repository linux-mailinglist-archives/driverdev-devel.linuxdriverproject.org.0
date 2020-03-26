Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F1089193D68
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Mar 2020 11:58:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 33AE92614D;
	Thu, 26 Mar 2020 10:58:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xcznRluIKuDy; Thu, 26 Mar 2020 10:58:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D1F40204D7;
	Thu, 26 Mar 2020 10:58:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1B5D71BF354
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 10:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 127288861F
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 10:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id olAg1URcyVJC for <devel@linuxdriverproject.org>;
 Thu, 26 Mar 2020 10:58:21 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5F1A188623
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 10:58:21 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MI4gb-1j40E93bBH-00FCci for <devel@driverdev.osuosl.org>; Thu, 26 Mar
 2020 11:58:18 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id 5B9FD650227
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 10:58:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PC0tv9MAgWEF for <devel@driverdev.osuosl.org>;
 Thu, 26 Mar 2020 11:58:17 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 67A3364FC02
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 11:58:17 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.79) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 26 Mar 2020 11:58:17 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id DD5CD80504; Thu, 26 Mar 2020 11:35:42 +0100 (CET)
Date: Thu, 26 Mar 2020 11:35:42 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH v4 7/9] media: adv748x: only activate DAI if it is described
 in device tree
Message-ID: <a7112a71e23d63cb6d19188e59252689e4900c70.1585218857.git.alexander.riesen@cetitec.com>
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
References: <cover.1585218857.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1585218857.git.alexander.riesen@cetitec.com>
X-Originating-IP: [10.8.5.79]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6D7C67
X-Provags-ID: V03:K1:n5dpBOOt+rcqhi/w6lahC8dCziyQyGwDvPxINt6pf/c6cLjyNjD
 avZj76gSxQpsuco7mj4p5z0n2wAi8sdlUb0OdSZwtRw0vAP/mZTbTH8LQA0ArCNh0g80xN9
 r/bi8XMQOCJ1XWbwEDCEqNzqCkpOcZ1ofcs5lQ/SEfH4eKcE1EpwzfFsSGnIHWaaJwjKB8Z
 NlvqDR64bYSDZSHQTqeIA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:mkzJKzLOg30=:eO4BLg0XLf3an0wHNVEKlc
 SD9M+vQ/1PJiuqJwJZiyeSJaZQ5M+IhfZ2zV/W6Hjool46wnbJr6U1Wch4eBixM9SuBeugLqw
 rS1SJYZoaYgkFzF7Ubweu5jhdZRpsVt/hMk3Y46ubSW3m65EeJWRxzW6wCDGzucvfXEOMehva
 XyezgYHIe2RHDjBRtQT95BjnpkGeF9Bb822rcNGfKRom7hFhsIRvzvYEJpSXJY1qEEK8OME5T
 rorVgeGd/s0uexll2AAoCB3xRXfXFRFrWpDASNfzeluPWHwdFW1+ys0BmOdl8UMDXJ9AkFb55
 BcRo5DYIvjQoglbODi8lWZZY3tEGMrYzhjNybQwcUQzhkoLvnTWD/SzoWnQANdeUfXxESeJ7n
 eHwl17O6DJsh9ZW4MNSFcWnWq2Mb0pt1ngnVikGtITLG/1p13HtBddZtbB/XMIRUwpockeXGD
 OBGRFbgeM0YUjXH9d3aSTHraqoYO6xVOd+tuN/i0HUeCqoV9aufi3lQxxjwRONDGF7pKCbmwH
 5IXYp3J7+pQv2+AQnMeB4oSMTMHhhRgwpQoZPlTNweS94b/KsoQgHkLUPnhuCDl5KcR4UOeg/
 HX8G/eWiSHc8Yx1NtCb6mUyxFV+4PP5fn1l4/DpzzW77lfH2KWmqNXy/2/VQ8snwnVOcgnXgV
 4XkiEFMziVwR80QCeZbU06suAHfTDXGTPwya1XDBYJvairiIm/TPxm55PQ9Vq0dqvs5h86a28
 +Fxozbu7PECgqxgOfr9z3MVarev0Pl67fMv7FL0u1RaPxaOKPvUpy+fwXmgLBF/TL2ltm/Ybc
 KabuN7EBHtu31KSsGlQv+/xfc0g25bxAjUtah83LHXn7Bs0Wn4AH5N1AY5f2G0jrGdanITG
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

To avoid setting it up even if the hardware is not actually connected
to anything physically.

Besides, the bindings explicitly notes that port definitions are
"optional if they are not connected to anything at the hardware level".

Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
---
 drivers/media/i2c/adv748x/adv748x-dai.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/media/i2c/adv748x/adv748x-dai.c b/drivers/media/i2c/adv748x/adv748x-dai.c
index 185f78023e91..f9cc47fa9ad1 100644
--- a/drivers/media/i2c/adv748x/adv748x-dai.c
+++ b/drivers/media/i2c/adv748x/adv748x-dai.c
@@ -216,6 +216,11 @@ int adv748x_dai_init(struct adv748x_dai *dai)
 	int ret;
 	struct adv748x_state *state = adv748x_dai_to_state(dai);
 
+	if (!state->endpoints[ADV748X_PORT_I2S]) {
+		adv_info(state, "no I2S port, DAI disabled\n");
+		ret = 0;
+		goto fail;
+	}
 	dai->mclk_name = kasprintf(GFP_KERNEL, "%s.%s-i2s-mclk",
 				   state->dev->driver->name,
 				   dev_name(state->dev));
-- 
2.25.1.25.g9ecbe7eb18


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
