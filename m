Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B423245D6C
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:11:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 500CC21513;
	Mon, 17 Aug 2020 07:11:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5fY3wT+gpmkQ; Mon, 17 Aug 2020 07:11:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 44245204B4;
	Mon, 17 Aug 2020 07:11:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3663F1BF471
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 316D186722
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6DhqBT-3C8_x for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4CA0E85755
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D512F20829;
 Mon, 17 Aug 2020 07:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597648277;
 bh=wyUmRUsPYRl4dMRgSC9ZhWOnX0sOGZSmvmHTCT53zTI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PgDqhJ2RtZSmb/toCmY2eXmqhwSyvJrwtnhD+yVwIaQL2V8VX/XlqLayQVXlpjZCV
 eUfoDIrE99jyLT4LJSoe5A5D12xGvS+WjgkmoIxGYHNzRrDFN4NFGqZdOJsSSz9PO5
 ELY+/lx72fNpEE61++HiZSLVbva2Js2CPLYsoprk=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZIZ-00BdjT-0q; Mon, 17 Aug 2020 09:11:15 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 07/44] staging: spmi: hisi-spmi-controller: add debug when
 values are read/write
Date: Mon, 17 Aug 2020 09:10:26 +0200
Message-Id: <11dc4583c41a9c5e2804114d6a7a87374d2a23b4.1597647359.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597647359.git.mchehab+huawei@kernel.org>
References: <cover.1597647359.git.mchehab+huawei@kernel.org>
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
Cc: mauro.chehab@huawei.com, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 devel@driverdev.osuosl.org, linuxarm@huawei.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

It is interesting to be able to check if the driver is doing
the right thing. So, add some debug macros to allow checking it.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hisi-spmi-controller.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/hikey9xx/hisi-spmi-controller.c b/drivers/staging/hikey9xx/hisi-spmi-controller.c
index cacd28150b49..e996114bc717 100644
--- a/drivers/staging/hikey9xx/hisi-spmi-controller.c
+++ b/drivers/staging/hikey9xx/hisi-spmi-controller.c
@@ -41,7 +41,6 @@
 #define SPMI_APB_SPMI_CMD_EN				BIT(31)
 #define SPMI_APB_SPMI_CMD_TYPE_OFFSET			24
 #define SPMI_APB_SPMI_CMD_LENGTH_OFFSET			20
-
 #define SPMI_APB_SPMI_CMD_SLAVEID_OFFSET		16
 #define SPMI_APB_SPMI_CMD_ADDR_OFFSET			0
 
@@ -135,10 +134,11 @@ static int spmi_controller_wait_for_done(struct spmi_controller_dev *ctrl_dev,
 }
 
 static int spmi_read_cmd(struct spmi_controller *ctrl,
-			 u8 opc, u8 sid, u16 addr, u8 *buf, size_t bc)
+			 u8 opc, u8 sid, u16 addr, u8 *__buf, size_t bc)
 {
 	struct spmi_controller_dev *spmi_controller = dev_get_drvdata(&ctrl->dev);
 	unsigned long flags;
+	u8 *buf = __buf;
 	u32 cmd, data;
 	int rc;
 	u32 chnl_ofst = SPMI_CHANNEL_OFFSET * spmi_controller->channel;
@@ -197,13 +197,18 @@ static int spmi_read_cmd(struct spmi_controller *ctrl,
 	if (rc)
 		dev_err(spmi_controller->dev, "spmi read wait timeout op:0x%x sid:%d addr:0x%x bc:%ld\n",
 			opc, sid, addr, bc + 1);
+	else
+		dev_dbg(spmi_controller->dev, "%s: id:%d addr:0x%x, read value: %*ph\n",
+			__func__, sid, addr, (int)bc, __buf);
+
 	return rc;
 }
 
 static int spmi_write_cmd(struct spmi_controller *ctrl,
-			  u8 opc, u8 sid, u16 addr, const u8 *buf, size_t bc)
+			  u8 opc, u8 sid, u16 addr, const u8 *__buf, size_t bc)
 {
 	struct spmi_controller_dev *spmi_controller = dev_get_drvdata(&ctrl->dev);
+	const u8 *buf = __buf;
 	unsigned long flags;
 	u32 cmd, data;
 	int rc;
@@ -263,6 +268,9 @@ static int spmi_write_cmd(struct spmi_controller *ctrl,
 	if (rc)
 		dev_err(spmi_controller->dev, "spmi write wait timeout op:0x%x sid:%d addr:0x%x bc:%ld\n",
 			opc, sid, addr, bc);
+	else
+		dev_dbg(spmi_controller->dev, "%s: id:%d addr:0x%x, wrote value: %*ph\n",
+			__func__, sid, addr, (int)bc, __buf);
 
 	return rc;
 }
@@ -275,6 +283,7 @@ static int spmi_controller_probe(struct platform_device *pdev)
 	int ret = 0;
 
 	dev_info(&pdev->dev, "HISI SPMI probe\n");
+
 	ctrl = spmi_controller_alloc(&pdev->dev, sizeof(*spmi_controller));
 	if (!ctrl) {
 		dev_err(&pdev->dev, "can not allocate spmi_controller data\n");
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
