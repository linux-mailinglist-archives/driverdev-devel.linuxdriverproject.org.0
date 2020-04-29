Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B171BE27E
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Apr 2020 17:23:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2E4582050D;
	Wed, 29 Apr 2020 15:23:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S8KUSrUEasyO; Wed, 29 Apr 2020 15:23:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 63B57203EB;
	Wed, 29 Apr 2020 15:23:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4A07A1BF36C
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 15:23:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 452AD203CC
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 15:23:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 59amjgoNqd2O for <devel@linuxdriverproject.org>;
 Wed, 29 Apr 2020 15:23:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by silver.osuosl.org (Postfix) with ESMTPS id 2421120004
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 15:23:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1588173813;
 bh=hOY4BoONXQi6iRBbmV53XudQnJwUUCIRMOoc3pADbx8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=iKZrTlsCKksR/hF4pEuP4DKVUAb8FyKH1d8W+kfE9tFaQ4I9eTEAE6910XeFnfTsk
 8HUKh4xYhepII8OuayptttrxIHj6JDAXo6sHhXeD/d8wX5ZjCbJN8+lQBvvW7VpPyJ
 /IyVYN7d0feLOPyYl2N1L8iOrWYHuFTNYC8RACwg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx105 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1M5wLT-1jWGCN2z51-007VGx; Wed, 29 Apr 2020 17:23:32 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] staging: vt6656: Refactor the vnt_set_bss_mode function
Date: Wed, 29 Apr 2020 17:23:07 +0200
Message-Id: <20200429152307.5871-3-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429152307.5871-1-oscar.carter@gmx.com>
References: <20200429152307.5871-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:yfjrYUI66eQI9hul3e+k2D/Em1cq0YdQebCVxoUmArry/rZNRUX
 VOdAtnNUKDUok28BKCThUy0s2TmYeROBEMBT3KkdQVk0fOqw1cdlJ65Y7So0JWl66bWqVVz
 llGmfC4ei03vZvF96leIpOBEaZ8Qsc/ux/NQWg1iYBiRCfB3DOGZgP3GTwaPzHBEsdyQj5E
 q2tEFKPSeZ0v0nE0dil8Q==
X-UI-Out-Filterresults: notjunk:1;V03:K0:+L8d4eslQi0=:PiD0zclHcpTFTCW6V3bEpn
 6ju7zE58O5sw+e5Pj5N6/V3Vgrc/KWSQ+Y4RRcsR62R15/nMaD5ChoD6BBMzTbLmZX4+BWz5K
 6PhE9Jc2onVyn4Xq3C8De8lRl73g8n62OYnuqFJ4htTtH69K08eLOBfpDqUKEMg37/15dg2Vl
 KyAw0oBO2umzRVaKlONl3K+zfEwVx4OlQ9r0VTLN7egb4prjXmAMdMEiWhXJOCp5Y3Rd1l6Pk
 lxH3UkZCcWP4hTYJYYZSVEX8FUy/mxoXXTu20wQZKmCe5zj5YCCRa6LnICs/o1VHzZR5Typ/M
 D1zubew1/pY8/XTrkNBCXtqbe4OspLMVcPhZNwS9QJb/Sf1+I0+lpEJrW6NHv3Yib4KPAmPzR
 ie5MFywLRk1IWhI1ni0cO1KfrknFPl0ZTG0b12trnogGBqVq8PlGaigE9g2jPLR8egHMlsj3q
 +1sS6TC9KscT//L2GZ4tSss2D5XxGMCdEowRP1ZJu4R2oUwnpgCpW53KqO2lqzHkc5QX24kiO
 mQDFZjBzZpVsM0VqxFLNgX+NahPUVQfTTcIg6qks7YMNuL0UGshDd+2+Orxy1XUFc8ts8GPwB
 2dI+Dg3EsWWzF0jTstSNfn8peYIoikm5eQVyoosndpsaKeIDsXc76ZXaO7i9UNlsDb3TyNpwy
 WPPV4gE4c7OUrBjKNUZbDL2e1Kv9vdH0yX5J8dqCFVB1cvIkcTUNL3RO2LFi7LAW2mQMRsScz
 p8KfgZcJndEqc/YF+Y4d0eM7OoMUYPANwwDwsYngZSuE/u4vrJRMCmUwjbyGlHI/lRuqx4jDF
 VZcHWPQ88OxfB0tKB93Rx5SD2sesFJwRaJO5PdB3xTo1fpe12RiLUO+l7aNMipjvh+m7It6ND
 J+l58h0XV/5c7hyp2hBgYtTxLCBALefCHkjy4XsR3mnwW9ldMqJTsYkn9jIa4jiTZgmMFy9/O
 zt9ikBw8sZD+U1Sv4N19UZ7Z5VVkw9w+azPyw1SDjEtLqLZEdtSUXso2Qc9zLJ7syeGlMgtbv
 R6j8dVz0lWo+siTMeijBQG4qRElf/PioHr42RhGlY5sQJiE8Cp9jWDkkabb7Jw2b/eKU1kydP
 bDX3d1xEFZE1TZvn2AaPSqe997RDBq/yU1Utr2EOVHEcqYYNZxHLhKH6nc9c0q7K7KgxR+kcW
 ajr4rMY9sixy228rYC4GesxF2yEUJdaWHWyA3u76ZwqnXYXgQBf9yFA9/IKhqOsaaNMdMrsjr
 NG3XSsacMcCns8wvA
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 "John B. Wyatt IV" <jbwyatt4@gmail.com>, linux-kernel@vger.kernel.org,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove all the duplicate code in the "if, else if, else" statements as
all the branches in every "if" are almost the same. The only difference
between branches is some value. So, use variables instead of repeat
code.

Also, remove the unnecessary casting to u8 type because the
"priv->bb_type" variable is already an u8 tpe.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/card.c | 68 ++++++++++++++++-------------------
 1 file changed, 31 insertions(+), 37 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 0854b70cb89f..3cb97c4daeb8 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -472,62 +472,56 @@ int vnt_radio_power_on(struct vnt_private *priv)
 int vnt_set_bss_mode(struct vnt_private *priv)
 {
 	int ret;
+	unsigned char type = priv->bb_type;
+	unsigned char data = 0;
+	unsigned char bb_vga_0 = 0x1c;
+	unsigned char bb_vga_2_3 = 0x00;

 	if (priv->rf_type == RF_AIROHA7230 && priv->bb_type == BB_TYPE_11A)
-		ret = vnt_mac_set_bb_type(priv, BB_TYPE_11G);
-	else
-		ret = vnt_mac_set_bb_type(priv, priv->bb_type);
+		type = BB_TYPE_11G;

+	ret = vnt_mac_set_bb_type(priv, type);
 	if (ret)
 		return ret;

 	priv->packet_type = vnt_get_pkt_type(priv);

-	if (priv->bb_type == BB_TYPE_11A)
-		ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG,
-					 0x88, 0x03);
-	else if (priv->bb_type == BB_TYPE_11B)
-		ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG,
-					 0x88, 0x02);
-	else if (priv->bb_type == BB_TYPE_11G)
+	if (priv->bb_type == BB_TYPE_11A) {
+		data = 0x03;
+		bb_vga_0 = 0x20;
+		bb_vga_2_3 = 0x10;
+	} else if (priv->bb_type == BB_TYPE_11B) {
+		data = 0x02;
+	} else if (priv->bb_type == BB_TYPE_11G) {
+		data = 0x08;
+	}
+
+	if (data) {
 		ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG,
-					 0x88, 0x08);
-	if (ret)
-		return ret;
+					 0x88, data);
+		if (ret)
+			return ret;
+	}

 	ret = vnt_update_ifs(priv);
 	if (ret)
 		return ret;

-	ret = vnt_set_rspinf(priv, (u8)priv->bb_type);
+	ret = vnt_set_rspinf(priv, priv->bb_type);
 	if (ret)
 		return ret;

-	if (priv->bb_type == BB_TYPE_11A) {
-		if (priv->rf_type == RF_AIROHA7230) {
-			priv->bb_vga[0] = 0x20;
+	if (priv->rf_type == RF_AIROHA7230) {
+		priv->bb_vga[0] = bb_vga_0;

-			ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG,
-						 0xe7, priv->bb_vga[0]);
-			if (ret)
-				return ret;
-		}
-
-		priv->bb_vga[2] = 0x10;
-		priv->bb_vga[3] = 0x10;
-	} else {
-		if (priv->rf_type == RF_AIROHA7230) {
-			priv->bb_vga[0] = 0x1c;
-
-			ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG,
-						 0xe7, priv->bb_vga[0]);
-			if (ret)
-				return ret;
-		}
-
-		priv->bb_vga[2] = 0x0;
-		priv->bb_vga[3] = 0x0;
+		ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG,
+					 0xe7, priv->bb_vga[0]);
+		if (ret)
+			return ret;
 	}

+	priv->bb_vga[2] = bb_vga_2_3;
+	priv->bb_vga[3] = bb_vga_2_3;
+
 	return vnt_set_vga_gain_offset(priv, priv->bb_vga[0]);
 }
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
