Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3A93D72D
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2019 21:51:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 48A2F2033B;
	Tue, 11 Jun 2019 19:51:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LShK9es2WIoD; Tue, 11 Jun 2019 19:51:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BCC82204DD;
	Tue, 11 Jun 2019 19:51:14 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 644241BF3BB
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 61EDF83524
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZqOSb7LrYrHw
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2E9B583303
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+95QeZrJ6BYlDpzroFNZgK9S0PRQdc324k4CI9MexMU=; b=NffqCcrX3fD4Q7SNVLVUGbjN3V
 Bc+6dTeU1uJwirx3IwoudD4o3x5yDL+shCsWHXySvsKzT1Owcy2/qWt905m/6T1HXALbh11mPexYT
 OyOIlpgffoyFFMe0hUqN9vuJBu4O2KlKNLS9fjowCDhXl/N2LKaK/6Qp4g0rImLB0gdKHyt+0c2A3
 z7ZfhfOkxC5tdbXRDty/T/wuxv/cXAok5UV2pGQ7OCJBwOy6sEtvrrYbxwQ5nCMRu3QQpiaq+77ZV
 Q4vL2VlvjsBiLX4kTb56Glmzz8FI0GAcvGVAMh/EHqxKRfV/5Bl7Z25PoQ5ltQK3SVuT8wow7WSyV
 ILOjXl+A==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hamnR-0002Uq-0I; Tue, 11 Jun 2019 20:51:05 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 3/6] staging: kpc2000_dma: formatting fixes for AIO functions.
Date: Tue, 11 Jun 2019 20:51:01 +0100
Message-Id: <20190611195104.4828-4-jeremy@azazel.net>
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

Fixed some lines which were more than 80-characters long.

Cc: Matt Sickler <matt.sickler@daktronics.com>
Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 21 ++++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index b77fa5c34dc2..d74300f14dff 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -309,17 +309,18 @@ int  kpc_dma_close(struct inode *inode, struct file *filp)
 }
 
 #ifdef CONFIG_KPC2000_DMA_AIO
-static
-int  kpc_dma_aio_cancel(struct kiocb *kcb)
+static int kpc_dma_aio_cancel(struct kiocb *kcb)
 {
 	struct dev_private_data *priv = kcb->ki_filp->private_data;
 
-	dev_dbg(&priv->ldev->pldev->dev, "%s(kcb = [%p]) priv = [%p], ldev = [%p]\n", __func__, kcb, priv, priv->ldev);
+	dev_dbg(&priv->ldev->pldev->dev,
+		"%s(kcb = [%p]) priv = [%p], ldev = [%p]\n",
+		__func__, kcb, priv, priv->ldev);
 	return 0;
 }
 
-static
-ssize_t   kpc_dma_aio_read(struct kiocb *kcb, const struct iovec *iov, unsigned long iov_count, loff_t pos)
+static ssize_t kpc_dma_aio_read(struct kiocb *kcb, const struct iovec *iov,
+				unsigned long iov_count, loff_t pos)
 {
 	struct dev_private_data *priv = kcb->ki_filp->private_data;
 
@@ -327,7 +328,8 @@ ssize_t   kpc_dma_aio_read(struct kiocb *kcb, const struct iovec *iov, unsigned
 		return -EMEDIUMTYPE;
 
 	if (iov_count != 1) {
-		dev_err(&priv->ldev->pldev->dev, "%s() called with iov_count > 1!\n", __func__);
+		dev_err(&priv->ldev->pldev->dev,
+			"%s() called with iov_count > 1!\n", __func__);
 		return -EFAULT;
 	}
 
@@ -336,8 +338,8 @@ ssize_t   kpc_dma_aio_read(struct kiocb *kcb, const struct iovec *iov, unsigned
 	return kpc_dma_transfer(priv, kcb, (unsigned long)iov->iov_base, iov->iov_len);
 }
 
-static
-ssize_t  kpc_dma_aio_write(struct kiocb *kcb, const struct iovec *iov, unsigned long iov_count, loff_t pos)
+static ssize_t kpc_dma_aio_write(struct kiocb *kcb, const struct iovec *iov,
+				 unsigned long iov_count, loff_t pos)
 {
 	struct dev_private_data *priv = kcb->ki_filp->private_data;
 
@@ -345,7 +347,8 @@ ssize_t  kpc_dma_aio_write(struct kiocb *kcb, const struct iovec *iov, unsigned
 		return -EMEDIUMTYPE;
 
 	if (iov_count != 1) {
-		dev_err(&priv->ldev->pldev->dev, "%s() called with iov_count > 1!\n", __func__);
+		dev_err(&priv->ldev->pldev->dev,
+			"%s() called with iov_count > 1!\n", __func__);
 		return -EFAULT;
 	}
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
