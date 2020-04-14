Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AADC1A8365
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 17:40:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 03C6487D5E;
	Tue, 14 Apr 2020 15:40:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DD1Nu0kAQjEF; Tue, 14 Apr 2020 15:40:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0463887D0B;
	Tue, 14 Apr 2020 15:40:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 647CA1BF59D
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 15:40:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5F475861E7
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 15:40:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fofhqHia95XB for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 15:40:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4811184F75
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 15:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586878783;
 bh=xayl9wr1Zhh2APoyBF+n7OmgkJn/nVrgwCRIOOlv8F4=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=KgCGSbwazxWP0k9SZLSBRpeMxuMQgGamMe59LQ9Cq7uBTa1m6n8TApHFNqfwacXjQ
 ThakJSdh27Lks6CyHSUQyYrgEuYJU+Cn42qkW+OqIYwmdD7jX/jLRNszGpL9x2AY/j
 vCTVVujET1OnIYVH2kLkAP41ni7ftYYGpo2Ta5Gg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1ML9uK-1jgSmD17PW-00IBXi; Tue, 14 Apr 2020 17:39:43 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 4/5] staging: vt6656: Refactor the assignment of the
 phy->signal variable
Date: Tue, 14 Apr 2020 17:38:48 +0200
Message-Id: <20200414153849.5785-5-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200414153849.5785-1-oscar.carter@gmx.com>
References: <20200414153849.5785-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:WULWfV857+3ReqK0uGTtSIhLihDvMVYh4pt9Ad6fOD2coxShS2t
 C+PJi895M1gzYq6KTz/9RhpFYJgy7ciVx/m6oQpYdHaxjDVh4H7J4c0gXaHXKkit3wggFWP
 zb43xmQ3gatPU1R4Z/101hbi3ZLck3pjeerQyGTqeiy5ZqxfiMrS+ErJcxeVPiEHORC8HXh
 tv0CwGAybbr+RJRmeGatQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:VrWkre+vVO4=:qClOhRBU9c9lgvyvVQ8/sc
 CNcw6LL6jVIX5ly3kmInF7NvaNDGZHSl055KRAhZ8rJ1+NfUD+/w5vRfth1h6pepIRbhdJcCi
 HiS+fx2N7Z9jECftXE9nPhknJ0MWIrcVbQTt3Fe59fw9jD4pqvy3z2Sdlqz92TIpzhOgw7vCw
 +OQzHlJ8AflXcSGiwAnRgWirnRoDkbdUS2iUtsxf+6A8A8ADRhRDEWLvJYgQTa3u0iKLg7sVG
 HpBKMVHLBJiEPRFiO1Y6/DvzlHIgq8kG0gjq43eVbDYKTdfseH+b8zc8rsOFO2z9GXp1WRCk+
 HSVQ/Ud9hHTNQEasEioUWpInsvy/S9lgfnqy1Y0SWzGcZNNEFIU9W0QO6lzFQkHYMxhMsmqOG
 SiDrB9o3spWxQLZIjPCciE+T/UGO7zA7JovQWkKiOfRihEZASaBhOq/ctuukGL9+cQqvCBTlH
 YMdDnpC6nBTSMjEakKQvHc5kTmveQ87QwA6e4ma4XpY9XOs5GQYTLCqHJSxYoCfvy+mjtvyzI
 IQesgmnhlqR+NNr1WxpXNf9Uj4n61mNM3V4JrD2c7LvJz7n+P9tJb5/wda/V+2mKksDL08ii+
 Qv5QgxEeXgcDO8PBFp9tsG3tasbHGyWMKi+FrkStdwLVmsn6Z5LX8wAOT6iwiTxEMrakpPZv+
 ApGrPkUHkgHs5NNrAupG+J5LIZWim/Oa+Un8WKIFkjdBc/nYO/tOetN72ePRMdtTo+pNpyFVw
 5qPk9TMfVog1LVG9+2DdLPRMMW9phI/7I9Yt8PbHRLsVVuLPJ488eY/lE0tSxlvkBQA0qYZmv
 86CRwftsvH8CuEzB1CTZs3rfWIaT3l7q9gSqUHFah+MwoErj8pKyh+T31Eyqtc6Dw6k7OOzIl
 9W+GHKmCgVxBoy7JuHQcQ7YWJ2GTB6N8EP/mry3V5blv0xLIsCwYTJTRidGS8Gr+t/0gdFPAH
 JlEj1Wga3+FVnED5cPfiaTCFoKT3Vu33IcdewvFXqcnMdbHJ5ZobyAAot3VrL8sVYAt5O+A67
 igGZr5JqLdubSCR610c1XyEqNBCZ6k4e2dtcK4fBVupWZNW36kn62gA1Y/ALSKfYwQNRZzFQu
 aKr9TiAu/NV9hckfIAOW7KKeadYTCfFCCmPRPg7RJUNByKZsqlKJJepnqTVy2Q4SNS786isY7
 BHSvfm7Oz7LJsY/MEQ2a/awyzEyvWlI1UoufzX/CIycL/GDDHrevMVQTXyx+D7MxofPjgBiJj
 Nl3p/5UH/uTdjwF57
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
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
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
index 149c9bba7108..3b6f2bcf91a7 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -196,6 +196,21 @@ static const struct vnt_threshold vt3342_vnt_threshold[] = {
 	{41, 0xff, 0x00}
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
@@ -264,6 +279,8 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 	u32 count = 0;
 	u32 tmp;
 	int ext_bit;
+	int i;
+	u8 mask = 0;
 	u8 preamble_type = priv->preamble_type;

 	bit_count = frame_length * 8;
@@ -272,27 +289,12 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
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
-		if (preamble_type == PREAMBLE_SHORT)
-			phy->signal = 0x09;
-		else
-			phy->signal = 0x01;
-
 		break;
 	case RATE_5M:
 		count = DIV_ROUND_UP(bit_count * 10, 55);
-
-		if (preamble_type == PREAMBLE_SHORT)
-			phy->signal = 0x0a;
-		else
-			phy->signal = 0x02;
-
 		break;
 	case RATE_11M:
 		count = bit_count / 11;
@@ -305,75 +307,20 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 				ext_bit = true;
 		}

-		if (preamble_type == PREAMBLE_SHORT)
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
-		break;
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
 		break;
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
-		if (pkt_type == PK_TYPE_11A)
-			phy->signal = 0x9c;
-		else
-			phy->signal = 0x8c;
-		break;
-	default:
+	if (tx_rate > RATE_11M) {
 		if (pkt_type == PK_TYPE_11A)
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
