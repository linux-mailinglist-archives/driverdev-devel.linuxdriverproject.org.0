Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 068F719C8E3
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 20:37:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DD16488375;
	Thu,  2 Apr 2020 18:37:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1F6HLnIG7Z+L; Thu,  2 Apr 2020 18:37:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 84CFC88345;
	Thu,  2 Apr 2020 18:37:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2B4CD1BF3E9
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 18:37:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2776688348
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 18:37:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OOlekTfm3s8T for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 18:37:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B593788345
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 18:37:38 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N32y5-1jCprh2XAD-013Pmy for <devel@driverdev.osuosl.org>; Thu, 02 Apr
 2020 20:37:36 +0200
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id 62BFA64F878
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 18:37:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6nrJVfvhjmXz for <devel@driverdev.osuosl.org>;
 Thu,  2 Apr 2020 20:37:35 +0200 (CEST)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id D9CA564B747
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 20:37:35 +0200 (CEST)
Received: from pflmari.corp.cetitec.com (10.8.5.12) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 2 Apr 2020 20:37:35 +0200
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 81892804FD; Thu,  2 Apr 2020 20:34:00 +0200 (CEST)
Date: Thu, 2 Apr 2020 20:34:00 +0200
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH v5 1/9] media: adv748x: fix end-of-line terminators in
 diagnostic statements
Message-ID: <2f2460435afa594ef417e70068b125af97ddca39.1585852001.git.alexander.riesen@cetitec.com>
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
X-Provags-ID: V03:K1:BbhEsGiI158sJIXoGrwXlNL5Zx65p90VRrGLxGiogyR9XEVIWwp
 bu7O3cDfxrzS/0cpnMCz9M+B7qjWYmeP83IA8c8hejnHyoCZ0dYvQ2RRuonZHVS/qtVIzgT
 +7kaY/RcaiwLssxZyqfw/GB+YTZFFxg6IMH0DUf0Mvp9IxNXVWUSbwpOKXK5JCgY84AtPmt
 Fouzrli9Ds8B1XNiwHB4w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:GEIshgxRR9U=:bBkznUv6pkO3LTQi4FLSx2
 DzfNJmUvQWm1/X0iq9VSiTpuX94Zxq9IyFBwWGDccbboDMN0+DVcplHbudTL6YRKVdULgJIpz
 h4z1e6BEKjCtZccCTl5wRQ2mX6OHQTsFiPpR3zbQman2PvyRMhSv7KRyS3tlCrcnF/tpGYCkC
 tR5EaYfszBcBPnnbNQF5pFUa9ed1bhvDL+WLcd2OvIp2wFloM5aySi/U2qY0dQ+WhsL62u7Mk
 x4txXXRhnOmFWGWpIaI9vwwK7QdIP6WqbkS0DFMNB3n8WOapwTxA8l2JMrVu9MbtErJl88LSq
 4vi8cqveP9WePhS0Kboo9iOxFB8WuIKHhVDP+UdzJRl2iSfj1rpyCTTAD6AVGdPyOKep/QzhL
 ZGAPKzfVMMQhGC2gIpMk0ENVZVt3cu0RkpmIVvsIcQP8jHuxGDJ1M/lkAoGYX6yXGJ5vj1x+L
 l8u3Kszb3t/ydVfuEjkPBAz9efPJMhFOyerW+ZiK+8eVb0q0kXDFuq5Wcq2+PoyXrVptUd7l7
 ybA1bivbprxv25ncSHHXQvajNVxPgVg2u7FNYBKU9kDy7TloiyKFSeqb/c9esJjQA+VQ6Uweu
 eovg2uRgLQ1PcXZaxio8KVbtEXqG9goe3WJaZDrE5nrLWrSZWi5ChrFtO/UExTIitxz30PYyN
 ln+8ROS7BVvPfcMidFioNEEWaNNpPcD44nMa6jk1POOWetKOfDPwd64/Q7mAd4KK6WAhPlY3O
 VZoZ0KKenvyebTROR0z+6W9PWm5zCpTacZduM7YySueV1qn9d5kkUpFPhnz1pPx58XtRDZBlI
 uQywAOMJR0xwAfYF5I90oyqEGLbKmU4biUIWgfegKPrzNjVMiIttdNmm7Ona9TZoVsY23hl
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

Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/i2c/adv748x/adv748x-core.c | 24 ++++++++++++------------
 drivers/media/i2c/adv748x/adv748x-csi2.c |  2 +-
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/media/i2c/adv748x/adv748x-core.c b/drivers/media/i2c/adv748x/adv748x-core.c
index 23e02ff27b17..c3fb113cef62 100644
--- a/drivers/media/i2c/adv748x/adv748x-core.c
+++ b/drivers/media/i2c/adv748x/adv748x-core.c
@@ -623,11 +623,11 @@ static int adv748x_parse_dt(struct adv748x_state *state)
 
 	for_each_endpoint_of_node(state->dev->of_node, ep_np) {
 		of_graph_parse_endpoint(ep_np, &ep);
-		adv_info(state, "Endpoint %pOF on port %d", ep.local_node,
+		adv_info(state, "Endpoint %pOF on port %d\n", ep.local_node,
 			 ep.port);
 
 		if (ep.port >= ADV748X_PORT_MAX) {
-			adv_err(state, "Invalid endpoint %pOF on port %d",
+			adv_err(state, "Invalid endpoint %pOF on port %d\n",
 				ep.local_node, ep.port);
 
 			continue;
@@ -635,7 +635,7 @@ static int adv748x_parse_dt(struct adv748x_state *state)
 
 		if (state->endpoints[ep.port]) {
 			adv_err(state,
-				"Multiple port endpoints are not supported");
+				"Multiple port endpoints are not supported\n");
 			continue;
 		}
 
@@ -702,62 +702,62 @@ static int adv748x_probe(struct i2c_client *client)
 	/* Discover and process ports declared by the Device tree endpoints */
 	ret = adv748x_parse_dt(state);
 	if (ret) {
-		adv_err(state, "Failed to parse device tree");
+		adv_err(state, "Failed to parse device tree\n");
 		goto err_free_mutex;
 	}
 
 	/* Configure IO Regmap region */
 	ret = adv748x_configure_regmap(state, ADV748X_PAGE_IO);
 	if (ret) {
-		adv_err(state, "Error configuring IO regmap region");
+		adv_err(state, "Error configuring IO regmap region\n");
 		goto err_cleanup_dt;
 	}
 
 	ret = adv748x_identify_chip(state);
 	if (ret) {
-		adv_err(state, "Failed to identify chip");
+		adv_err(state, "Failed to identify chip\n");
 		goto err_cleanup_dt;
 	}
 
 	/* Configure remaining pages as I2C clients with regmap access */
 	ret = adv748x_initialise_clients(state);
 	if (ret) {
-		adv_err(state, "Failed to setup client regmap pages");
+		adv_err(state, "Failed to setup client regmap pages\n");
 		goto err_cleanup_clients;
 	}
 
 	/* SW reset ADV748X to its default values */
 	ret = adv748x_reset(state);
 	if (ret) {
-		adv_err(state, "Failed to reset hardware");
+		adv_err(state, "Failed to reset hardware\n");
 		goto err_cleanup_clients;
 	}
 
 	/* Initialise HDMI */
 	ret = adv748x_hdmi_init(&state->hdmi);
 	if (ret) {
-		adv_err(state, "Failed to probe HDMI");
+		adv_err(state, "Failed to probe HDMI\n");
 		goto err_cleanup_clients;
 	}
 
 	/* Initialise AFE */
 	ret = adv748x_afe_init(&state->afe);
 	if (ret) {
-		adv_err(state, "Failed to probe AFE");
+		adv_err(state, "Failed to probe AFE\n");
 		goto err_cleanup_hdmi;
 	}
 
 	/* Initialise TXA */
 	ret = adv748x_csi2_init(state, &state->txa);
 	if (ret) {
-		adv_err(state, "Failed to probe TXA");
+		adv_err(state, "Failed to probe TXA\n");
 		goto err_cleanup_afe;
 	}
 
 	/* Initialise TXB */
 	ret = adv748x_csi2_init(state, &state->txb);
 	if (ret) {
-		adv_err(state, "Failed to probe TXB");
+		adv_err(state, "Failed to probe TXB\n");
 		goto err_cleanup_txa;
 	}
 
diff --git a/drivers/media/i2c/adv748x/adv748x-csi2.c b/drivers/media/i2c/adv748x/adv748x-csi2.c
index 2091cda50935..c43ce5d78723 100644
--- a/drivers/media/i2c/adv748x/adv748x-csi2.c
+++ b/drivers/media/i2c/adv748x/adv748x-csi2.c
@@ -72,7 +72,7 @@ static int adv748x_csi2_registered(struct v4l2_subdev *sd)
 	struct adv748x_state *state = tx->state;
 	int ret;
 
-	adv_dbg(state, "Registered %s (%s)", is_txa(tx) ? "TXA":"TXB",
+	adv_dbg(state, "Registered %s (%s)\n", is_txa(tx) ? "TXA":"TXB",
 			sd->name);
 
 	/*
-- 
2.25.1.25.g9ecbe7eb18


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
