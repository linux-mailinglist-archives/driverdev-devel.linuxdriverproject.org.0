Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E360D0620
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 05:51:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 053E187821;
	Wed,  9 Oct 2019 03:51:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3otfMVE2m7r0; Wed,  9 Oct 2019 03:51:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 66471877DC;
	Wed,  9 Oct 2019 03:51:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 171FE1BF59D
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 03:51:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1364E22902
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 03:51:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qD9rnAFToIdi for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 03:51:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 45974228DF
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 03:51:02 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id t10so365599plr.8
 for <devel@driverdev.osuosl.org>; Tue, 08 Oct 2019 20:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=zVu11whZejwT26Lzl3FQULkz866LhnLShS6RpKsbAz4=;
 b=cLLC6eS/u5pAChPsyLfugrYPdytzuN8IQTkOMNpe6fAx4n4dXT3qxBZ/TglrOY9+9S
 Ofps+UkZvVRuBpm+xSeLkw4J104IbNv5sW5Rf5QCTxoeIP4D9bvHBBflxmxN8O9uV7A9
 KmJhJ2Ox3WpopjvyEgtHninJuPtyvvO4nvuwohvRjmmpFF4F5PQEciFW0A/b0ORKhbjl
 b23YqmOL35jgqh2BHHNAMqwR8sjYNCm18ANBYzVO2DA1tbXc5h8kZD+aNhRWD438QHJn
 /KwgluFw8iig12GGmPGJTvmVBgvgjkDEProGmjeTu2DqR1LmAsb4KYSA1sVBwHNAM8aS
 Q7oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=zVu11whZejwT26Lzl3FQULkz866LhnLShS6RpKsbAz4=;
 b=HyJOooIO3L2wkYJIGSVFE3TIoseoLiLnih/5ppYerRvmVzautdTZqUizd0e+kwXta0
 bU1k3qNCZW71qAGay7wn6TpLGx8qyGCQ/E6Sh2RgtK1UR3as3t6unDAkTQijS4kxofbO
 xkLYFaC87Ab9WBQrlx1nBMs/GUWn66QWppnymJyxgL6U5gojS5eWFNi+le/RS3gy5ysJ
 3bZ/N/rZ+5NdZiWR7QrLwWLd3H70BvjsG76ErsVngpa8bSnU3NLa/ZDB517yszbNhwEj
 sdxszGkhEw2TScpiIWg6eIT82VltiLA+90Qke3Sh5E66Ncu0OvAVNXnAw+1TdlqbqU9s
 bKlw==
X-Gm-Message-State: APjAAAWCMfsU5A3mE9pFMecY4u5cYAMd0Q7lIV+Km7OJxzMmXEKXWWzG
 0jGV6LjSrrmbD7+dpvqaIP4=
X-Google-Smtp-Source: APXvYqwxeVBDhkV/HdCDAy5+ejwZaPxvvRCHf7VHqhekwWpzmirEKdHBSNhi18b8MGl3L3DtRLFs+g==
X-Received: by 2002:a17:902:7b95:: with SMTP id
 w21mr1139908pll.322.1570593061698; 
 Tue, 08 Oct 2019 20:51:01 -0700 (PDT)
Received: from panther.hsd1.or.comcast.net ([45.52.215.209])
 by smtp.gmail.com with ESMTPSA id y7sm562206pfn.142.2019.10.08.20.51.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 08 Oct 2019 20:51:00 -0700 (PDT)
From: Chandra Annamaneni <chandra627@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] KPC2000: kpc2000_spi.c: Fix alignment and style problems.
Date: Tue,  8 Oct 2019 20:50:39 -0700
Message-Id: <1570593039-19059-1-git-send-email-chandra627@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com, chandra627@gmail.com,
 michael.scheiderer@fau.de, fabian.krueger@fau.de, linux-kernel@vger.kernel.org,
 simon@nikanor.nu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

	Fixed alignment and style issues raised by checkpatch.pl

Signed-off-by: Chandra Annamaneni <chandra627@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 49 ++++++++++++++++++++---------------
 1 file changed, 28 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 3be33c4..a20f2d7 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -30,19 +30,27 @@
 #include "kpc.h"
 
 static struct mtd_partition p2kr0_spi0_parts[] = {
-	{ .name = "SLOT_0",	.size = 7798784,		.offset = 0,                },
-	{ .name = "SLOT_1",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
-	{ .name = "SLOT_2",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
-	{ .name = "SLOT_3",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
-	{ .name = "CS0_EXTRA",	.size = MTDPART_SIZ_FULL,	.offset = MTDPART_OFS_NXTBLK},
+	{ .name = "SLOT_0",	.size = 7798784,	.offset = 0,},
+	{ .name = "SLOT_1",	.size = 7798784,	.offset =
+							 MTDPART_OFS_NXTBLK},
+	{ .name = "SLOT_2",	.size = 7798784,	.offset =
+							 MTDPART_OFS_NXTBLK},
+	{ .name = "SLOT_3",	.size = 7798784,	.offset =
+							 MTDPART_OFS_NXTBLK},
+	{ .name = "CS0_EXTRA",	.size = MTDPART_SIZ_FULL,	.offset =
+							 MTDPART_OFS_NXTBLK},
 };
 
 static struct mtd_partition p2kr0_spi1_parts[] = {
-	{ .name = "SLOT_4",	.size = 7798784,		.offset = 0,                },
-	{ .name = "SLOT_5",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
-	{ .name = "SLOT_6",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
-	{ .name = "SLOT_7",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
-	{ .name = "CS1_EXTRA",	.size = MTDPART_SIZ_FULL,	.offset = MTDPART_OFS_NXTBLK},
+	{ .name = "SLOT_4",	.size = 7798784,	.offset = 0,},
+	{ .name = "SLOT_5",	.size = 7798784,	.offset =
+							   MTDPART_OFS_NXTBLK},
+	{ .name = "SLOT_6",	.size = 7798784,	.offset =
+							   MTDPART_OFS_NXTBLK},
+	{ .name = "SLOT_7",	.size = 7798784,	.offset =
+							   MTDPART_OFS_NXTBLK},
+	{ .name = "CS1_EXTRA",	.size = MTDPART_SIZ_FULL,	.offset =
+							   MTDPART_OFS_NXTBLK},
 };
 
 static struct flash_platform_data p2kr0_spi0_pdata = {
@@ -50,6 +58,7 @@ static struct flash_platform_data p2kr0_spi0_pdata = {
 	.nr_parts =	ARRAY_SIZE(p2kr0_spi0_parts),
 	.parts =	p2kr0_spi0_parts,
 };
+
 static struct flash_platform_data p2kr0_spi1_pdata = {
 	.name =		"SPI1",
 	.nr_parts =	ARRAY_SIZE(p2kr0_spi1_parts),
@@ -165,7 +174,7 @@ kp_spi_read_reg(struct kp_spi_controller_state *cs, int idx)
 	u64 val;
 
 	addr += idx;
-	if ((idx == KP_SPI_REG_CONFIG) && (cs->conf_cache >= 0))
+	if (idx == KP_SPI_REG_CONFIG && cs->conf_cache >= 0)
 		return cs->conf_cache;
 
 	val = readq(addr);
@@ -227,8 +236,7 @@ kp_spi_txrx_pio(struct spi_device *spidev, struct spi_transfer *transfer)
 			kp_spi_write_reg(cs, KP_SPI_REG_TXDATA, val);
 			processed++;
 		}
-	}
-	else if (rx) {
+	} else if (rx) {
 		for (i = 0 ; i < c ; i++) {
 			char test = 0;
 
@@ -315,19 +323,18 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
 		if (transfer->speed_hz > KP_SPI_CLK ||
 		    (len && !(rx_buf || tx_buf))) {
 			dev_dbg(kpspi->dev, "  transfer: %d Hz, %d %s%s, %d bpw\n",
-					transfer->speed_hz,
-					len,
-					tx_buf ? "tx" : "",
-					rx_buf ? "rx" : "",
-					transfer->bits_per_word);
+				transfer->speed_hz,
+				len,
+				tx_buf ? "tx" : "",
+				rx_buf ? "rx" : "",
+				transfer->bits_per_word);
 			dev_dbg(kpspi->dev, "  transfer -EINVAL\n");
 			return -EINVAL;
 		}
 		if (transfer->speed_hz &&
 		    transfer->speed_hz < (KP_SPI_CLK >> 15)) {
 			dev_dbg(kpspi->dev, "speed_hz %d below minimum %d Hz\n",
-					transfer->speed_hz,
-					KP_SPI_CLK >> 15);
+				transfer->speed_hz, KP_SPI_CLK >> 15);
 			dev_dbg(kpspi->dev, "  speed_hz -EINVAL\n");
 			return -EINVAL;
 		}
@@ -478,7 +485,7 @@ kp_spi_probe(struct platform_device *pldev)
 	/* register the slave boards */
 #define NEW_SPI_DEVICE_FROM_BOARD_INFO_TABLE(table) \
 	for (i = 0 ; i < ARRAY_SIZE(table) ; i++) { \
-		spi_new_device(master, &(table[i])); \
+		spi_new_device(master, &table[i]); \
 	}
 
 	switch ((drvdata->card_id & 0xFFFF0000) >> 16) {
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
