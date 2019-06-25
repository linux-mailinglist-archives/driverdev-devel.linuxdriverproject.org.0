Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0895554DD1
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 13:36:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A1DE020529;
	Tue, 25 Jun 2019 11:36:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id om1Rrc4eU1mY; Tue, 25 Jun 2019 11:36:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7CD192035D;
	Tue, 25 Jun 2019 11:36:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CC8CA1BF20B
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:36:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BBF0A85E99
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:36:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rn0Ce6pp7u67 for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 11:36:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx-rz-2.rrze.uni-erlangen.de (mx-rz-2.rrze.uni-erlangen.de
 [131.188.11.21])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 71C7385C67
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 11:36:45 +0000 (UTC)
Received: from mx-exchlnx-2.rrze.uni-erlangen.de
 (mx-exchlnx-2.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::38])
 by mx-rz-2.rrze.uni-erlangen.de (Postfix) with ESMTP id 45Y3nt4lTDzPknc;
 Tue, 25 Jun 2019 13:28:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2013;
 t=1561462130; bh=HaB+n0KQkq6leVUl7qDevT6sQg37a58eAz1OyaK8gM8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From:To:CC:
 Subject;
 b=jx1KZlv2FgW5iEOin0nEOpmPwcnstE80a7eOmQK+Fwz9veLl+vLVYTq1r8jcsh8XX
 mGytiSiY/kq+cTiaegr6jgap4qd4y5rZZzw5HEuh/5RDTNzI1Lpyo+npUQP//JdwI7
 xFhGbKvlihPZNePWV5pu3fN/yYXeGwRQ7yEQ/hmjCyIAT6RFGNaRSR6y6gxyT1Shfe
 yhtunehhdK/P3QxCngzq0VJaWtlrG4Ag74b23rjNsiwlcKpyulZHr84WzBig/OVr1G
 YaHSM7nbn2v/6U1E/XbMbFytm5ux5VN+1ulTjLQ4fI8lNJKufD73SqoEuvsS0qxqRc
 ZPUrivGZVijhw==
X-Virus-Scanned: amavisd-new at boeck1.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
Received: from hbt1.exch.fau.de (hbt1.exch.fau.de [10.15.8.13])
 by mx-exchlnx-2.rrze.uni-erlangen.de (Postfix) with ESMTP id 45Y3nr3XGZzPk6M; 
 Tue, 25 Jun 2019 13:28:48 +0200 (CEST)
Received: from MBX3.exch.uni-erlangen.de (10.15.8.45) by hbt1.exch.fau.de
 (10.15.8.13) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 25 Jun 2019
 13:28:10 +0200
Received: from TroubleWorld.pool.uni-erlangen.de (10.21.22.37) by
 MBX3.exch.uni-erlangen.de (10.15.8.45) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1591.10; Tue, 25 Jun 2019 13:28:08 +0200
From: Fabian Krueger <fabian.krueger@fau.de>
To: 
Subject: [PATCH 6/8] staging: kpc2000: introduce 'unsigned int'
Date: Tue, 25 Jun 2019 13:27:17 +0200
Message-ID: <20190625112725.10154-7-fabian.krueger@fau.de>
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

Replaced 'unsigned' with it's equivalent 'unsigned int' to reduce
confusion while reading the code.

Signed-off-by: Fabian Krueger <fabian.krueger@fau.de>
Signed-off-by: Michael Scheiderer <michael.scheiderer@fau.de>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 79d7c44315e8..732254e9b261 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -337,7 +337,7 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
 	list_for_each_entry(transfer, &m->transfers, transfer_list) {
 		const void *tx_buf = transfer->tx_buf;
 		void       *rx_buf = transfer->rx_buf;
-		unsigned    len = transfer->len;
+		unsigned int   len = transfer->len;
 
 		if (transfer->speed_hz > KP_SPI_CLK ||
 		    (len && !(rx_buf || tx_buf))) {
@@ -383,7 +383,7 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
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
