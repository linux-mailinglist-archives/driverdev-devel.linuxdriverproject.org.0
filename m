Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 494F82BA3A9
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Nov 2020 08:45:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 35C1986DE1;
	Fri, 20 Nov 2020 07:45:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yFz3Q1X94hoa; Fri, 20 Nov 2020 07:45:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8A82C86D84;
	Fri, 20 Nov 2020 07:45:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7149C1BF28A
 for <devel@linuxdriverproject.org>; Fri, 20 Nov 2020 07:45:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6D26287098
 for <devel@linuxdriverproject.org>; Fri, 20 Nov 2020 07:45:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rZfaBffbfV6n for <devel@linuxdriverproject.org>;
 Fri, 20 Nov 2020 07:45:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga07-in.huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D16268708A
 for <devel@driverdev.osuosl.org>; Fri, 20 Nov 2020 07:45:39 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4CcpVm0hcKz6yxL;
 Fri, 20 Nov 2020 15:45:20 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Fri, 20 Nov 2020 15:45:29 +0800
From: Jing Xiangfeng <jingxiangfeng@huawei.com>
To: <jfrederich@gmail.com>, <dsd@laptop.org>, <jon.nettleton@gmail.com>,
 <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: olpc_dcon: Do not call platform_device_unregister()
 in dcon_probe()
Date: Fri, 20 Nov 2020 15:49:32 +0800
Message-ID: <20201120074932.31871-1-jingxiangfeng@huawei.com>
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

In dcon_probe(), when platform_device_add() failes to add the device,
it jumps to call platform_device_unregister() to remove the device,
which is unnecessary. So use platform_device_put() instead.

Fixes: 53c43c5ca133 ("Revert "Staging: olpc_dcon: Remove obsolete driver"")
Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
---
 drivers/staging/olpc_dcon/olpc_dcon.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/olpc_dcon/olpc_dcon.c b/drivers/staging/olpc_dcon/olpc_dcon.c
index a0d6d90f4cc8..e7281212db5b 100644
--- a/drivers/staging/olpc_dcon/olpc_dcon.c
+++ b/drivers/staging/olpc_dcon/olpc_dcon.c
@@ -659,8 +659,9 @@ static int dcon_probe(struct i2c_client *client, const struct i2c_device_id *id)
  ecreate:
 	for (j = 0; j < i; j++)
 		device_remove_file(&dcon_device->dev, &dcon_device_files[j]);
+	platform_device_del(dcon_device);
  edev:
-	platform_device_unregister(dcon_device);
+	platform_device_put(dcon_device);
 	dcon_device = NULL;
  eirq:
 	free_irq(DCON_IRQ, dcon);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
