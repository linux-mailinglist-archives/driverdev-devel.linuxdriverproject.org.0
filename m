Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 962562AFFD5
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Nov 2020 07:45:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA51886AAC;
	Thu, 12 Nov 2020 06:45:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lysrR1wu_iEF; Thu, 12 Nov 2020 06:45:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 57BB786AB6;
	Thu, 12 Nov 2020 06:45:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E59E1BF853
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 06:44:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8AA6186D69
 for <devel@linuxdriverproject.org>; Thu, 12 Nov 2020 06:44:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JgdUglivYs3B for <devel@linuxdriverproject.org>;
 Thu, 12 Nov 2020 06:44:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CD99586D63
 for <devel@driverdev.osuosl.org>; Thu, 12 Nov 2020 06:44:55 +0000 (UTC)
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4CWsXN6H8HzLx8Y;
 Thu, 12 Nov 2020 14:44:36 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.487.0; Thu, 12 Nov 2020 14:44:41 +0800
From: Jing Xiangfeng <jingxiangfeng@huawei.com>
To: <rspringer@google.com>, <toddpoynor@google.com>, <benchan@chromium.org>,
 <rcy@google.com>, <gregkh@linuxfoundation.org>, <sque@chromium.org>,
 <jnjoseph@google.com>
Subject: [PATCH] staging: gasket: interrupt: fix the missed eventfd_ctx_put()
 in gasket_interrupt.c
Date: Thu, 12 Nov 2020 14:49:24 +0800
Message-ID: <20201112064924.99680-1-jingxiangfeng@huawei.com>
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

gasket_interrupt_set_eventfd() misses to call eventfd_ctx_put() in an
error path. We check interrupt is valid before calling
eventfd_ctx_fdget() to fix it.

There is the same issue in gasket_interrupt_clear_eventfd(), Add the
missed function call to fix it.

Fixes: 9a69f5087ccc ("drivers/staging: Gasket driver framework + Apex driver")
Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
---
 drivers/staging/gasket/gasket_interrupt.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
index 2d6195f7300e..864342acfd86 100644
--- a/drivers/staging/gasket/gasket_interrupt.c
+++ b/drivers/staging/gasket/gasket_interrupt.c
@@ -487,14 +487,16 @@ int gasket_interrupt_system_status(struct gasket_dev *gasket_dev)
 int gasket_interrupt_set_eventfd(struct gasket_interrupt_data *interrupt_data,
 				 int interrupt, int event_fd)
 {
-	struct eventfd_ctx *ctx = eventfd_ctx_fdget(event_fd);
-
-	if (IS_ERR(ctx))
-		return PTR_ERR(ctx);
+	struct eventfd_ctx *ctx;
 
 	if (interrupt < 0 || interrupt >= interrupt_data->num_interrupts)
 		return -EINVAL;
 
+	ctx = eventfd_ctx_fdget(event_fd);
+
+	if (IS_ERR(ctx))
+		return PTR_ERR(ctx);
+
 	interrupt_data->eventfd_ctxs[interrupt] = ctx;
 	return 0;
 }
@@ -505,6 +507,9 @@ int gasket_interrupt_clear_eventfd(struct gasket_interrupt_data *interrupt_data,
 	if (interrupt < 0 || interrupt >= interrupt_data->num_interrupts)
 		return -EINVAL;
 
-	interrupt_data->eventfd_ctxs[interrupt] = NULL;
+	if (interrupt_data->eventfd_ctxs[interrupt]) {
+		eventfd_ctx_put(interrupt_data->eventfd_ctxs[interrupt]);
+		interrupt_data->eventfd_ctxs[interrupt] = NULL;
+	}
 	return 0;
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
