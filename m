Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C501103EA
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Dec 2019 19:00:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7045F86D84;
	Tue,  3 Dec 2019 18:00:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g9djZQMt26Oy; Tue,  3 Dec 2019 18:00:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 027EF86D2C;
	Tue,  3 Dec 2019 18:00:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 249F31BF3A1
 for <devel@linuxdriverproject.org>; Tue,  3 Dec 2019 18:00:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 220A786416
 for <devel@linuxdriverproject.org>; Tue,  3 Dec 2019 18:00:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GfZdjH-LHhqY for <devel@linuxdriverproject.org>;
 Tue,  3 Dec 2019 18:00:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9DC1186373
 for <devel@driverdev.osuosl.org>; Tue,  3 Dec 2019 18:00:30 +0000 (UTC)
Received: from faui04e.informatik.uni-erlangen.de
 (faui04e.informatik.uni-erlangen.de [IPv6:2001:638:a000:4130:131:188:30:135])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id E48732415A1;
 Tue,  3 Dec 2019 19:00:28 +0100 (CET)
Received: by faui04e.informatik.uni-erlangen.de (Postfix, from userid 28475)
 id CA03F3C1272; Tue,  3 Dec 2019 19:00:28 +0100 (CET)
From: Sven Leykauf <sven_leykauf1@web.de>
To: devel@driverdev.osuosl.org
Subject: [PATCH 2/2] pi433: Fix indentation according to coding style
Date: Tue,  3 Dec 2019 18:54:49 +0100
Message-Id: <20191203175447.28765-2-sven_leykauf1@web.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191203175447.28765-1-sven_leykauf1@web.de>
References: <20191203175447.28765-1-sven_leykauf1@web.de>
MIME-Version: 1.0
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
Cc: Daniel Bauer <daniel.j.bauer@fau.de>, Sven Leykauf <sven_leykauf1@web.de>,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix indentation so that no line exceeds the 80 character border.

Put the return command one line under the default case, so it looks
better.

Co-developed-by: Daniel Bauer <daniel.j.bauer@fau.de>
Signed-off-by: Daniel Bauer <daniel.j.bauer@fau.de>
Signed-off-by: Sven Leykauf <sven_leykauf1@web.de>
---
 drivers/staging/pi433/rf69.c | 56 ++++++++++++++++++++++++------------
 1 file changed, 37 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/pi433/rf69.c b/drivers/staging/pi433/rf69.c
index 6b13f92028c7..6cdd46682aa9 100644
--- a/drivers/staging/pi433/rf69.c
+++ b/drivers/staging/pi433/rf69.c
@@ -596,42 +596,60 @@ bool rf69_get_flag(struct spi_device *spi, enum flag flag)
 {
 	switch (flag) {
 	case mode_switch_completed:
-		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_MODE_READY);
+		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
+				MASK_IRQFLAGS1_MODE_READY);
 	case ready_to_receive:
-		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_RX_READY);
+		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
+				MASK_IRQFLAGS1_RX_READY);
 	case ready_to_send:
-		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_TX_READY);
+		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
+				MASK_IRQFLAGS1_TX_READY);
 	case pll_locked:
-		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_PLL_LOCK);
+		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
+				MASK_IRQFLAGS1_PLL_LOCK);
 	case rssi_exceeded_threshold:
-		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_RSSI);
+		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
+				MASK_IRQFLAGS1_RSSI);
 	case timeout:
-		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_TIMEOUT);
+		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
+				MASK_IRQFLAGS1_TIMEOUT);
 	case automode:
-		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_AUTOMODE);
+		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
+				MASK_IRQFLAGS1_AUTOMODE);
 	case sync_address_match:
-		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_SYNC_ADDRESS_MATCH);
+		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
+				MASK_IRQFLAGS1_SYNC_ADDRESS_MATCH);
 	case fifo_full:
-		return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_FIFO_FULL);
+		return (rf69_read_reg(spi, REG_IRQFLAGS2) &
+				MASK_IRQFLAGS2_FIFO_FULL);
 /*
  *	case fifo_not_empty:
- *		return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_FIFO_NOT_EMPTY);
+ *		return (rf69_read_reg(spi, REG_IRQFLAGS2) &
+ *		MASK_IRQFLAGS2_FIFO_NOT_EMPTY);
  */
 	case fifo_empty:
-		return !(rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_FIFO_NOT_EMPTY);
+		return !(rf69_read_reg(spi, REG_IRQFLAGS2) &
+				MASK_IRQFLAGS2_FIFO_NOT_EMPTY);
 	case fifo_level_below_threshold:
-		return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_FIFO_LEVEL);
+		return (rf69_read_reg(spi, REG_IRQFLAGS2) &
+				MASK_IRQFLAGS2_FIFO_LEVEL);
 	case fifo_overrun:
-		return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_FIFO_OVERRUN);
+		return (rf69_read_reg(spi, REG_IRQFLAGS2) &
+				MASK_IRQFLAGS2_FIFO_OVERRUN);
 	case packet_sent:
-		return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_PACKET_SENT);
+		return (rf69_read_reg(spi, REG_IRQFLAGS2) &
+				MASK_IRQFLAGS2_PACKET_SENT);
 	case payload_ready:
-		return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_PAYLOAD_READY);
+		return (rf69_read_reg(spi, REG_IRQFLAGS2) &
+				MASK_IRQFLAGS2_PAYLOAD_READY);
 	case crc_ok:
-		return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_CRC_OK);
+		return (rf69_read_reg(spi, REG_IRQFLAGS2) &
+				MASK_IRQFLAGS2_CRC_OK);
 	case battery_low:
-		return (rf69_read_reg(spi, REG_IRQFLAGS2) & MASK_IRQFLAGS2_LOW_BAT);
-	default:			 return false;
+		return (rf69_read_reg(spi, REG_IRQFLAGS2) &
+				MASK_IRQFLAGS2_LOW_BAT);
+	default:
+		return false;
 	}
 }
 
@@ -725,7 +743,7 @@ int rf69_set_packet_format(struct spi_device *spi,
 				    MASK_PACKETCONFIG1_PACKET_FORMAT_VARIABLE);
 	case packet_length_fix:
 		return rf69_clear_bit(spi, REG_PACKETCONFIG1,
-				      MASK_PACKETCONFIG1_PACKET_FORMAT_VARIABLE);
+				    MASK_PACKETCONFIG1_PACKET_FORMAT_VARIABLE);
 	default:
 		dev_dbg(&spi->dev, "set: illegal input param");
 		return -EINVAL;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
