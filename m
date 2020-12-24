Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B10A2E272F
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Dec 2020 14:25:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0198620455;
	Thu, 24 Dec 2020 13:25:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1mgrMHZZR6wl; Thu, 24 Dec 2020 13:25:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9021920434;
	Thu, 24 Dec 2020 13:24:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E8C4A1BF83B
 for <devel@linuxdriverproject.org>; Thu, 24 Dec 2020 13:24:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E275D203F4
 for <devel@linuxdriverproject.org>; Thu, 24 Dec 2020 13:24:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4+Q8ekKcN6uI for <devel@linuxdriverproject.org>;
 Thu, 24 Dec 2020 13:24:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id 453C5203D3
 for <devel@driverdev.osuosl.org>; Thu, 24 Dec 2020 13:24:54 +0000 (UTC)
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4D1rPj3RLzzktQ8;
 Thu, 24 Dec 2020 21:23:53 +0800 (CST)
Received: from ubuntu.network (10.175.138.68) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.498.0; Thu, 24 Dec 2020 21:24:42 +0800
From: Zheng Yongjun <zhengyongjun3@huawei.com>
To: <devel@driverdev.osuosl.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 -next] staging: most: net: use DEFINE_MUTEX() for mutex lock
Date: Thu, 24 Dec 2020 21:25:19 +0800
Message-ID: <20201224132519.31504-1-zhengyongjun3@huawei.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Originating-IP: [10.175.138.68]
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
Cc: gregkh@linuxfoundation.org, Zheng Yongjun <zhengyongjun3@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

mutex lock can be initialized automatically with DEFINE_MUTEX()
rather than explicitly calling mutex_init().

Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
---
 drivers/staging/most/net/net.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/most/net/net.c b/drivers/staging/most/net/net.c
index b6fecb06a0e6..f125bb6da406 100644
--- a/drivers/staging/most/net/net.c
+++ b/drivers/staging/most/net/net.c
@@ -68,7 +68,7 @@ struct net_dev_context {
 };
 
 static struct list_head net_devices = LIST_HEAD_INIT(net_devices);
-static struct mutex probe_disc_mt; /* ch->linked = true, most_nd_open */
+static DEFINE_MUTEX(probe_disc_mt); /* ch->linked = true, most_nd_open */
 static DEFINE_SPINLOCK(list_lock); /* list_head, ch->linked = false, dev_hold */
 static struct most_component comp;
 
@@ -520,7 +520,6 @@ static int __init most_net_init(void)
 {
 	int err;
 
-	mutex_init(&probe_disc_mt);
 	err = most_register_component(&comp);
 	if (err)
 		return err;
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
