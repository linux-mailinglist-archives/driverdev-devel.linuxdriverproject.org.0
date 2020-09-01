Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C7125868C
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Sep 2020 05:57:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DCCD1868B4;
	Tue,  1 Sep 2020 03:57:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dWSQz3phtrDy; Tue,  1 Sep 2020 03:57:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 12F1386806;
	Tue,  1 Sep 2020 03:57:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7E0FB1BF2A3
 for <devel@linuxdriverproject.org>; Tue,  1 Sep 2020 03:57:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7AD0785F4D
 for <devel@linuxdriverproject.org>; Tue,  1 Sep 2020 03:57:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RI9sHZ5Byp-j for <devel@linuxdriverproject.org>;
 Tue,  1 Sep 2020 03:57:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5E28285D7D
 for <devel@driverdev.osuosl.org>; Tue,  1 Sep 2020 03:57:51 +0000 (UTC)
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A0B688FBE95676C350EE;
 Tue,  1 Sep 2020 11:57:47 +0800 (CST)
Received: from localhost (10.174.179.108) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.487.0; Tue, 1 Sep 2020
 11:57:37 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <mchehab+huawei@kernel.org>, <gregkh@linuxfoundation.org>
Subject: [PATCH -next] staging: spmi: hisi-spmi-controller: Use proper format
 in call to dev_err()
Date: Tue, 1 Sep 2020 11:57:22 +0800
Message-ID: <20200901035722.9324-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.174.179.108]
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

The correct format string for a size_t argument should be %zu.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/hikey9xx/hisi-spmi-controller.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/hikey9xx/hisi-spmi-controller.c b/drivers/staging/hikey9xx/hisi-spmi-controller.c
index 66a0b296e06f..34c690da09e3 100644
--- a/drivers/staging/hikey9xx/hisi-spmi-controller.c
+++ b/drivers/staging/hikey9xx/hisi-spmi-controller.c
@@ -121,7 +121,7 @@ static int spmi_read_cmd(struct spmi_controller *ctrl,
 
 	if (bc > SPMI_CONTROLLER_MAX_TRANS_BYTES) {
 		dev_err(&ctrl->dev,
-			"spmi_controller supports 1..%d bytes per trans, but:%ld requested\n",
+			"spmi_controller supports 1..%d bytes per trans, but:%zu requested\n",
 			SPMI_CONTROLLER_MAX_TRANS_BYTES, bc);
 		return  -EINVAL;
 	}
@@ -175,7 +175,7 @@ static int spmi_read_cmd(struct spmi_controller *ctrl,
 	spin_unlock_irqrestore(&spmi_controller->lock, flags);
 	if (rc)
 		dev_err(&ctrl->dev,
-			"spmi read wait timeout op:0x%x slave_id:%d slave_addr:0x%x bc:%ld\n",
+			"spmi read wait timeout op:0x%x slave_id:%d slave_addr:0x%x bc:%zu\n",
 			opc, slave_id, slave_addr, bc + 1);
 	else
 		dev_dbg(&ctrl->dev, "%s: id:%d slave_addr:0x%x, read value: %*ph\n",
@@ -197,7 +197,7 @@ static int spmi_write_cmd(struct spmi_controller *ctrl,
 
 	if (bc > SPMI_CONTROLLER_MAX_TRANS_BYTES) {
 		dev_err(&ctrl->dev,
-			"spmi_controller supports 1..%d bytes per trans, but:%ld requested\n",
+			"spmi_controller supports 1..%d bytes per trans, but:%zu requested\n",
 			SPMI_CONTROLLER_MAX_TRANS_BYTES, bc);
 		return  -EINVAL;
 	}
@@ -251,7 +251,7 @@ static int spmi_write_cmd(struct spmi_controller *ctrl,
 	spin_unlock_irqrestore(&spmi_controller->lock, flags);
 
 	if (rc)
-		dev_err(&ctrl->dev, "spmi write wait timeout op:0x%x slave_id:%d slave_addr:0x%x bc:%ld\n",
+		dev_err(&ctrl->dev, "spmi write wait timeout op:0x%x slave_id:%d slave_addr:0x%x bc:%zu\n",
 			opc, slave_id, slave_addr, bc);
 	else
 		dev_dbg(&ctrl->dev, "%s: id:%d slave_addr:0x%x, wrote value: %*ph\n",
-- 
2.17.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
