Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F0A56377
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 09:37:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC59A87B60;
	Wed, 26 Jun 2019 07:37:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A7w2R5u7GHAS; Wed, 26 Jun 2019 07:37:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5F1768798B;
	Wed, 26 Jun 2019 07:37:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2541E1BF33A
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 07:37:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1EB1086767
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 07:37:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pne3Uu0Oe-hx for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 07:36:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx-rz-1.rrze.uni-erlangen.de (mx-rz-1.rrze.uni-erlangen.de
 [131.188.11.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5B86386717
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 07:36:59 +0000 (UTC)
Received: from mx-exchlnx-1.rrze.uni-erlangen.de
 (mx-exchlnx-1.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::37])
 by mx-rz-1.rrze.uni-erlangen.de (Postfix) with ESMTP id 45YZbt0RPDz8tZk;
 Wed, 26 Jun 2019 09:36:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2013;
 t=1561534618; bh=JoSWxQI8TrFLVkUAqTNzLN0P0y/aMOvhLol7DAFb8RY=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From:To:CC:
 Subject;
 b=TjN/sMb1CN6B3ECARo0tOBC8ZpHXUGNI+o0NPlHAcz+xQRbHjXSMRsgrwe5gupBLo
 6PCv2ep68tjnQSYLY+UTzFciTrAO7fhh7tqsbp/kLhpwpyEtxpiXCKXnSEhmavRUEA
 n2ktSqFOUHrRMSO1EVMs0Arj6mx9xWWVP/6yCIC52U2GmeSNqYX6s7wVADkodOLSFh
 uLzm5raZrEqf5ZvPJNUF2mM3nAm5r3k8OCALXozEgjTUn+6UsgFhVWPv8RIzoV2/nq
 VESSkZYfUYEWVv9/5y638I0toLuceyF6ZsSbcYRublHbFs64lQ2RAOyKJXUMP9Su2z
 mKghtIgjDWSDw==
X-Virus-Scanned: amavisd-new at boeck5.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
Received: from hbt1.exch.fau.de (hbt1.exch.fau.de [10.15.8.13])
 by mx-exchlnx-1.rrze.uni-erlangen.de (Postfix) with ESMTP id 45YZbp6HYdz8t3Y; 
 Wed, 26 Jun 2019 09:36:54 +0200 (CEST)
Received: from MBX3.exch.uni-erlangen.de (10.15.8.45) by hbt1.exch.fau.de
 (10.15.8.13) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 26 Jun 2019
 09:36:23 +0200
Received: from TroubleWorld.fritz.box (95.90.221.207) by
 MBX3.exch.uni-erlangen.de (10.15.8.45) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1591.10; Wed, 26 Jun 2019 09:36:22 +0200
From: Fabian Krueger <fabian.krueger@fau.de>
To: 
Subject: [PATCH 6/8] staging: kpc2000: introduce 'unsigned int'
Date: Wed, 26 Jun 2019 09:35:24 +0200
Message-ID: <20190626073531.8946-7-fabian.krueger@fau.de>
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

Replaced 'unsigned' with it's equivalent 'unsigned int' to reduce
confusion while reading the code.

Signed-off-by: Fabian Krueger <fabian.krueger@fau.de>
Signed-off-by: Michael Scheiderer <michael.scheiderer@fau.de>
Cc: <linux-kernel@i4.cs.fau.de>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index d5b4bd7b2ea7..eeb36d78402e 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -308,7 +308,7 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
 	list_for_each_entry(transfer, &m->transfers, transfer_list) {
 		const void *tx_buf = transfer->tx_buf;
 		void       *rx_buf = transfer->rx_buf;
-		unsigned    len = transfer->len;
+		unsigned int len = transfer->len;
 
 		if (transfer->speed_hz > KP_SPI_CLK ||
 		    (len && !(rx_buf || tx_buf))) {
@@ -354,7 +354,7 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
 		/* transfer */
 		if (transfer->len) {
 			unsigned int word_len = spidev->bits_per_word;
-			unsigned count;
+			unsigned int count;
 
 			/* set up the transfer... */
 			sc.reg = kp_spi_read_reg(cs, KP_SPI_REG_CONFIG);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
