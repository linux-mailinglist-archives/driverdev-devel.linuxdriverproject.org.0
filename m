Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 337F154DBA
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 13:35:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED73485EF1;
	Tue, 25 Jun 2019 11:35:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vX0t0_PYpnYx; Tue, 25 Jun 2019 11:35:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 51C7185540;
	Tue, 25 Jun 2019 11:35:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 69F101BF20B
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:35:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 66FF0879F5
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:35:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vW8XKzS8z0Jq for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 11:34:59 +0000 (UTC)
X-Greylist: delayed 00:07:47 by SQLgrey-1.7.6
Received: from mx-rz-1.rrze.uni-erlangen.de (mx-rz-1.rrze.uni-erlangen.de
 [131.188.11.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 174D8879EF
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 11:34:59 +0000 (UTC)
Received: from mx-exchlnx-1.rrze.uni-erlangen.de
 (mx-exchlnx-1.rrze.uni-erlangen.de [IPv6:2001:638:a000:1025::37])
 by mx-rz-1.rrze.uni-erlangen.de (Postfix) with ESMTP id 45Y3mW46XSz8vV2;
 Tue, 25 Jun 2019 13:27:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fau.de; s=fau-2013;
 t=1561462059; bh=h61QdC3mA+wqibKZRS46JQ5D6JIMJ7HY4KAVVMINSQc=;
 h=From:To:CC:Subject:Date:In-Reply-To:References:From:To:CC:
 Subject;
 b=LOSu1X1OJ0tRRjZUPWtPpYIbiv+qwO6BTMsFiL4lkMbDeJyvSKJ8kMY6FWCmhXvqq
 +CdWf59XnpM33g2gIweZv6oAqbjpAlHk3VxIZ+YxvFUmaEzgmcn9bD3+CX4Z8bU6ph
 tKP54ULj2vjymPMjtqGuPx17WSDsT5uRjBUX78X32Z5DG3Bc/XHMEaqlGi8xxMpNZY
 QdQZW346r92qGvfFYDjF8Z0Ni6j40Rn7VWidqyoHy9GArjjWYtjqR1N28NVQ/N1CUf
 S+vzzYS+2hFfFmb70BqKTYVUVzxTdIL3Rpw4faYHe6Rlw0rOaZZEfmq7gOWTWMkWr5
 tN6ZVaNJ492hQ==
X-Virus-Scanned: amavisd-new at boeck2.rrze.uni-erlangen.de (RRZE)
X-RRZE-Flag: Not-Spam
Received: from hbt1.exch.fau.de (hbt1.exch.fau.de [10.15.8.13])
 by mx-exchlnx-1.rrze.uni-erlangen.de (Postfix) with ESMTP id 45Y3mT2YLhz8tHx; 
 Tue, 25 Jun 2019 13:27:37 +0200 (CEST)
Received: from MBX3.exch.uni-erlangen.de (10.15.8.45) by hbt1.exch.fau.de
 (10.15.8.13) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 25 Jun 2019
 13:27:09 +0200
Received: from TroubleWorld.pool.uni-erlangen.de (10.21.22.37) by
 MBX3.exch.uni-erlangen.de (10.15.8.45) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1591.10; Tue, 25 Jun 2019 13:27:08 +0200
From: Fabian Krueger <fabian.krueger@fau.de>
To: 
Subject: [PATCH 2/8] staging: kpc2000: blank lines after declaration
Date: Tue, 25 Jun 2019 13:27:13 +0200
Message-ID: <20190625112725.10154-3-fabian.krueger@fau.de>
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

After the declarations in a function, there should be a blank line, so
that the declaration part is visibly separated from the rest.
This refactoring makes the code more readable.

Signed-off-by: Fabian Krueger <fabian.krueger@fau.de>
Signed-off-by: Michael Scheiderer <michael.scheiderer@fau.de>
---
 drivers/staging/kpc2000/kpc2000_spi.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
index 7ed0fb6b4abb..e0e7703c6e53 100644
--- a/drivers/staging/kpc2000/kpc2000_spi.c
+++ b/drivers/staging/kpc2000/kpc2000_spi.c
@@ -203,6 +203,7 @@ kp_spi_read_reg(struct kp_spi_controller_state *cs, int idx)
 kp_spi_write_reg(struct kp_spi_controller_state *cs, int idx, u64 val)
 {
 	u64 __iomem *addr = cs->base;
+
 	addr += idx;
 	writeq(val, addr);
 	if (idx == KP_SPI_REG_CONFIG)
@@ -214,6 +215,7 @@ kp_spi_wait_for_reg_bit(struct kp_spi_controller_state *cs, int idx,
 			unsigned long bit)
 {
 	unsigned long timeout;
+
 	timeout = jiffies + msecs_to_jiffies(1000);
 	while (!(kp_spi_read_reg(cs, idx) & bit)) {
 		if (time_after(jiffies, timeout)) {
@@ -445,6 +447,7 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
 kp_spi_cleanup(struct spi_device *spidev)
 {
 	struct kp_spi_controller_state *cs = spidev->controller_state;
+
 	if (cs) {
 		kfree(cs);
 	}
@@ -536,6 +539,7 @@ kp_spi_probe(struct platform_device *pldev)
 kp_spi_remove(struct platform_device *pldev)
 {
 	struct spi_master *master = platform_get_drvdata(pldev);
+
 	spi_unregister_master(master);
 	return 0;
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
