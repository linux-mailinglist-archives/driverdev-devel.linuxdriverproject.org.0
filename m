Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E07245D93
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:12:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7DA9C20444;
	Mon, 17 Aug 2020 07:12:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vxym5INzZzdk; Mon, 17 Aug 2020 07:12:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A1DB2204DB;
	Mon, 17 Aug 2020 07:11:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AAA081BF471
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A4E92870D7
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7JuxwkpT8Yko for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 443DA8731A
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F1BD20758;
 Mon, 17 Aug 2020 07:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597648276;
 bh=IK8FV5B78aFKr4z5XflZhSiGqAZYM1MRrYAF6Fwll/g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AzbaW6L0HGO+xb+U4eIDyEvb/xu1V/ohIfUCUusC0xhkh4D3RKjzGw8nRMeanWsfN
 vjsTzrVUtjdNVOwq79AA1sGJJgqUwMW0i4yDCS1C0Ha++OBmaz9AsPuDf1BjJ0FxG9
 A0Gm4P400Tu7yTzQKeHrIx0DCPLNfmSMYYFy0mU4=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZIY-00BdjG-QI; Mon, 17 Aug 2020 09:11:14 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 02/44] staging: spmi: hisi-spmi-controller: coding style
 fixup
Date: Mon, 17 Aug 2020 09:10:21 +0200
Message-Id: <3cd60dd31e481a4f824f7085d70fc243ecbbb94f.1597647359.git.mchehab+huawei@kernel.org>
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

In order to prepare for upstream, fix most coding style issues.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/hisi-spmi-controller.c   | 179 ++++++++----------
 1 file changed, 82 insertions(+), 97 deletions(-)

diff --git a/drivers/staging/hikey9xx/hisi-spmi-controller.c b/drivers/staging/hikey9xx/hisi-spmi-controller.c
index 987526c8b49f..3af0bd1b379f 100644
--- a/drivers/staging/hikey9xx/hisi-spmi-controller.c
+++ b/drivers/staging/hikey9xx/hisi-spmi-controller.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 
 #include <linux/delay.h>
 #include <linux/err.h>
@@ -21,7 +22,7 @@
 #define SPMI_SLAVE_OFFSET						0x20
 
 #define SPMI_APB_SPMI_CMD_BASE_ADDR				0x0100
-/*lint -e750 -esym(750,*)*/
+
 #define SPMI_APB_SPMI_WDATA0_BASE_ADDR			0x0104
 #define SPMI_APB_SPMI_WDATA1_BASE_ADDR			0x0108
 #define SPMI_APB_SPMI_WDATA2_BASE_ADDR			0x010c
@@ -33,25 +34,25 @@
 #define SPMI_APB_SPMI_RDATA1_BASE_ADDR			0x0208
 #define SPMI_APB_SPMI_RDATA2_BASE_ADDR			0x020c
 #define SPMI_APB_SPMI_RDATA3_BASE_ADDR			0x0210
-/*lint +e750 -esym(750,*)*/
 
 #define SPMI_PER_DATAREG_BYTE					4
 /*
  * SPMI cmd register
  */
-#define SPMI_APB_SPMI_CMD_EN						(1 << 31)
+#define SPMI_APB_SPMI_CMD_EN						BIT(31)
 #define SPMI_APB_SPMI_CMD_TYPE_OFFSET			24
 #define SPMI_APB_SPMI_CMD_LENGTH_OFFSET			20
 #define SPMI_APB_SPMI_CMD_SLAVEID_OFFSET			16
 #define SPMI_APB_SPMI_CMD_ADDR_OFFSET				0
 
-#define Tranverse32(X)                 ((((u32)(X) & 0xff000000) >> 24) | \
-							   (((u32)(X) & 0x00ff0000) >> 8) | \
-							   (((u32)(X) & 0x0000ff00) << 8) | \
-							   (((u32)(X) & 0x000000ff) << 24))
+#define bswap_32(X)   \
+    ((((u32)(X) & 0xff000000) >> 24) | \
+     (((u32)(X) & 0x00ff0000) >> 8) | \
+     (((u32)(X) & 0x0000ff00) << 8) | \
+     (((u32)(X) & 0x000000ff) << 24))
 
 /* Command Opcodes */
-/*lint -e749 -esym(749,*)*/
+
 enum spmi_controller_cmd_op_code {
 	SPMI_CMD_REG_ZERO_WRITE = 0,
 	SPMI_CMD_REG_WRITE = 1,
@@ -65,13 +66,12 @@ enum spmi_controller_cmd_op_code {
 	SPMI_CMD_REG_SHUTDOWN = 9,
 	SPMI_CMD_REG_WAKEUP = 10,
 };
-/*lint +e749 -esym(749,*)*/
 
 /*
  * SPMI status register
  */
-#define SPMI_APB_TRANS_DONE						(1 << 0)
-#define SPMI_APB_TRANS_FAIL						(1 << 2)
+#define SPMI_APB_TRANS_DONE						BIT(0)
+#define SPMI_APB_TRANS_FAIL						BIT(2)
 
 /* Command register fields */
 #define SPMI_CONTROLLER_CMD_MAX_BYTE_COUNT	16
@@ -80,16 +80,6 @@ enum spmi_controller_cmd_op_code {
 #define SPMI_CONTROLLER_TIMEOUT_US		1000
 #define SPMI_CONTROLLER_MAX_TRANS_BYTES	(16)
 
-#define SPMI_WRITEL( dev, reg, addr )	\
-	do { \
-		writel( ( reg ), ( addr ) ); \
-	} while (0)
-
-#define  SPMI_READL( dev, reg, addr )	\
-	do { \
-		reg = readl( addr ); \
-	} while (0)
-
 /*
  * @base base address of the PMIC Arbiter core registers.
  * @rdbase, @wrbase base address of the PMIC Arbiter read core registers.
@@ -120,7 +110,7 @@ struct spmi_controller_dev {
 };
 
 static int spmi_controller_wait_for_done(struct spmi_controller_dev *ctrl_dev,
-				  void __iomem *base, u8 sid, u16 addr)
+					 void __iomem *base, u8 sid, u16 addr)
 {
 	u32 status = 0;
 	u32 timeout = SPMI_CONTROLLER_TIMEOUT_US;
@@ -128,7 +118,7 @@ static int spmi_controller_wait_for_done(struct spmi_controller_dev *ctrl_dev,
 		+ SPMI_SLAVE_OFFSET * sid;
 
 	while (timeout--) {
-		SPMI_READL(ctrl_dev->dev, status, base + offset);/*lint !e732 */
+		status = readl(base + offset);
 
 		if (status & SPMI_APB_TRANS_DONE) {
 			if (status & SPMI_APB_TRANS_FAIL) {
@@ -139,23 +129,23 @@ static int spmi_controller_wait_for_done(struct spmi_controller_dev *ctrl_dev,
 			}
 			return 0;
 		}
-		udelay(1);/*lint !e778 !e774 !e747*/
+		udelay(1);
 	}
 
 	dev_err(ctrl_dev->dev,
 		"%s: timeout, status 0x%x\n",
 		__func__, status);
-	return -ETIMEDOUT;/*lint !e438*/
-}/*lint !e715 !e529*/
+	return -ETIMEDOUT;
+}
 
 static int spmi_read_cmd(struct spmi_controller *ctrl,
-				u8 opc, u8 sid, u16 addr, u8 *buf, size_t bc)
+			 u8 opc, u8 sid, u16 addr, u8 *buf, size_t bc)
 {
 	struct spmi_controller_dev *spmi_controller = dev_get_drvdata(&ctrl->dev);
 	unsigned long flags;
 	u32 cmd, data;
 	int rc;
-	u32 chnl_ofst = SPMI_CHANNEL_OFFSET*spmi_controller->channel;
+	u32 chnl_ofst = SPMI_CHANNEL_OFFSET * spmi_controller->channel;
 	u8 op_code, i;
 
 	if (bc > SPMI_CONTROLLER_MAX_TRANS_BYTES) {
@@ -166,27 +156,26 @@ static int spmi_read_cmd(struct spmi_controller *ctrl,
 	}
 
 	/* Check the opcode */
-	if (SPMI_CMD_READ == opc)
+	if (opc == SPMI_CMD_READ) {
 		op_code = SPMI_CMD_REG_READ;
-	else if (SPMI_CMD_EXT_READ == opc)
+	} else if (opc == SPMI_CMD_EXT_READ) {
 		op_code = SPMI_CMD_EXT_REG_READ;
-	else if (SPMI_CMD_EXT_READL == opc)
+	} else if (opc == SPMI_CMD_EXT_READL) {
 		op_code = SPMI_CMD_EXT_REG_READ_L;
-	else {
+	} else {
 		dev_err(spmi_controller->dev, "invalid read cmd 0x%x", opc);
 		return -EINVAL;
 	}
 
-	cmd = SPMI_APB_SPMI_CMD_EN |/*lint !e648 !e701 */								/* cmd_en */
-		 (op_code << SPMI_APB_SPMI_CMD_TYPE_OFFSET) |/*lint !e648 !e701 */			/* cmd_type */
-		 ((bc-1) << SPMI_APB_SPMI_CMD_LENGTH_OFFSET) |/*lint !e648 !e701 */		/* byte_cnt */
-		 ((sid & 0xf) << SPMI_APB_SPMI_CMD_SLAVEID_OFFSET) |						/* slvid */
-		 ((addr & 0xffff)  << SPMI_APB_SPMI_CMD_ADDR_OFFSET);					/* slave_addr */
+	cmd = SPMI_APB_SPMI_CMD_EN |
+	     (op_code << SPMI_APB_SPMI_CMD_TYPE_OFFSET) |
+	     ((bc - 1) << SPMI_APB_SPMI_CMD_LENGTH_OFFSET) |
+	     ((sid & 0xf) << SPMI_APB_SPMI_CMD_SLAVEID_OFFSET) |  /* slvid */
+	     ((addr & 0xffff)  << SPMI_APB_SPMI_CMD_ADDR_OFFSET); /* slave_addr */
 
-	spin_lock_irqsave(&spmi_controller->lock, flags);/*lint !e550 */
-
-	SPMI_WRITEL(spmi_controller->dev, cmd, spmi_controller->base + chnl_ofst + SPMI_APB_SPMI_CMD_BASE_ADDR);
+	spin_lock_irqsave(&spmi_controller->lock, flags);
 
+	writel(cmd, spmi_controller->base + chnl_ofst + SPMI_APB_SPMI_CMD_BASE_ADDR);
 
 	rc = spmi_controller_wait_for_done(spmi_controller, spmi_controller->base, sid, addr);
 	if (rc)
@@ -194,39 +183,37 @@ static int spmi_read_cmd(struct spmi_controller *ctrl,
 
 	i = 0;
 	do {
-		SPMI_READL(spmi_controller->dev, data, spmi_controller->base + chnl_ofst + SPMI_SLAVE_OFFSET*sid + SPMI_APB_SPMI_RDATA0_BASE_ADDR + i*SPMI_PER_DATAREG_BYTE);/*lint !e732 */
-		data = Tranverse32(data);
-		if ((bc - i*SPMI_PER_DATAREG_BYTE ) >> 2) {/*lint !e702 */
+		data = readl(spmi_controller->base + chnl_ofst + SPMI_SLAVE_OFFSET * sid + SPMI_APB_SPMI_RDATA0_BASE_ADDR + i * SPMI_PER_DATAREG_BYTE);
+		data = bswap_32(data);
+		if ((bc - i * SPMI_PER_DATAREG_BYTE) >> 2) {
 			memcpy(buf, &data, sizeof(data));
 			buf += sizeof(data);
 		} else {
-			memcpy(buf, &data, bc%SPMI_PER_DATAREG_BYTE);/*lint !e747 */
-			buf += (bc%SPMI_PER_DATAREG_BYTE);
+			memcpy(buf, &data, bc % SPMI_PER_DATAREG_BYTE);
+			buf += (bc % SPMI_PER_DATAREG_BYTE);
 		}
 		i++;
-	} while (bc > i*SPMI_PER_DATAREG_BYTE);
+	} while (bc > i * SPMI_PER_DATAREG_BYTE);
 
 done:
 	spin_unlock_irqrestore(&spmi_controller->lock, flags);
 	if (rc)
 		dev_err(spmi_controller->dev, "spmi read wait timeout op:0x%x sid:%d addr:0x%x bc:%ld\n",
-							opc, sid, addr, bc + 1);
+			opc, sid, addr, bc + 1);
 	return rc;
-}/*lint !e550 !e529*/
+}
 
-/*lint -e438 -esym(438,*)*/
 static int spmi_write_cmd(struct spmi_controller *ctrl,
-				u8 opc, u8 sid, u16 addr, const u8 *buf, size_t bc)
+			  u8 opc, u8 sid, u16 addr, const u8 *buf, size_t bc)
 {
 	struct spmi_controller_dev *spmi_controller = dev_get_drvdata(&ctrl->dev);
 	unsigned long flags;
 	u32 cmd;
 	u32 data = 0;
 	int rc;
-	u32 chnl_ofst = SPMI_CHANNEL_OFFSET*spmi_controller->channel;
+	u32 chnl_ofst = SPMI_CHANNEL_OFFSET * spmi_controller->channel;
 	u8 op_code, i;
 
-
 	if (bc > SPMI_CONTROLLER_MAX_TRANS_BYTES) {
 		dev_err(spmi_controller->dev
 		, "spmi_controller supports 1..%d bytes per trans, but:%ld requested"
@@ -235,55 +222,55 @@ static int spmi_write_cmd(struct spmi_controller *ctrl,
 	}
 
 	/* Check the opcode */
-	if (SPMI_CMD_WRITE == opc)
+	if (opc == SPMI_CMD_WRITE) {
 		op_code = SPMI_CMD_REG_WRITE;
-	else if (SPMI_CMD_EXT_WRITE == opc)
+	} else if (opc == SPMI_CMD_EXT_WRITE) {
 		op_code = SPMI_CMD_EXT_REG_WRITE;
-	else if (SPMI_CMD_EXT_WRITEL == opc)
+	} else if (opc == SPMI_CMD_EXT_WRITEL) {
 		op_code = SPMI_CMD_EXT_REG_WRITE_L;
-	else {
+	} else {
 		dev_err(spmi_controller->dev, "invalid write cmd 0x%x", opc);
 		return -EINVAL;
 	}
 
-	cmd = SPMI_APB_SPMI_CMD_EN |/*lint !e648 !e701 */								/* cmd_en */
-		 (op_code << SPMI_APB_SPMI_CMD_TYPE_OFFSET) |/*lint !e648 !e701 */			/* cmd_type */
-		 ((bc-1) << SPMI_APB_SPMI_CMD_LENGTH_OFFSET) |/*lint !e648 !e701 */		/* byte_cnt */
-		 ((sid & 0xf) << SPMI_APB_SPMI_CMD_SLAVEID_OFFSET) |						/* slvid */
-		 ((addr & 0xffff)  << SPMI_APB_SPMI_CMD_ADDR_OFFSET);					/* slave_addr */
+	cmd = SPMI_APB_SPMI_CMD_EN |
+	      (op_code << SPMI_APB_SPMI_CMD_TYPE_OFFSET) |
+	      ((bc - 1) << SPMI_APB_SPMI_CMD_LENGTH_OFFSET) |
+	      ((sid & 0xf) << SPMI_APB_SPMI_CMD_SLAVEID_OFFSET) |  /* slvid */
+	      ((addr & 0xffff)  << SPMI_APB_SPMI_CMD_ADDR_OFFSET); /* slave_addr */
 
 	/* Write data to FIFOs */
-	spin_lock_irqsave(&spmi_controller->lock, flags);/*lint !e550 */
+	spin_lock_irqsave(&spmi_controller->lock, flags);
 
 	i = 0;
 	do {
 		memset(&data, 0, sizeof(data));
-		if ((bc - i*SPMI_PER_DATAREG_BYTE ) >> 2) {/*lint !e702 */
+		if ((bc - i * SPMI_PER_DATAREG_BYTE) >> 2) {
 			memcpy(&data, buf, sizeof(data));
-			buf +=sizeof(data);
+			buf += sizeof(data);
 		} else {
-			memcpy(&data, buf, bc%SPMI_PER_DATAREG_BYTE);/*lint !e747 */
-			buf +=(bc%SPMI_PER_DATAREG_BYTE);
+			memcpy(&data, buf, bc % SPMI_PER_DATAREG_BYTE);
+			buf += (bc % SPMI_PER_DATAREG_BYTE);
 		}
 
-		data = Tranverse32(data);
-		SPMI_WRITEL(spmi_controller->dev, data, spmi_controller->base + chnl_ofst + SPMI_APB_SPMI_WDATA0_BASE_ADDR+SPMI_PER_DATAREG_BYTE*i);
+		data = bswap_32(data);
+		writel(data, spmi_controller->base + chnl_ofst + SPMI_APB_SPMI_WDATA0_BASE_ADDR + SPMI_PER_DATAREG_BYTE * i);
 		i++;
-	} while (bc > i*SPMI_PER_DATAREG_BYTE);
+	} while (bc > i * SPMI_PER_DATAREG_BYTE);
 
 	/* Start the transaction */
-	SPMI_WRITEL(spmi_controller->dev, cmd, spmi_controller->base + chnl_ofst + SPMI_APB_SPMI_CMD_BASE_ADDR);
+	writel(cmd, spmi_controller->base + chnl_ofst + SPMI_APB_SPMI_CMD_BASE_ADDR);
 
 	rc = spmi_controller_wait_for_done(spmi_controller, spmi_controller->base, sid, addr);
 	spin_unlock_irqrestore(&spmi_controller->lock, flags);
 
 	if (rc)
 		dev_err(spmi_controller->dev, "spmi write wait timeout op:0x%x sid:%d addr:0x%x bc:%ld\n",
-							opc, sid, addr, bc);
+			opc, sid, addr, bc);
 
 	return rc;
-}/*lint !e438 !e550 !e529*/
-/*lint +e438 -esym(438,*)*/
+}
+
 static int spmi_controller_probe(struct platform_device *pdev)
 {
 	struct spmi_controller_dev *spmi_controller;
@@ -291,11 +278,11 @@ static int spmi_controller_probe(struct platform_device *pdev)
 	struct resource *iores;
 	int ret = 0;
 
-	printk(KERN_INFO "HISI SPMI probe\n");
+	dev_info(&pdev->dev, "HISI SPMI probe\n");
 	ctrl = spmi_controller_alloc(&pdev->dev, sizeof(*spmi_controller));
 	if (!ctrl) {
 		dev_err(&pdev->dev, "can not allocate spmi_controller data\n");
-		return -ENOMEM;  /*lint !e429*/
+		return -ENOMEM;
 	}
 	spmi_controller = spmi_controller_get_drvdata(ctrl);
 	spmi_controller->controller = ctrl;
@@ -303,23 +290,24 @@ static int spmi_controller_probe(struct platform_device *pdev)
 	/* NOTE: driver uses the static register mapping */
 	iores = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	if (!iores) {
-		dev_err(&pdev->dev, "can not get resource! \n");
-		return -EINVAL; /*lint !e429*/
+		dev_err(&pdev->dev, "can not get resource!\n");
+		return -EINVAL;
 	}
 
 	spmi_controller->base = ioremap(iores->start, resource_size(iores));
 	if (!spmi_controller->base) {
-		dev_err(&pdev->dev, "can not remap base addr! \n");
-		return -EADDRNOTAVAIL; /*lint !e429*/
+		dev_err(&pdev->dev, "can not remap base addr!\n");
+		return -EADDRNOTAVAIL;
 	}
-	dev_dbg(&pdev->dev, "spmi_add_controller base addr=0x%lx!\n", (long unsigned int)spmi_controller->base);/*lint !e774*/
+	dev_dbg(&pdev->dev, "spmi_add_controller base addr=0x%lx!\n",
+		(unsigned long)spmi_controller->base);
 
 	/* Get properties from the device tree */
 	ret = of_property_read_u32(pdev->dev.of_node, "spmi-channel",
-			&spmi_controller->channel);/*lint !e838*/
+				   &spmi_controller->channel);
 	if (ret) {
-		dev_err(&pdev->dev, "can not get chanel \n");
-		return -ENODEV; /*lint !e429*/
+		dev_err(&pdev->dev, "can not get chanel\n");
+		return -ENODEV;
 	}
 
 	platform_set_drvdata(pdev, spmi_controller);
@@ -342,7 +330,7 @@ static int spmi_controller_probe(struct platform_device *pdev)
 	}
 err_add_controller:
 	platform_set_drvdata(pdev, NULL);
-	return ret; /*lint !e429*/
+	return ret;
 }
 
 static int spmi_del_controller(struct platform_device *pdev)
@@ -354,10 +342,10 @@ static int spmi_del_controller(struct platform_device *pdev)
 	return 0;
 }
 
-static struct of_device_id spmi_controller_match_table[] = {
+static const struct of_device_id spmi_controller_match_table[] = {
 	{	.compatible = "hisilicon,spmi-controller",
-	},/*lint !e785*/
-	{}/*lint !e785*/
+	},
+	{}
 };
 
 static struct platform_driver spmi_controller_driver = {
@@ -365,14 +353,14 @@ static struct platform_driver spmi_controller_driver = {
 	.remove		= spmi_del_controller,
 	.driver		= {
 		.name	= SPMI_CONTROLLER_NAME,
-		.owner	= THIS_MODULE,/*lint !e64*/
+		.owner	= THIS_MODULE,
 		.of_match_table = spmi_controller_match_table,
-	},/*lint !e785*/
-};/*lint !e785*/
-/*lint -e528 -esym(528,*)*/
+	},
+};
+
 static int __init spmi_controller_init(void)
 {
-	return platform_driver_register(&spmi_controller_driver);/*lint !e64*/
+	return platform_driver_register(&spmi_controller_driver);
 }
 postcore_initcall(spmi_controller_init);
 
@@ -381,10 +369,7 @@ static void __exit spmi_controller_exit(void)
 	platform_driver_unregister(&spmi_controller_driver);
 }
 module_exit(spmi_controller_exit);
-/*lint -e753 -esym(753,*)*/
+
 MODULE_LICENSE("GPL v2");
-MODULE_VERSION("1.0");/*lint !e785 !e64 !e528*/
+MODULE_VERSION("1.0");
 MODULE_ALIAS("platform:spmi_controlller");
-/*lint -e753 +esym(753,*)*/
-/*lint -e528 +esym(528,*)*/
-
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
