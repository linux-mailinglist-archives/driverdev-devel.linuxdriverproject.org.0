Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B29F56373
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 09:36:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1C81C21541;
	Wed, 26 Jun 2019 07:36:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DWxIN2xiSzXx; Wed, 26 Jun 2019 07:36:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 84E412153B;
	Wed, 26 Jun 2019 07:36:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4648C1BF33A
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 07:36:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 437C3844D4
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 07:36:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wNTLqaKeitSV for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 07:36:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx-rz-3.rrze.uni-erlangen.de (mx-rz-3.rrze.uni-erlangen.de
 [131.188.11.22])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 041B983498
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 07:36:06 +0000 (UTC)
Received: from mx-exchlnx-3.rrze.uni-erlangen.de
 (mx-exchlnx-3.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::39])
 by mx-rz-3.rrze.uni-erlangen.de (Postfix) with ESMTP id 45YZZr4v4Wz1yxX;
 Wed, 26 Jun 2019 09:36:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2013;
 t=1561534564; bh=hPitCSw1O9f9+6vfkcT5ctD6TWJ4ycTjy6W4y7qV+o4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From:To:CC:
 Subject;
 b=gzArvgZgoz6KyBm8m6Q45W7inMTxavjQN9hHdLysHuuQeKsYfJZVz3aIstOnHNTPK
 H0r9GD48D5L7egpefwwLhFf2vJsHy12FDXHgJeRzh87pIBGpoJILc86ZfXzhH4bPKm
 lWHB/NnNIAJsI2gdvHnnKp3+WYy8KE3UMQcU7BUpP/T4LvOI58YDLMNS6nYrPhw4+5
 9MjmeJlvV8nKEcesBLsjBW7s7PRDCSo4c3XW1VQastMVm3asH5joPlh2ydesNUUtg1
 6m7zFVHjVXql25yVZiHboZXQTSjjhuYKZPi+acGZ/k7UAoYQzZjL44qhlJXbkBo12l
 RAe9JXHM5oKPg==
X-Virus-Scanned: amavisd-new at boeck2.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
Received: from hbt1.exch.fau.de (hbt1.exch.fau.de [10.15.8.13])
 by mx-exchlnx-3.rrze.uni-erlangen.de (Postfix) with ESMTP id 45YZZp2tJ3z1y2j; 
 Wed, 26 Jun 2019 09:36:02 +0200 (CEST)
Received: from MBX3.exch.uni-erlangen.de (10.15.8.45) by hbt1.exch.fau.de
 (10.15.8.13) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 26 Jun 2019
 09:35:48 +0200
Received: from TroubleWorld.fritz.box (95.90.221.207) by
 MBX3.exch.uni-erlangen.de (10.15.8.45) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1591.10; Wed, 26 Jun 2019 09:35:48 +0200
From: Fabian Krueger <fabian.krueger@fau.de>
To: 
Subject: [PATCH 4/8] staging: kpc2000: remove unnecessary brackets
Date: Wed, 26 Jun 2019 09:35:22 +0200
Message-ID: <20190626073531.8946-5-fabian.krueger@fau.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190626073531.8946-1-fabian.krueger@fau.de>
References: <20190625115251.GA28859@kadam>
 <20190626073531.8946-1-fabian.krueger@fau.de>
MIME-Version: 1.0
X-Originating-IP: [95.90.221.207]
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

Removed brackets on around one-lined if-cases.
This refactoring makes the code more readable.

Signed-off-by: Fabian Krueger <fabian.krueger@fau.de>
Signed-off-by: Michael Scheiderer <michael.scheiderer@fau.de>
Cc: <linux-kernel@i4.cs.fau.de>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 30 +++++++++------------------
 1 file changed, 10 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 42d32de2230e..b4dba0e42c72 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -165,9 +165,8 @@ kp_spi_read_reg(struct kp_spi_controller_state *cs, int idx)
 	u64 val;
 
 	addr += idx;
-	if ((idx == KP_SPI_REG_CONFIG) && (cs->conf_cache >= 0)){
+	if ((idx == KP_SPI_REG_CONFIG) && (cs->conf_cache >= 0))
 		return cs->conf_cache;
-	}
 	val = readq(addr);
 	return val;
 }
@@ -192,11 +191,10 @@ kp_spi_wait_for_reg_bit(struct kp_spi_controller_state *cs, int idx,
 	timeout = jiffies + msecs_to_jiffies(1000);
 	while (!(kp_spi_read_reg(cs, idx) & bit)) {
 		if (time_after(jiffies, timeout)) {
-			if (!(kp_spi_read_reg(cs, idx) & bit)) {
+			if (!(kp_spi_read_reg(cs, idx) & bit))
 				return -ETIMEDOUT;
-			} else {
+			else
 				return 0;
-			}
 		}
 		cpu_relax();
 	}
@@ -305,9 +303,8 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
 	cs = spidev->controller_state;
 
 	/* reject invalid messages and transfers */
-	if (list_empty(&m->transfers)) {
+	if (list_empty(&m->transfers))
 		return -EINVAL;
-	}
 
 	/* validate input */
 	list_for_each_entry(transfer, &m->transfers, transfer_list) {
@@ -365,17 +362,14 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
 			sc.reg = kp_spi_read_reg(cs, KP_SPI_REG_CONFIG);
 
 			/* ...direction */
-			if (transfer->tx_buf) {
+			if (transfer->tx_buf)
 				sc.bitfield.trm = KP_SPI_REG_CONFIG_TRM_TX;
-			}
-			else if (transfer->rx_buf) {
+			else if (transfer->rx_buf)
 				sc.bitfield.trm = KP_SPI_REG_CONFIG_TRM_RX;
-			}
 
 			/* ...word length */
-			if (transfer->bits_per_word) {
+			if (transfer->bits_per_word)
 				word_len = transfer->bits_per_word;
-			}
 			sc.bitfield.wl = word_len-1;
 
 			/* ...chip select */
@@ -394,9 +388,8 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
 			}
 		}
 
-		if (transfer->delay_usecs) {
+		if (transfer->delay_usecs)
 			udelay(transfer->delay_usecs);
-		}
 	}
 
 	/* de-assert chip select to end the sequence */
@@ -419,9 +412,7 @@ kp_spi_cleanup(struct spi_device *spidev)
 {
 	struct kp_spi_controller_state *cs = spidev->controller_state;
 
-	if (cs) {
-		kfree(cs);
-	}
+	kfree(cs);
 }
 
 /******************
@@ -463,9 +454,8 @@ kp_spi_probe(struct platform_device *pldev)
 	kpspi->dev = &pldev->dev;
 
 	master->num_chipselect = 4;
-	if (pldev->id != -1) {
+	if (pldev->id != -1)
 		master->bus_num = pldev->id;
-	}
 
 	r = platform_get_resource(pldev, IORESOURCE_MEM, 0);
 	if (r == NULL) {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
