Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C6B242C9D
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Aug 2020 17:57:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4C35F86AC9;
	Wed, 12 Aug 2020 15:57:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id COrz3XFzItKt; Wed, 12 Aug 2020 15:57:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 83F0386A9A;
	Wed, 12 Aug 2020 15:57:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 430B71BF2F5
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3F0B720355
 for <devel@linuxdriverproject.org>; Wed, 12 Aug 2020 15:57:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yRkKkZJoUcqc for <devel@linuxdriverproject.org>;
 Wed, 12 Aug 2020 15:57:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 3C65E231AB
 for <devel@driverdev.osuosl.org>; Wed, 12 Aug 2020 15:57:00 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D221622CAD;
 Wed, 12 Aug 2020 15:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597247820;
 bh=t5SNoO7svvU9Dogdao0UzQOdHzmg6Ucm/VzoudSEino=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pbwYIU9FQZ5eamK7Zdu9loixEVWbATOl9o52YGcNir+up2ONmOR7h7U8+h5OPT3JO
 WRo3QX8FLSOsrSU/6JnJbtzwPLez3+i+u6g0R8isLKV1ypJ38dVb5IIKeC99SngDqI
 JhOCCei30KjtuvLIrlRIb2EOEEM/fdmpKZwcKZjw=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k5t7Z-005t5y-Q7; Wed, 12 Aug 2020 17:56:57 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 10/44] staging: spmi: hisi-spmi-controller: do some code
 cleanups
Date: Wed, 12 Aug 2020 17:56:20 +0200
Message-Id: <49a517017f1efbfc97cb0e88f151dc2844d54351.1597247164.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597247164.git.mchehab+huawei@kernel.org>
References: <cover.1597247164.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Jonathan Cameron <Jonathan.Cameron@Huawei.com>,
 mauro.chehab@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are several minor things that can be cleanup in
order to make this driver more prepared for leaving staging.

Suggested-by: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/hisi-spmi-controller.c   | 135 +++++++-----------
 1 file changed, 51 insertions(+), 84 deletions(-)

diff --git a/drivers/staging/hikey9xx/hisi-spmi-controller.c b/drivers/staging/hikey9xx/hisi-spmi-controller.c
index 153bcdb0cde4..583df10cbf1a 100644
--- a/drivers/staging/hikey9xx/hisi-spmi-controller.c
+++ b/drivers/staging/hikey9xx/hisi-spmi-controller.c
@@ -2,18 +2,16 @@
 
 #include <linux/delay.h>
 #include <linux/err.h>
+#include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/kernel.h>
-#include <linux/platform_device.h>
-#include <linux/slab.h>
-#include <linux/of.h>
-#include <linux/interrupt.h>
 #include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
 #include <linux/seq_file.h>
+#include <linux/slab.h>
 #include <linux/spmi.h>
 
-#define SPMI_CONTROLLER_NAME		"spmi_controller"
-
 /*
  * SPMI register addr
  */
@@ -73,27 +71,6 @@ enum spmi_controller_cmd_op_code {
 #define SPMI_CONTROLLER_TIMEOUT_US		1000
 #define SPMI_CONTROLLER_MAX_TRANS_BYTES		16
 
-/*
- * @base base address of the PMIC Arbiter core registers.
- * @rdbase, @wrbase base address of the PMIC Arbiter read core registers.
- *     For HW-v1 these are equal to base.
- *     For HW-v2, the value is the same in eeraly probing, in order to read
- *     PMIC_ARB_CORE registers, then chnls, and obsrvr are set to
- *     PMIC_ARB_CORE_REGISTERS and PMIC_ARB_CORE_REGISTERS_OBS respectivly.
- * @intr base address of the SPMI interrupt control registers
- * @ppid_2_chnl_tbl lookup table f(SID, Periph-ID) -> channel num
- *      entry is only valid if corresponding bit is set in valid_ppid_bitmap.
- * @valid_ppid_bitmap bit is set only for valid ppids.
- * @fmt_cmd formats a command to be set into PMIC_ARBq_CHNLn_CMD
- * @chnl_ofst calculates offset of the base of a channel reg space
- * @ee execution environment id
- * @irq_acc0_init_val initial value of the interrupt accumulator at probe time.
- *      Use for an HW workaround. On handling interrupts, the first accumulator
- *      register will be compared against this value, and bits which are set at
- *      boot will be ignored.
- * @reserved_chnl entry of ppid_2_chnl_tbl that this driver should never touch.
- *      value is positive channel number or negative to mark it unused.
- */
 struct spmi_controller_dev {
 	struct spmi_controller	*controller;
 	struct device		*dev;
@@ -106,14 +83,13 @@ static int spmi_controller_wait_for_done(struct device *dev,
 					 struct spmi_controller_dev *ctrl_dev,
 					 void __iomem *base, u8 sid, u16 addr)
 {
-	u32 status = 0;
 	u32 timeout = SPMI_CONTROLLER_TIMEOUT_US;
-	u32 offset;
+	u32 status, offset;
 
 	offset  = SPMI_APB_SPMI_STATUS_BASE_ADDR;
 	offset += SPMI_CHANNEL_OFFSET * ctrl_dev->channel + SPMI_SLAVE_OFFSET * sid;
 
-	while (timeout--) {
+	do {
 		status = readl(base + offset);
 
 		if (status & SPMI_APB_TRANS_DONE) {
@@ -126,21 +102,21 @@ static int spmi_controller_wait_for_done(struct device *dev,
 			return 0;
 		}
 		udelay(1);
-	}
+	}  while(timeout--);
 
 	dev_err(dev, "%s: timeout, status 0x%x\n", __func__, status);
 	return -ETIMEDOUT;
 }
 
 static int spmi_read_cmd(struct spmi_controller *ctrl,
-			 u8 opc, u8 sid, u16 addr, u8 *__buf, size_t bc)
+			 u8 opc, u8 slave_id, u16 slave_addr, u8 *__buf, size_t bc)
 {
 	struct spmi_controller_dev *spmi_controller = dev_get_drvdata(&ctrl->dev);
+	u32 chnl_ofst = SPMI_CHANNEL_OFFSET * spmi_controller->channel;
 	unsigned long flags;
 	u8 *buf = __buf;
 	u32 cmd, data;
 	int rc;
-	u32 chnl_ofst = SPMI_CHANNEL_OFFSET * spmi_controller->channel;
 	u8 op_code, i;
 
 	if (bc > SPMI_CONTROLLER_MAX_TRANS_BYTES) {
@@ -150,14 +126,17 @@ static int spmi_read_cmd(struct spmi_controller *ctrl,
 		return  -EINVAL;
 	}
 
-	/* Check the opcode */
-	if (opc == SPMI_CMD_READ) {
+	switch (opc) {
+	case SPMI_CMD_READ:
 		op_code = SPMI_CMD_REG_READ;
-	} else if (opc == SPMI_CMD_EXT_READ) {
+		break;
+	case SPMI_CMD_EXT_READ:
 		op_code = SPMI_CMD_EXT_REG_READ;
-	} else if (opc == SPMI_CMD_EXT_READL) {
+		break;
+	case SPMI_CMD_EXT_READL:
 		op_code = SPMI_CMD_EXT_REG_READ_L;
-	} else {
+		break;
+	default:
 		dev_err(&ctrl->dev, "invalid read cmd 0x%x", opc);
 		return -EINVAL;
 	}
@@ -165,21 +144,20 @@ static int spmi_read_cmd(struct spmi_controller *ctrl,
 	cmd = SPMI_APB_SPMI_CMD_EN |
 	     (op_code << SPMI_APB_SPMI_CMD_TYPE_OFFSET) |
 	     ((bc - 1) << SPMI_APB_SPMI_CMD_LENGTH_OFFSET) |
-	     ((sid & 0xf) << SPMI_APB_SPMI_CMD_SLAVEID_OFFSET) |  /* slvid */
-	     ((addr & 0xffff)  << SPMI_APB_SPMI_CMD_ADDR_OFFSET); /* slave_addr */
+	     ((slave_id & 0xf) << SPMI_APB_SPMI_CMD_SLAVEID_OFFSET) |  /* slvid */
+	     ((slave_addr & 0xffff)  << SPMI_APB_SPMI_CMD_ADDR_OFFSET); /* slave_addr */
 
 	spin_lock_irqsave(&spmi_controller->lock, flags);
 
 	writel(cmd, spmi_controller->base + chnl_ofst + SPMI_APB_SPMI_CMD_BASE_ADDR);
 
 	rc = spmi_controller_wait_for_done(&ctrl->dev, spmi_controller,
-					   spmi_controller->base, sid, addr);
+					   spmi_controller->base, slave_id, slave_addr);
 	if (rc)
 		goto done;
 
-	i = 0;
-	do {
-		data = readl(spmi_controller->base + chnl_ofst + SPMI_SLAVE_OFFSET * sid + SPMI_APB_SPMI_RDATA0_BASE_ADDR + i * SPMI_PER_DATAREG_BYTE);
+	for (i = 0; bc > i * SPMI_PER_DATAREG_BYTE; i++) {
+		data = readl(spmi_controller->base + chnl_ofst + SPMI_SLAVE_OFFSET * slave_id + SPMI_APB_SPMI_RDATA0_BASE_ADDR + i * SPMI_PER_DATAREG_BYTE);
 		data = be32_to_cpu((__be32)data);
 		if ((bc - i * SPMI_PER_DATAREG_BYTE) >> 2) {
 			memcpy(buf, &data, sizeof(data));
@@ -188,31 +166,30 @@ static int spmi_read_cmd(struct spmi_controller *ctrl,
 			memcpy(buf, &data, bc % SPMI_PER_DATAREG_BYTE);
 			buf += (bc % SPMI_PER_DATAREG_BYTE);
 		}
-		i++;
-	} while (bc > i * SPMI_PER_DATAREG_BYTE);
+	}
 
 done:
 	spin_unlock_irqrestore(&spmi_controller->lock, flags);
 	if (rc)
 		dev_err(&ctrl->dev,
-			"spmi read wait timeout op:0x%x sid:%d addr:0x%x bc:%ld\n",
-			opc, sid, addr, bc + 1);
+			"spmi read wait timeout op:0x%x slave_id:%d slave_addr:0x%x bc:%ld\n",
+			opc, slave_id, slave_addr, bc + 1);
 	else
-		dev_dbg(&ctrl->dev, "%s: id:%d addr:0x%x, read value: %*ph\n",
-			__func__, sid, addr, (int)bc, __buf);
+		dev_dbg(&ctrl->dev, "%s: id:%d slave_addr:0x%x, read value: %*ph\n",
+			__func__, slave_id, slave_addr, (int)bc, __buf);
 
 	return rc;
 }
 
 static int spmi_write_cmd(struct spmi_controller *ctrl,
-			  u8 opc, u8 sid, u16 addr, const u8 *__buf, size_t bc)
+			  u8 opc, u8 slave_id, u16 slave_addr, const u8 *__buf, size_t bc)
 {
 	struct spmi_controller_dev *spmi_controller = dev_get_drvdata(&ctrl->dev);
+	u32 chnl_ofst = SPMI_CHANNEL_OFFSET * spmi_controller->channel;
 	const u8 *buf = __buf;
 	unsigned long flags;
 	u32 cmd, data;
 	int rc;
-	u32 chnl_ofst = SPMI_CHANNEL_OFFSET * spmi_controller->channel;
 	u8 op_code, i;
 
 	if (bc > SPMI_CONTROLLER_MAX_TRANS_BYTES) {
@@ -222,14 +199,17 @@ static int spmi_write_cmd(struct spmi_controller *ctrl,
 		return  -EINVAL;
 	}
 
-	/* Check the opcode */
-	if (opc == SPMI_CMD_WRITE) {
+	switch (opc) {
+	case SPMI_CMD_WRITE:
 		op_code = SPMI_CMD_REG_WRITE;
-	} else if (opc == SPMI_CMD_EXT_WRITE) {
+		break;
+	case SPMI_CMD_EXT_WRITE:
 		op_code = SPMI_CMD_EXT_REG_WRITE;
-	} else if (opc == SPMI_CMD_EXT_WRITEL) {
+		break;
+	case SPMI_CMD_EXT_WRITEL:
 		op_code = SPMI_CMD_EXT_REG_WRITE_L;
-	} else {
+		break;
+	default:
 		dev_err(&ctrl->dev, "invalid write cmd 0x%x", opc);
 		return -EINVAL;
 	}
@@ -237,14 +217,13 @@ static int spmi_write_cmd(struct spmi_controller *ctrl,
 	cmd = SPMI_APB_SPMI_CMD_EN |
 	      (op_code << SPMI_APB_SPMI_CMD_TYPE_OFFSET) |
 	      ((bc - 1) << SPMI_APB_SPMI_CMD_LENGTH_OFFSET) |
-	      ((sid & 0xf) << SPMI_APB_SPMI_CMD_SLAVEID_OFFSET) |  /* slvid */
-	      ((addr & 0xffff)  << SPMI_APB_SPMI_CMD_ADDR_OFFSET); /* slave_addr */
+	      ((slave_id & 0xf) << SPMI_APB_SPMI_CMD_SLAVEID_OFFSET) |
+	      ((slave_addr & 0xffff)  << SPMI_APB_SPMI_CMD_ADDR_OFFSET);
 
 	/* Write data to FIFOs */
 	spin_lock_irqsave(&spmi_controller->lock, flags);
 
-	i = 0;
-	do {
+	for (i = 0; bc > i * SPMI_PER_DATAREG_BYTE; i++) {
 		data = 0;
 		if ((bc - i * SPMI_PER_DATAREG_BYTE) >> 2) {
 			memcpy(&data, buf, sizeof(data));
@@ -256,22 +235,22 @@ static int spmi_write_cmd(struct spmi_controller *ctrl,
 
 		writel((u32)cpu_to_be32(data),
 		       spmi_controller->base + chnl_ofst + SPMI_APB_SPMI_WDATA0_BASE_ADDR + SPMI_PER_DATAREG_BYTE * i);
-		i++;
-	} while (bc > i * SPMI_PER_DATAREG_BYTE);
+	};
 
 	/* Start the transaction */
 	writel(cmd, spmi_controller->base + chnl_ofst + SPMI_APB_SPMI_CMD_BASE_ADDR);
 
 	rc = spmi_controller_wait_for_done(&ctrl->dev, spmi_controller,
-					   spmi_controller->base, sid, addr);
+					   spmi_controller->base, slave_id,
+					   slave_addr);
 	spin_unlock_irqrestore(&spmi_controller->lock, flags);
 
 	if (rc)
-		dev_err(&ctrl->dev, "spmi write wait timeout op:0x%x sid:%d addr:0x%x bc:%ld\n",
-			opc, sid, addr, bc);
+		dev_err(&ctrl->dev, "spmi write wait timeout op:0x%x slave_id:%d slave_addr:0x%x bc:%ld\n",
+			opc, slave_id, slave_addr, bc);
 	else
-		dev_dbg(&ctrl->dev, "%s: id:%d addr:0x%x, wrote value: %*ph\n",
-			__func__, sid, addr, (int)bc, __buf);
+		dev_dbg(&ctrl->dev, "%s: id:%d slave_addr:0x%x, wrote value: %*ph\n",
+			__func__, slave_id, slave_addr, (int)bc, __buf);
 
 	return rc;
 }
@@ -281,9 +260,7 @@ static int spmi_controller_probe(struct platform_device *pdev)
 	struct spmi_controller_dev *spmi_controller;
 	struct spmi_controller *ctrl;
 	struct resource *iores;
-	int ret = 0;
-
-	dev_info(&pdev->dev, "HISI SPMI probe\n");
+	int ret;
 
 	ctrl = spmi_controller_alloc(&pdev->dev, sizeof(*spmi_controller));
 	if (!ctrl) {
@@ -293,7 +270,6 @@ static int spmi_controller_probe(struct platform_device *pdev)
 	spmi_controller = spmi_controller_get_drvdata(ctrl);
 	spmi_controller->controller = ctrl;
 
-	/* NOTE: driver uses the static register mapping */
 	iores = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	if (!iores) {
 		dev_err(&pdev->dev, "can not get resource!\n");
@@ -305,10 +281,7 @@ static int spmi_controller_probe(struct platform_device *pdev)
 		dev_err(&pdev->dev, "can not remap base addr!\n");
 		return -EADDRNOTAVAIL;
 	}
-	dev_dbg(&pdev->dev, "spmi_add_controller base addr=0x%lx!\n",
-		(unsigned long)spmi_controller->base);
 
-	/* Get properties from the device tree */
 	ret = of_property_read_u32(pdev->dev.of_node, "spmi-channel",
 				   &spmi_controller->channel);
 	if (ret) {
@@ -331,14 +304,8 @@ static int spmi_controller_probe(struct platform_device *pdev)
 
 	ret = spmi_controller_add(ctrl);
 	if (ret)
-		goto err_add_controller;
+		dev_err(&pdev->dev, "spmi_add_controller failed with error %d!\n", ret);
 
-	dev_info(&pdev->dev, "spmi_add_controller initialized\n");
-	return 0;
-
-err_add_controller:
-	dev_err(&pdev->dev, "spmi_add_controller failed!\n");
-	platform_set_drvdata(pdev, NULL);
 	return ret;
 }
 
@@ -346,8 +313,8 @@ static int spmi_del_controller(struct platform_device *pdev)
 {
 	struct spmi_controller *ctrl = platform_get_drvdata(pdev);
 
-	platform_set_drvdata(pdev, NULL);
 	spmi_controller_remove(ctrl);
+	kfree(ctrl);
 	return 0;
 }
 
@@ -362,7 +329,7 @@ static struct platform_driver spmi_controller_driver = {
 	.probe		= spmi_controller_probe,
 	.remove		= spmi_del_controller,
 	.driver		= {
-		.name	= SPMI_CONTROLLER_NAME,
+		.name	= "hisi_spmi_controller",
 		.of_match_table = spmi_controller_match_table,
 	},
 };
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
