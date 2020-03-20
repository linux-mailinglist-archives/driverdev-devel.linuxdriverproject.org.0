Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 796F418D3EF
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 17:15:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08991883CD;
	Fri, 20 Mar 2020 16:15:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oDZv7LI8Xmah; Fri, 20 Mar 2020 16:15:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CF6938836A;
	Fri, 20 Mar 2020 16:15:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E52D01BF278
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 16:15:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E189888A5C
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 16:15:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k7Qa-5yEnWC4 for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 16:15:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D262888ACE
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 16:15:21 +0000 (UTC)
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MvsN5-1jWRZw2AqN-00sxmL for <devel@driverdev.osuosl.org>; Fri, 20 Mar
 2020 17:15:19 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
 by mail.cetitecgmbh.com (Postfix) with ESMTP id 0ABD864E13C
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 16:15:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
 by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com
 [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SGMS3M6UD9yQ for <devel@driverdev.osuosl.org>;
 Fri, 20 Mar 2020 17:15:18 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
 by mail.cetitecgmbh.com (Postfix) with ESMTPS id 7DDA964B4FC
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 17:15:18 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.41) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Fri, 20 Mar 2020 17:15:18 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
 id 0F67C804FD; Fri, 20 Mar 2020 17:11:42 +0100 (CET)
Date: Fri, 20 Mar 2020 17:11:42 +0100
From: Alex Riesen <alexander.riesen@cetitec.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH v3 01/11] media: adv748x: fix end-of-line terminators in
 diagnostic statements
Message-ID: <df22a88b6a2006920bae857c53e45c34b31175d6.1584720678.git.alexander.riesen@cetitec.com>
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
References: <cover.1584720678.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1584720678.git.alexander.riesen@cetitec.com>
X-Originating-IP: [10.8.5.41]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6D7662
X-Provags-ID: V03:K1:9oUINuC1T5cvyIcpLEFnEd5Efb3hV/Sqy+bWg7A8gtpRsxct7rX
 0LvpccfPvZvDc867rX6DiRUmGjt5yRqHmjJZKpZL02Gb5WW0U+XaS66DB5BQEtDdp/xVf5m
 s9pMNhM96zmsZYRMUmqdwAwVgQSQHyoXN45F1AIAndPh4ZGgQfnK6oPSbaQ0rJ9idBYFyl3
 /r1ZoJq5nETVBUxmoey/g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:8PpN5KR6GL4=:LElRgHq3SU2MhefbHtuZA+
 r2hCa8/veTF5ftnk5+JR8mjYXrX7ROQ/yQAgku4OW/bAm2BCilVzlPS6+qcXDfOz/H764paDj
 4FkIo8HFQwUb3MzIps7a0+1cvqIHbQS6jLfXGoq36H7biovBxevHknnHp2UJUfW+ZNZr5Ch+d
 RwV8HWNj+V8MCjQd4k8NpVWVQFSIv+qP1/ZMTWwervlEt2QzcXqZUuDbKjMFzOXWFshKrvDoS
 XGgIBa91KJ8ZWbAqDGfR6j/AQ7Bhe7BRNiIkVeJskc0Hrd+uuCzlh3Z8WBs+kjXXNC8KzXM6/
 1FZeppHOz5H46DIIwyhyrKbJdTp1zIpQtlgnx242Vh+0xo5fs66/StWRG/KXTozERE6DytyYa
 n3uiMay112qeeHPZB59SMyGOfFxJsxst47u0Kq3oL8rNb4M5GvoXTn0Hswopouqu6s7SH9BAu
 iYC6Ritq+1YBnmLHIkpW+R4ydsCGVDS+9wLMEOVTKYLrhkeLUGWVGAAP55wGd9umKTCrbEpiZ
 2X80l3r1P2LaFpbWbKuBwYBORvazyS0RBYgZ/9TEHmxiImQbkS7AKwEgpDYjaL4tyI1j8bWbA
 xxKUu51NKs65aUWrhA69k5SpDbBiX3wN5HMwxIJjA2UVgfWe4vIkklW6H27478x5FnGkddGm6
 OeBRJK+1hWYhIZCxMKV6dQ5kV0Oi8lIKRimXmkCCR9aJc9zp4wcWCzFeI57nVDWK4EE7T+6/j
 PXxiIKqIGu+p6lt39HatVTjUk6zdXe3GDOeF4JA6vmermhV+ASDRo6RCJqU/YsGX6H4bIpUwA
 yQElLmCzTO+YM/TqIzdteXZad2wpiiMm/PSwW9J5u37vzS4qNgct2op48Uaw/QOMZz939d/
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
