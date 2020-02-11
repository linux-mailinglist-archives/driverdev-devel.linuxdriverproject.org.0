Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D93615918C
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 15:07:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ACFA9204D9;
	Tue, 11 Feb 2020 14:06:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UH4AG0Paw-2D; Tue, 11 Feb 2020 14:06:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5EFC42000E;
	Tue, 11 Feb 2020 14:06:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D6F1C1BF3E6
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 14:06:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C9E3720440
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 14:06:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y0GO5AcOssqe for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 14:06:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by silver.osuosl.org (Postfix) with ESMTPS id 3665B2000E
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 14:06:37 +0000 (UTC)
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 61D49BADB9EBDCB6FF24;
 Tue, 11 Feb 2020 22:06:33 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Tue, 11 Feb 2020
 22:06:25 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <jerome.pouiller@silabs.com>, <gregkh@linuxfoundation.org>
Subject: [PATCH -next] staging: wfx: remove set but not used variable 'tx_priv'
Date: Tue, 11 Feb 2020 22:03:34 +0800
Message-ID: <20200211140334.55248-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
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
Cc: devel@driverdev.osuosl.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

drivers/staging/wfx/queue.c: In function wfx_tx_queues_get:
drivers/staging/wfx/queue.c:484:28: warning: variable tx_priv set but not used [-Wunused-but-set-variable]

commit 2e57865e79cf ("staging: wfx: pspoll_mask make no sense")
left behind this unused variable.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/wfx/queue.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
index 0bcc61f..c73d158 100644
--- a/drivers/staging/wfx/queue.c
+++ b/drivers/staging/wfx/queue.c
@@ -481,7 +481,6 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
 	struct wfx_queue *vif_queue = NULL;
 	u32 tx_allowed_mask = 0;
 	u32 vif_tx_allowed_mask = 0;
-	const struct wfx_tx_priv *tx_priv = NULL;
 	struct wfx_vif *wvif;
 	int not_found;
 	int burst;
@@ -541,7 +540,6 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
 		skb = wfx_tx_queue_get(wdev, queue, tx_allowed_mask);
 		if (!skb)
 			continue;
-		tx_priv = wfx_skb_tx_priv(skb);
 		hif = (struct hif_msg *) skb->data;
 		wvif = wdev_to_wvif(wdev, hif->interface);
 		WARN_ON(!wvif);
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
