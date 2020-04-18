Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0041AEC76
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Apr 2020 14:38:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C8928868D5;
	Sat, 18 Apr 2020 12:38:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u22sPOkNHqHk; Sat, 18 Apr 2020 12:38:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D7681865A5;
	Sat, 18 Apr 2020 12:38:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7B3831BF5AD
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 12:37:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 77DFC86481
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 12:37:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sbqaXYTD_UPf for <devel@linuxdriverproject.org>;
 Sat, 18 Apr 2020 12:37:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C76BC863FF
 for <devel@driverdev.osuosl.org>; Sat, 18 Apr 2020 12:37:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587213456;
 bh=oJl1V44SYlfqrSsWFE18wsMXsp36NtGo7f/zkPGONYA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=cpVfCGtZaCLuWLL4Jn9K4jkEPzuUgOtINxFHIK/To/C9RyMX038hDWYAwSenA19/1
 YYga0pZvi+A78JQPqVlsxMXBYmXaYteFG1PG1eEfRL4j4keDMa/uXOej49rX9I6D+8
 ltZTPLUCn1fssQn5uM+PC9Uz+/gTxmGAyCo+wg18=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx005 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MbRfv-1ioXA628Mb-00bwUT; Sat, 18 Apr 2020 14:37:36 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] staging: vt6656: Check the return value of
 vnt_control_out_* calls
Date: Sat, 18 Apr 2020 14:36:58 +0200
Message-Id: <20200418123659.4475-2-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418123659.4475-1-oscar.carter@gmx.com>
References: <20200418123659.4475-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:ElyjHGvUyM2dJGmGMzRJNMUreK4KaYsrMLJZ4may25tB74dTeJc
 h7BfhoE54scm2Xr3V7UkC5CCW1xf0mb6bmr8bX2YqLWm0rZHVYjTNNi+NNtIA7JlNYGNWYi
 iGgn3ckIGlXRBt2C2weoEWuUMu2tezRi/FU0KJmp8uZ865bYphRtAXDd5a68DUPy/kAzUiX
 mEOJtJYSOXTHPdwVB+AxQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:q0sX5cN5Ggw=:yEjHkjEXuDl/hIqMYQSfYD
 rt8DhzqlxS2V6c3X6lIHXu3SvsrUba0Kmw/ykaMMF1eR4Ib/P8LgFQxXXSPx/7T3wy14p4rob
 kujc3Rh+V5KAXya0z25htYYybkKQt8hZYgp8DfQZYJuB0PrJ7YUivM6/EJ6DBnh791Y+389Vk
 6rW1bD5DUg8v9RpaFLac8bQU+/TVpe66DYLAAPVy2V/udBCi/bX7ojPOBcUjQ7KP1Y1GCiwtl
 AzsVjidbwxGCMM0w0o+Eru+vjs/kYmjfA4i8/re2yiGVUx7xsVnRS9ucEx+OI0B/JcdirtJ9X
 cIFcybd97Y3tWgXUxdHBoELIycVL0fd35jLkXHGOBXMk1le4oqI6MsWZ2NOGT7xkGjemIVZyn
 nt8SpWBmNrsG2pYV74iqBoeNozdCKXOWpUhWPtwjdw8S/4x1LKlntNLyqV+wVtCS2yq6oAhRr
 Ee1wTPKzRfxDyrZZMTGjJ7bm36f0Z4aPUHL+2Aakh+0SGm/76YSueob3N+u6ttcs1dg00OMLK
 IL95NJuYmmeQRwh0P7ixUw3RK510tu6IGmmN8rfYkJzU2SHVfBhtcS72QFnuQwYIxFEhuHIKr
 9X4Hk0Nfhy1UffiQ05EC+WBV5eH0ZbFWdvpKiaZsOY5PMfOjjpXP0rkx0lE2JsaD2erARsnxW
 kgChroQ3tcOYoXyFu5esLmqbIc7GmZA9YSbgiImUROUBvn6+KGpei2xtdQaxhLW11OCrk/nSi
 HOkMa/ZMaZUTl1TPhqK4E4KggwJ6KH054AaJak7GuDI9NL0FiYPpDv4HDjrrvZgocmbbJouhQ
 bD+3z3rvhiOV9ORANl4VAyko43jG47mwEPjwoDgTx+p8+gpE2dJWcRfhvrw3EYKlmJKEKRhO7
 qr/Pa8mU/fAADa0i4fykBuWuqGLFJb/grw2ay33h3JzmTtxXl2FrRYnkTdoeUr3Ta8ZL07TqE
 HluNbIs5vdCGbOBvOgWT9a7yrWVkvQGvtnTs83kOFSW5PAWprW2aVV1aHfhfxoLTTixsoqvvU
 EP+ln0vMX4eJRJs4KxMv/wacDxwWurw6ARuXzuD3qJFe9O078mc5fXgDiwKIF4VPJplFjyHIs
 p+15ep51+gSnwbOwc7soW48ZQ6JWirfo/ZOS/IW54QKZdvZf/41kAEfWIygxTnF6cfAxRMOA7
 urks7Pm+Ux+KS2J1SEuvZn1P0a5yRK8gnHrjq+l+BJie1fKbVwp5bb2zj9Ly/AD9PXz/Ceagh
 j4VQ+dt6NdelncApE
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
 Stefano Brivio <sbrivio@redhat.com>, Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Check the return value of vnt_control_out_* function calls. When
necessary modify the function prototype to be able to return the new
checked error code.

It's safe to modify all the function prototypes without fix the call
because the only change is the return value from void to int. If before
the call didn't check the return value, now neither.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/baseband.c | 35 ++++++-----
 drivers/staging/vt6656/baseband.h |  4 +-
 drivers/staging/vt6656/card.c     | 97 ++++++++++++++++++++-----------
 drivers/staging/vt6656/card.h     | 18 +++---
 drivers/staging/vt6656/mac.c      | 76 ++++++++++++------------
 drivers/staging/vt6656/mac.h      | 26 ++++-----
 drivers/staging/vt6656/power.c    | 12 +++-
 drivers/staging/vt6656/power.h    |  2 +-
 8 files changed, 156 insertions(+), 114 deletions(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index e0352405e4cf..91cf00615ef3 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -23,6 +23,7 @@
  */

 #include <linux/bits.h>
+#include <linux/errno.h>
 #include <linux/kernel.h>
 #include "mac.h"
 #include "baseband.h"
@@ -559,21 +560,22 @@ int vnt_set_short_slot_time(struct vnt_private *priv)

 	ret = vnt_control_in_u8(priv, MESSAGE_REQUEST_BBREG, 0xe7, &bb_vga);
 	if (ret)
-		goto end;
+		return ret;

 	if (bb_vga == priv->bb_vga[0])
 		priv->bb_rx_conf |= 0x20;

-	ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x0a,
-				 priv->bb_rx_conf);
-
-end:
-	return ret;
+	return vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x0a,
+				  priv->bb_rx_conf);
 }

-void vnt_set_vga_gain_offset(struct vnt_private *priv, u8 data)
+int vnt_set_vga_gain_offset(struct vnt_private *priv, u8 data)
 {
-	vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0xE7, data);
+	int ret;
+
+	ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0xE7, data);
+	if (ret)
+		return ret;

 	/* patch for 3253B0 Baseband with Cardbus module */
 	if (priv->short_slot_time)
@@ -581,7 +583,8 @@ void vnt_set_vga_gain_offset(struct vnt_private *priv, u8 data)
 	else
 		priv->bb_rx_conf |= 0x20; /* 0010 0000 */

-	vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x0a, priv->bb_rx_conf);
+	return vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x0a,
+				  priv->bb_rx_conf);
 }

 /*
@@ -622,12 +625,13 @@ int vnt_exit_deep_sleep(struct vnt_private *priv)
 	return vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x0d, 0x01);
 }

-void vnt_update_pre_ed_threshold(struct vnt_private *priv, int scanning)
+int vnt_update_pre_ed_threshold(struct vnt_private *priv, int scanning)
 {
 	const struct vnt_threshold *threshold = NULL;
 	u8 length;
 	u8 cr_201, cr_206;
 	u8 ed_inx = priv->bb_pre_ed_index;
+	int ret;

 	switch (priv->rf_type) {
 	case RF_AL2230:
@@ -650,7 +654,7 @@ void vnt_update_pre_ed_threshold(struct vnt_private *priv, int scanning)
 	}

 	if (!threshold)
-		return;
+		return -EINVAL;

 	for (ed_inx = scanning ? 0 : length - 1; ed_inx > 0; ed_inx--) {
 		if (priv->bb_pre_ed_rssi <= threshold[ed_inx].bb_pre_ed_rssi)
@@ -661,14 +665,17 @@ void vnt_update_pre_ed_threshold(struct vnt_private *priv, int scanning)
 	cr_206 = threshold[ed_inx].cr_206;

 	if (ed_inx == priv->bb_pre_ed_index && !scanning)
-		return;
+		return 0;

 	priv->bb_pre_ed_index = ed_inx;

 	dev_dbg(&priv->usb->dev, "%s bb_pre_ed_rssi %d\n",
 		__func__, priv->bb_pre_ed_rssi);

-	vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0xc9, cr_201);
-	vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0xce, cr_206);
+	ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0xc9, cr_201);
+	if (ret)
+		return ret;
+
+	return vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0xce, cr_206);
 }

diff --git a/drivers/staging/vt6656/baseband.h b/drivers/staging/vt6656/baseband.h
index dc42aa6ae1d9..8739988bf9e8 100644
--- a/drivers/staging/vt6656/baseband.h
+++ b/drivers/staging/vt6656/baseband.h
@@ -80,11 +80,11 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 		       u16 tx_rate, u8 pkt_type, struct vnt_phy_field *phy);

 int vnt_set_short_slot_time(struct vnt_private *priv);
-void vnt_set_vga_gain_offset(struct vnt_private *priv, u8 data);
+int vnt_set_vga_gain_offset(struct vnt_private *priv, u8 data);
 int vnt_set_antenna_mode(struct vnt_private *priv, u8 antenna_mode);
 int vnt_vt3184_init(struct vnt_private *priv);
 int vnt_set_deep_sleep(struct vnt_private *priv);
 int vnt_exit_deep_sleep(struct vnt_private *priv);
-void vnt_update_pre_ed_threshold(struct vnt_private *priv, int scanning);
+int vnt_update_pre_ed_threshold(struct vnt_private *priv, int scanning);

 #endif /* __BASEBAND_H__ */
diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 9bd37e57c727..99ad56b7617d 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -27,6 +27,7 @@
  */

 #include <linux/bits.h>
+#include <linux/errno.h>
 #include "device.h"
 #include "card.h"
 #include "baseband.h"
@@ -55,10 +56,12 @@ static const u16 cw_rxbcntsf_off[MAX_RATE] = {
  *  Out:
  *      none
  */
-void vnt_set_channel(struct vnt_private *priv, u32 connection_channel)
+int vnt_set_channel(struct vnt_private *priv, u32 connection_channel)
 {
+	int ret;
+
 	if (connection_channel > CB_MAX_CHANNEL || !connection_channel)
-		return;
+		return -EINVAL;

 	/* clear NAV */
 	vnt_mac_reg_bits_on(priv, MAC_REG_MACCR, MACCR_CLRNAV);
@@ -67,11 +70,13 @@ void vnt_set_channel(struct vnt_private *priv, u32 connection_channel)
 	vnt_mac_reg_bits_off(priv, MAC_REG_CHANNEL,
 			     (BIT(7) | BIT(5) | BIT(4)));

-	vnt_control_out(priv, MESSAGE_TYPE_SELECT_CHANNEL,
-			connection_channel, 0, 0, NULL);
+	ret = vnt_control_out(priv, MESSAGE_TYPE_SELECT_CHANNEL,
+			      connection_channel, 0, 0, NULL);
+	if (ret)
+		return ret;

-	vnt_control_out_u8(priv, MESSAGE_REQUEST_MACREG, MAC_REG_CHANNEL,
-			   (u8)(connection_channel | 0x80));
+	return vnt_control_out_u8(priv, MESSAGE_REQUEST_MACREG, MAC_REG_CHANNEL,
+				  (u8)(connection_channel | 0x80));
 }

 static const u8 vnt_rspinf_b_short_table[] = {
@@ -107,10 +112,11 @@ static const u8 vnt_rspinf_gb_table[] = {
  *
  */

-void vnt_set_rspinf(struct vnt_private *priv, u8 bb_type)
+int vnt_set_rspinf(struct vnt_private *priv, u8 bb_type)
 {
 	const u8 *data;
 	u16 len;
+	int ret;

 	if (priv->preamble_type) {
 		data = vnt_rspinf_b_short_table;
@@ -121,8 +127,10 @@ void vnt_set_rspinf(struct vnt_private *priv, u8 bb_type)
 	}

 	 /* RSPINF_b_1 to RSPINF_b_11 */
-	vnt_control_out(priv, MESSAGE_TYPE_WRITE, MAC_REG_RSPINF_B_1,
-			MESSAGE_REQUEST_MACREG, len, data);
+	ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, MAC_REG_RSPINF_B_1,
+			      MESSAGE_REQUEST_MACREG, len, data);
+	if (ret)
+		return ret;

 	if (bb_type == BB_TYPE_11A) {
 		data = vnt_rspinf_a_table;
@@ -133,8 +141,8 @@ void vnt_set_rspinf(struct vnt_private *priv, u8 bb_type)
 	}

 	/* RSPINF_a_6 to RSPINF_a_72 */
-	vnt_control_out(priv, MESSAGE_TYPE_WRITE, MAC_REG_RSPINF_A_6,
-			MESSAGE_REQUEST_MACREG, len, data);
+	return vnt_control_out(priv, MESSAGE_TYPE_WRITE, MAC_REG_RSPINF_A_6,
+			       MESSAGE_REQUEST_MACREG, len, data);
 }

 /*
@@ -149,10 +157,11 @@ void vnt_set_rspinf(struct vnt_private *priv, u8 bb_type)
  * Return Value: None.
  *
  */
-void vnt_update_ifs(struct vnt_private *priv)
+int vnt_update_ifs(struct vnt_private *priv)
 {
 	u8 max_min = 0;
 	u8 data[4];
+	int ret;

 	if (priv->packet_type == PK_TYPE_11A) {
 		priv->slot = C_SLOT_SHORT;
@@ -212,13 +221,15 @@ void vnt_update_ifs(struct vnt_private *priv)
 	data[2] = (u8)priv->eifs;
 	data[3] = (u8)priv->slot;

-	vnt_control_out(priv, MESSAGE_TYPE_WRITE, MAC_REG_SIFS,
-			MESSAGE_REQUEST_MACREG, 4, &data[0]);
+	ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, MAC_REG_SIFS,
+			      MESSAGE_REQUEST_MACREG, 4, &data[0]);
+	if (ret)
+		return ret;

 	max_min |= 0xa0;

-	vnt_control_out(priv, MESSAGE_TYPE_WRITE, MAC_REG_CWMAXMIN0,
-			MESSAGE_REQUEST_MACREG, 1, &max_min);
+	return vnt_control_out(priv, MESSAGE_TYPE_WRITE, MAC_REG_CWMAXMIN0,
+			       MESSAGE_REQUEST_MACREG, 1, &max_min);
 }

 void vnt_update_top_rates(struct vnt_private *priv)
@@ -304,8 +315,8 @@ u64 vnt_get_tsf_offset(u8 rx_rate, u64 tsf1, u64 tsf2)
  * Return Value: none
  *
  */
-void vnt_adjust_tsf(struct vnt_private *priv, u8 rx_rate,
-		    u64 time_stamp, u64 local_tsf)
+int vnt_adjust_tsf(struct vnt_private *priv, u8 rx_rate,
+		   u64 time_stamp, u64 local_tsf)
 {
 	u64 tsf_offset = 0;
 	u8 data[8];
@@ -321,8 +332,8 @@ void vnt_adjust_tsf(struct vnt_private *priv, u8 rx_rate,
 	data[6] = (u8)(tsf_offset >> 48);
 	data[7] = (u8)(tsf_offset >> 56);

-	vnt_control_out(priv, MESSAGE_TYPE_SET_TSFTBTT,
-			MESSAGE_REQUEST_TSF, 0, 8, data);
+	return vnt_control_out(priv, MESSAGE_TYPE_SET_TSFTBTT,
+			       MESSAGE_REQUEST_TSF, 0, 8, data);
 }

 /*
@@ -411,7 +422,7 @@ u64 vnt_get_next_tbtt(u64 tsf, u16 beacon_interval)
  * Return Value: none
  *
  */
-void vnt_reset_next_tbtt(struct vnt_private *priv, u16 beacon_interval)
+int vnt_reset_next_tbtt(struct vnt_private *priv, u16 beacon_interval)
 {
 	u64 next_tbtt = 0;
 	u8 data[8];
@@ -429,8 +440,8 @@ void vnt_reset_next_tbtt(struct vnt_private *priv, u16 beacon_interval)
 	data[6] = (u8)(next_tbtt >> 48);
 	data[7] = (u8)(next_tbtt >> 56);

-	vnt_control_out(priv, MESSAGE_TYPE_SET_TSFTBTT,
-			MESSAGE_REQUEST_TBTT, 0, 8, data);
+	return vnt_control_out(priv, MESSAGE_TYPE_SET_TSFTBTT,
+			       MESSAGE_REQUEST_TBTT, 0, 8, data);
 }

 /*
@@ -448,10 +459,11 @@ void vnt_reset_next_tbtt(struct vnt_private *priv, u16 beacon_interval)
  * Return Value: none
  *
  */
-void vnt_update_next_tbtt(struct vnt_private *priv, u64 tsf,
-			  u16 beacon_interval)
+int vnt_update_next_tbtt(struct vnt_private *priv, u64 tsf,
+			 u16 beacon_interval)
 {
 	u8 data[8];
+	int ret;

 	tsf = vnt_get_next_tbtt(tsf, beacon_interval);

@@ -464,10 +476,13 @@ void vnt_update_next_tbtt(struct vnt_private *priv, u64 tsf,
 	data[6] = (u8)(tsf >> 48);
 	data[7] = (u8)(tsf >> 56);

-	vnt_control_out(priv, MESSAGE_TYPE_SET_TSFTBTT,
-			MESSAGE_REQUEST_TBTT, 0, 8, data);
+	ret = vnt_control_out(priv, MESSAGE_TYPE_SET_TSFTBTT,
+			      MESSAGE_REQUEST_TBTT, 0, 8, data);
+	if (ret)
+		return ret;

 	dev_dbg(&priv->usb->dev, "%s TBTT: %8llx\n", __func__, tsf);
+	return 0;
 }

 /*
@@ -556,8 +571,10 @@ int vnt_radio_power_on(struct vnt_private *priv)
 	return vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
 }

-void vnt_set_bss_mode(struct vnt_private *priv)
+int vnt_set_bss_mode(struct vnt_private *priv)
 {
+	int ret = 0;
+
 	if (priv->rf_type == RF_AIROHA7230 && priv->bb_type == BB_TYPE_11A)
 		vnt_mac_set_bb_type(priv, BB_TYPE_11G);
 	else
@@ -566,11 +583,16 @@ void vnt_set_bss_mode(struct vnt_private *priv)
 	priv->packet_type = vnt_get_pkt_type(priv);

 	if (priv->bb_type == BB_TYPE_11A)
-		vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x88, 0x03);
+		ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG,
+					 0x88, 0x03);
 	else if (priv->bb_type == BB_TYPE_11B)
-		vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x88, 0x02);
+		ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG,
+					 0x88, 0x02);
 	else if (priv->bb_type == BB_TYPE_11G)
-		vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x88, 0x08);
+		ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG,
+					 0x88, 0x08);
+	if (ret)
+		return ret;

 	vnt_update_ifs(priv);
 	vnt_set_rspinf(priv, (u8)priv->bb_type);
@@ -579,8 +601,10 @@ void vnt_set_bss_mode(struct vnt_private *priv)
 		if (priv->rf_type == RF_AIROHA7230) {
 			priv->bb_vga[0] = 0x20;

-			vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG,
-					   0xe7, priv->bb_vga[0]);
+			ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG,
+						 0xe7, priv->bb_vga[0]);
+			if (ret)
+				return ret;
 		}

 		priv->bb_vga[2] = 0x10;
@@ -589,8 +613,10 @@ void vnt_set_bss_mode(struct vnt_private *priv)
 		if (priv->rf_type == RF_AIROHA7230) {
 			priv->bb_vga[0] = 0x1c;

-			vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG,
-					   0xe7, priv->bb_vga[0]);
+			ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG,
+						 0xe7, priv->bb_vga[0]);
+			if (ret)
+				return ret;
 		}

 		priv->bb_vga[2] = 0x0;
@@ -598,4 +624,5 @@ void vnt_set_bss_mode(struct vnt_private *priv)
 	}

 	vnt_set_vga_gain_offset(priv, priv->bb_vga[0]);
+	return 0;
 }
diff --git a/drivers/staging/vt6656/card.h b/drivers/staging/vt6656/card.h
index 75cd340c0cce..5ef8bad9607e 100644
--- a/drivers/staging/vt6656/card.h
+++ b/drivers/staging/vt6656/card.h
@@ -25,23 +25,23 @@

 struct vnt_private;

-void vnt_set_channel(struct vnt_private *priv, u32 connection_channel);
-void vnt_set_rspinf(struct vnt_private *priv, u8 bb_type);
-void vnt_update_ifs(struct vnt_private *priv);
+int vnt_set_channel(struct vnt_private *priv, u32 connection_channel);
+int vnt_set_rspinf(struct vnt_private *priv, u8 bb_type);
+int vnt_update_ifs(struct vnt_private *priv);
 void vnt_update_top_rates(struct vnt_private *priv);
 int vnt_ofdm_min_rate(struct vnt_private *priv);
-void vnt_adjust_tsf(struct vnt_private *priv, u8 rx_rate,
-		    u64 time_stamp, u64 local_tsf);
+int vnt_adjust_tsf(struct vnt_private *priv, u8 rx_rate,
+		   u64 time_stamp, u64 local_tsf);
 bool vnt_get_current_tsf(struct vnt_private *priv, u64 *current_tsf);
 bool vnt_clear_current_tsf(struct vnt_private *priv);
-void vnt_reset_next_tbtt(struct vnt_private *priv, u16 beacon_interval);
-void vnt_update_next_tbtt(struct vnt_private *priv, u64 tsf,
-			  u16 beacon_interval);
+int vnt_reset_next_tbtt(struct vnt_private *priv, u16 beacon_interval);
+int vnt_update_next_tbtt(struct vnt_private *priv, u64 tsf,
+			 u16 beacon_interval);
 u64 vnt_get_next_tbtt(u64 tsf, u16 beacon_interval);
 u64 vnt_get_tsf_offset(u8 rx_rate, u64 tsf1, u64 tsf2);
 int vnt_radio_power_off(struct vnt_private *priv);
 int vnt_radio_power_on(struct vnt_private *priv);
 u8 vnt_get_pkt_type(struct vnt_private *priv);
-void vnt_set_bss_mode(struct vnt_private *priv);
+int vnt_set_bss_mode(struct vnt_private *priv);

 #endif /* __CARD_H__ */
diff --git a/drivers/staging/vt6656/mac.c b/drivers/staging/vt6656/mac.c
index 5cacf6e60e90..639172fad0f3 100644
--- a/drivers/staging/vt6656/mac.c
+++ b/drivers/staging/vt6656/mac.c
@@ -35,12 +35,13 @@
  * Return Value: none
  *
  */
-void vnt_mac_set_filter(struct vnt_private *priv, u64 mc_filter)
+int vnt_mac_set_filter(struct vnt_private *priv, u64 mc_filter)
 {
 	__le64 le_mc = cpu_to_le64(mc_filter);

-	vnt_control_out(priv, MESSAGE_TYPE_WRITE, MAC_REG_MAR0,
-			MESSAGE_REQUEST_MACREG, sizeof(le_mc), (u8 *)&le_mc);
+	return vnt_control_out(priv, MESSAGE_TYPE_WRITE, MAC_REG_MAR0,
+			       MESSAGE_REQUEST_MACREG, sizeof(le_mc),
+			       (u8 *)&le_mc);
 }

 /*
@@ -54,20 +55,21 @@ void vnt_mac_set_filter(struct vnt_private *priv, u64 mc_filter)
  *
  *
  */
-void vnt_mac_shutdown(struct vnt_private *priv)
+int vnt_mac_shutdown(struct vnt_private *priv)
 {
-	vnt_control_out(priv, MESSAGE_TYPE_MACSHUTDOWN, 0, 0, 0, NULL);
+	return vnt_control_out(priv, MESSAGE_TYPE_MACSHUTDOWN, 0, 0, 0, NULL);
 }

-void vnt_mac_set_bb_type(struct vnt_private *priv, u8 type)
+int vnt_mac_set_bb_type(struct vnt_private *priv, u8 type)
 {
 	u8 data[2];

 	data[0] = type;
 	data[1] = EnCFG_BBType_MASK;

-	vnt_control_out(priv, MESSAGE_TYPE_WRITE_MASK, MAC_REG_ENCFG0,
-			MESSAGE_REQUEST_MACREG,	ARRAY_SIZE(data), data);
+	return vnt_control_out(priv, MESSAGE_TYPE_WRITE_MASK, MAC_REG_ENCFG0,
+			       MESSAGE_REQUEST_MACREG,	ARRAY_SIZE(data),
+			       data);
 }

 /*
@@ -84,10 +86,10 @@ void vnt_mac_set_bb_type(struct vnt_private *priv, u8 type)
  * Return Value: none
  *
  */
-void vnt_mac_disable_keyentry(struct vnt_private *priv, u8 entry_idx)
+int vnt_mac_disable_keyentry(struct vnt_private *priv, u8 entry_idx)
 {
-	vnt_control_out(priv, MESSAGE_TYPE_CLRKEYENTRY, 0, 0,
-			sizeof(entry_idx), &entry_idx);
+	return vnt_control_out(priv, MESSAGE_TYPE_CLRKEYENTRY, 0, 0,
+			       sizeof(entry_idx), &entry_idx);
 }

 /*
@@ -104,8 +106,8 @@ void vnt_mac_disable_keyentry(struct vnt_private *priv, u8 entry_idx)
  * Return Value: none
  *
  */
-void vnt_mac_set_keyentry(struct vnt_private *priv, u16 key_ctl, u32 entry_idx,
-			  u32 key_idx, u8 *addr, u8 *key)
+int vnt_mac_set_keyentry(struct vnt_private *priv, u16 key_ctl, u32 entry_idx,
+			 u32 key_idx, u8 *addr, u8 *key)
 {
 	struct vnt_mac_set_key set_key;
 	u16 offset;
@@ -124,9 +126,9 @@ void vnt_mac_set_keyentry(struct vnt_private *priv, u16 key_ctl, u32 entry_idx,
 	dev_dbg(&priv->usb->dev, "offset %d key ctl %d set key %24ph\n",
 		offset, key_ctl, (u8 *)&set_key);

-	vnt_control_out(priv, MESSAGE_TYPE_SETKEY, offset,
-			(u16)key_idx, sizeof(struct vnt_mac_set_key),
-			(u8 *)&set_key);
+	return vnt_control_out(priv, MESSAGE_TYPE_SETKEY, offset,
+			       (u16)key_idx, sizeof(struct vnt_mac_set_key),
+			       (u8 *)&set_key);
 }

 int vnt_mac_reg_bits_off(struct vnt_private *priv, u8 reg_ofs, u8 bits)
@@ -151,76 +153,76 @@ int vnt_mac_reg_bits_on(struct vnt_private *priv, u8 reg_ofs, u8 bits)
 			       MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
 }

-void vnt_mac_write_word(struct vnt_private *priv, u8 reg_ofs, u16 word)
+int vnt_mac_write_word(struct vnt_private *priv, u8 reg_ofs, u16 word)
 {
 	u8 data[2];

 	data[0] = (u8)(word & 0xff);
 	data[1] = (u8)(word >> 8);

-	vnt_control_out(priv, MESSAGE_TYPE_WRITE, reg_ofs,
-			MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
+	return vnt_control_out(priv, MESSAGE_TYPE_WRITE, reg_ofs,
+			       MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
 }

-void vnt_mac_set_bssid_addr(struct vnt_private *priv, u8 *addr)
+int vnt_mac_set_bssid_addr(struct vnt_private *priv, u8 *addr)
 {
-	vnt_control_out(priv, MESSAGE_TYPE_WRITE, MAC_REG_BSSID0,
-			MESSAGE_REQUEST_MACREG, ETH_ALEN, addr);
+	return vnt_control_out(priv, MESSAGE_TYPE_WRITE, MAC_REG_BSSID0,
+			       MESSAGE_REQUEST_MACREG, ETH_ALEN, addr);
 }

-void vnt_mac_enable_protect_mode(struct vnt_private *priv)
+int vnt_mac_enable_protect_mode(struct vnt_private *priv)
 {
 	u8 data[2];

 	data[0] = EnCFG_ProtectMd;
 	data[1] = EnCFG_ProtectMd;

-	vnt_control_out(priv, MESSAGE_TYPE_WRITE_MASK, MAC_REG_ENCFG0,
-			MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
+	return vnt_control_out(priv, MESSAGE_TYPE_WRITE_MASK, MAC_REG_ENCFG0,
+			       MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
 }

-void vnt_mac_disable_protect_mode(struct vnt_private *priv)
+int vnt_mac_disable_protect_mode(struct vnt_private *priv)
 {
 	u8 data[2];

 	data[0] = 0;
 	data[1] = EnCFG_ProtectMd;

-	vnt_control_out(priv, MESSAGE_TYPE_WRITE_MASK, MAC_REG_ENCFG0,
-			MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
+	return vnt_control_out(priv, MESSAGE_TYPE_WRITE_MASK, MAC_REG_ENCFG0,
+			       MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
 }

-void vnt_mac_enable_barker_preamble_mode(struct vnt_private *priv)
+int vnt_mac_enable_barker_preamble_mode(struct vnt_private *priv)
 {
 	u8 data[2];

 	data[0] = EnCFG_BarkerPream;
 	data[1] = EnCFG_BarkerPream;

-	vnt_control_out(priv, MESSAGE_TYPE_WRITE_MASK, MAC_REG_ENCFG2,
-			MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
+	return vnt_control_out(priv, MESSAGE_TYPE_WRITE_MASK, MAC_REG_ENCFG2,
+			       MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
 }

-void vnt_mac_disable_barker_preamble_mode(struct vnt_private *priv)
+int vnt_mac_disable_barker_preamble_mode(struct vnt_private *priv)
 {
 	u8 data[2];

 	data[0] = 0;
 	data[1] = EnCFG_BarkerPream;

-	vnt_control_out(priv, MESSAGE_TYPE_WRITE_MASK, MAC_REG_ENCFG2,
-			MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
+	return vnt_control_out(priv, MESSAGE_TYPE_WRITE_MASK, MAC_REG_ENCFG2,
+			       MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
 }

-void vnt_mac_set_beacon_interval(struct vnt_private *priv, u16 interval)
+int vnt_mac_set_beacon_interval(struct vnt_private *priv, u16 interval)
 {
 	u8 data[2];

 	data[0] = (u8)(interval & 0xff);
 	data[1] = (u8)(interval >> 8);

-	vnt_control_out(priv, MESSAGE_TYPE_WRITE, MAC_REG_BI,
-			MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
+	return vnt_control_out(priv, MESSAGE_TYPE_WRITE, MAC_REG_BI,
+			       MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
 }

 int vnt_mac_set_led(struct vnt_private *priv, u8 state, u8 led)
diff --git a/drivers/staging/vt6656/mac.h b/drivers/staging/vt6656/mac.h
index b01d9ee8677e..dae70b5c7634 100644
--- a/drivers/staging/vt6656/mac.h
+++ b/drivers/staging/vt6656/mac.h
@@ -355,21 +355,21 @@ struct vnt_mac_set_key {
 	u8 key[WLAN_KEY_LEN_CCMP];
 } __packed;

-void vnt_mac_set_filter(struct vnt_private *priv, u64 mc_filter);
-void vnt_mac_shutdown(struct vnt_private *priv);
-void vnt_mac_set_bb_type(struct vnt_private *priv, u8 type);
-void vnt_mac_disable_keyentry(struct vnt_private *priv, u8 entry_idx);
-void vnt_mac_set_keyentry(struct vnt_private *priv, u16 key_ctl, u32 entry_idx,
-			  u32 key_idx, u8 *addr, u8 *key);
+int vnt_mac_set_filter(struct vnt_private *priv, u64 mc_filter);
+int vnt_mac_shutdown(struct vnt_private *priv);
+int vnt_mac_set_bb_type(struct vnt_private *priv, u8 type);
+int vnt_mac_disable_keyentry(struct vnt_private *priv, u8 entry_idx);
+int vnt_mac_set_keyentry(struct vnt_private *priv, u16 key_ctl, u32 entry_idx,
+			 u32 key_idx, u8 *addr, u8 *key);
 int vnt_mac_reg_bits_off(struct vnt_private *priv, u8 reg_ofs, u8 bits);
 int vnt_mac_reg_bits_on(struct vnt_private *priv, u8 reg_ofs, u8 bits);
-void vnt_mac_write_word(struct vnt_private *priv, u8 reg_ofs, u16 word);
-void vnt_mac_set_bssid_addr(struct vnt_private *priv, u8 *addr);
-void vnt_mac_enable_protect_mode(struct vnt_private *priv);
-void vnt_mac_disable_protect_mode(struct vnt_private *priv);
-void vnt_mac_enable_barker_preamble_mode(struct vnt_private *priv);
-void vnt_mac_disable_barker_preamble_mode(struct vnt_private *priv);
-void vnt_mac_set_beacon_interval(struct vnt_private *priv, u16 interval);
+int vnt_mac_write_word(struct vnt_private *priv, u8 reg_ofs, u16 word);
+int vnt_mac_set_bssid_addr(struct vnt_private *priv, u8 *addr);
+int vnt_mac_enable_protect_mode(struct vnt_private *priv);
+int vnt_mac_disable_protect_mode(struct vnt_private *priv);
+int vnt_mac_enable_barker_preamble_mode(struct vnt_private *priv);
+int vnt_mac_disable_barker_preamble_mode(struct vnt_private *priv);
+int vnt_mac_set_beacon_interval(struct vnt_private *priv, u16 interval);
 int vnt_mac_set_led(struct vnt_private *privpriv, u8 state, u8 led);

 #endif /* __MAC_H__ */
diff --git a/drivers/staging/vt6656/power.c b/drivers/staging/vt6656/power.c
index 7a086c72d5a8..2d8d5a332a63 100644
--- a/drivers/staging/vt6656/power.c
+++ b/drivers/staging/vt6656/power.c
@@ -87,17 +87,23 @@ void vnt_enable_power_saving(struct vnt_private *priv, u16 listen_interval)
  *
  */

-void vnt_disable_power_saving(struct vnt_private *priv)
+int vnt_disable_power_saving(struct vnt_private *priv)
 {
+	int ret;
+
 	/* disable power saving hw function */
-	vnt_control_out(priv, MESSAGE_TYPE_DISABLE_PS, 0,
-			0, 0, NULL);
+	ret = vnt_control_out(priv, MESSAGE_TYPE_DISABLE_PS, 0,
+			      0, 0, NULL);
+	if (ret)
+		return ret;

 	/* clear AutoSleep */
 	vnt_mac_reg_bits_off(priv, MAC_REG_PSCFG, PSCFG_AUTOSLEEP);

 	/* set always listen beacon */
 	vnt_mac_reg_bits_on(priv, MAC_REG_PSCTL, PSCTL_ALBCN);
+
+	return 0;
 }

 /*
diff --git a/drivers/staging/vt6656/power.h b/drivers/staging/vt6656/power.h
index 58755ae16e5a..160872026db3 100644
--- a/drivers/staging/vt6656/power.h
+++ b/drivers/staging/vt6656/power.h
@@ -18,7 +18,7 @@

 #define C_PWBT	1000 /* micro sec. power up before TBTT */

-void vnt_disable_power_saving(struct vnt_private *priv);
+int vnt_disable_power_saving(struct vnt_private *priv);
 void vnt_enable_power_saving(struct vnt_private *priv, u16 listen_interval);
 int vnt_next_tbtt_wakeup(struct vnt_private *priv);

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
