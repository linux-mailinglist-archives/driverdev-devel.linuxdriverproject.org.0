Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B82D245D67
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:11:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B677867F6;
	Mon, 17 Aug 2020 07:11:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K9rs2_X2_LF7; Mon, 17 Aug 2020 07:11:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DABF3866E5;
	Mon, 17 Aug 2020 07:11:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7BFCC1BF471
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7772687568
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7UidbpEtDO7n for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0E57B870D7
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 88DB22072D;
 Mon, 17 Aug 2020 07:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597648276;
 bh=MlDcxzkbuLMgyFc0uqNYSBwf021ccWZS89Xs+dghTz4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AqXPmSZISoigOPTt924tBAw2zeV56xSInUY1f/pYelNx1kB5QkYZt0SBiSHDCEFBp
 t3AJ029dqObrSjMl2himXI77fLtLk30nFFe1oGEF4YSbDK/XBu9dwR4L+0U3AA8SUp
 fBry9gw2vk4A2wPFl1nGAJKkBkjab8vctR7XP44Q=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZIY-00BdjE-O1; Mon, 17 Aug 2020 09:11:14 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 01/44] staging: spmi: add Hikey 970 SPMI controller driver
Date: Mon, 17 Aug 2020 09:10:20 +0200
Message-Id: <b4810f476e41e7de4efdf28b42472ae4ffe7defe.1597647359.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Mayulong <mayulong1@huawei.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, mauro.chehab@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Mayulong <mayulong1@huawei.com>

Add the SPMI controller code required to use the Kirin 970
SPMI bus.

[mchehab+huawei@kernel.org: added just the SPMI controller on this patch]

The complete patch is at:

	https://github.com/96boards-hikey/linux/commit/08464419fba2

Signed-off-by: Mayulong <mayulong1@huawei.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/hisi-spmi-controller.c   | 390 ++++++++++++++++++
 1 file changed, 390 insertions(+)
 create mode 100644 drivers/staging/hikey9xx/hisi-spmi-controller.c

diff --git a/drivers/staging/hikey9xx/hisi-spmi-controller.c b/drivers/staging/hikey9xx/hisi-spmi-controller.c
new file mode 100644
index 000000000000..987526c8b49f
--- /dev/null
+++ b/drivers/staging/hikey9xx/hisi-spmi-controller.c
@@ -0,0 +1,390 @@
+
+#include <linux/delay.h>
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+#include <linux/of.h>
+#include <linux/interrupt.h>
+#include <linux/module.h>
+#include <linux/seq_file.h>
+#include <linux/spmi.h>
+#include <linux/spmi.h>
+
+#define SPMI_CONTROLLER_NAME		"spmi_controller"
+
+/*
+ * SPMI register addr
+ */
+#define SPMI_CHANNEL_OFFSET					0x0300
+#define SPMI_SLAVE_OFFSET						0x20
+
+#define SPMI_APB_SPMI_CMD_BASE_ADDR				0x0100
+/*lint -e750 -esym(750,*)*/
+#define SPMI_APB_SPMI_WDATA0_BASE_ADDR			0x0104
+#define SPMI_APB_SPMI_WDATA1_BASE_ADDR			0x0108
+#define SPMI_APB_SPMI_WDATA2_BASE_ADDR			0x010c
+#define SPMI_APB_SPMI_WDATA3_BASE_ADDR			0x0110
+
+#define SPMI_APB_SPMI_STATUS_BASE_ADDR			0x0200
+
+#define SPMI_APB_SPMI_RDATA0_BASE_ADDR			0x0204
+#define SPMI_APB_SPMI_RDATA1_BASE_ADDR			0x0208
+#define SPMI_APB_SPMI_RDATA2_BASE_ADDR			0x020c
+#define SPMI_APB_SPMI_RDATA3_BASE_ADDR			0x0210
+/*lint +e750 -esym(750,*)*/
+
+#define SPMI_PER_DATAREG_BYTE					4
+/*
+ * SPMI cmd register
+ */
+#define SPMI_APB_SPMI_CMD_EN						(1 << 31)
+#define SPMI_APB_SPMI_CMD_TYPE_OFFSET			24
+#define SPMI_APB_SPMI_CMD_LENGTH_OFFSET			20
+#define SPMI_APB_SPMI_CMD_SLAVEID_OFFSET			16
+#define SPMI_APB_SPMI_CMD_ADDR_OFFSET				0
+
+#define Tranverse32(X)                 ((((u32)(X) & 0xff000000) >> 24) | \
+							   (((u32)(X) & 0x00ff0000) >> 8) | \
+							   (((u32)(X) & 0x0000ff00) << 8) | \
+							   (((u32)(X) & 0x000000ff) << 24))
+
+/* Command Opcodes */
+/*lint -e749 -esym(749,*)*/
+enum spmi_controller_cmd_op_code {
+	SPMI_CMD_REG_ZERO_WRITE = 0,
+	SPMI_CMD_REG_WRITE = 1,
+	SPMI_CMD_REG_READ = 2,
+	SPMI_CMD_EXT_REG_WRITE = 3,
+	SPMI_CMD_EXT_REG_READ = 4,
+	SPMI_CMD_EXT_REG_WRITE_L = 5,
+	SPMI_CMD_EXT_REG_READ_L = 6,
+	SPMI_CMD_REG_RESET = 7,
+	SPMI_CMD_REG_SLEEP = 8,
+	SPMI_CMD_REG_SHUTDOWN = 9,
+	SPMI_CMD_REG_WAKEUP = 10,
+};
+/*lint +e749 -esym(749,*)*/
+
+/*
+ * SPMI status register
+ */
+#define SPMI_APB_TRANS_DONE						(1 << 0)
+#define SPMI_APB_TRANS_FAIL						(1 << 2)
+
+/* Command register fields */
+#define SPMI_CONTROLLER_CMD_MAX_BYTE_COUNT	16
+
+/* Maximum number of support PMIC peripherals */
+#define SPMI_CONTROLLER_TIMEOUT_US		1000
+#define SPMI_CONTROLLER_MAX_TRANS_BYTES	(16)
+
+#define SPMI_WRITEL( dev, reg, addr )	\
+	do { \
+		writel( ( reg ), ( addr ) ); \
+	} while (0)
+
+#define  SPMI_READL( dev, reg, addr )	\
+	do { \
+		reg = readl( addr ); \
+	} while (0)
+
+/*
+ * @base base address of the PMIC Arbiter core registers.
+ * @rdbase, @wrbase base address of the PMIC Arbiter read core registers.
+ *     For HW-v1 these are equal to base.
+ *     For HW-v2, the value is the same in eeraly probing, in order to read
+ *     PMIC_ARB_CORE registers, then chnls, and obsrvr are set to
+ *     PMIC_ARB_CORE_REGISTERS and PMIC_ARB_CORE_REGISTERS_OBS respectivly.
+ * @intr base address of the SPMI interrupt control registers
+ * @ppid_2_chnl_tbl lookup table f(SID, Periph-ID) -> channel num
+ *      entry is only valid if corresponding bit is set in valid_ppid_bitmap.
+ * @valid_ppid_bitmap bit is set only for valid ppids.
+ * @fmt_cmd formats a command to be set into PMIC_ARBq_CHNLn_CMD
+ * @chnl_ofst calculates offset of the base of a channel reg space
+ * @ee execution environment id
+ * @irq_acc0_init_val initial value of the interrupt accumulator at probe time.
+ *      Use for an HW workaround. On handling interrupts, the first accumulator
+ *      register will be compared against this value, and bits which are set at
+ *      boot will be ignored.
+ * @reserved_chnl entry of ppid_2_chnl_tbl that this driver should never touch.
+ *      value is positive channel number or negative to mark it unused.
+ */
+struct spmi_controller_dev {
+	struct spmi_controller	*controller;
+	struct device		*dev;
+	void __iomem		*base;
+	spinlock_t		lock;
+	u32			channel;
+};
+
+static int spmi_controller_wait_for_done(struct spmi_controller_dev *ctrl_dev,
+				  void __iomem *base, u8 sid, u16 addr)
+{
+	u32 status = 0;
+	u32 timeout = SPMI_CONTROLLER_TIMEOUT_US;
+	u32 offset = SPMI_APB_SPMI_STATUS_BASE_ADDR + SPMI_CHANNEL_OFFSET * ctrl_dev->channel
+		+ SPMI_SLAVE_OFFSET * sid;
+
+	while (timeout--) {
+		SPMI_READL(ctrl_dev->dev, status, base + offset);/*lint !e732 */
+
+		if (status & SPMI_APB_TRANS_DONE) {
+			if (status & SPMI_APB_TRANS_FAIL) {
+				dev_err(ctrl_dev->dev,
+					"%s: transaction failed (0x%x)\n",
+					__func__, status);
+				return -EIO;
+			}
+			return 0;
+		}
+		udelay(1);/*lint !e778 !e774 !e747*/
+	}
+
+	dev_err(ctrl_dev->dev,
+		"%s: timeout, status 0x%x\n",
+		__func__, status);
+	return -ETIMEDOUT;/*lint !e438*/
+}/*lint !e715 !e529*/
+
+static int spmi_read_cmd(struct spmi_controller *ctrl,
+				u8 opc, u8 sid, u16 addr, u8 *buf, size_t bc)
+{
+	struct spmi_controller_dev *spmi_controller = dev_get_drvdata(&ctrl->dev);
+	unsigned long flags;
+	u32 cmd, data;
+	int rc;
+	u32 chnl_ofst = SPMI_CHANNEL_OFFSET*spmi_controller->channel;
+	u8 op_code, i;
+
+	if (bc > SPMI_CONTROLLER_MAX_TRANS_BYTES) {
+		dev_err(spmi_controller->dev
+		, "spmi_controller supports 1..%d bytes per trans, but:%ld requested"
+					, SPMI_CONTROLLER_MAX_TRANS_BYTES, bc);
+		return  -EINVAL;
+	}
+
+	/* Check the opcode */
+	if (SPMI_CMD_READ == opc)
+		op_code = SPMI_CMD_REG_READ;
+	else if (SPMI_CMD_EXT_READ == opc)
+		op_code = SPMI_CMD_EXT_REG_READ;
+	else if (SPMI_CMD_EXT_READL == opc)
+		op_code = SPMI_CMD_EXT_REG_READ_L;
+	else {
+		dev_err(spmi_controller->dev, "invalid read cmd 0x%x", opc);
+		return -EINVAL;
+	}
+
+	cmd = SPMI_APB_SPMI_CMD_EN |/*lint !e648 !e701 */								/* cmd_en */
+		 (op_code << SPMI_APB_SPMI_CMD_TYPE_OFFSET) |/*lint !e648 !e701 */			/* cmd_type */
+		 ((bc-1) << SPMI_APB_SPMI_CMD_LENGTH_OFFSET) |/*lint !e648 !e701 */		/* byte_cnt */
+		 ((sid & 0xf) << SPMI_APB_SPMI_CMD_SLAVEID_OFFSET) |						/* slvid */
+		 ((addr & 0xffff)  << SPMI_APB_SPMI_CMD_ADDR_OFFSET);					/* slave_addr */
+
+	spin_lock_irqsave(&spmi_controller->lock, flags);/*lint !e550 */
+
+	SPMI_WRITEL(spmi_controller->dev, cmd, spmi_controller->base + chnl_ofst + SPMI_APB_SPMI_CMD_BASE_ADDR);
+
+
+	rc = spmi_controller_wait_for_done(spmi_controller, spmi_controller->base, sid, addr);
+	if (rc)
+		goto done;
+
+	i = 0;
+	do {
+		SPMI_READL(spmi_controller->dev, data, spmi_controller->base + chnl_ofst + SPMI_SLAVE_OFFSET*sid + SPMI_APB_SPMI_RDATA0_BASE_ADDR + i*SPMI_PER_DATAREG_BYTE);/*lint !e732 */
+		data = Tranverse32(data);
+		if ((bc - i*SPMI_PER_DATAREG_BYTE ) >> 2) {/*lint !e702 */
+			memcpy(buf, &data, sizeof(data));
+			buf += sizeof(data);
+		} else {
+			memcpy(buf, &data, bc%SPMI_PER_DATAREG_BYTE);/*lint !e747 */
+			buf += (bc%SPMI_PER_DATAREG_BYTE);
+		}
+		i++;
+	} while (bc > i*SPMI_PER_DATAREG_BYTE);
+
+done:
+	spin_unlock_irqrestore(&spmi_controller->lock, flags);
+	if (rc)
+		dev_err(spmi_controller->dev, "spmi read wait timeout op:0x%x sid:%d addr:0x%x bc:%ld\n",
+							opc, sid, addr, bc + 1);
+	return rc;
+}/*lint !e550 !e529*/
+
+/*lint -e438 -esym(438,*)*/
+static int spmi_write_cmd(struct spmi_controller *ctrl,
+				u8 opc, u8 sid, u16 addr, const u8 *buf, size_t bc)
+{
+	struct spmi_controller_dev *spmi_controller = dev_get_drvdata(&ctrl->dev);
+	unsigned long flags;
+	u32 cmd;
+	u32 data = 0;
+	int rc;
+	u32 chnl_ofst = SPMI_CHANNEL_OFFSET*spmi_controller->channel;
+	u8 op_code, i;
+
+
+	if (bc > SPMI_CONTROLLER_MAX_TRANS_BYTES) {
+		dev_err(spmi_controller->dev
+		, "spmi_controller supports 1..%d bytes per trans, but:%ld requested"
+					, SPMI_CONTROLLER_MAX_TRANS_BYTES, bc);
+		return  -EINVAL;
+	}
+
+	/* Check the opcode */
+	if (SPMI_CMD_WRITE == opc)
+		op_code = SPMI_CMD_REG_WRITE;
+	else if (SPMI_CMD_EXT_WRITE == opc)
+		op_code = SPMI_CMD_EXT_REG_WRITE;
+	else if (SPMI_CMD_EXT_WRITEL == opc)
+		op_code = SPMI_CMD_EXT_REG_WRITE_L;
+	else {
+		dev_err(spmi_controller->dev, "invalid write cmd 0x%x", opc);
+		return -EINVAL;
+	}
+
+	cmd = SPMI_APB_SPMI_CMD_EN |/*lint !e648 !e701 */								/* cmd_en */
+		 (op_code << SPMI_APB_SPMI_CMD_TYPE_OFFSET) |/*lint !e648 !e701 */			/* cmd_type */
+		 ((bc-1) << SPMI_APB_SPMI_CMD_LENGTH_OFFSET) |/*lint !e648 !e701 */		/* byte_cnt */
+		 ((sid & 0xf) << SPMI_APB_SPMI_CMD_SLAVEID_OFFSET) |						/* slvid */
+		 ((addr & 0xffff)  << SPMI_APB_SPMI_CMD_ADDR_OFFSET);					/* slave_addr */
+
+	/* Write data to FIFOs */
+	spin_lock_irqsave(&spmi_controller->lock, flags);/*lint !e550 */
+
+	i = 0;
+	do {
+		memset(&data, 0, sizeof(data));
+		if ((bc - i*SPMI_PER_DATAREG_BYTE ) >> 2) {/*lint !e702 */
+			memcpy(&data, buf, sizeof(data));
+			buf +=sizeof(data);
+		} else {
+			memcpy(&data, buf, bc%SPMI_PER_DATAREG_BYTE);/*lint !e747 */
+			buf +=(bc%SPMI_PER_DATAREG_BYTE);
+		}
+
+		data = Tranverse32(data);
+		SPMI_WRITEL(spmi_controller->dev, data, spmi_controller->base + chnl_ofst + SPMI_APB_SPMI_WDATA0_BASE_ADDR+SPMI_PER_DATAREG_BYTE*i);
+		i++;
+	} while (bc > i*SPMI_PER_DATAREG_BYTE);
+
+	/* Start the transaction */
+	SPMI_WRITEL(spmi_controller->dev, cmd, spmi_controller->base + chnl_ofst + SPMI_APB_SPMI_CMD_BASE_ADDR);
+
+	rc = spmi_controller_wait_for_done(spmi_controller, spmi_controller->base, sid, addr);
+	spin_unlock_irqrestore(&spmi_controller->lock, flags);
+
+	if (rc)
+		dev_err(spmi_controller->dev, "spmi write wait timeout op:0x%x sid:%d addr:0x%x bc:%ld\n",
+							opc, sid, addr, bc);
+
+	return rc;
+}/*lint !e438 !e550 !e529*/
+/*lint +e438 -esym(438,*)*/
+static int spmi_controller_probe(struct platform_device *pdev)
+{
+	struct spmi_controller_dev *spmi_controller;
+	struct spmi_controller *ctrl;
+	struct resource *iores;
+	int ret = 0;
+
+	printk(KERN_INFO "HISI SPMI probe\n");
+	ctrl = spmi_controller_alloc(&pdev->dev, sizeof(*spmi_controller));
+	if (!ctrl) {
+		dev_err(&pdev->dev, "can not allocate spmi_controller data\n");
+		return -ENOMEM;  /*lint !e429*/
+	}
+	spmi_controller = spmi_controller_get_drvdata(ctrl);
+	spmi_controller->controller = ctrl;
+
+	/* NOTE: driver uses the static register mapping */
+	iores = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!iores) {
+		dev_err(&pdev->dev, "can not get resource! \n");
+		return -EINVAL; /*lint !e429*/
+	}
+
+	spmi_controller->base = ioremap(iores->start, resource_size(iores));
+	if (!spmi_controller->base) {
+		dev_err(&pdev->dev, "can not remap base addr! \n");
+		return -EADDRNOTAVAIL; /*lint !e429*/
+	}
+	dev_dbg(&pdev->dev, "spmi_add_controller base addr=0x%lx!\n", (long unsigned int)spmi_controller->base);/*lint !e774*/
+
+	/* Get properties from the device tree */
+	ret = of_property_read_u32(pdev->dev.of_node, "spmi-channel",
+			&spmi_controller->channel);/*lint !e838*/
+	if (ret) {
+		dev_err(&pdev->dev, "can not get chanel \n");
+		return -ENODEV; /*lint !e429*/
+	}
+
+	platform_set_drvdata(pdev, spmi_controller);
+	dev_set_drvdata(&ctrl->dev, spmi_controller);
+
+	spin_lock_init(&spmi_controller->lock);
+
+	ctrl->nr = spmi_controller->channel;
+	ctrl->dev.parent = pdev->dev.parent;
+	ctrl->dev.of_node = of_node_get(pdev->dev.of_node);
+
+	/* Callbacks */
+	ctrl->read_cmd = spmi_read_cmd;
+	ctrl->write_cmd = spmi_write_cmd;
+
+	ret = spmi_controller_add(ctrl);
+	if (ret) {
+		dev_err(&pdev->dev, "spmi_add_controller failed!\n");
+		goto err_add_controller;
+	}
+err_add_controller:
+	platform_set_drvdata(pdev, NULL);
+	return ret; /*lint !e429*/
+}
+
+static int spmi_del_controller(struct platform_device *pdev)
+{
+	struct spmi_controller *ctrl = platform_get_drvdata(pdev);
+
+	platform_set_drvdata(pdev, NULL);
+	spmi_controller_remove(ctrl);
+	return 0;
+}
+
+static struct of_device_id spmi_controller_match_table[] = {
+	{	.compatible = "hisilicon,spmi-controller",
+	},/*lint !e785*/
+	{}/*lint !e785*/
+};
+
+static struct platform_driver spmi_controller_driver = {
+	.probe		= spmi_controller_probe,
+	.remove		= spmi_del_controller,
+	.driver		= {
+		.name	= SPMI_CONTROLLER_NAME,
+		.owner	= THIS_MODULE,/*lint !e64*/
+		.of_match_table = spmi_controller_match_table,
+	},/*lint !e785*/
+};/*lint !e785*/
+/*lint -e528 -esym(528,*)*/
+static int __init spmi_controller_init(void)
+{
+	return platform_driver_register(&spmi_controller_driver);/*lint !e64*/
+}
+postcore_initcall(spmi_controller_init);
+
+static void __exit spmi_controller_exit(void)
+{
+	platform_driver_unregister(&spmi_controller_driver);
+}
+module_exit(spmi_controller_exit);
+/*lint -e753 -esym(753,*)*/
+MODULE_LICENSE("GPL v2");
+MODULE_VERSION("1.0");/*lint !e785 !e64 !e528*/
+MODULE_ALIAS("platform:spmi_controlller");
+/*lint -e753 +esym(753,*)*/
+/*lint -e528 +esym(528,*)*/
+
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
