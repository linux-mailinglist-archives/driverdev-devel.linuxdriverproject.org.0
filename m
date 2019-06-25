Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E527E54DBD
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 13:35:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9987684452;
	Tue, 25 Jun 2019 11:35:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DnN6CRod4hjZ; Tue, 25 Jun 2019 11:35:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AEBF684409;
	Tue, 25 Jun 2019 11:35:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7DBB21BF97E
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:35:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 797A6879F5
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:35:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sD8LXI2H06A3 for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 11:35:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx-rz-1.rrze.uni-erlangen.de (mx-rz-1.rrze.uni-erlangen.de
 [131.188.11.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A705F879EF
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 11:35:00 +0000 (UTC)
Received: from mx-exchlnx-1.rrze.uni-erlangen.de
 (mx-exchlnx-1.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::37])
 by mx-rz-1.rrze.uni-erlangen.de (Postfix) with ESMTP id 45Y3m856Dnz8tqN;
 Tue, 25 Jun 2019 13:27:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2013;
 t=1561462040; bh=VQBXyRCiODRhz3i/IrsbpgZ+c5pWRNN6VXUE0acvz60=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From:To:CC:
 Subject;
 b=JN1NdBt4a9hZFnS2krns1oD6X4sVPyayOY2bFme24RswsabDwLRY0vfUaifpC1AeZ
 sq+nJ4I1hiIaL9LLmCS6HrUfopD4sKtgpfdtqiV6NXJuhesxCq1uu2DnSJwg9IPeZ8
 yiK08+iy/qdfyYxYSlf5YO2pBLY2oMzwpkmpfvN+jtQLfQEIJFrxH2T+b7z45ZsjxU
 rtDaP4MjWQhaUszg9jdYK86Ey+ArE6tpUPMnb7iUuaAnB+aW3XKZj0X/mcysVAKkmQ
 kqzuzqG1gH/6s4F7O4LMs74YL3CWeJdC5BptBVDDgZjGOrYBNanTmSEqanJFgC3pF6
 DCY77rqbKN4Zw==
X-Virus-Scanned: amavisd-new at boeck2.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
Received: from hbt1.exch.fau.de (hbt1.exch.fau.de [10.15.8.13])
 by mx-exchlnx-1.rrze.uni-erlangen.de (Postfix) with ESMTP id 45Y3m62YMZz8tSk; 
 Tue, 25 Jun 2019 13:27:18 +0200 (CEST)
Received: from MBX3.exch.uni-erlangen.de (10.15.8.45) by hbt1.exch.fau.de
 (10.15.8.13) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 25 Jun 2019
 13:26:42 +0200
Received: from TroubleWorld.pool.uni-erlangen.de (10.21.22.37) by
 MBX3.exch.uni-erlangen.de (10.15.8.45) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1591.10; Tue, 25 Jun 2019 13:26:40 +0200
From: Fabian Krueger <fabian.krueger@fau.de>
To: 
Subject: [PATCH 1/8] staging: kpc2000: add line breaks
Date: Tue, 25 Jun 2019 13:27:12 +0200
Message-ID: <20190625112725.10154-2-fabian.krueger@fau.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190625112725.10154-1-fabian.krueger@fau.de>
References: <20190625112725.10154-1-fabian.krueger@fau.de>
MIME-Version: 1.0
X-Originating-IP: [10.21.22.37]
X-ClientProxiedBy: MBX3.exch.uni-erlangen.de (10.15.8.45) To
 MBX3.exch.uni-erlangen.de (10.15.8.45)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@i4.cs.fau.de,
 fabian.krueger@fau.de, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Scheiderer <michael.scheiderer@fau.de>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

To fix some checkpatch-warnings some lines of this module had to be
shortened so that they do not exceed 80 characters per line.
This refactoring makes the code more readable.

Signed-off-by: Fabian Krueger <fabian.krueger@fau.de>
Signed-off-by: Michael Scheiderer <michael.scheiderer@fau.de>
Cc: <linux-kernel@i4.cs.fau.de>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 77 ++++++++++++++++++++-------
 1 file changed, 58 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index c3e5c1848f53..7ed0fb6b4abb 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -30,18 +30,46 @@
 #include "kpc.h"
 
 static struct mtd_partition p2kr0_spi0_parts[] = {
-	{ .name = "SLOT_0",	.size = 7798784,		.offset = 0,                },
-	{ .name = "SLOT_1",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
-	{ .name = "SLOT_2",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
-	{ .name = "SLOT_3",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
-	{ .name = "CS0_EXTRA",	.size = MTDPART_SIZ_FULL,	.offset = MTDPART_OFS_NXTBLK},
+	{.name = "SLOT_0",
+	 .size = 7798784,
+	 .offset = 0,},
+
+	{.name = "SLOT_1",
+	 .size = 7798784,
+	 .offset = MTDPART_OFS_NXTBLK},
+
+	{.name = "SLOT_2",
+	 .size = 7798784,
+	 .offset = MTDPART_OFS_NXTBLK},
+
+	{.name = "SLOT_3",
+	 .size = 7798784,
+	 .offset = MTDPART_OFS_NXTBLK},
+
+	{.name = "CS0_EXTRA",
+	 .size = MTDPART_SIZ_FULL,
+	 .offset = MTDPART_OFS_NXTBLK},
 };
 static struct mtd_partition p2kr0_spi1_parts[] = {
-	{ .name = "SLOT_4",	.size = 7798784,		.offset = 0,                },
-	{ .name = "SLOT_5",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
-	{ .name = "SLOT_6",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
-	{ .name = "SLOT_7",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
-	{ .name = "CS1_EXTRA",	.size = MTDPART_SIZ_FULL,	.offset = MTDPART_OFS_NXTBLK},
+	{.name = "SLOT_4",
+	 .size = 7798784,
+	 .offset = 0,},
+
+	{.name = "SLOT_5",
+	 .size = 7798784,
+	 .offset = MTDPART_OFS_NXTBLK},
+
+	{.name = "SLOT_6",
+	 .size = 7798784,
+	 .offset = MTDPART_OFS_NXTBLK},
+
+	{.name = "SLOT_7",
+	 .size = 7798784,
+	 .offset = MTDPART_OFS_NXTBLK},
+
+	{.name = "CS1_EXTRA",
+	 .size = MTDPART_SIZ_FULL,
+	 .offset = MTDPART_OFS_NXTBLK},
 };
 
 static struct flash_platform_data p2kr0_spi0_pdata = {
@@ -182,7 +210,8 @@ kp_spi_write_reg(struct kp_spi_controller_state *cs, int idx, u64 val)
 }
 
 	static int
-kp_spi_wait_for_reg_bit(struct kp_spi_controller_state *cs, int idx, unsigned long bit)
+kp_spi_wait_for_reg_bit(struct kp_spi_controller_state *cs, int idx,
+			unsigned long bit)
 {
 	unsigned long timeout;
 	timeout = jiffies + msecs_to_jiffies(1000);
@@ -215,7 +244,9 @@ kp_spi_txrx_pio(struct spi_device *spidev, struct spi_transfer *transfer)
 		for (i = 0 ; i < c ; i++) {
 			char val = *tx++;
 
-			if (kp_spi_wait_for_reg_bit(cs, KP_SPI_REG_STATUS, KP_SPI_REG_STATUS_TXS) < 0) {
+			if (kp_spi_wait_for_reg_bit(cs, KP_SPI_REG_STATUS,
+						    KP_SPI_REG_STATUS_TXS)
+			    < 0) {
 				goto out;
 			}
 
@@ -229,7 +260,9 @@ kp_spi_txrx_pio(struct spi_device *spidev, struct spi_transfer *transfer)
 
 			kp_spi_write_reg(cs, KP_SPI_REG_TXDATA, 0x00);
 
-			if (kp_spi_wait_for_reg_bit(cs, KP_SPI_REG_STATUS, KP_SPI_REG_STATUS_RXS) < 0) {
+			if (kp_spi_wait_for_reg_bit(cs, KP_SPI_REG_STATUS,
+						    KP_SPI_REG_STATUS_RXS)
+			    < 0) {
 				goto out;
 			}
 
@@ -239,8 +272,10 @@ kp_spi_txrx_pio(struct spi_device *spidev, struct spi_transfer *transfer)
 		}
 	}
 
-	if (kp_spi_wait_for_reg_bit(cs, KP_SPI_REG_STATUS, KP_SPI_REG_STATUS_EOT) < 0) {
-		//TODO: Figure out how to abort transaction??  This has never happened in practice though...
+	if (kp_spi_wait_for_reg_bit(cs, KP_SPI_REG_STATUS,
+				    KP_SPI_REG_STATUS_EOT) < 0) {
+		//TODO: Figure out how to abort transaction??
+		//Ths has never happened in practice though...
 	}
 
 out:
@@ -307,7 +342,8 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
 		void       *rx_buf = transfer->rx_buf;
 		unsigned    len = transfer->len;
 
-		if (transfer->speed_hz > KP_SPI_CLK || (len && !(rx_buf || tx_buf))) {
+		if (transfer->speed_hz > KP_SPI_CLK ||
+		    (len && !(rx_buf || tx_buf))) {
 			dev_dbg(kpspi->dev, "  transfer: %d Hz, %d %s%s, %d bpw\n",
 					transfer->speed_hz,
 					len,
@@ -317,7 +353,8 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
 			dev_dbg(kpspi->dev, "  transfer -EINVAL\n");
 			return -EINVAL;
 		}
-		if (transfer->speed_hz && (transfer->speed_hz < (KP_SPI_CLK >> 15))) {
+		if (transfer->speed_hz && (transfer->speed_hz <
+					   (KP_SPI_CLK >> 15))) {
 			dev_dbg(kpspi->dev, "speed_hz %d below minimum %d Hz\n",
 					transfer->speed_hz,
 					KP_SPI_CLK >> 15);
@@ -332,14 +369,16 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
 	kp_spi_write_reg(cs, KP_SPI_REG_CONFIG, sc.reg);
 
 	/* work */
-	if (kp_spi_wait_for_reg_bit(cs, KP_SPI_REG_STATUS, KP_SPI_REG_STATUS_EOT) < 0) {
+	if (kp_spi_wait_for_reg_bit(cs, KP_SPI_REG_STATUS,
+				    KP_SPI_REG_STATUS_EOT) < 0) {
 		dev_info(kpspi->dev, "EOT timed out\n");
 		goto out;
 	}
 
 	/* do the transfers for this message */
 	list_for_each_entry(transfer, &m->transfers, transfer_list) {
-		if (transfer->tx_buf == NULL && transfer->rx_buf == NULL && transfer->len) {
+		if (!transfer->tx_buf && !transfer->rx_buf &&
+		    transfer->len) {
 			status = -EINVAL;
 			goto error;
 		}
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
