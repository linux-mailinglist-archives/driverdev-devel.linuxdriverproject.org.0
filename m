Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E62B6273C8
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 03:06:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CEBFE86469;
	Thu, 23 May 2019 01:06:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aTBLOwbU0J_p; Thu, 23 May 2019 01:06:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 52AC586447;
	Thu, 23 May 2019 01:06:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 322A51BF989
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 01:06:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2DE688723D
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 01:06:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7bxzRtTOLXOF for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 01:06:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from sonic309-22.consmr.mail.gq1.yahoo.com
 (sonic309-22.consmr.mail.gq1.yahoo.com [98.137.65.148])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DB23C871F0
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 01:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1558573584; bh=9+KqqeUAq/8becDvqqe1+SNlD1zyzDTHjGbkJv+G6e0=;
 h=Date:From:To:Cc:Subject:From:Subject;
 b=r7MSpkc4prqKkFUHZ31eQdCNAtfCgD77b3m8XzF1Q60zMMPMnAX5Sab3FYlCFnEHonQGCw9Vb+HoDTNz8eUCTYUOB4locVO+AHT6u4av5t/2wzpRkyhrRJReNcuiJbtEVHTHccRNe7IfPOue7mxwWWH0rbx3mV+M9t0WZjS+5g3SRm+vZjrS3QpZ8kkvyZOT3vEXEwxMjNDa2yfhxgziY4EZbRNzZ3yHuRVgClvIFM+32GaGg9J8tD8iYOG9QD1dOCQ1TmA2XrP2oTmTG0kS3ksf2z28trRm45lr9uqBYveboNBfmg49L7fpxvGX+HZsioxOFp3i28Dxn+oPkdNmEg==
X-YMail-OSG: daRb8uAVM1nepkR6kVpwUO_VRWE8xdnemGp58DQByYKWCG6wdkNSkvZTSGUI20i
 7xxPOfgLJOLyPir0hs4dsaC8WkajKVYC3R.vA_R5IpMsQAmeG5O6dfjHvRgtMQJoXH4ksjIcTn9S
 jhk0etR4fu30Z6ROHYfNY58k5RVAvJb3CA5Uy.vyV2IGs4qKaY2MDGv_fWRF5pKVn2.5jSBDkdwB
 L4ystAphpxaAX1cY9cNIYllUn0QwHr.5s29aAcej2wvLV6YGOOgQZiOLObzaeQE_W3z9RJuc1U_O
 F.6g7V2l.d6Zd_6OjPSxfvA98gFkNLSgDtIMjIO1eKhyST3V3nxSn8At2R4yRnr8kV9MdTEJPgUV
 dxWwdzOJhZFujdqqvVSC_EKSFy3TWHgyhb0smc_y.9II18GBQxUX9GqYirTl9_ZnMVDKKbQxkD7_
 YfX1oVE6Aj6GF5h4rdE27uCthMVjdjvc54PYvJiOEt6z3xcAAhvQEV1CZzdt37e0N_tPXsyNec.9
 5zzCm_TTrmOwSJbmkHzhlEhu8SMqxV6hlT7_kwjDURN9ziyeM6vuLiTGbQbu3hxxgxHfrFsHYmPy
 4hIGN5D2mdjelLmvKzVp4sNkUiSNaVhnfxB5MLv2s_ghF03KDbXKkUFOEyAFmrUo5.TcqFmsACJO
 axo_NIuAszGt9R3OUgJYP2O3ji1fX6NDHYicnHyT.kQboz_R2_a2oMep1XXC__t4mhNAfXooyjIT
 cxEnrkhWp4VIu9afWTdQ.NH_HkyBzk8kv.UqbCCRTuJq21jif_7hUPD_hfW6paRoVHhs9cOUMLFK
 g7.uVlID78XxzQOm5Mq6Dnz7E26FeyzHuDJYYmiPLC3ddMI1okV9ylqoARMH1abLTOVYkoSAymP7
 8vcbCo8dFH8x32291O3eHzV32nnplT5JCv.iCddLkUieHvO7pHF78R8xjo7_034UeG3zLxfXQGNd
 xlRK5rsIdbnfIBYaRFv4I9iUhw0mXQQwRjB0gDyDuwjvCwl5gtHubgnWpePScKImbmDDVNRR02vN
 NQXSmPNR7KOtsdMiu2QRMfaiDqh8ob.frWcSETtintzygMaoKVUkQ2vqBV7TAqAryKDieeXzmrf2
 wvWLRFXUohent_WUQ54dzuFT9j5YLVyAiz5MHeBiUOLvHeV6LFzNjb7xecATwDV3zou5gA1r1ot0
 UhTrA9luL6ufBl30GOLF1xwgs.VnCzZdOLeI.QEVss2ivHkCgWisyiHIdyiy96SpmI2Nh5oJK_ud
 fR29d
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.gq1.yahoo.com with HTTP; Thu, 23 May 2019 01:06:24 +0000
Received: from c-98-210-58-162.hsd1.ca.comcast.net (EHLO t-1000)
 ([98.210.58.162])
 by smtp409.mail.gq1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID
 fa3adf6952d31b7a7526a1b40e559905; 
 Thu, 23 May 2019 01:06:24 +0000 (UTC)
Date: Wed, 22 May 2019 18:06:22 -0700
From: Shobhit Kukreti <shobhitkukreti@yahoo.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: pi433: cleanup to adhere with linux coding style
Message-ID: <20190523010619.GA23217@t-1000>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: shobhitkukreti@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The linux coding style emphasizes on a limit of 80 characters
per line. Cleaned up several over 80 character warnings in following files:

pi433_if.c
pi433_if.h
rf69.c

Signed-off-by: Shobhit Kukreti <shobhitkukreti@yahoo.com>
---
 drivers/staging/pi433/pi433_if.c | 15 ++++---
 drivers/staging/pi433/pi433_if.h | 25 +++++++----
 drivers/staging/pi433/rf69.c     | 89 ++++++++++++++++++++++++----------------
 3 files changed, 78 insertions(+), 51 deletions(-)

diff --git a/drivers/staging/pi433/pi433_if.c b/drivers/staging/pi433/pi433_if.c
index c889f0b..07715c9 100644
--- a/drivers/staging/pi433/pi433_if.c
+++ b/drivers/staging/pi433/pi433_if.c
@@ -439,8 +439,7 @@ pi433_receive(void *data)
 		/* wait for RSSI level to become high */
 		dev_dbg(dev->dev, "rx: going to wait for high RSSI level");
 		retval = wait_event_interruptible(dev->rx_wait_queue,
-						  rf69_get_flag(dev->spi,
-								rssi_exceeded_threshold));
+			rf69_get_flag(dev->spi,	rssi_exceeded_threshold));
 		if (retval) /* wait was interrupted */
 			goto abort;
 		dev->interrupt_rx_allowed = false;
@@ -475,7 +474,7 @@ pi433_receive(void *data)
 	/* length byte enabled? */
 	if (dev->rx_cfg.enable_length_byte == OPTION_ON) {
 		retval = wait_event_interruptible(dev->fifo_wait_queue,
-						  dev->free_in_fifo < FIFO_SIZE);
+					dev->free_in_fifo < FIFO_SIZE);
 		if (retval) /* wait was interrupted */
 			goto abort;
 
@@ -496,7 +495,7 @@ pi433_receive(void *data)
 		bytes_total--;
 
 		retval = wait_event_interruptible(dev->fifo_wait_queue,
-						  dev->free_in_fifo < FIFO_SIZE);
+					dev->free_in_fifo < FIFO_SIZE);
 		if (retval) /* wait was interrupted */
 			goto abort;
 
@@ -509,7 +508,7 @@ pi433_receive(void *data)
 	while (dev->rx_position < bytes_total) {
 		if (!rf69_get_flag(dev->spi, payload_ready)) {
 			retval = wait_event_interruptible(dev->fifo_wait_queue,
-							  dev->free_in_fifo < FIFO_SIZE);
+						dev->free_in_fifo < FIFO_SIZE);
 			if (retval) /* wait was interrupted */
 				goto abort;
 		}
@@ -690,8 +689,8 @@ pi433_tx_thread(void *data)
 			return retval;
 		device->irq_state[DIO0] = DIO_PACKET_SENT;
 		irq_set_irq_type(device->irq_num[DIO0], IRQ_TYPE_EDGE_RISING);
-		enable_irq(device->irq_num[DIO0]); /* was disabled by rx active check */
-
+		/* was disabled by rx active check */
+		enable_irq(device->irq_num[DIO0]);
 		/* enable transmission */
 		retval = rf69_set_mode(spi, transmit);
 		if (retval < 0)
@@ -722,7 +721,7 @@ pi433_tx_thread(void *data)
 			}
 
 			retval = wait_event_interruptible(device->fifo_wait_queue,
-							  device->free_in_fifo > 0);
+							device->free_in_fifo > 0);
 			if (retval) {
 				dev_dbg(device->dev, "ABORT\n");
 				goto abort;
diff --git a/drivers/staging/pi433/pi433_if.h b/drivers/staging/pi433/pi433_if.h
index 9feb95c..05441ae 100644
--- a/drivers/staging/pi433/pi433_if.h
+++ b/drivers/staging/pi433/pi433_if.h
@@ -117,10 +117,15 @@ struct pi433_rx_cfg {
 
 	/* packet format */
 	enum option_on_off	enable_sync;
-	enum option_on_off	enable_length_byte;	  /* should be used in combination with sync, only */
-	enum address_filtering	enable_address_filtering; /* operational with sync, only */
-	enum option_on_off	enable_crc;		  /* only operational, if sync on and fixed length or length byte is used */
-
+	/* should be used in combination with sync, only */
+	enum option_on_off	enable_length_byte;
+	/* operational with sync, only */
+	enum address_filtering	enable_address_filtering;
+	/*
+	 * only operational, if sync on and fixed length or
+	 * length byte is used
+	 */
+	enum option_on_off	enable_crc;
 	__u8			sync_length;
 	__u8			fixed_message_length;
 	__u32			bytes_to_drop;
@@ -132,10 +137,14 @@ struct pi433_rx_cfg {
 
 #define PI433_IOC_MAGIC			'r'
 
-#define PI433_IOC_RD_TX_CFG	_IOR(PI433_IOC_MAGIC, PI433_TX_CFG_IOCTL_NR, char[sizeof(struct pi433_tx_cfg)])
-#define PI433_IOC_WR_TX_CFG	_IOW(PI433_IOC_MAGIC, PI433_TX_CFG_IOCTL_NR, char[sizeof(struct pi433_tx_cfg)])
+#define PI433_IOC_RD_TX_CFG	_IOR(PI433_IOC_MAGIC, PI433_TX_CFG_IOCTL_NR,\
+					char[sizeof(struct pi433_tx_cfg)])
+#define PI433_IOC_WR_TX_CFG	_IOW(PI433_IOC_MAGIC, PI433_TX_CFG_IOCTL_NR,\
+					char[sizeof(struct pi433_tx_cfg)])
 
-#define PI433_IOC_RD_RX_CFG	_IOR(PI433_IOC_MAGIC, PI433_RX_CFG_IOCTL_NR, char[sizeof(struct pi433_rx_cfg)])
-#define PI433_IOC_WR_RX_CFG	_IOW(PI433_IOC_MAGIC, PI433_RX_CFG_IOCTL_NR, char[sizeof(struct pi433_rx_cfg)])
+#define PI433_IOC_RD_RX_CFG	_IOR(PI433_IOC_MAGIC, PI433_RX_CFG_IOCTL_NR,\
+					char[sizeof(struct pi433_rx_cfg)])
+#define PI433_IOC_WR_RX_CFG	_IOW(PI433_IOC_MAGIC, PI433_RX_CFG_IOCTL_NR,\
+					char[sizeof(struct pi433_rx_cfg)])
 
 #endif /* PI433_H */
diff --git a/drivers/staging/pi433/rf69.c b/drivers/staging/pi433/rf69.c
index 7d86bb8..5670738 100644
--- a/drivers/staging/pi433/rf69.c
+++ b/drivers/staging/pi433/rf69.c
@@ -149,7 +149,7 @@ int rf69_set_modulation(struct spi_device *spi, enum modulation modulation)
 
 	return rf69_read_mod_write(spi, REG_DATAMODUL,
 				   MASK_DATAMODUL_MODULATION_TYPE,
-				   modulation_map[modulation]);
+					   modulation_map[modulation]);
 }
 
 static enum modulation rf69_get_modulation(struct spi_device *spi)
@@ -176,20 +176,20 @@ int rf69_set_modulation_shaping(struct spi_device *spi,
 		switch (mod_shaping) {
 		case SHAPING_OFF:
 			return rf69_read_mod_write(spi, REG_DATAMODUL,
-						   MASK_DATAMODUL_MODULATION_SHAPE,
-						   DATAMODUL_MODULATION_SHAPE_NONE);
+				MASK_DATAMODUL_MODULATION_SHAPE,
+					DATAMODUL_MODULATION_SHAPE_NONE);
 		case SHAPING_1_0:
 			return rf69_read_mod_write(spi, REG_DATAMODUL,
-						   MASK_DATAMODUL_MODULATION_SHAPE,
-						   DATAMODUL_MODULATION_SHAPE_1_0);
+				MASK_DATAMODUL_MODULATION_SHAPE,
+					DATAMODUL_MODULATION_SHAPE_1_0);
 		case SHAPING_0_5:
 			return rf69_read_mod_write(spi, REG_DATAMODUL,
-						   MASK_DATAMODUL_MODULATION_SHAPE,
-						   DATAMODUL_MODULATION_SHAPE_0_5);
+				MASK_DATAMODUL_MODULATION_SHAPE,
+					DATAMODUL_MODULATION_SHAPE_0_5);
 		case SHAPING_0_3:
 			return rf69_read_mod_write(spi, REG_DATAMODUL,
-						   MASK_DATAMODUL_MODULATION_SHAPE,
-						   DATAMODUL_MODULATION_SHAPE_0_3);
+				MASK_DATAMODUL_MODULATION_SHAPE,
+					DATAMODUL_MODULATION_SHAPE_0_3);
 		default:
 			dev_dbg(&spi->dev, "set: illegal input param");
 			return -EINVAL;
@@ -198,16 +198,16 @@ int rf69_set_modulation_shaping(struct spi_device *spi,
 		switch (mod_shaping) {
 		case SHAPING_OFF:
 			return rf69_read_mod_write(spi, REG_DATAMODUL,
-						   MASK_DATAMODUL_MODULATION_SHAPE,
-						   DATAMODUL_MODULATION_SHAPE_NONE);
+				MASK_DATAMODUL_MODULATION_SHAPE,
+					DATAMODUL_MODULATION_SHAPE_NONE);
 		case SHAPING_BR:
 			return rf69_read_mod_write(spi, REG_DATAMODUL,
-						   MASK_DATAMODUL_MODULATION_SHAPE,
-						   DATAMODUL_MODULATION_SHAPE_BR);
+				MASK_DATAMODUL_MODULATION_SHAPE,
+					DATAMODUL_MODULATION_SHAPE_BR);
 		case SHAPING_2BR:
 			return rf69_read_mod_write(spi, REG_DATAMODUL,
-						   MASK_DATAMODUL_MODULATION_SHAPE,
-						   DATAMODUL_MODULATION_SHAPE_2BR);
+				MASK_DATAMODUL_MODULATION_SHAPE,
+					DATAMODUL_MODULATION_SHAPE_2BR);
 		default:
 			dev_dbg(&spi->dev, "set: illegal input param");
 			return -EINVAL;
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
+ *				MASK_IRQFLAGS2_FIFO_NOT_EMPTY);
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
+				MASK_PACKETCONFIG1_PACKET_FORMAT_VARIABLE);
 	default:
 		dev_dbg(&spi->dev, "set: illegal input param");
 		return -EINVAL;
@@ -739,7 +757,8 @@ int rf69_enable_crc(struct spi_device *spi)
 
 int rf69_disable_crc(struct spi_device *spi)
 {
-	return rf69_clear_bit(spi, REG_PACKETCONFIG1, MASK_PACKETCONFIG1_CRC_ON);
+	return rf69_clear_bit(spi, REG_PACKETCONFIG1,
+					MASK_PACKETCONFIG1_CRC_ON);
 }
 
 int rf69_set_address_filtering(struct spi_device *spi,
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
