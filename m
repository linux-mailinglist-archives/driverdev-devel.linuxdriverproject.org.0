Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA5A434A2
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 11:24:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5EF5C22775;
	Thu, 13 Jun 2019 09:24:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vH3SldFuUWsF; Thu, 13 Jun 2019 09:24:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DAFCC2271C;
	Thu, 13 Jun 2019 09:24:04 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EF48D1BF314
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 09:24:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E82E886356
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 09:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7+0z+qUaKxYw
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 09:24:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A8B0586100
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 09:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ef2pxaO0VQ7e5RkGhoalT2v7BA88fNZ/FZmg+m2e0hM=; b=IkzHgkgVWaoQMSf2fnBClr+mi6
 g+90yTieQI+HKoBBTJ5JImIRKW7DVz2Q+eYlfagWIVCaPTq9yWTOy2Uvr55cOeZtvDZc1qtRtG7aJ
 z6vq4A1uRHyVBu6gw5lkytVttjcR991lMqnQqD0ljhE0WRJTFSWYJshprttF8NMxtSObwEycxR/dP
 +wBUBkdU4CwmUe5S5R1EuRXphXbws0nG3CtWk0t3Cgn26a9958x2JvA0pMlm3djZ1F35PlmfS+Od0
 IOyroMM4Hum0Y3bTpnU6iHmKXK3qcwdmmkaA7bco7VD5gYt/JWfZUOCSAS4RiZ6ys5iAk0zk3DcPU
 GRfQBLoA==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hbLxe-0000x9-Jr; Thu, 13 Jun 2019 10:23:58 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH RESEND] staging: kpc2000: removed DMA AIO implementation.
Date: Thu, 13 Jun 2019 10:23:58 +0100
Message-Id: <20190613092358.23405-1-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613092056.GA5055@kroah.com>
References: <20190613092056.GA5055@kroah.com>
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
Cc: Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The existing implementation for doing DMA via asynchronous IO didn't
work and there was no longer a use-case for it.  Removed it.

Fixed a few checkpatch warnings about too-long lines and extraneous
braces in the process.

Reported-by: Matt Sickler <matt.sickler@daktronics.com>
Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/TODO                  |   3 -
 drivers/staging/kpc2000/kpc_dma/fileops.c     | 102 ++++--------------
 .../staging/kpc2000/kpc_dma/kpc_dma_driver.h  |   2 -
 3 files changed, 21 insertions(+), 86 deletions(-)

diff --git a/drivers/staging/kpc2000/TODO b/drivers/staging/kpc2000/TODO
index 47530e23e940..9b5ab37fb3a0 100644
--- a/drivers/staging/kpc2000/TODO
+++ b/drivers/staging/kpc2000/TODO
@@ -1,5 +1,2 @@
 - the kpc_spi driver doesn't seem to let multiple transactions (to different instances of the core) happen in parallel...
 - The kpc_i2c driver is a hot mess, it should probably be cleaned up a ton.  It functions against current hardware though.
-- would be nice if the AIO fileops in kpc_dma could be made to work
-    - probably want to add a CONFIG_ option to control compilation of the AIO functions
-- if the AIO fileops in kpc_dma start working, next would be making iov_count > 1 work too
diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index f80b01715d93..7feb2fde0db2 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -9,7 +9,6 @@
 #include <linux/types.h>    /* size_t */
 #include <linux/cdev.h>
 #include <linux/uaccess.h>  /* copy_*_user */
-#include <linux/aio.h>      /* aio stuff */
 #include <linux/highmem.h>
 #include <linux/pagemap.h>
 #include "kpc_dma_driver.h"
@@ -32,8 +31,8 @@ unsigned int  count_parts_for_sge(struct scatterlist *sg)
 }
 
 /**********  Transfer Helpers  **********/
-static
-int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned long iov_base, size_t iov_len)
+static int kpc_dma_transfer(struct dev_private_data *priv,
+			    unsigned long iov_base, size_t iov_len)
 {
 	unsigned int i = 0;
 	long rv = 0;
@@ -65,7 +64,6 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 	acd->ldev = priv->ldev;
 	acd->cpl = &done;
 	acd->flags = 0;
-	acd->kcb = kcb;
 	acd->len = iov_len;
 	acd->page_count = count_pages(iov_base, iov_len);
 
@@ -173,21 +171,18 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 
 	unlock_engine(ldev);
 
-	// If this is a synchronous kiocb, we need to put the calling process to sleep until the transfer is complete
-	if (kcb == NULL || is_sync_kiocb(kcb)) {
-		rv = wait_for_completion_interruptible(&done);
-		// If the user aborted (rv == -ERESTARTSYS), we're no longer responsible for cleaning up the acd
-		if (rv == -ERESTARTSYS) {
-			acd->cpl = NULL;
-		}
-		if (rv == 0) {
-			rv = acd->len;
-			kfree(acd);
-		}
-		return rv;
+	rv = wait_for_completion_interruptible(&done);
+	/*
+	 * If the user aborted (rv == -ERESTARTSYS), we're no longer responsible
+	 * for cleaning up the acd
+	 */
+	if (rv == -ERESTARTSYS)
+		acd->cpl = NULL;
+	if (rv == 0) {
+		rv = acd->len;
+		kfree(acd);
 	}
-
-	return -EIOCBQUEUED;
+	return rv;
 
  err_descr_too_many:
 	unlock_engine(ldev);
@@ -234,17 +229,13 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
 
 	acd->flags = flags;
 
-	if (acd->kcb == NULL || is_sync_kiocb(acd->kcb)) {
-		if (acd->cpl) {
-			complete(acd->cpl);
-		} else {
-			// There's no completion, so we're responsible for cleaning up the acd
-			kfree(acd);
-		}
+	if (acd->cpl) {
+		complete(acd->cpl);
 	} else {
-#ifdef CONFIG_KPC_DMA_AIO
-		aio_complete(acd->kcb, acd->len, acd->flags);
-#endif
+		/*
+		 * There's no completion, so we're responsible for cleaning up
+		 * the acd
+		 */
 		kfree(acd);
 	}
 }
@@ -308,53 +299,6 @@ int  kpc_dma_close(struct inode *inode, struct file *filp)
 	return 0;
 }
 
-#ifdef CONFIG_KPC_DMA_AIO
-static
-int  kpc_dma_aio_cancel(struct kiocb *kcb)
-{
-	struct dev_private_data *priv = (struct dev_private_data *)kcb->ki_filp->private_data;
-
-	dev_dbg(&priv->ldev->pldev->dev, "%s(kcb = [%p]) priv = [%p], ldev = [%p]\n", __func__, kcb, priv, priv->ldev);
-	return 0;
-}
-
-static
-ssize_t   kpc_dma_aio_read(struct kiocb *kcb, const struct iovec *iov, unsigned long iov_count, loff_t pos)
-{
-	struct dev_private_data *priv = (struct dev_private_data *)kcb->ki_filp->private_data;
-
-	if (priv->ldev->dir != DMA_FROM_DEVICE)
-		return -EMEDIUMTYPE;
-
-	if (iov_count != 1) {
-		dev_err(&priv->ldev->pldev->dev, "%s() called with iov_count > 1!\n", __func__);
-		return -EFAULT;
-	}
-
-	if (!is_sync_kiocb(kcb))
-		kiocb_set_cancel_fn(kcb, kpc_dma_aio_cancel);
-	return kpc_dma_transfer(priv, kcb, (unsigned long)iov->iov_base, iov->iov_len);
-}
-
-static
-ssize_t  kpc_dma_aio_write(struct kiocb *kcb, const struct iovec *iov, unsigned long iov_count, loff_t pos)
-{
-	struct dev_private_data *priv = (struct dev_private_data *)kcb->ki_filp->private_data;
-
-	if (priv->ldev->dir != DMA_TO_DEVICE)
-		return -EMEDIUMTYPE;
-
-	if (iov_count != 1) {
-		dev_err(&priv->ldev->pldev->dev, "%s() called with iov_count > 1!\n", __func__);
-		return -EFAULT;
-	}
-
-	if (!is_sync_kiocb(kcb))
-		kiocb_set_cancel_fn(kcb, kpc_dma_aio_cancel);
-	return kpc_dma_transfer(priv, kcb, (unsigned long)iov->iov_base, iov->iov_len);
-}
-#endif
-
 static
 ssize_t  kpc_dma_read(struct file *filp,       char __user *user_buf, size_t count, loff_t *ppos)
 {
@@ -363,7 +307,7 @@ ssize_t  kpc_dma_read(struct file *filp,       char __user *user_buf, size_t cou
 	if (priv->ldev->dir != DMA_FROM_DEVICE)
 		return -EMEDIUMTYPE;
 
-	return kpc_dma_transfer(priv, (struct kiocb *)NULL, (unsigned long)user_buf, count);
+	return kpc_dma_transfer(priv, (unsigned long)user_buf, count);
 }
 
 static
@@ -374,7 +318,7 @@ ssize_t  kpc_dma_write(struct file *filp, const char __user *user_buf, size_t co
 	if (priv->ldev->dir != DMA_TO_DEVICE)
 		return -EMEDIUMTYPE;
 
-	return kpc_dma_transfer(priv, (struct kiocb *)NULL, (unsigned long)user_buf, count);
+	return kpc_dma_transfer(priv, (unsigned long)user_buf, count);
 }
 
 static
@@ -402,10 +346,6 @@ const struct file_operations  kpc_dma_fops = {
 	.release        = kpc_dma_close,
 	.read           = kpc_dma_read,
 	.write          = kpc_dma_write,
-#ifdef CONFIG_KPC_DMA_AIO
-	.aio_read       = kpc_dma_aio_read,
-	.aio_write      = kpc_dma_aio_write,
-#endif
 	.unlocked_ioctl = kpc_dma_ioctl,
 };
 
diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
index ee47f43e71cf..4c8cc866b826 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
@@ -14,7 +14,6 @@
 #include <linux/pci.h>
 #include <linux/interrupt.h>
 #include <linux/workqueue.h>
-#include <linux/aio.h>
 #include <linux/bitops.h>
 #include "../kpc.h"
 
@@ -87,7 +86,6 @@ struct aio_cb_data {
 	struct kpc_dma_device      *ldev;
 	struct completion  *cpl;
 	unsigned char       flags;
-	struct kiocb       *kcb;
 	size_t              len;
 
 	unsigned int        page_count;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
