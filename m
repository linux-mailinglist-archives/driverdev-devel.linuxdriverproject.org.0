Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76917D1075
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 15:43:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2B461230F3;
	Wed,  9 Oct 2019 13:43:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RR-llGdzVs4D; Wed,  9 Oct 2019 13:43:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0EAF222F26;
	Wed,  9 Oct 2019 13:43:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C1A221BF9B6
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 13:43:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BA0CA22F4C
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 13:43:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FWRcfVk9B+rE for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 13:43:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by silver.osuosl.org (Postfix) with ESMTPS id 1671C20781
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 13:43:32 +0000 (UTC)
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 4158EB6C586C44C8A8EE;
 Wed,  9 Oct 2019 21:43:30 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Wed, 9 Oct 2019
 21:43:19 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <jerome.pouiller@silabs.com>, <gregkh@linuxfoundation.org>,
 <dan.carpenter@oracle.com>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 2/3] staging: wfx: Make function 'wfx_tx_queue_get' static
Date: Wed, 9 Oct 2019 21:50:29 +0800
Message-ID: <1570629030-29888-3-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570629030-29888-1-git-send-email-zhengbin13@huawei.com>
References: <1570629030-29888-1-git-send-email-zhengbin13@huawei.com>
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
Cc: zhengbin13@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix sparse warnings:

drivers/staging/wfx/queue.c:218:16: warning: symbol 'wfx_tx_queue_get' was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/staging/wfx/queue.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
index 6f1be4f..c44ffdf 100644
--- a/drivers/staging/wfx/queue.c
+++ b/drivers/staging/wfx/queue.c
@@ -215,7 +215,9 @@ void wfx_tx_queue_put(struct wfx_dev *wdev, struct wfx_queue *queue, struct sk_b
 	spin_unlock_bh(&queue->queue.lock);
 }

-struct sk_buff *wfx_tx_queue_get(struct wfx_dev *wdev, struct wfx_queue *queue, u32 link_id_map)
+static struct sk_buff *wfx_tx_queue_get(struct wfx_dev *wdev,
+					struct wfx_queue *queue,
+					u32 link_id_map)
 {
 	struct sk_buff *skb = NULL;
 	struct sk_buff *item;
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
