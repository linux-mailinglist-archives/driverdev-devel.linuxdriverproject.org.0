Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3698118428
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 May 2019 05:36:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9C582865E9;
	Thu,  9 May 2019 03:36:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p0sWXoi26GyJ; Thu,  9 May 2019 03:36:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D2170864F2;
	Thu,  9 May 2019 03:36:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 70C911BF96A
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 03:36:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6C566863AE
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 03:36:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7Bb4WIM0VIFY for <devel@linuxdriverproject.org>;
 Thu,  9 May 2019 03:36:45 +0000 (UTC)
X-Greylist: delayed 00:59:22 by SQLgrey-1.7.6
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
 (mail-eopbgr750044.outbound.protection.outlook.com [40.107.75.44])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 800088630F
 for <devel@driverdev.osuosl.org>; Thu,  9 May 2019 03:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=daktronics.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uGkWlr9VCVceWh3oLoZ3mq+jO6Pl7a4egLHP3+QtfDc=;
 b=k0nKQR6mdWT3K/zSvjkCy3klRaRiUKuN+VdTULauGn/vX+iLOQEAUlJXO7FKurDMWCUjxlmt0fuG7LNL2QH1MbDXW3mogAcbl6KsiLZRoeg9265UwGf/vcX9FtN6Abl/Mz0nceBS4GyETN+LtWEA1jj9ZYrKOpZcnudFWcyMzPs=
Received: from SN6PR02MB4016.namprd02.prod.outlook.com (52.135.69.145) by
 SN6PR02MB4496.namprd02.prod.outlook.com (52.135.121.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Thu, 9 May 2019 02:05:22 +0000
Received: from SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::9159:5594:9b0a:df2d]) by SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::9159:5594:9b0a:df2d%2]) with mapi id 15.20.1878.019; Thu, 9 May 2019
 02:05:22 +0000
From: Matt Sickler <Matt.Sickler@daktronics.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: [PATCH] kpc_i2c: Remove unused file
Thread-Topic: [PATCH] kpc_i2c: Remove unused file
Thread-Index: AdUGC6JyZik1oPJ1Qi2BiEnq1JJE8Q==
Date: Thu, 9 May 2019 02:05:22 +0000
Message-ID: <SN6PR02MB40164B9448E87E3349AF232EEE330@SN6PR02MB4016.namprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Matt.Sickler@daktronics.com; 
x-originating-ip: [63.85.214.4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 63c681bb-3e47-421e-6a42-08d6d422cb7e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:SN6PR02MB4496; 
x-ms-traffictypediagnostic: SN6PR02MB4496:
x-microsoft-antispam-prvs: <SN6PR02MB4496309DCA20194648CA14A2EE330@SN6PR02MB4496.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(136003)(366004)(376002)(346002)(199004)(189003)(52536014)(26005)(102836004)(305945005)(72206003)(478600001)(25786009)(6506007)(3846002)(186003)(86362001)(6116002)(74316002)(2906002)(7696005)(9686003)(68736007)(99286004)(486006)(476003)(5660300002)(71190400001)(2501003)(71200400001)(55016002)(7736002)(8936002)(66066001)(66556008)(6436002)(64756008)(66446008)(66476007)(76116006)(316002)(66946007)(1730700003)(6916009)(2351001)(53936002)(8676002)(73956011)(81156014)(81166006)(5640700003)(256004)(14444005)(33656002)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4496;
 H:SN6PR02MB4016.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: daktronics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 5x+5Bcyry4S+dNxrMrYuZLCwR8ni/a6C/nbgdNK4rdlWV2jhXdr6x8Zz376PJngJIoslZXwVoprHtR3VhMLxizOUHMK/b6uPVAiNdPcGoFDd9C+1DJTv6mlLrdU8vUoz/5luxblHHi+NcHXqmKHU2Rq6ULHOKzApNV8bKkPNQrEbNuEdHJKv8Z6z1qosBgiPNRKYEY2KvYIrztzhSzQ4/nAaNlqI9u5cxIKarNCF3Sua6psFxL+4M540T/SctFTCdN/9dH7/LPfcHUSPQh3qQX5to531IR58qqHCa9CHgTG/8oBKcxvCnK+Ohf17Q0ixcffB12VS1ddcTyLETQLonb/pG2kOu7OZBaMQEjLpxVSB5pbcx/82QSPusbFNo63SrdZWVfxXwyJtmwjPwK/VZbNooAAwKTkSEdrA7VGuaoA=
MIME-Version: 1.0
X-OriginatorOrg: daktronics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63c681bb-3e47-421e-6a42-08d6d422cb7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2019 02:05:22.6479 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: be88af81-0945-42aa-a3d2-b122777351a2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4496
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The whole file was wrapped in an #if 0.  I'm guessing it was a leftover file
from when we were first developing the driver and we just forgot about it.
---
 drivers/staging/kpc2000/kpc_i2c/Makefile  |   2 +-
 drivers/staging/kpc2000/kpc_i2c/fileops.c | 181 ------------------------------
 2 files changed, 1 insertion(+), 182 deletions(-)
 delete mode 100644 drivers/staging/kpc2000/kpc_i2c/fileops.c

diff --git a/drivers/staging/kpc2000/kpc_i2c/Makefile b/drivers/staging/kpc2000/kpc_i2c/Makefile
index 73ec07ac7d39..63a6ce4b8e03 100644
--- a/drivers/staging/kpc2000/kpc_i2c/Makefile
+++ b/drivers/staging/kpc2000/kpc_i2c/Makefile
@@ -1,4 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 
 obj-m := kpc2000_i2c.o
-kpc2000_i2c-objs := i2c_driver.o fileops.o
+kpc2000_i2c-objs := i2c_driver.o
diff --git a/drivers/staging/kpc2000/kpc_i2c/fileops.c b/drivers/staging/kpc2000/kpc_i2c/fileops.c
deleted file mode 100644
index e749c0994491..000000000000
--- a/drivers/staging/kpc2000/kpc_i2c/fileops.c
+++ /dev/null
@@ -1,181 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-#if 0
-#include <linux/module.h>
-#include <linux/init.h>
-#include <linux/kernel.h>	/* printk() */
-#include <linux/slab.h>		/* kmalloc() */
-#include <linux/fs.h>		/* everything... */
-#include <linux/errno.h>	/* error codes */
-#include <linux/types.h>	/* size_t */
-#include <linux/cdev.h>
-#include <asm/uaccess.h>	/* copy_*_user */
-
-#include "i2c_driver.h"
-
-int i2c_cdev_open(struct inode *inode, struct file *filp)
-{
-  struct i2c_device *lddev;
-  
-  if(NULL == inode) {
-    //printk(KERN_WARNING "<pl_i2c> i2c_cdev_open: inode is a NULL pointer\n");
-    DBG_PRINT(KERN_WARNING, "i2c_cdev_open: inode is a NULL pointer\n");
-    return -EINVAL;
-  }
-  if(NULL == filp) {
-    //printk(KERN_WARNING "<pl_i2c> i2c_cdev_open: filp is a NULL pointer\n");
-    DBG_PRINT(KERN_WARNING, "i2c_cdev_open: filp is a NULL pointer\n");
-    return -EINVAL;
-  }
-  
-  lddev = container_of(inode->i_cdev, struct i2c_device, cdev);
-  //printk(KERN_DEBUG "<pl_i2c> i2c_cdev_open(filp = [%p], lddev = [%p])\n", filp, lddev);
-  DBG_PRINT(KERN_DEBUG, "i2c_cdev_open(filp = [%p], lddev = [%p])\n", filp, lddev);
-  
-  filp->private_data = lddev; /* so other methods can access it */
-  
-  return 0;	/* success */
-}
-
-int i2c_cdev_close(struct inode *inode, struct file *filp)
-{
-  struct i2c_device *lddev;
-  
-  if(NULL == inode) {
-    //printk(KERN_WARNING "<pl_i2c> i2c_cdev_close: inode is a NULL pointer\n");
-    DBG_PRINT(KERN_WARNING, "i2c_cdev_close: inode is a NULL pointer\n");
-    return -EINVAL;
-  }
-  if(NULL == filp) {
-    //printk(KERN_WARNING "<pl_i2c> i2c_cdev_close: filp is a NULL pointer\n");
-    DBG_PRINT(KERN_WARNING, "i2c_cdev_close: filp is a NULL pointer\n");
-    return -EINVAL;
-  }
-  
-  lddev = filp->private_data;
-  //printk(KERN_DEBUG "<pl_i2c> i2c_cdev_close(filp = [%p], lddev = [%p])\n", filp, lddev);
-  DBG_PRINT(KERN_DEBUG, "i2c_cdev_close(filp = [%p], lddev = [%p])\n", filp, lddev);
-  
-  return 0;
-}
-
-ssize_t i2c_cdev_read(struct file *filp, char __user *buf, size_t count, loff_t *f_pos)
-{
-  size_t copy;
-  ssize_t ret = 0;
-  int err = 0;
-  u64 read_val;
-  char tmp_buf[48] = { 0 };
-  struct i2c_device *lddev = filp->private_data;
-
-  if(NULL == filp) {
-    //printk(KERN_WARNING "<pl_i2c> i2c_cdev_read: filp is a NULL pointer\n");
-    DBG_PRINT(KERN_WARNING, "i2c_cdev_read: filp is a NULL pointer\n");
-    return -EINVAL;
-  }
-  if(NULL == buf) {
-    //printk(KERN_WARNING "<pl_i2c> i2c_cdev_read: buf is a NULL pointer\n");
-    DBG_PRINT(KERN_WARNING, "i2c_cdev_read: buf is a NULL pointer\n");
-    return -EINVAL;
-  }
-  if(NULL == f_pos) {
-    //printk(KERN_WARNING "<pl_i2c> i2c_cdev_read: f_pos is a NULL pointer\n");
-    DBG_PRINT(KERN_WARNING, "i2c_cdev_read: f_pos is a NULL pointer\n");
-    return -EINVAL;
-  }
-
-  if(count < sizeof(tmp_buf)) {
-    //printk(KERN_INFO "<pl_i2c> i2c_cdev_read: buffer is too small (count = %d, should be at least %d bytes)\n", (int)count, (int)sizeof(tmp_buf));
-    DBG_PRINT(KERN_INFO, "i2c_cdev_read: buffer is too small (count = %d, should be at least %d bytes)\n", (int)count, (int)sizeof(tmp_buf));
-    return -EINVAL;
-  }
-  if(((*f_pos * 8) + lddev->pldev->resource[0].start) > lddev->pldev->resource[0].end) {
-    //printk(KERN_INFO "<pl_i2c> i2c_cdev_read: bad read addr %016llx\n", (*f_pos * 8) + lddev->pldev->resource[0].start);
-    DBG_PRINT(KERN_INFO, "i2c_cdev_read: bad read addr %016llx\n", (*f_pos * 8) + lddev->pldev->resource[0].start);
-    //printk(KERN_INFO "<pl_i2c> i2c_cdev_read: addr end %016llx\n", lddev->pldev->resource[0].end);
-    DBG_PRINT(KERN_INFO, "i2c_cdev_read: addr end %016llx\n", lddev->pldev->resource[0].end);
-    //printk(KERN_INFO "<pl_i2c> i2c_cdev_read: EOF reached\n");
-    DBG_PRINT(KERN_INFO, "i2c_cdev_read: EOF reached\n");
-    return 0;
-  }
-
-  down_read(&lddev->rw_sem);
-  
-  read_val = *(lddev->regs + *f_pos);
-  copy = clamp_t(size_t, count, 1, sizeof(tmp_buf));
-  copy = scnprintf(tmp_buf, copy, "reg: 0x%x val: 0x%llx\n", (unsigned int)*f_pos, read_val);
-  err = copy_to_user(buf, tmp_buf, copy);
-  if(err) {
-    //printk(KERN_INFO "<pl_i2c> i2c_cdev_read: could not copy to user (err = %d)\n", err);
-    DBG_PRINT(KERN_INFO, "i2c_cdev_read: could not copy to user (err = %d)\n", err);
-    return -EINVAL;
-  }
-
-  ret = (ssize_t)copy;
-  (*f_pos)++;
-  
-  up_read(&lddev->rw_sem);
-  
-  return ret;
-}
-
-ssize_t i2c_cdev_write(struct file *filp, const char __user *buf, size_t count, loff_t *f_pos)
-{
-  u8 reg;
-  u8 val;
-  char tmp[8] = { 0 };
-  struct i2c_device *lddev = filp->private_data;
-
-  if(NULL == filp) {
-    //printk(KERN_WARNING "<pl_i2c> i2c_cdev_write: filp is a NULL pointer\n");
-    DBG_PRINT(KERN_WARNING, "i2c_cdev_write: filp is a NULL pointer\n");
-    return -EINVAL;
-  }
-  if(NULL == buf) {
-    //printk(KERN_WARNING "<pl_i2c> i2c_cdev_write: buf is a NULL pointer\n");
-    DBG_PRINT(KERN_WARNING, "i2c_cdev_write: buf is a NULL pointer\n");
-    return -EINVAL;
-  }
-  if(NULL == f_pos) {
-    //printk(KERN_WARNING "<pl_i2c> i2c_cdev_write: f_pos is a NULL pointer\n");
-    DBG_PRINT(KERN_WARNING, "i2c_cdev_write: f_pos is a NULL pointer\n");
-    return -EINVAL;
-  }
-
-  //printk(KERN_DEBUG "<pl_i2c> i2c_cdev_write(filp = [%p], lddev = [%p])\n", filp, lddev);
-  DBG_PRINT(KERN_DEBUG, "i2c_cdev_write(filp = [%p], lddev = [%p])\n", filp, lddev);
-
-  down_write(&lddev->rw_sem);
-
-  if(count >= 2) {
-    if(copy_from_user(tmp, buf, 2)) {
-      return -EFAULT;
-    }
-    
-    reg = tmp[0] - '0';
-    val = tmp[1] - '0';
-
-    //printk(KERN_DEBUG "  reg = %d  val = %d\n", reg, val);
-    DBG_PRINT(KERN_DEBUG, "  reg = %d  val = %d\n", reg, val);
-
-    if(reg >= 0 && reg < 16) {
-      //printk(KERN_DEBUG "  Writing 0x%x to %p\n", val, lddev->regs + reg);
-      DBG_PRINT(KERN_DEBUG, "  Writing 0x%x to %p\n", val, lddev->regs + reg);
-      *(lddev->regs + reg) = val;
-    }
-  }
-
-  (*f_pos)++;
-
-  up_write(&lddev->rw_sem);
-
-  return count;
-}
-
-struct file_operations i2c_fops = {
-  .owner		= THIS_MODULE,
-  .open		= i2c_cdev_open,
-  .release	= i2c_cdev_close,
-  .read		= i2c_cdev_read,
-  .write		= i2c_cdev_write,
-};
-#endif
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
