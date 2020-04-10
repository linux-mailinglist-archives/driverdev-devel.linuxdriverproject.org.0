Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C21961A45AC
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Apr 2020 13:29:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 73D6288289;
	Fri, 10 Apr 2020 11:29:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hBLmaAIJ-+JS; Fri, 10 Apr 2020 11:29:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D9B8288258;
	Fri, 10 Apr 2020 11:29:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4AD101BF2FB
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 11:29:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 47D3A877F1
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 11:29:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fRE4lheEBvEu for <devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 11:29:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9A8B9875A9
 for <devel@driverdev.osuosl.org>; Fri, 10 Apr 2020 11:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586518154;
 bh=KtSi/VbBy7h2f5/PPhtzMU8agjhettQ5lYTN7Xt9ILg=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=CnTn4UWZFmtqmOQPprxvfziLGj0UNzSaWAMsHldOsEc2eijtqPMNDt5XFc7mY1lO0
 ERfla1e/sCiLcrXm+53FOrHVcF0OgVxvekkn5No8OCWWv1FtI1/t0u1DGhF6ye/Gjk
 Sl8a+by4nIIbl2CdM1gos0uZueTzQLtqeTVAbfgY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx005 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MXp9i-1jm6uT3Rbo-00Y6om; Fri, 10 Apr 2020 13:29:13 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/2] staging: vt6656: Refactor the assignment of the
 phy->signal variable
Date: Fri, 10 Apr 2020 13:28:33 +0200
Message-Id: <20200410112834.17490-2-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200410112834.17490-1-oscar.carter@gmx.com>
References: <20200410112834.17490-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:GwHkx9hixyR4J7tLmd1opGX8K7/qhqgCPuFQ/YcedJdrilOfwu+
 aU4l87PFkEMzp5Y6AvS6hiFvnUcR6reyHplEQKp9JypEER0PulQuDpWYGoemqdV07i7qO4T
 caKntc7XbJtAeWY+ox0XRXABBOSi7rwwOmpEkUmRSq0yEJ4VOV3Lyx1LTaGqyCYLB6Yc5FP
 Zzg9WT57t41Zx14VkHFmg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:DAq6SO9FoRQ=:Q8Ifa0KpW6o/8CEISXwc/Y
 LaDlaBgPZ66JQxFeeiGcxEsQRrENavN0Wcy8ijatwrGdCAL/tPXrhyjt9XfCgN+sbMtAc34b/
 NjB6IV1Uv8lsP4CNWeYl+uDyCWDVCDQgqSGrUmZdve+/TwHljScqekaNBJtvqsQdtmLnbXpc2
 ca3svRUZYRPFcxKgzKL3/o5cWqFBPskA6+9DE85QEQO1o+jwjzrEmioWkUnb3BakYQVQs7iel
 wZVSUoujaIBJCvs8VnFasIU7RGYbMAlLSXfpxfTLWJLzE11ra/r1994DMONK3kKr1tV+ZlGjh
 +EgxpihynHhOv0OGgO+B0xl5GZPMNkb8P7k0UurjDUF2868dzu1KFbfInXoTAe6zCTm7fENQw
 po0REyPWzHpXuUB97GDswM9Eo9xzLdNadYMZM0cYVXPkrv0RyLRQy0GCiWMhaqJ8fkaUGLjFq
 dBynEJUYt8wReJ3nbbVnqKgsCiUVuQUAn6dDwB2zjzYBAm6BUPFikcJwoJ7OUZ9zN8D70o+hk
 mXpscY3fYTS8JcoOhfTVqasAox5dLz7V0XL1s4lP4aWlE6ruRirm02c+nzqvn/sLI4O73eKbM
 yCfOYGDaXWqUN2GEHctjeZmU/Im61JywiMwEu8464HUkrP7M/eV16RQwnVXK09bV/rzZB9uA9
 kHoDGmGTU1G/3qn6Jm/cKW1OStX20MSjaIRgzSfJ3ezLq+KTaj3qxiCWUxnRzo/Mlm2DBZEyu
 BAfT6Snx3p/cwy9efx6X/jFdtHW/JJV3yDGhCctZKV2kzC4twaYF/pDBAxPbfEtIsPuUXn3V/
 bhatlWfFKeeTMOR1DhHsfqsvauCJGnAJNHv9QuhdsabHd422uFExv3CGr9+o95NGB1l/kZzuQ
 DAnFA2BoAm4ucHO45eflGaYUm0znSKp6yvtkAcA28xY7qYpoSZgO0bY04xMS4V+SoquM1YywK
 W6Q4F/ApVrmFMqd3AvK5Z3m5ATG+JTgQPLTG85l2gBSgei9FRF61e1vVqR4BCJIwLXYP5785X
 nmxZpn64BbuU8TKn5FJuUA4B6rDagxfkqLTRBQIVdC05RSorHIUCtnjhofOpPkNi/kr0Y46eE
 lZaIV3dzrCy6RL4nV54d+m3uE91ZVwGabOZ5GKzV8FdmxadcJH7tnoJs/3HFueXWN24a/fiR5
 kjLZDY9cyY2NO1yAl20TjKs5nkMyVBPB0fNn6Y3vrN1H9P7lwj8k2t/Dc+EjsrFeUBLQUEheI
 Szf5wbYc1hYGZix5M
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

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/baseband.c | 101 +++++++-----------------------
 1 file changed, 21 insertions(+), 80 deletions(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index a19a563d8bcc..47f93bf6e07b 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -115,6 +115,21 @@ static const u16 vnt_frame_time[MAX_RATE] = {
 	10, 20, 55, 110, 24, 36, 48, 72, 96, 144, 192, 216
 };

+static const u8 vnt_phy_signal[][2] = {
+	{0x00, 0x00},	/* RATE_1M  */
+	{0x01, 0x09},	/* RATE_2M  */
+	{0x02, 0x0a},	/* RATE_5M  */
+	{0x03, 0x0b},	/* RATE_11M */
+	{0x8b, 0x9b},	/* RATE_6M  */
+	{0x8f, 0x9f},	/* RATE_9M  */
+	{0x8a, 0x9a},	/* RATE_12M */
+	{0x8e, 0x9e},	/* RATE_18M */
+	{0x89, 0x99},	/* RATE_24M */
+	{0x8d, 0x9d},	/* RATE_36M */
+	{0x88, 0x98},	/* RATE_48M */
+	{0x8c, 0x9c}	/* RATE_54M */
+};
+
 /*
  * Description: Calculate data frame transmitting time
  *
@@ -183,6 +198,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 	u32 count = 0;
 	u32 tmp;
 	int ext_bit;
+	int i, j;
 	u8 preamble_type = priv->preamble_type;

 	bit_count = frame_length * 8;
@@ -191,27 +207,12 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
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
@@ -224,74 +225,14 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
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
 		break;
-	case RATE_36M:
-		if (pkt_type == PK_TYPE_11A)
-			phy->signal = 0x9d;
-		else
-			phy->signal = 0x8d;
+	}

-		break;
-	case RATE_48M:
-		if (pkt_type == PK_TYPE_11A)
-			phy->signal = 0x98;
-		else
-			phy->signal = 0x88;
+	i = tx_rate > RATE_54M ? RATE_54M : tx_rate;
+	j = tx_rate > RATE_11M ? pkt_type == PK_TYPE_11A
+			       : preamble_type == PREAMBLE_SHORT;

-		break;
-	case RATE_54M:
-		if (pkt_type == PK_TYPE_11A)
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
-	}
+	phy->signal = vnt_phy_signal[i][j];

 	if (pkt_type == PK_TYPE_11B) {
 		phy->service = 0x00;
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
