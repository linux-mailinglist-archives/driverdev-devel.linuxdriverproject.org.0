Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFB822F30
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 10:47:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BF9A5854D8;
	Mon, 20 May 2019 08:47:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WqzoiIuFVXDW; Mon, 20 May 2019 08:47:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1BA5285456;
	Mon, 20 May 2019 08:47:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 756DA1BF83A
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 720F18700D
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 08:47:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 44OExGn3N1gj for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 08:47:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3C146862B7
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 08:47:32 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D323206BA;
 Mon, 20 May 2019 08:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558342052;
 bh=e2km/C0d72VbDHqyflvGrVB3/Ue6VgoThZbNOFmxEDs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XDBqkLpmflIoCuL+zdZnxDq/WfNo3JwlTZ1HV7qHGy/eDB5A4747BE+sQveTNO1kL
 O2uhc5Ely1x3oLfVDCdXy4vr1W75vlGjmomk9RlTEddIpgwlSQzVapQox1bbjb/rjA
 u6dm4WwxcEfSE8uyivBMDyngf7QvizNbzz7k0YO8=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 1/7] staging: kpc2000: remove fileops.c file.
Date: Mon, 20 May 2019 10:47:10 +0200
Message-Id: <20190520084716.28063-2-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190520084716.28063-1-gregkh@linuxfoundation.org>
References: <20190520084716.28063-1-gregkh@linuxfoundation.org>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The fileops.c file does not need to be stand-alone, so move it into the
core.c file.  This lets us make some functions static, reducing the
global namespace of the driver.

Cc: Matt Sickler <Matt.Sickler@daktronics.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 v2: fix kbuild issues

 drivers/staging/kpc2000/kpc2000/Makefile  |   2 +-
 drivers/staging/kpc2000/kpc2000/core.c    | 114 +++++++++++++++++++-
 drivers/staging/kpc2000/kpc2000/fileops.c | 123 ----------------------
 drivers/staging/kpc2000/kpc2000/pcie.h    |   3 -
 4 files changed, 114 insertions(+), 128 deletions(-)
 delete mode 100644 drivers/staging/kpc2000/kpc2000/fileops.c

diff --git a/drivers/staging/kpc2000/kpc2000/Makefile b/drivers/staging/kpc2000/kpc2000/Makefile
index cfc20e2193df..c274ad083db6 100644
--- a/drivers/staging/kpc2000/kpc2000/Makefile
+++ b/drivers/staging/kpc2000/kpc2000/Makefile
@@ -1,4 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 
 obj-m := kpc2000.o
-kpc2000-objs += core.o  cell_probe.o  fileops.o
+kpc2000-objs += core.o  cell_probe.o
diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index d8c44cc59ed7..0ab4cce73895 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -1,10 +1,16 @@
 // SPDX-License-Identifier: GPL-2.0+
+#include <linux/kernel.h>
 #include <linux/init.h>
 #include <linux/module.h>
 #include <linux/pci.h>
 #include <linux/types.h>
 #include <linux/export.h>
 #include <linux/slab.h>
+#include <linux/fs.h>
+#include <linux/errno.h>
+#include <linux/cdev.h>
+#include <linux/rwsem.h>
+#include <linux/uaccess.h>
 #include <asm/io.h>
 #include <linux/io.h>
 #include <linux/mfd/core.h>
@@ -17,7 +23,7 @@
 #include <linux/sched.h>
 #include <linux/jiffies.h>
 #include "pcie.h"
-
+#include "uapi.h"
 
 /*******************************************************
   * SysFS Attributes
@@ -198,6 +204,112 @@ irqreturn_t  kp2000_irq_handler(int irq, void *dev_id)
     return IRQ_HANDLED;
 }
 
+static int kp2000_cdev_open(struct inode *inode, struct file *filp)
+{
+	struct kp2000_device *pcard = container_of(filp->private_data, struct kp2000_device, miscdev);
+
+	dev_dbg(&pcard->pdev->dev, "kp2000_cdev_open(filp = [%p], pcard = [%p])\n", filp, pcard);
+
+	filp->private_data = pcard; /* so other methods can access it */
+
+	return 0;
+}
+
+static int kp2000_cdev_close(struct inode *inode, struct file *filp)
+{
+	struct kp2000_device *pcard = filp->private_data;
+
+	dev_dbg(&pcard->pdev->dev, "kp2000_cdev_close(filp = [%p], pcard = [%p])\n", filp, pcard);
+	return 0;
+}
+
+
+static ssize_t kp2000_cdev_read(struct file *filp, char __user *buf,
+				size_t count, loff_t *f_pos)
+{
+	struct kp2000_device *pcard = filp->private_data;
+	int cnt = 0;
+	int ret;
+#define BUFF_CNT  1024
+	char buff[BUFF_CNT] = {0}; //NOTE: Increase this so it is at least as large as all the scnprintfs.  And don't use unbounded strings. "%s"
+	//NOTE: also, this is a really shitty way to implement the read() call, but it will work for any size 'count'.
+
+	if (WARN(NULL == buf, "kp2000_cdev_read: buf is a NULL pointer!\n"))
+		return -EINVAL;
+
+	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "Card ID                 : 0x%08x\n", pcard->card_id);
+	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "Build Version           : 0x%08x\n", pcard->build_version);
+	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "Build Date              : 0x%08x\n", pcard->build_datestamp);
+	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "Build Time              : 0x%08x\n", pcard->build_timestamp);
+	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "Core Table Offset       : 0x%08x\n", pcard->core_table_offset);
+	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "Core Table Length       : 0x%08x\n", pcard->core_table_length);
+	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "Hardware Revision       : 0x%08x\n", pcard->hardware_revision);
+	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "SSID                    : 0x%016llx\n", pcard->ssid);
+	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "DDNA                    : 0x%016llx\n", pcard->ddna);
+	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "IRQ Mask                : 0x%016llx\n", readq(pcard->sysinfo_regs_base + REG_INTERRUPT_MASK));
+	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "IRQ Active              : 0x%016llx\n", readq(pcard->sysinfo_regs_base + REG_INTERRUPT_ACTIVE));
+	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "CPLD                    : 0x%016llx\n", readq(pcard->sysinfo_regs_base + REG_CPLD_CONFIG));
+
+	if (*f_pos >= cnt)
+		return 0;
+
+	if (count > cnt)
+		count = cnt;
+
+	ret = copy_to_user(buf, buff + *f_pos, count);
+	if (ret)
+		return -EFAULT;
+	*f_pos += count;
+	return count;
+}
+
+static long kp2000_cdev_ioctl(struct file *filp, unsigned int ioctl_num,
+			      unsigned long ioctl_param)
+{
+	struct kp2000_device *pcard = filp->private_data;
+
+	dev_dbg(&pcard->pdev->dev, "kp2000_cdev_ioctl(filp = [%p], ioctl_num = 0x%08x, ioctl_param = 0x%016lx) pcard = [%p]\n", filp, ioctl_num, ioctl_param, pcard);
+
+	switch (ioctl_num){
+	case KP2000_IOCTL_GET_CPLD_REG:             return readq(pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
+	case KP2000_IOCTL_GET_PCIE_ERROR_REG:       return readq(pcard->sysinfo_regs_base + REG_PCIE_ERROR_COUNT);
+
+	case KP2000_IOCTL_GET_EVERYTHING: {
+		struct kp2000_regs temp;
+		int ret;
+
+		memset(&temp, 0, sizeof(temp));
+		temp.card_id = pcard->card_id;
+		temp.build_version = pcard->build_version;
+		temp.build_datestamp = pcard->build_datestamp;
+		temp.build_timestamp = pcard->build_timestamp;
+		temp.hw_rev = pcard->hardware_revision;
+		temp.ssid = pcard->ssid;
+		temp.ddna = pcard->ddna;
+		temp.cpld_reg = readq(pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
+
+		ret = copy_to_user((void*)ioctl_param, (void*)&temp, sizeof(temp));
+		if (ret)
+			return -EFAULT;
+
+		return sizeof(temp);
+		}
+
+	default:
+		return -ENOTTY;
+	}
+	return -ENOTTY;
+}
+
+static struct file_operations kp2000_fops = {
+	.owner =		THIS_MODULE,
+	.open =			kp2000_cdev_open,
+	.release =		kp2000_cdev_close,
+	.read =			kp2000_cdev_read,
+	.llseek =		noop_llseek,
+	.unlocked_ioctl =	kp2000_cdev_ioctl,
+};
+
 static int kp2000_pcie_probe(struct pci_dev *pdev,
 			     const struct pci_device_id *id)
 {
diff --git a/drivers/staging/kpc2000/kpc2000/fileops.c b/drivers/staging/kpc2000/kpc2000/fileops.c
deleted file mode 100644
index c582af4383f7..000000000000
--- a/drivers/staging/kpc2000/kpc2000/fileops.c
+++ /dev/null
@@ -1,123 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-#include <linux/module.h>
-#include <linux/init.h>
-#include <linux/kernel.h>   /* printk() */
-#include <linux/slab.h>     /* kmalloc() */
-#include <linux/fs.h>       /* everything... */
-#include <linux/errno.h>    /* error codes */
-#include <linux/types.h>    /* size_t */
-#include <linux/cdev.h>
-#include <linux/uaccess.h>    /* copy_*_user */
-#include <linux/rwsem.h>
-#include <linux/idr.h>
-#include <linux/io-64-nonatomic-lo-hi.h>
-#include <linux/device.h>
-#include <linux/sched.h>
-#include "pcie.h"
-#include "uapi.h"
-
-int  kp2000_cdev_open(struct inode *inode, struct file *filp)
-{
-	struct kp2000_device *pcard = container_of(filp->private_data, struct kp2000_device, miscdev);
-
-	dev_dbg(&pcard->pdev->dev, "kp2000_cdev_open(filp = [%p], pcard = [%p])\n", filp, pcard);
-
-	filp->private_data = pcard; /* so other methods can access it */
-
-	return 0;
-}
-
-int  kp2000_cdev_close(struct inode *inode, struct file *filp)
-{
-	struct kp2000_device *pcard = filp->private_data;
-
-	dev_dbg(&pcard->pdev->dev, "kp2000_cdev_close(filp = [%p], pcard = [%p])\n", filp, pcard);
-	return 0;
-}
-
-
-ssize_t  kp2000_cdev_read(struct file *filp, char __user *buf, size_t count, loff_t *f_pos)
-{
-	struct kp2000_device *pcard = filp->private_data;
-	int cnt = 0;
-	int ret;
-#define BUFF_CNT  1024
-	char buff[BUFF_CNT] = {0}; //NOTE: Increase this so it is at least as large as all the scnprintfs.  And don't use unbounded strings. "%s"
-	//NOTE: also, this is a really shitty way to implement the read() call, but it will work for any size 'count'.
-
-	if (WARN(NULL == buf, "kp2000_cdev_read: buf is a NULL pointer!\n"))
-		return -EINVAL;
-
-	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "Card ID                 : 0x%08x\n", pcard->card_id);
-	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "Build Version           : 0x%08x\n", pcard->build_version);
-	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "Build Date              : 0x%08x\n", pcard->build_datestamp);
-	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "Build Time              : 0x%08x\n", pcard->build_timestamp);
-	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "Core Table Offset       : 0x%08x\n", pcard->core_table_offset);
-	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "Core Table Length       : 0x%08x\n", pcard->core_table_length);
-	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "Hardware Revision       : 0x%08x\n", pcard->hardware_revision);
-	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "SSID                    : 0x%016llx\n", pcard->ssid);
-	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "DDNA                    : 0x%016llx\n", pcard->ddna);
-	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "IRQ Mask                : 0x%016llx\n", readq(pcard->sysinfo_regs_base + REG_INTERRUPT_MASK));
-	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "IRQ Active              : 0x%016llx\n", readq(pcard->sysinfo_regs_base + REG_INTERRUPT_ACTIVE));
-	cnt += scnprintf(buff+cnt, BUFF_CNT-cnt, "CPLD                    : 0x%016llx\n", readq(pcard->sysinfo_regs_base + REG_CPLD_CONFIG));
-
-	if (*f_pos >= cnt)
-		return 0;
-
-	if (count > cnt)
-		count = cnt;
-
-	ret = copy_to_user(buf, buff + *f_pos, count);
-	if (ret)
-		return -EFAULT;
-	*f_pos += count;
-	return count;
-}
-
-long  kp2000_cdev_ioctl(struct file *filp, unsigned int ioctl_num, unsigned long ioctl_param)
-{
-	struct kp2000_device *pcard = filp->private_data;
-
-	dev_dbg(&pcard->pdev->dev, "kp2000_cdev_ioctl(filp = [%p], ioctl_num = 0x%08x, ioctl_param = 0x%016lx) pcard = [%p]\n", filp, ioctl_num, ioctl_param, pcard);
-
-	switch (ioctl_num){
-	case KP2000_IOCTL_GET_CPLD_REG:             return readq(pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
-	case KP2000_IOCTL_GET_PCIE_ERROR_REG:       return readq(pcard->sysinfo_regs_base + REG_PCIE_ERROR_COUNT);
-
-	case KP2000_IOCTL_GET_EVERYTHING: {
-		struct kp2000_regs temp;
-		int ret;
-
-		memset(&temp, 0, sizeof(temp));
-		temp.card_id = pcard->card_id;
-		temp.build_version = pcard->build_version;
-		temp.build_datestamp = pcard->build_datestamp;
-		temp.build_timestamp = pcard->build_timestamp;
-		temp.hw_rev = pcard->hardware_revision;
-		temp.ssid = pcard->ssid;
-		temp.ddna = pcard->ddna;
-		temp.cpld_reg = readq(pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
-
-		ret = copy_to_user((void*)ioctl_param, (void*)&temp, sizeof(temp));
-		if (ret)
-			return -EFAULT;
-
-		return sizeof(temp);
-		}
-
-	default:
-		return -ENOTTY;
-	}
-	return -ENOTTY;
-}
-
-
-struct file_operations  kp2000_fops = {
-	.owner      = THIS_MODULE,
-	.open       = kp2000_cdev_open,
-	.release    = kp2000_cdev_close,
-	.read       = kp2000_cdev_read,
-	.llseek     = noop_llseek,
-	.unlocked_ioctl = kp2000_cdev_ioctl,
-};
-
diff --git a/drivers/staging/kpc2000/kpc2000/pcie.h b/drivers/staging/kpc2000/kpc2000/pcie.h
index b1b407c0018d..e204f12632dc 100644
--- a/drivers/staging/kpc2000/kpc2000/pcie.h
+++ b/drivers/staging/kpc2000/kpc2000/pcie.h
@@ -87,9 +87,6 @@ extern struct attribute *kpc_uio_class_attrs[];
 int   kp2000_probe_cores(struct kp2000_device *pcard);
 void  kp2000_remove_cores(struct kp2000_device *pcard);
 
-extern struct file_operations  kp2000_fops;
-
-
 // Define this quick little macro because the expression is used frequently
 #define PCARD_TO_DEV(pcard)  (&(pcard->pdev->dev))
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
