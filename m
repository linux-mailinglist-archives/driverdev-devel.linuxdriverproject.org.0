Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DF54B19C945
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 20:58:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 68EFC883A1;
	Thu,  2 Apr 2020 18:58:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9ngbigtM4Rvq; Thu,  2 Apr 2020 18:58:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 706528836D;
	Thu,  2 Apr 2020 18:58:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A61981BF3E9
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 18:58:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A2512873E4
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 18:58:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Os9MfJIrUfHW for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 18:58:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2A72687555
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 18:58:04 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MhFpq-1ior170yuI-00eJW5 for <devel@driverdev.osuosl.org>; Thu, 02 Apr
 2020 20:58:03 +0200
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id D14D9650882
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 18:58:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nwpuW7G_VQPw for <devel@driverdev.osuosl.org>;
 Thu,  2 Apr 2020 20:58:02 +0200 (CEST)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 8163E64C1FF
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 20:58:02 +0200 (CEST)
Received: from pflmari.corp.cetitec.com (10.8.5.12) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 2 Apr 2020 20:58:02 +0200
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 2CFF680504; Thu,  2 Apr 2020 20:34:59 +0200 (CEST)
Date: Thu, 2 Apr 2020 20:34:59 +0200
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH v5 7/9] media: adv748x: only activate DAI if it is described
 in device tree
Message-ID: <c3c8ece14c0fbc987dc201c9b61dd22d98f83056.1585852001.git.alexander.riesen@cetitec.com>
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
References: <cover.1585852001.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1585852001.git.alexander.riesen@cetitec.com>
X-Originating-IP: [10.8.5.12]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6C7266
X-Provags-ID: V03:K1:wIyjS7EJaN7gxkljMfeht2Op58OtdGIYzpbDwQurAaguXZqqgVZ
 k1TUCbuT16cbo96Okw58v+ot/VWKoGfyM3bCAQSMqh6io7XGhjL0Tkqj4M7aGtC9INz6qbT
 u80K/C7rwjbiVlMwk/L+p7RgahvXc9lBud3vsTmp26SkKtaiAgWDRMDionGuXEYKDeIuPGV
 eNvoBfVcfiO0oX2+6sSkQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:FcTC2600Y78=:tNHOEcxQUIIs7wjtHkVulf
 kQNfoJ7r9q4Zimowiqs/gMluL6M+gxWJ+Nj96JG5m2O7YI0x9oYIDXxMNidpYsgj7AZBXOcf1
 STRGbOBOtJe0BgXDfdVjFACYQzPsbPsXBjeuKB0t0qbT+7Eq9TRRDdjkcIkXcZbTbXJLByLn7
 /o9evSS4BjIDmso0cWgj1taedWQ67B7bx2nyagw40K8BDlfWJiMGf1CrgBgYgEO1cP5EC4kwa
 JdUQL6Ovv8QdY/Fxdz1XJxyFMCzjiY17ZtTTfmsf/aV6alZ2YnX8kBr4DN0O0fzxu50fMmK3l
 6yzZKA/LpFguZuKm1UUYBWsUi+I+LucKtcRfZNfoQnAEDVZs0P9lvs6GVvdVunXQggGayABoE
 PbqU2QYw7oAsnZ3gXrQU82Oo7VSrJ+Nhp7o2YwLigzAjdYbMcMQOS8Luq5qcZXbtjLm57CCyG
 LwopHH8o4AnD2Qv2ADV3pXvy5LMA+uM3Izqz86pfMlptEysC38qOL3tyrEFdPiNm1rlw59XN8
 tMFNSB4elk1FqzUUFQs04M4E3zly4SmO9AAHIZqimbv974Bf3hOo1Af6+hXlTNJv04BODJeia
 v3EchLKtr/mZAgwlJS2KmphZXP8Zfe0R4ptnJNoMZOUAxyBE45nTYhB2mhBZQ54I/gkW6rHms
 BTYrL7JKof025c7x9adb/ut/7dPFK6trbQEby8MhPH+dWliPWB8DHg8/pL/CWKaIxH19kXJ+P
 qUoaC0bSfBXlmK4EAl7jnhwStfbefj8PlZvbRE+q9X1zjlU8aTztjkzx9x/vKDpLvWpUvtUR7
 BtaHEfyEqfuRMWv9a3QE+xC7BIlyY4N8/N36qjYN3kTWgvv5CBWA0M6MXKxzH5Q3vXoHP2e
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
