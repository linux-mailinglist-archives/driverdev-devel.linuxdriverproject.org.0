Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B710330CDF
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 May 2019 12:52:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4056C8771E;
	Fri, 31 May 2019 10:52:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rutU5fZkxNFU; Fri, 31 May 2019 10:52:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4DD04876E4;
	Fri, 31 May 2019 10:52:42 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B4501BF386
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 10:52:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 289DA882B5
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 10:52:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z4sAdJJa0yH5
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 10:52:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9D3E788176
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 10:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TM3YHYjdDuYdTQnCWfFepkqnr1kEFd68Q9P1Lo249b4=; b=cvzZGYmV8LtOwEyYY+DYTpB66w
 qH1LyQfuZol1xb5ffB98FiA4sShf78hjGqvsXrVcGPb6jb48VR+G0O2qdu8LaHWVG94HDbrEKNGoA
 qhM40YDuXbyEaaAGl/cpQyqzsmcxQwx+YPCCRUeN9cj9YHRrYUDqm7da7Cls85h//KCBE3wgfitQZ
 gJ0+CcnS9s4pXu6UVHKHu0FPGAqqQcSmZoCFKFrAPv856EMwwtn/zASBd4uGPEymN+uEKCnZi6JMX
 Bdh3SzpuEvAChh2L+mdRspPAjqRC26vcoDId1U+owI7DTaXti/5FzUREjVFGLa2QBfF9Jhb1nsGrs
 YVGqTC5w==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hWf9E-0006f6-4x; Fri, 31 May 2019 11:52:32 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 2/2] staging: kpc2000: removed misc device.
Date: Fri, 31 May 2019 11:52:31 +0100
Message-Id: <20190531105231.26380-3-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190531105231.26380-1-jeremy@azazel.net>
References: <20190531001156.GA25210@kroah.com>
 <20190531105231.26380-1-jeremy@azazel.net>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 192.168.96.2
X-SA-Exim-Mail-From: jeremy@azazel.net
X-SA-Exim-Scanned: No (on kadath.azazel.net); SAEximRunCond expanded to false
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
Cc: Greg KH <gregkh@linuxfoundation.org>,
 =?UTF-8?q?Simon=20Sandstr=C3=B6m?= <simon@nikanor.nu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Now that all the card information is available via sysfs, the misc
device is no longer necessary.  Removed it.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc2000/core.c | 127 +------------------------
 drivers/staging/kpc2000/kpc2000/pcie.h |   2 -
 2 files changed, 2 insertions(+), 127 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index 4d6a443d7301..7f257c21e0cc 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -300,111 +300,6 @@ static irqreturn_t kp2000_irq_handler(int irq, void *dev_id)
 	return IRQ_HANDLED;
 }
 
-static int kp2000_cdev_open(struct inode *inode, struct file *filp)
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
-static int kp2000_cdev_close(struct inode *inode, struct file *filp)
-{
-	struct kp2000_device *pcard = filp->private_data;
-
-	dev_dbg(&pcard->pdev->dev, "kp2000_cdev_close(filp = [%p], pcard = [%p])\n", filp, pcard);
-	return 0;
-}
-
-static ssize_t kp2000_cdev_read(struct file *filp, char __user *buf,
-				size_t count, loff_t *f_pos)
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
-static long kp2000_cdev_ioctl(struct file *filp, unsigned int ioctl_num,
-			      unsigned long ioctl_param)
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
-		struct kp2000_regs regs;
-		int ret;
-
-		memset(&regs, 0, sizeof(regs));
-		regs.card_id = pcard->card_id;
-		regs.build_version = pcard->build_version;
-		regs.build_datestamp = pcard->build_datestamp;
-		regs.build_timestamp = pcard->build_timestamp;
-		regs.hw_rev = pcard->hardware_revision;
-		regs.ssid = pcard->ssid;
-		regs.ddna = pcard->ddna;
-		regs.cpld_reg = readq(pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
-
-		ret = copy_to_user((void*)ioctl_param, (void*)&regs, sizeof(regs));
-		if (ret)
-			return -EFAULT;
-
-		return sizeof(regs);
-		}
-
-	default:
-		return -ENOTTY;
-	}
-	return -ENOTTY;
-}
-
-static struct file_operations kp2000_fops = {
-	.owner =		THIS_MODULE,
-	.open =			kp2000_cdev_open,
-	.release =		kp2000_cdev_close,
-	.read =			kp2000_cdev_read,
-	.llseek =		noop_llseek,
-	.unlocked_ioctl =	kp2000_cdev_ioctl,
-};
-
 static int kp2000_pcie_probe(struct pci_dev *pdev,
 			     const struct pci_device_id *id)
 {
@@ -603,26 +498,11 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
 	}
 
 	/*
-	 * Step 10: Setup misc device
-	 */
-	pcard->miscdev.minor = MISC_DYNAMIC_MINOR;
-	pcard->miscdev.fops = &kp2000_fops;
-	pcard->miscdev.parent = &pcard->pdev->dev;
-	pcard->miscdev.name = pcard->name;
-
-	err = misc_register(&pcard->miscdev);
-	if (err) {
-		dev_err(&pcard->pdev->dev,
-			"kp2000_pcie_probe: misc_register failed: %d\n", err);
-		goto out10;
-	}
-
-	/*
-	 * Step 11: Probe cores
+	 * Step 10: Probe cores
 	 */
 	err = kp2000_probe_cores(pcard);
 	if (err)
-		goto out11;
+		goto out10;
 
 	/*
 	 * Step 12: Enable IRQs in HW
@@ -634,8 +514,6 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
 	mutex_unlock(&pcard->sem);
 	return 0;
 
-out11:
-	misc_deregister(&pcard->miscdev);
 out10:
 	sysfs_remove_files(&(pdev->dev.kobj), kp_attr_list);
 out9:
@@ -674,7 +552,6 @@ static void kp2000_pcie_remove(struct pci_dev *pdev)
 	mutex_lock(&pcard->sem);
 	kp2000_remove_cores(pcard);
 	mfd_remove_devices(PCARD_TO_DEV(pcard));
-	misc_deregister(&pcard->miscdev);
 	sysfs_remove_files(&(pdev->dev.kobj), kp_attr_list);
 	free_irq(pcard->pdev->irq, pcard);
 	pci_disable_msi(pcard->pdev);
diff --git a/drivers/staging/kpc2000/kpc2000/pcie.h b/drivers/staging/kpc2000/kpc2000/pcie.h
index 59db46752961..d3cdb515a75c 100644
--- a/drivers/staging/kpc2000/kpc2000/pcie.h
+++ b/drivers/staging/kpc2000/kpc2000/pcie.h
@@ -2,7 +2,6 @@
 #ifndef KP2000_PCIE_H
 #define KP2000_PCIE_H
 #include <linux/types.h>
-#include <linux/miscdevice.h>
 #include <linux/pci.h>
 #include "../kpc.h"
 #include "dma_common_defs.h"
@@ -50,7 +49,6 @@
 
 struct kp2000_device {
 	struct pci_dev		*pdev;
-	struct miscdevice	miscdev;
 	char			name[16];
 
 	unsigned int		card_num;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
