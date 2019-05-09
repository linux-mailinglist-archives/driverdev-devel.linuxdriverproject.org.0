Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4DB18AFF
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 May 2019 15:53:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 666CB868A8;
	Thu,  9 May 2019 13:53:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Elss4dcQilW; Thu,  9 May 2019 13:52:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0709E86870;
	Thu,  9 May 2019 13:52:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D90B1BF964
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 13:52:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2464A877C3
 for <devel@linuxdriverproject.org>; Thu,  9 May 2019 13:52:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2PyJwOD3TPvx for <devel@linuxdriverproject.org>;
 Thu,  9 May 2019 13:52:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
 (mail-eopbgr800087.outbound.protection.outlook.com [40.107.80.87])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 40C0687167
 for <devel@driverdev.osuosl.org>; Thu,  9 May 2019 13:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=daktronics.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5ZIHJMb9bWRU5WDqywFyOIC+ZK5lHytYXDWAJ5Sz9j8=;
 b=PQHTsCRAcgnvRJ6hRxc78Yf+ocIjUAYL6Z55n5eU09Td7fdeGrT7ZzqynKD0VX36DPBssPk8sUrcWrapwIKT4aJj4l0/eM3VjFsO9S3azn53ht78Pj5yjv5jnGpCPqXavukXYhQnWDtnbhkk4+iPy+f1aAxAcB9wkKZhhOmly/M=
Received: from SN6PR02MB4016.namprd02.prod.outlook.com (52.135.69.145) by
 SN6PR02MB5581.namprd02.prod.outlook.com (20.177.251.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Thu, 9 May 2019 13:38:27 +0000
Received: from SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::9159:5594:9b0a:df2d]) by SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::9159:5594:9b0a:df2d%2]) with mapi id 15.20.1878.019; Thu, 9 May 2019
 13:38:27 +0000
From: Matt Sickler <Matt.Sickler@daktronics.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: [PATCH v2] kpc_i2c: Remove unused file
Thread-Topic: [PATCH v2] kpc_i2c: Remove unused file
Thread-Index: AdUGbHODCASY7QLYQRSl3nQVqiUvog==
Date: Thu, 9 May 2019 13:38:27 +0000
Message-ID: <SN6PR02MB4016E93EC94A46E6C79A76DBEE330@SN6PR02MB4016.namprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Matt.Sickler@daktronics.com; 
x-originating-ip: [2620:9b:8000:6046:f4cf:9f33:7f85:77db]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 164de774-3864-4449-3d8c-08d6d4839dd6
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:SN6PR02MB5581; 
x-ms-traffictypediagnostic: SN6PR02MB5581:
x-microsoft-antispam-prvs: <SN6PR02MB5581F088ACAF69B493EE080AEE330@SN6PR02MB5581.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(39860400002)(136003)(366004)(396003)(189003)(199004)(33656002)(14454004)(52536014)(6436002)(256004)(25786009)(5640700003)(478600001)(14444005)(55016002)(72206003)(6116002)(305945005)(53936002)(6916009)(7736002)(46003)(76116006)(486006)(476003)(1730700003)(8936002)(9686003)(2501003)(5660300002)(8676002)(68736007)(81156014)(81166006)(6506007)(74316002)(86362001)(102836004)(7696005)(2906002)(66556008)(66946007)(66476007)(66446008)(73956011)(71190400001)(71200400001)(64756008)(99286004)(2351001)(316002)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5581;
 H:SN6PR02MB4016.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: daktronics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6lgQrnx7P+kKCeDKbgYQAd+/lO66Gye+9MkKBOovn4+sRbRqbx/aFgH2My1towJEMCl5Mni+bndxVx4t+G0SLRoQYAmVAFcdZf6JCO97oHk9L0fEY5QBYxx+8WuX90jnpw4Rs9JlF9uW5bQje9Yed7k0ak6hS0M/W+B87sum9xleT9i4ejB+7wJsk/CTfe4i3zCY1LWfsbntecSO40BEf9sn64Pe245SSeHJpH/AED1/wDQsxVpb74cUZX1QYheEe+U5iVLf935zc8pK80XVAwCSiJWh8NxWkz9jZb7DJLYUpDCqRkybm59pnYsDNeuwVr3nA5XiGIXKKoyFiDBqTdvvd+sCwENr1vGjpqsCMECSE34Kb43aYBDDprBmDhH/bSklEQ92splx0gBcOBIPeQrJCJDCi/iaiB1CwF1HQ0s=
MIME-Version: 1.0
X-OriginatorOrg: daktronics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 164de774-3864-4449-3d8c-08d6d4839dd6
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2019 13:38:27.2190 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: be88af81-0945-42aa-a3d2-b122777351a2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5581
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

V2: Forgot the signed-off-by line on the first patch.

Signed-off-by: Matt Sickler <matt.sickler@daktronics.com>
---
 drivers/staging/kpc2000/kpc_i2c/Makefile  |   2 +-
 drivers/staging/kpc2000/kpc_i2c/fileops.c | 181 ------------------------------
 2 files changed, 1 insertion(+), 182 deletions(-)  delete mode 100644 drivers/staging/kpc2000/kpc_i2c/fileops.c

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
-int i2c_cdev_open(struct inode *inode, struct file *filp) -{
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
-int i2c_cdev_close(struct inode *inode, struct file *filp) -{
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
-ssize_t i2c_cdev_read(struct file *filp, char __user *buf, size_t count, loff_t *f_pos) -{
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
-ssize_t i2c_cdev_write(struct file *filp, const char __user *buf, size_t count, loff_t *f_pos) -{
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
