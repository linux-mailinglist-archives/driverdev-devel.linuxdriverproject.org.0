Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B52254DD3
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 13:36:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 80B5D87A2F;
	Tue, 25 Jun 2019 11:36:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G+gAhmI-iYSN; Tue, 25 Jun 2019 11:36:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1BA148788B;
	Tue, 25 Jun 2019 11:36:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A6E9D1BF20B
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:36:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A49C685EAE
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:36:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KUvhqUJ5Sm4Y for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 11:36:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx-rz-3.rrze.uni-erlangen.de (mx-rz-3.rrze.uni-erlangen.de
 [131.188.11.22])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0F1C085C67
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 11:36:48 +0000 (UTC)
Received: from mx-exchlnx-3.rrze.uni-erlangen.de
 (mx-exchlnx-3.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::39])
 by mx-rz-3.rrze.uni-erlangen.de (Postfix) with ESMTP id 45Y3nS2cKzz209F;
 Tue, 25 Jun 2019 13:28:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2013;
 t=1561462108; bh=ITXhcPzWjgJuGHxZgbdlGIeNhh56N+8yXgOW99Y2pMY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From:To:CC:
 Subject;
 b=Z5Ei0aMX+wI3tcuCRpA7e/sUVYITJh2FupuFXFbKnr8vr53otE5ErEuyU/yukva91
 EZUf6bYrxSudsfAd2dWpEoJrd+rF0bi6S6HWANVlrYUEbEjbQO++jz+MRKyRMAsYGA
 V1jtwWaBAkOT0gz+FwD4yS05XFNULzpLZtHEOrkevjnbcuJU4kke/aY3NCeuUcDOUb
 WXZbX2WVD77RFvwNI6sDlrpBdugiyTCY5Kv6QR/eb/jDS6SsoRtxFG0eScjy0H2016
 mKJARtpPgLQ7Zc5RbX+c3To1wOo9Sd/FQKnqlu2vupj7XTx+AEE8PtW7nBFB6CbXb8
 mp9QCBwhB3Fpg==
X-Virus-Scanned: amavisd-new at boeck4.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
Received: from hbt1.exch.fau.de (hbt1.exch.fau.de [10.15.8.13])
 by mx-exchlnx-3.rrze.uni-erlangen.de (Postfix) with ESMTP id 45Y3nQ1DS5z208r; 
 Tue, 25 Jun 2019 13:28:26 +0200 (CEST)
Received: from MBX3.exch.uni-erlangen.de (10.15.8.45) by hbt1.exch.fau.de
 (10.15.8.13) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 25 Jun 2019
 13:27:40 +0200
Received: from TroubleWorld.pool.uni-erlangen.de (10.21.22.37) by
 MBX3.exch.uni-erlangen.de (10.15.8.45) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1591.10; Tue, 25 Jun 2019 13:27:39 +0200
From: Fabian Krueger <fabian.krueger@fau.de>
To: 
Subject: [PATCH 4/8] staging: kpc2000: add spaces
Date: Tue, 25 Jun 2019 13:27:15 +0200
Message-ID: <20190625112725.10154-5-fabian.krueger@fau.de>
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
Cc: fabian.krueger@fau.de, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Michael Scheiderer <michael.scheiderer@fau.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Added spaces on the left side of parenthesis and on both sides of binary
operators.
This refactoring makes the code more readable.

Signed-off-by: Fabian Krueger <fabian.krueger@fau.de>
Signed-off-by: Michael Scheiderer <michael.scheiderer@fau.de>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 253a9c150d33..8f56886f4673 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -192,9 +192,8 @@ kp_spi_read_reg(struct kp_spi_controller_state *cs, int idx)
 	u64 val;
 
 	addr += idx;
-	if ((idx == KP_SPI_REG_CONFIG) && (cs->conf_cache >= 0)){
+	if ((idx == KP_SPI_REG_CONFIG) && (cs->conf_cache >= 0))
 		return cs->conf_cache;
-	}
 	val = readq(addr);
 	return val;
 }
@@ -255,10 +254,9 @@ kp_spi_txrx_pio(struct spi_device *spidev, struct spi_transfer *transfer)
 			kp_spi_write_reg(cs, KP_SPI_REG_TXDATA, val);
 			processed++;
 		}
-	}
-	else if(rx) {
+	} else if (rx) {
 		for (i = 0 ; i < c ; i++) {
-			char test=0;
+			char test = 0;
 
 			kp_spi_write_reg(cs, KP_SPI_REG_TXDATA, 0x00);
 
@@ -298,9 +296,8 @@ kp_spi_setup(struct spi_device *spidev)
 	cs = spidev->controller_state;
 	if (!cs) {
 		cs = kzalloc(sizeof(*cs), GFP_KERNEL);
-		if(!cs) {
+		if (!cs)
 			return -ENOMEM;
-		}
 		cs->base = kpspi->base;
 		cs->conf_cache = -1;
 		spidev->controller_state = cs;
@@ -467,7 +464,7 @@ kp_spi_probe(struct platform_device *pldev)
 	int i;
 
 	drvdata = pldev->dev.platform_data;
-	if (!drvdata){
+	if (!drvdata) {
 		dev_err(&pldev->dev, "kp_spi_probe: platform_data is NULL!\n");
 		return -ENODEV;
 	}
@@ -518,7 +515,7 @@ kp_spi_probe(struct platform_device *pldev)
 		spi_new_device(master, &(table[i])); \
 	}
 
-	switch ((drvdata->card_id & 0xFFFF0000) >> 16){
+	switch ((drvdata->card_id & 0xFFFF0000) >> 16) {
 	case PCI_DEVICE_ID_DAKTRONICS_KADOKA_P2KR0:
 		NEW_SPI_DEVICE_FROM_BOARD_INFO_TABLE(p2kr0_board_info);
 		break;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
