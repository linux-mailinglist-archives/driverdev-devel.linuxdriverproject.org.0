Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B228FEFFCA
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 15:30:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1542C88E9E;
	Tue,  5 Nov 2019 14:30:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DUvksTYrmbgM; Tue,  5 Nov 2019 14:30:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2439A88E44;
	Tue,  5 Nov 2019 14:30:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7296B1BF354
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 14:30:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6C8D28910D
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 14:30:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K1eCEGa8WLHT for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 14:30:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2D9AF890B2
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 14:30:28 +0000 (UTC)
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 78F22EEBB3532B380AED;
 Tue,  5 Nov 2019 22:30:25 +0800 (CST)
Received: from localhost.localdomain (10.90.53.225) by
 DGGEMS406-HUB.china.huawei.com (10.3.19.206) with Microsoft SMTP Server id
 14.3.439.0; Tue, 5 Nov 2019 22:30:18 +0800
From: Chen Wandun <chenwandun@huawei.com>
To: <linux-kernel@vger.kernel.org>, <devel@driverdev.osuosl.org>,
 <perex@perex.cz>, <gregkh@linuxfoundation.org>,
 <kstewart@linuxfoundation.org>, <allison@lohutok.net>, <tglx@linutronix.de>,
 <joe@perches.com>
Subject: [PATCH v2] hp100: remove set but not used variable val
Date: Tue, 5 Nov 2019 22:36:59 +0800
Message-ID: <1572964619-76671-1-git-send-email-chenwandun@huawei.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <20191105133554.6C01F9A06CB85816F399@huawei.com>
References: <20191105133554.6C01F9A06CB85816F399@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
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
Cc: chenwandun@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Chenwandun <chenwandun@huawei.com>

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/staging/hp/hp100.c: In function hp100_start_xmit:
drivers/staging/hp/hp100.c:1629:10: warning: variable val set but not used [-Wunused-but-set-variable]

Signed-off-by: Chenwandun <chenwandun@huawei.com>
---
 drivers/staging/hp/hp100.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 6ec78f5..6fc7733 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -1626,7 +1626,9 @@ static netdev_tx_t hp100_start_xmit(struct sk_buff *skb,
 	unsigned long flags;
 	int i, ok_flag;
 	int ioaddr = dev->base_addr;
+#ifdef HP100_DEBUG_TX
 	u_short val;
+#endif
 	struct hp100_private *lp = netdev_priv(dev);
 
 #ifdef HP100_DEBUG_B
@@ -1695,7 +1697,9 @@ static netdev_tx_t hp100_start_xmit(struct sk_buff *skb,
 
 	spin_lock_irqsave(&lp->lock, flags);
 	hp100_ints_off();
+#ifdef HP100_DEBUG_TX
 	val = hp100_inw(IRQ_STATUS);
+#endif
 	/* Ack / clear the interrupt TX_COMPLETE interrupt - this interrupt is set
 	 * when the current packet being transmitted on the wire is completed. */
 	hp100_outw(HP100_TX_COMPLETE, IRQ_STATUS);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
