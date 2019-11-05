Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD7BEFEB0
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 14:35:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4280422122;
	Tue,  5 Nov 2019 13:35:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B5WPrl2XfqvP; Tue,  5 Nov 2019 13:35:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 74D9B204B9;
	Tue,  5 Nov 2019 13:35:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E668A1BF3E3
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 13:35:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E34C588AFE
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 13:35:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1lpm7Eldrk05 for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 13:35:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9535988AE0
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 13:35:46 +0000 (UTC)
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id ACF784E9D9F9149A606F;
 Tue,  5 Nov 2019 21:35:42 +0800 (CST)
Received: from localhost.localdomain (10.90.53.225) by
 DGGEMS408-HUB.china.huawei.com (10.3.19.208) with Microsoft SMTP Server id
 14.3.439.0; Tue, 5 Nov 2019 21:35:36 +0800
From: Chen Wandun <chenwandun@huawei.com>
To: <linux-kernel@vger.kernel.org>, <devel@driverdev.osuosl.org>,
 <perex@perex.cz>, <gregkh@linuxfoundation.org>, <davem@davemloft.net>,
 <rfontana@redhat.com>, <kstewart@linuxfoundation.org>, <joe@perches.com>,
 <tglx@linutronix.d>
Subject: [PATCH] hp100: remove set but not used variable val
Date: Tue, 5 Nov 2019 21:42:40 +0800
Message-ID: <1572961360-67523-1-git-send-email-chenwandun@huawei.com>
X-Mailer: git-send-email 2.7.4
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
Cc: Chenwandun <chenwandun@huawei.com>
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
 drivers/staging/hp/hp100.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index 6ec78f5..7e91737 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -1626,7 +1626,6 @@ static netdev_tx_t hp100_start_xmit(struct sk_buff *skb,
 	unsigned long flags;
 	int i, ok_flag;
 	int ioaddr = dev->base_addr;
-	u_short val;
 	struct hp100_private *lp = netdev_priv(dev);
 
 #ifdef HP100_DEBUG_B
@@ -1695,13 +1694,12 @@ static netdev_tx_t hp100_start_xmit(struct sk_buff *skb,
 
 	spin_lock_irqsave(&lp->lock, flags);
 	hp100_ints_off();
-	val = hp100_inw(IRQ_STATUS);
 	/* Ack / clear the interrupt TX_COMPLETE interrupt - this interrupt is set
 	 * when the current packet being transmitted on the wire is completed. */
 	hp100_outw(HP100_TX_COMPLETE, IRQ_STATUS);
 #ifdef HP100_DEBUG_TX
 	printk("hp100: %s: start_xmit: irq_status=0x%.4x, irqmask=0x%.4x, len=%d\n",
-			dev->name, val, hp100_inw(IRQ_MASK), (int) skb->len);
+			dev->name, hp100_inw(IRQ_STATUS), hp100_inw(IRQ_MASK), (int) skb->len);
 #endif
 
 	ok_flag = skb->len >= HP100_MIN_PACKET_SIZE;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
