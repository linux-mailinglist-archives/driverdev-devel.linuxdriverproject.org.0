Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB5E13938F
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jan 2020 15:21:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E37E120411;
	Mon, 13 Jan 2020 14:21:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wY1KwNpTd+oG; Mon, 13 Jan 2020 14:21:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D493C2042E;
	Mon, 13 Jan 2020 14:21:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B7FF21BF388
 for <devel@linuxdriverproject.org>; Mon, 13 Jan 2020 14:20:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AFD9584DDD
 for <devel@linuxdriverproject.org>; Mon, 13 Jan 2020 14:20:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PzT8CaDI5wyl for <devel@linuxdriverproject.org>;
 Mon, 13 Jan 2020 14:20:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9146284C99
 for <devel@driverdev.osuosl.org>; Mon, 13 Jan 2020 14:20:58 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MOQu6-1j1Meb0nyI-00PtQg; Mon, 13 Jan 2020 15:15:39 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id DDDF164F293;
 Mon, 13 Jan 2020 14:15:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FJJfW3vl2UUn; Mon, 13 Jan 2020 15:15:38 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 8BB4264E2AB;
 Mon, 13 Jan 2020 15:15:38 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.10.2.141) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1320.4; Mon, 13 Jan 2020 15:15:38 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 46F3E804E9; Mon, 13 Jan 2020 15:15:38 +0100 (CET)
Date: Mon, 13 Jan 2020 15:15:38 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH 5/8] media: adv748x: add an ASoC DAI definition to the driver
Message-ID: <20200113141538.GF3606@pflmari>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, devel@driverdev.osuosl.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
References: <cover.1578924232.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1578924232.git.alexander.riesen@cetitec.com>
X-Originating-IP: [10.10.2.141]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A29536F936F657D64
X-Provags-ID: V03:K1:6FJRURYFpLuIRnEqV7dHBObZJ3W8OMcOPQAWg4QF66BHJHHtoET
 vvNJ/DpF9AH0ZK9nJjKSY3pUcd9KMZwwegHhqK/fG/HjCk6gqyenXtHW1ZHcVyXKEWrN4M5
 faY+QfS2otL/SMtO8GxCQRi33P3hdnbxEE/tKevsVELh5DhBdsvYNV+/QgTcoO1u/IND1mY
 AymYw4G00G1+nY8y5Iwmg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:VWRlRVdBWAk=:JsaIicXXnc9FxQJy3Edtxr
 ePOnSGOHUCPF13BpyGT5i0H2KcG5IqIpaybdgRKz2IDtgATcyuQ3M2VeKZwI7ZWaJc5A4JiPX
 mSApfeV/quuA+rouvbNKYjHAhUfOEW8fYlejB0M8bw8j5NEp0cccQlMlh5i+uqKWgNRoFBCsL
 E6Dd9jcqk4MJhymexAw5PmJlTnMY9y5m5V7AIKkt5DkwIlBJvai4BzrVYB32Vnbnh56BfNCwK
 Nl00NCwz9+tv/95r3J1NEk7iEoJRPGxOsAIjazcki2GxKxy30m52PWK1qpXal62R0vAu0NyS6
 j9Pbvy8XwTjiin3/Gck4JcwQ+3MAByGNjI4r4R81IHF5yN5ru5P9/NJTQCNOaH3cVyEYWBWxe
 U6maeC8J3f8ZXqKlqt8NPCzcLjgJVolx2uvf7jjtigxXWAJ6oNvas5G4d1R2baB706Y/9uAH6
 Bs7JCvXaQAo5ao54oW488J3KJy8/55RWK5YGUjGGp3hqOa4UNhv5Zx/4jaSAWn0Nucpk4VotK
 DuJ9s7Wa59Hj1+fQPQ7SDg4RRbuVJIcqQ87ZssFmkF1o19Vo3l8I1TlP1vgsmtiACT2WF2zLT
 +DK2JjVJlEwec9R/KNWCjOVTHoxo3nUuhUJU8sl3SxouctiQ9CzsJfWAzN4ImCuruDJFp/LAo
 MuGWF0pkR0Diov24TA5QHnTMyiE1b/2pKJR9bmUz5dTiMftUvv9h5A+KAgpKnMYEZI5WZqC4Z
 4w7wbNSbp3pSaYx+joOQLsPU9jZtTf5fw/RlwfkUdFezEohMAkJ5WpCHuJFNeg/eT3il+Dj+c
 Tls/inPr/w80chKZJ+3OjaXQkx90HEbYFwLt7Q3ew3VghiC9biGZjLs15k865dneU7jHS3Cu6
 5VrRqkHB3Lyq2YpAt1FboMmGupG0Kp5/bLEHpT3SlBNY9F2Hbqo65tpX7/ctq1/NpcQVZ6ib1
 c2Pnx3UhMQ26DSSqnYoaUwFGhvxDJ+WEmHD2+kF0EYh9x5geObPMhDbgYStELUoCzvkA0+dgY
 rA9yV6BLUW/g1FG2ezcMs2WiFsJmLcdHXAfaI0/V/V1zlS0RjSqNxNjOVaONZj/K5Q==
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

The definition is used to publish hardware constraints and can be used
to implement in-demand device configuration.

Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
---
 drivers/media/i2c/adv748x/adv748x-core.c | 33 ++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/media/i2c/adv748x/adv748x-core.c b/drivers/media/i2c/adv748x/adv748x-core.c
index b6067ffb1e0d..75e4bf144ad7 100644
--- a/drivers/media/i2c/adv748x/adv748x-core.c
+++ b/drivers/media/i2c/adv748x/adv748x-core.c
@@ -25,6 +25,7 @@
 #include <media/v4l2-dv-timings.h>
 #include <media/v4l2-fwnode.h>
 #include <media/v4l2-ioctl.h>
+#include <sound/soc.h>
 
 #include "adv748x.h"
 
@@ -689,6 +690,30 @@ static void adv748x_dt_cleanup(struct adv748x_state *state)
 		of_node_put(state->endpoints[i]);
 }
 
+static struct snd_soc_dai_driver adv748x_dai = {
+	.name = "adv748x-i2s",
+	.capture = {
+		.stream_name	= "Capture",
+		.channels_min	= 8,
+		.channels_max	= 8,
+		.rates = SNDRV_PCM_RATE_48000,
+		.formats = SNDRV_PCM_FMTBIT_S24_LE | SNDRV_PCM_FMTBIT_U24_LE,
+	 },
+};
+
+static	int adv748x_of_xlate_dai_name(struct snd_soc_component *component,
+				      struct of_phandle_args *args,
+				      const char **dai_name)
+{
+	if (dai_name)
+		*dai_name = adv748x_dai.name;
+	return 0;
+}
+
+static const struct snd_soc_component_driver adv748x_codec = {
+	.of_xlate_dai_name = adv748x_of_xlate_dai_name,
+};
+
 static int adv748x_probe(struct i2c_client *client)
 {
 	struct adv748x_state *state;
@@ -782,8 +807,16 @@ static int adv748x_probe(struct i2c_client *client)
 		goto err_cleanup_txa;
 	}
 
+	ret = devm_snd_soc_register_component(state->dev, &adv748x_codec,
+					      &adv748x_dai, 1);
+	if (ret < 0) {
+		adv_err(state, "Failed to register the codec");
+		goto err_cleanup_txb;
+	}
 	return 0;
 
+err_cleanup_txb:
+	adv748x_csi2_cleanup(&state->txb);
 err_cleanup_txa:
 	adv748x_csi2_cleanup(&state->txa);
 err_cleanup_afe:
-- 
2.24.1.508.g91d2dafee0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
