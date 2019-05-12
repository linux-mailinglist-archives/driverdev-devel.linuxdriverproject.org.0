Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0506E1AAF9
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 May 2019 09:15:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DD82223B9B;
	Sun, 12 May 2019 07:15:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yJ92RFIWTjkM; Sun, 12 May 2019 07:15:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AA337230A4;
	Sun, 12 May 2019 07:15:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4057E1BF422
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 07:15:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3DD7785886
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 07:15:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kXINtZK-A__0 for <devel@linuxdriverproject.org>;
 Sun, 12 May 2019 07:15:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1DF318584A
 for <devel@driverdev.osuosl.org>; Sun, 12 May 2019 07:15:32 +0000 (UTC)
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A420E1A8D9F99BE6D38F;
 Sun, 12 May 2019 15:15:28 +0800 (CST)
Received: from localhost (10.177.31.96) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Sun, 12 May 2019
 15:15:21 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <gregkh@linuxfoundation.org>, <Matt.Sickler@daktronics.com>
Subject: [PATCH -next] staging: kpc2000: remove unused function
 kp2000_cdev_write
Date: Sun, 12 May 2019 14:46:15 +0800
Message-ID: <20190512064615.7364-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.177.31.96]
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

There is no callers in tree, so can be removed.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/kpc2000/kpc2000/fileops.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/fileops.c b/drivers/staging/kpc2000/kpc2000/fileops.c
index b3b0b763fa1e..f8774d8f69b8 100644
--- a/drivers/staging/kpc2000/kpc2000/fileops.c
+++ b/drivers/staging/kpc2000/kpc2000/fileops.c
@@ -74,11 +74,6 @@ ssize_t  kp2000_cdev_read(struct file *filp, char __user *buf, size_t count, lof
 	return count;
 }
 
-ssize_t  kp2000_cdev_write(struct file *filp, const char __user *buf, size_t count, loff_t *f_pos)
-{
-	return -EINVAL;
-}
-
 long  kp2000_cdev_ioctl(struct file *filp, unsigned int ioctl_num, unsigned long ioctl_param)
 {
 	struct kp2000_device *pcard = filp->private_data;
@@ -122,9 +117,6 @@ struct file_operations  kp2000_fops = {
 	.open       = kp2000_cdev_open,
 	.release    = kp2000_cdev_close,
 	.read       = kp2000_cdev_read,
-	//.write      = kp2000_cdev_write,
-	//.poll       = kp2000_cdev_poll,
-	//.fasync     = kp2000_cdev_fasync,
 	.llseek     = noop_llseek,
 	.unlocked_ioctl = kp2000_cdev_ioctl,
 };
-- 
2.20.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
