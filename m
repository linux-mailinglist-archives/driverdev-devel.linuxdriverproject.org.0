Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 970A819CC7F
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 23:42:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4CD0B87605;
	Thu,  2 Apr 2020 21:42:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ejgzkbMbr-mW; Thu,  2 Apr 2020 21:42:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2102A875FB;
	Thu,  2 Apr 2020 21:42:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 358E11BF9BD
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 21:42:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2CE1C204AD
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 21:42:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Oi1rZNT7MCPf for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 21:42:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 21FA31FFC1
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 21:42:20 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id a81so5362872wmf.5
 for <devel@driverdev.osuosl.org>; Thu, 02 Apr 2020 14:42:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=deUrCaIYg9VqgBtDxyvSfNVjqbAj9bWkcCoGMyJST/s=;
 b=THfwV+3EtI6U2dmE7J9hZ6dlveFN4xZx7dFH4LVuA9JOP1RqHbbisSH/XqVzDHLDHt
 w7HgnXPEThde/sWy0nm185afUHdPIpcllMCy7wtVekiGas0/Y3ASI4wJy4x6UWgWwdZG
 BfzvjCQTgXNaUVg3kHkLZLDpNpNedFbWyYmBF6qtQdcXOnMiO1hFQbI/nb8XgjzaODqb
 Y0RXK/pYexQTM3rxvao6ypIvuLzlN+tncnPH4ZdQL6MB+xlENqhCEoCC9gqWJHuORhxA
 JOP4w39hIjuQ0p5FNCR5qX6syvb6hrh+ddoCodlB6lewmi6pPTfW8ZjuTvpu0uAiw67f
 mv2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=deUrCaIYg9VqgBtDxyvSfNVjqbAj9bWkcCoGMyJST/s=;
 b=lJCo9cJU9Ty/fULQMUFlG8DtafSGQJoNN8gILEsYzsek00r04vsS2kVboQEVXkj78O
 MGp9nkiEEr8H9K+OyH+k932SWiTYu+vxNf3R4BBnRUg5Kgqaz7M5fEjR72A35s8IA/8W
 puFA6qoLvhlQ+QzE49sZCpi0P7O/HLp9Cm2p06cQtcYKIzu4ADE5L0Dd12CQUl/Z6AC/
 3DFw1gbvO6zQIEKD6F9+PEe4VGvgPCcRRUJsan4sEUTvDCuYsROKgHcjh2h6bGXiqmTd
 fi34aZ0yNUjhB5u7pzSg+oXBD8qEAs/MKYM3Bjn+DDPjQSdJQR4eZzh1bOJTuZthu/Zm
 CRAw==
X-Gm-Message-State: AGi0PuaKbb+gsBSI2kj2deCwwHhOjCxlrTgdpnluMe36ePUwWXPWk9Rn
 UJI+U8H5Kx90GdqZnDeJlrtdWiQE
X-Google-Smtp-Source: APiQypIsy2FRWSKqb9ajTmBG7N5fBeZ6/4rovH+7z8T8Glt/MH19turvmeAu0HNKw9PumETQ/f5Xdw==
X-Received: by 2002:a1c:51:: with SMTP id 78mr5213590wma.157.1585863738628;
 Thu, 02 Apr 2020 14:42:18 -0700 (PDT)
Received: from [192.168.43.18] (188.29.165.56.threembb.co.uk. [188.29.165.56])
 by smtp.gmail.com with ESMTPSA id
 a145sm1050802wmd.20.2020.04.02.14.42.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 14:42:18 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 2/2] staging: vt6656: set all cck rates to default.
Message-ID: <dec847da-5bad-1920-f275-741f7f704fb3@gmail.com>
Date: Thu, 2 Apr 2020 22:42:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

mac80211 rate control decides which cck rates to use so all of
them should be set enabled at the appropriate bit rate.

This means vnt_get_cck_rate is no longer required.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/card.c | 38 ++++-------------------------------
 1 file changed, 4 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 4abbe9b30b65..97e1538a528e 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -74,32 +74,6 @@ void vnt_set_channel(struct vnt_private *priv, u32 connection_channel)
 			   (u8)(connection_channel | 0x80));
 }
 
-/*
- * Description: Get CCK mode basic rate
- *
- * Parameters:
- *  In:
- *      priv		- The adapter to be set
- *      rate_idx	- Receiving data rate
- *  Out:
- *      none
- *
- * Return Value: response Control frame rate
- *
- */
-static u16 vnt_get_cck_rate(struct vnt_private *priv, u16 rate_idx)
-{
-	u16 ui = rate_idx;
-
-	while (ui > RATE_1M) {
-		if (priv->basic_rates & (1 << ui))
-			return ui;
-		ui--;
-	}
-
-	return RATE_1M;
-}
-
 /*
  * Description: Calculate TxRate and RsvTime fields for RSPINF in OFDM mode.
  *
@@ -216,20 +190,16 @@ void vnt_set_rspinf(struct vnt_private *priv, u8 bb_type)
 	int i;
 
 	/*RSPINF_b_1*/
-	vnt_get_phy_field(priv, 14, vnt_get_cck_rate(priv, RATE_1M),
-			  PK_TYPE_11B, &phy[0]);
+	vnt_get_phy_field(priv, 14, RATE_1M, PK_TYPE_11B, &phy[0]);
 
 	/*RSPINF_b_2*/
-	vnt_get_phy_field(priv, 14, vnt_get_cck_rate(priv, RATE_2M),
-			  PK_TYPE_11B, &phy[1]);
+	vnt_get_phy_field(priv, 14, RATE_2M, PK_TYPE_11B, &phy[1]);
 
 	/*RSPINF_b_5*/
-	vnt_get_phy_field(priv, 14, vnt_get_cck_rate(priv, RATE_5M),
-			  PK_TYPE_11B, &phy[2]);
+	vnt_get_phy_field(priv, 14, RATE_5M, PK_TYPE_11B, &phy[2]);
 
 	/*RSPINF_b_11*/
-	vnt_get_phy_field(priv, 14, vnt_get_cck_rate(priv, RATE_11M),
-			  PK_TYPE_11B, &phy[3]);
+	vnt_get_phy_field(priv, 14, RATE_11M, PK_TYPE_11B, &phy[3]);
 
 	/*RSPINF_a_6*/
 	vnt_calculate_ofdm_rate(RATE_6M, bb_type, &tx_rate[0], &rsv_time[0]);
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
