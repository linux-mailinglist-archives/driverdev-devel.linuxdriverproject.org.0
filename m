Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 418263D72F
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2019 21:51:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3DEAD83524;
	Tue, 11 Jun 2019 19:51:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PQxonyfnh_FA; Tue, 11 Jun 2019 19:51:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A296D83604;
	Tue, 11 Jun 2019 19:51:15 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 81A9D1BF3BB
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7F53483303
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ib_cdrR2z1jv
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2CEC88248B
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=SmN5k9ky5W+50ig0KCVC5Rnh1j1Ezj6blgWIHGS49vA=; b=gcMV0lOhGYpO+GufbehSOac3aQ
 /LRiIh7n0GqUOOvyk0vXVXa3IvAAGYQy7x4J4YyCjMX/DYFNwsAAPRvD+Ic1ooMun+E/xeNDNw5Qq
 aeAqIWD/nubyXxKjhttGRZLYqcHoi86HhYTIGVWvTCSspc6N7gntyw98aB9/pyxts3oxM8LzKJsoq
 nvsVisgcMenf8u3ZG/OBeYwrizH+Hu9hPHtg/WGB19sihdKgIdQmC3PipwWgPhxJzNZCv8eYVJDyL
 /TEk2pZswcYZbgkBRboNejS4EWzPqDE6V/geL1f/RwtAMIZswaR1lJo48D4OcRoUg1kMMXG1u1TjQ
 BitaVrAQ==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hamnR-0002Uq-4r; Tue, 11 Jun 2019 20:51:05 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 4/6] staging: kpc2000_dma: replaced aio_(read|write) file-ops
 with (read|write)_iter ones.
Date: Tue, 11 Jun 2019 20:51:02 +0100
Message-Id: <20190611195104.4828-5-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611195104.4828-1-jeremy@azazel.net>
References: <20190611195104.4828-1-jeremy@azazel.net>
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

The AIO API was implemented in terms of obsolete file-ops.  Replaced the
->aio_read and ->aio_write call-backs with ->read_iter and ->write_iter
ones.  Replaced the call to aio_complete with a call to the ki_complete
call-back of the kiocb object.

Cc: Matt Sickler <matt.sickler@daktronics.com>
Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 40 +++++++++++++++--------
 1 file changed, 26 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index d74300f14dff..1e8f8c41f82a 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -10,6 +10,7 @@
 #include <linux/cdev.h>
 #include <linux/uaccess.h>  /* copy_*_user */
 #include <linux/aio.h>      /* aio stuff */
+#include <linux/uio.h>
 #include <linux/highmem.h>
 #include <linux/pagemap.h>
 #include "kpc_dma_driver.h"
@@ -243,7 +244,7 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
 		}
 	} else {
 #ifdef CONFIG_KPC2000_DMA_AIO
-		aio_complete(acd->kcb, acd->len, acd->flags);
+		acd->kcb->ki_complete(acd->kcb, acd->len, acd->flags);
 #endif
 		kfree(acd);
 	}
@@ -319,42 +320,54 @@ static int kpc_dma_aio_cancel(struct kiocb *kcb)
 	return 0;
 }
 
-static ssize_t kpc_dma_aio_read(struct kiocb *kcb, const struct iovec *iov,
-				unsigned long iov_count, loff_t pos)
+static ssize_t kpc_dma_read_iter(struct kiocb *kcb, struct iov_iter *to)
 {
 	struct dev_private_data *priv = kcb->ki_filp->private_data;
+	struct iovec iov;
 
 	if (priv->ldev->dir != DMA_FROM_DEVICE)
 		return -EMEDIUMTYPE;
 
-	if (iov_count != 1) {
+	if (!iter_is_iovec(to))
+		return -EINVAL;
+
+	if (iov_iter_count(to) != 1) {
 		dev_err(&priv->ldev->pldev->dev,
 			"%s() called with iov_count > 1!\n", __func__);
 		return -EFAULT;
 	}
 
+	iov = iov_iter_iovec(to);
+
 	if (!is_sync_kiocb(kcb))
 		kiocb_set_cancel_fn(kcb, kpc_dma_aio_cancel);
-	return kpc_dma_transfer(priv, kcb, (unsigned long)iov->iov_base, iov->iov_len);
+	return kpc_dma_transfer(priv, kcb, (unsigned long)iov.iov_base,
+				iov.iov_len);
 }
 
-static ssize_t kpc_dma_aio_write(struct kiocb *kcb, const struct iovec *iov,
-				 unsigned long iov_count, loff_t pos)
+static ssize_t kpc_dma_write_iter(struct kiocb *kcb, struct iov_iter *from)
 {
 	struct dev_private_data *priv = kcb->ki_filp->private_data;
+	struct iovec iov;
 
 	if (priv->ldev->dir != DMA_TO_DEVICE)
 		return -EMEDIUMTYPE;
 
-	if (iov_count != 1) {
+	if (!iter_is_iovec(from))
+		return -EINVAL;
+
+	if (iov_iter_count(from) != 1) {
 		dev_err(&priv->ldev->pldev->dev,
 			"%s() called with iov_count > 1!\n", __func__);
 		return -EFAULT;
 	}
 
+	iov = iov_iter_iovec(from);
+
 	if (!is_sync_kiocb(kcb))
 		kiocb_set_cancel_fn(kcb, kpc_dma_aio_cancel);
-	return kpc_dma_transfer(priv, kcb, (unsigned long)iov->iov_base, iov->iov_len);
+	return kpc_dma_transfer(priv, kcb, (unsigned long)iov.iov_base,
+				iov.iov_len);
 }
 #endif
 
@@ -399,16 +412,15 @@ long  kpc_dma_ioctl(struct file *filp, unsigned int ioctl_num, unsigned long ioc
 	return -ENOTTY;
 }
 
-const struct file_operations  kpc_dma_fops = {
-	.owner      = THIS_MODULE,
+const struct file_operations kpc_dma_fops = {
+	.owner		= THIS_MODULE,
 	.open           = kpc_dma_open,
 	.release        = kpc_dma_close,
 	.read           = kpc_dma_read,
 	.write          = kpc_dma_write,
 #ifdef CONFIG_KPC2000_DMA_AIO
-	.aio_read       = kpc_dma_aio_read,
-	.aio_write      = kpc_dma_aio_write,
+	.read_iter      = kpc_dma_read_iter,
+	.write_iter     = kpc_dma_write_iter,
 #endif
 	.unlocked_ioctl = kpc_dma_ioctl,
 };
-
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
