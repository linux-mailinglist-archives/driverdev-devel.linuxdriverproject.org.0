Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E0EF127AC3A
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Sep 2020 12:49:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 38C9785604;
	Mon, 28 Sep 2020 10:49:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RxFfwc7d-Zp2; Mon, 28 Sep 2020 10:49:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 46B0F8560C;
	Mon, 28 Sep 2020 10:49:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BC5611BF405
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 10:49:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B879687047
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 10:49:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EC70stspHMbc for <devel@linuxdriverproject.org>;
 Mon, 28 Sep 2020 10:49:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6345C87044
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 10:49:29 +0000 (UTC)
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 7BF8F6792C3B33BAAEFF;
 Mon, 28 Sep 2020 18:49:21 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.487.0; Mon, 28 Sep 2020 18:49:12 +0800
From: Jing Xiangfeng <jingxiangfeng@huawei.com>
To: <gregkh@linuxfoundation.org>, <christian.gromm@microchip.com>,
 <masahiroy@kernel.org>, <tglx@linutronix.de>, <keescook@chromium.org>
Subject: [PATCH] staging: most: don't access hdm_ch before checking it valid
Date: Mon, 28 Sep 2020 18:48:38 +0800
Message-ID: <20200928104838.189639-1-jingxiangfeng@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 jingxiangfeng@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In try_start_dim_transfer(), pointer hdm_ch is accessed before checking.
This may lead to a potential null pointer dereference. Fix this by
dereferencing hdm_ch after calling BUG_ON().

Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
---
 drivers/staging/most/dim2/dim2.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/most/dim2/dim2.c b/drivers/staging/most/dim2/dim2.c
index 509c8012d20b..ccd7cc7545e4 100644
--- a/drivers/staging/most/dim2/dim2.c
+++ b/drivers/staging/most/dim2/dim2.c
@@ -148,7 +148,7 @@ void dimcb_on_error(u8 error_id, const char *error_message)
 static int try_start_dim_transfer(struct hdm_channel *hdm_ch)
 {
 	u16 buf_size;
-	struct list_head *head = &hdm_ch->pending_list;
+	struct list_head *head;
 	struct mbo *mbo;
 	unsigned long flags;
 	struct dim_ch_state_t st;
@@ -156,6 +156,7 @@ static int try_start_dim_transfer(struct hdm_channel *hdm_ch)
 	BUG_ON(!hdm_ch);
 	BUG_ON(!hdm_ch->is_initialized);
 
+	head = &hdm_ch->pending_list;
 	spin_lock_irqsave(&dim_lock, flags);
 	if (list_empty(head)) {
 		spin_unlock_irqrestore(&dim_lock, flags);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
