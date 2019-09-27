Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A34EC031B
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Sep 2019 12:15:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 063A785816;
	Fri, 27 Sep 2019 10:14:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1yCVKeY98DIr; Fri, 27 Sep 2019 10:14:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AB407857D5;
	Fri, 27 Sep 2019 10:14:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 75A7E1BF2F4
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 10:14:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 70DBB857D5
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 10:14:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PHBMnbMabJwN for <devel@linuxdriverproject.org>;
 Fri, 27 Sep 2019 10:14:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 46AF18577C
 for <devel@driverdev.osuosl.org>; Fri, 27 Sep 2019 10:14:53 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 993D8AE99;
 Fri, 27 Sep 2019 10:14:51 +0000 (UTC)
From: Benjamin Poirier <bpoirier@suse.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 01/17] staging: qlge: Fix irq masking in INTx mode
Date: Fri, 27 Sep 2019 19:11:55 +0900
Message-Id: <20190927101210.23856-2-bpoirier@suse.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190927101210.23856-1-bpoirier@suse.com>
References: <20190927101210.23856-1-bpoirier@suse.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, linux-kernel@vger.kernel.org,
 Manish Chopra <manishc@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Tracing the driver operation reveals that the INTR_EN_EN bit (per-queue
interrupt control) does not immediately prevent rx completion interrupts
when the device is operating in INTx mode. This leads to interrupts being
raised while napi is scheduled/running. Those interrupts are ignored by
qlge_isr() and falsely reported as IRQ_NONE thanks to the irq_cnt scheme.
This in turn can cause frames to loiter in the receive queue until a later
frame leads to another rx interrupt that will schedule napi.

Use the INTR_EN_EI bit (master interrupt control) instead.

Signed-off-by: Benjamin Poirier <bpoirier@suse.com>
---
 drivers/staging/qlge/qlge_main.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
index 6cae33072496..d7b64d360ea8 100644
--- a/drivers/staging/qlge/qlge_main.c
+++ b/drivers/staging/qlge/qlge_main.c
@@ -3366,6 +3366,7 @@ static void ql_enable_msix(struct ql_adapter *qdev)
 		}
 	}
 	qlge_irq_type = LEG_IRQ;
+	set_bit(QL_LEGACY_ENABLED, &qdev->flags);
 	netif_printk(qdev, ifup, KERN_DEBUG, qdev->ndev,
 		     "Running with legacy interrupts.\n");
 }
@@ -3509,6 +3510,16 @@ static void ql_resolve_queues_to_irqs(struct ql_adapter *qdev)
 		intr_context->intr_dis_mask =
 		    INTR_EN_TYPE_MASK | INTR_EN_INTR_MASK |
 		    INTR_EN_TYPE_DISABLE;
+		if (test_bit(QL_LEGACY_ENABLED, &qdev->flags)) {
+			/* Experience shows that when using INTx interrupts,
+			 * the device does not always auto-mask INTR_EN_EN.
+			 * Moreover, masking INTR_EN_EN manually does not
+			 * immediately prevent interrupt generation.
+			 */
+			intr_context->intr_en_mask |= INTR_EN_EI << 16 |
+				INTR_EN_EI;
+			intr_context->intr_dis_mask |= INTR_EN_EI << 16;
+		}
 		intr_context->intr_read_mask =
 		    INTR_EN_TYPE_MASK | INTR_EN_INTR_MASK | INTR_EN_TYPE_READ;
 		/*
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
