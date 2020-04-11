Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 047E81A519D
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Apr 2020 14:26:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A23C48763E;
	Sat, 11 Apr 2020 12:26:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ShY+YVwDDI6r; Sat, 11 Apr 2020 12:26:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1071487525;
	Sat, 11 Apr 2020 12:26:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 327A21BF5DE
 for <devel@linuxdriverproject.org>; Sat, 11 Apr 2020 12:26:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2EFA187532
 for <devel@linuxdriverproject.org>; Sat, 11 Apr 2020 12:26:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H0SwLuOno2sg for <devel@linuxdriverproject.org>;
 Sat, 11 Apr 2020 12:26:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 85ED187525
 for <devel@driverdev.osuosl.org>; Sat, 11 Apr 2020 12:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586608000;
 bh=Qe5TIhwuZ0lnZ5c49QtZbb8+6UAILtOmv8OpMKPtW/s=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=j9Z1itcolLDUNFB+tj54D1Kb9LAbS8mZQl0wvvKcbrD1f2D7k9xOe+sEkQQIjE3Tq
 LXK/VcHu07BbpCy3TWXZJHLOZT0HIiwhFey59Qa6pbV3X7j1yupRYn0JAVCn+zuhdg
 JfzWD2yGlDrvXayoqhHV9zaIKcpg2rbUHLp28TDI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx104 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1MFbRm-1jVRde2QSU-00H59S; Sat, 11 Apr 2020 14:26:40 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 1/2] staging: vt6656: Refactor the assignment of the
 phy->signal variable
Date: Sat, 11 Apr 2020 14:26:09 +0200
Message-Id: <20200411122610.7901-2-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411122610.7901-1-oscar.carter@gmx.com>
References: <20200411122610.7901-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:ZbsLyPJkFpbPl9JOMkJVgPELbbkpG+CtT4twaz1GSAXQ5zaan7a
 PDa4lFhU9GuERl6zX3zSWCXhYctwzy8e9q/7DsJXL0YdKtTA+0Gbt1/tG6yqwg7JMYyXgI2
 ULp8MsacRUTFEatRc7HE6uVkpv24OZWNWa/BMerZG2LFoY/3Dl03E/Uc/sx6XLUrT/IGTyP
 YXV8kXZpqw+o70p5ezqJA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:+FvOKfZMQ5Y=:ahFcYghwnA88kwwwTL6F2X
 FWUE+QFn0IT8cHNUi770MPJCksl0ifdZ+fs4GzJyVXE1xFJIVWdgZYv/wQMxdsnOVDdHCgfDs
 lnf+uD8jmGxSeb4TVFt57W0ERJ22f6r9iaMcvMmtKVp4W493GSqfnMiZE9T1SEaJhnQxvcTrb
 49LY9skLeiOZmwaOlBDEMRByiP6l5Wi/zrn87z7L9LT8arJQ6Gm0VGSrQH+/bzYar2acWlPoL
 Dk63f+lhOYnFGWZqfnj7352sFnx6zCUey0xn5qHzF9bFyxKFQ8q9HsGFBHYQedD/K9/VQZ8Rm
 K8zKNY34ff3STHXXc33RfUVbc6hOC9Vw+/HXPCMXaP/DI1LJDqFx9o+A8awcdhIjXOLO6p9jA
 rGdgGmW0WE4GkR+6ZjmDGAnUpn4WaIJIL8l1a6KV+v9LmoLyXROVd9NW/Ysk9chZ0TY0sEKVk
 lkUSTZQgOtyJe+XpbHXaFFZBReZXxfcxPz7L7TcNYGgDgHTUltONmfTUl3U03JLgjJwk9WuEs
 Ht9uvRuqRc14WJSFy1BT8TbvEVS78AyJbQfhF1I1Qt5VuqQDiAJJhjc3dbeEqPHN2PJbM7CQT
 nJdYWZSRQI9qOdfkv19u97bbiczpacdo427vgABceFPX4ZgNfVJ05hR9CDwiaoRUWkxykDwb7
 MsGQOJDFE1OdLqNZl0SPkc7droZFDJjUgVgszd8xGqP+hfy2AWTg26ZUgM9XL8htH5XTKYXvG
 LWVBOixvnkDJ993PoPb0Bgpuc145/EdqGU0/gYZ+MAnbTEF6HPIPhJdbGPZyJkSHSJTq8/vog
 Pv/Z8g1QEjHJRDlMaX6bS8UAcwlDLh/7M5QhD2cPQupAU+63KVGW7FpAwKzxYvSaA9pb9ojn9
 5FVbG8pQsTEVhTVJ10NtzDbdp7jVa+RE+FUm1F3SBKBUUGET1e0tbIHp7T7utRXhLu8Kfc6Rn
 grelfrV7Z9fTbEhpcAE3kBtknkWHZ96QiQZtD4S0ca6BRBrvNRmM+cTawo3L5YX5s1agq9xsj
 Sb/q5E24CiMnSCwsi7Maf3T8MCViZPSgINL9CnSsTCCM67DZ8l4d+ivZOJQj1v3aHcA1ncH7g
 HyW8F+K+BFszfgzyam5btFT+Ps61plX4jXOn3rsav35p+xMgEnJMhTN8NSOkYYBuzpNBQMf88
 /Fccj17JAf+tseFIgqj54OHR7J55jaz9GKmjEB5RDQDgP35ysvqBOkNQ4R/O9a1WR+iCjrMF5
 AtKTnmp24v/k/5TGp
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
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Create a constant array with the values of the "phy->signal" for every
rate. Remove all "phy->signal" assignments inside the switch statement
and replace these with a single reading from the new vnt_phy_signal
array.

The constant array can be of one dimension because the OR mask with
BIT(3) or BIT(4) allow obtain a second value according to the rate,
the preamble_type and the pkt_type.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/baseband.c | 105 ++++++++----------------------
 1 file changed, 26 insertions(+), 79 deletions(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index a19a563d8bcc..05cc4797df52 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -115,6 +115,21 @@ static const u16 vnt_frame_time[MAX_RATE] = {
 	10, 20, 55, 110, 24, 36, 48, 72, 96, 144, 192, 216
 };

+static const u8 vnt_phy_signal[] = {
+	0x00,	/* RATE_1M  */
+	0x01,	/* RATE_2M  */
+	0x02,	/* RATE_5M  */
+	0x03,	/* RATE_11M */
+	0x8b,	/* RATE_6M  */
+	0x8f,	/* RATE_9M  */
+	0x8a,	/* RATE_12M */
+	0x8e,	/* RATE_18M */
+	0x89,	/* RATE_24M */
+	0x8d,	/* RATE_36M */
+	0x88,	/* RATE_48M */
+	0x8c	/* RATE_54M */
+};
+
 /*
  * Description: Calculate data frame transmitting time
  *
@@ -183,6 +198,8 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 	u32 count = 0;
 	u32 tmp;
 	int ext_bit;
+	int i;
+	u8 mask = 0;
 	u8 preamble_type = priv->preamble_type;

 	bit_count = frame_length * 8;
@@ -191,27 +208,12 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 	switch (tx_rate) {
 	case RATE_1M:
 		count = bit_count;
-
-		phy->signal = 0x00;
-
 		break;
 	case RATE_2M:
 		count = bit_count / 2;
-
-		if (preamble_type == 1)
-			phy->signal = 0x09;
-		else
-			phy->signal = 0x01;
-
 		break;
 	case RATE_5M:
 		count = DIV_ROUND_UP(bit_count * 10, 55);
-
-		if (preamble_type == 1)
-			phy->signal = 0x0a;
-		else
-			phy->signal = 0x02;
-
 		break;
 	case RATE_11M:
 		count = bit_count / 11;
@@ -224,75 +226,20 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 				ext_bit = true;
 		}

-		if (preamble_type == 1)
-			phy->signal = 0x0b;
-		else
-			phy->signal = 0x03;
-
-		break;
-	case RATE_6M:
-		if (pkt_type == PK_TYPE_11A)
-			phy->signal = 0x9b;
-		else
-			phy->signal = 0x8b;
-
 		break;
-	case RATE_9M:
-		if (pkt_type == PK_TYPE_11A)
-			phy->signal = 0x9f;
-		else
-			phy->signal = 0x8f;
-
-		break;
-	case RATE_12M:
-		if (pkt_type == PK_TYPE_11A)
-			phy->signal = 0x9a;
-		else
-			phy->signal = 0x8a;
-
-		break;
-	case RATE_18M:
-		if (pkt_type == PK_TYPE_11A)
-			phy->signal = 0x9e;
-		else
-			phy->signal = 0x8e;
-
-		break;
-	case RATE_24M:
-		if (pkt_type == PK_TYPE_11A)
-			phy->signal = 0x99;
-		else
-			phy->signal = 0x89;
-
-		break;
-	case RATE_36M:
-		if (pkt_type == PK_TYPE_11A)
-			phy->signal = 0x9d;
-		else
-			phy->signal = 0x8d;
-
-		break;
-	case RATE_48M:
-		if (pkt_type == PK_TYPE_11A)
-			phy->signal = 0x98;
-		else
-			phy->signal = 0x88;
+	}

-		break;
-	case RATE_54M:
+	if (tx_rate > RATE_11M) {
 		if (pkt_type == PK_TYPE_11A)
-			phy->signal = 0x9c;
-		else
-			phy->signal = 0x8c;
-		break;
-	default:
-		if (pkt_type == PK_TYPE_11A)
-			phy->signal = 0x9c;
-		else
-			phy->signal = 0x8c;
-		break;
+			mask = BIT(4);
+	} else if (tx_rate > RATE_1M) {
+		if (preamble_type == PREAMBLE_SHORT)
+			mask = BIT(3);
 	}

+	i = tx_rate > RATE_54M ? RATE_54M : tx_rate;
+	phy->signal = vnt_phy_signal[i] | mask;
+
 	if (pkt_type == PK_TYPE_11B) {
 		phy->service = 0x00;
 		if (ext_bit)
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
