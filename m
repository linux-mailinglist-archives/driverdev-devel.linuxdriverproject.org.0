Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 858963D731
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2019 21:51:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C3CB285F9A;
	Tue, 11 Jun 2019 19:51:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wcEtKI93u9j0; Tue, 11 Jun 2019 19:51:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 49A9B85F4D;
	Tue, 11 Jun 2019 19:51:19 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1DA851BF3BB
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1B68687D56
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id odEaAwUNRv+7
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 94BCA87D41
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hU6a4EN2sHBSUbSd4MF/GTposP71Mqe6/VY6ZWDIkeg=; b=Pj1cjbo3UqDGQ8zFKJe/iQlge5
 P1WpVNw/32FHVS40ofCIRHRfg8wkjvHYvnmInXC8mV0Xo/XTPCUpMW6JQ5vP/gsGwlwLK/ISJF5fr
 Y4A6F7G5T2f+2izEaold8dn/6RhQ5zs2r9zPn46hWK8EerQ9lcHOboN8rfwYanHGAB2k/OjnjF98k
 2VR9RmNcPOH+gClEZZ8HhIrySMID0NirWqH1WHuloZ2bkqpvzo4bnc2Bs0zAGm/it+pIB07UpXyhg
 L/6HPtNgnbpXFSxvu5UKqCS1jl0PY303QVW2gTpx+GG+qn93VAmMsQR144ypN71zwkK+XvwSloxIp
 ca8Sa/8A==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hamnR-0002Uq-A9; Tue, 11 Jun 2019 20:51:05 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 5/6] staging: kpc2000_dma: removed aio cancel call-back.
Date: Tue, 11 Jun 2019 20:51:03 +0100
Message-Id: <20190611195104.4828-6-jeremy@azazel.net>
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

The AIO cancel call-back doesn't do anything.  Removed it.

Cc: Matt Sickler <matt.sickler@daktronics.com>
Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 1e8f8c41f82a..a738e553ddc4 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -310,16 +310,6 @@ int  kpc_dma_close(struct inode *inode, struct file *filp)
 }
 
 #ifdef CONFIG_KPC2000_DMA_AIO
-static int kpc_dma_aio_cancel(struct kiocb *kcb)
-{
-	struct dev_private_data *priv = kcb->ki_filp->private_data;
-
-	dev_dbg(&priv->ldev->pldev->dev,
-		"%s(kcb = [%p]) priv = [%p], ldev = [%p]\n",
-		__func__, kcb, priv, priv->ldev);
-	return 0;
-}
-
 static ssize_t kpc_dma_read_iter(struct kiocb *kcb, struct iov_iter *to)
 {
 	struct dev_private_data *priv = kcb->ki_filp->private_data;
@@ -339,8 +329,6 @@ static ssize_t kpc_dma_read_iter(struct kiocb *kcb, struct iov_iter *to)
 
 	iov = iov_iter_iovec(to);
 
-	if (!is_sync_kiocb(kcb))
-		kiocb_set_cancel_fn(kcb, kpc_dma_aio_cancel);
 	return kpc_dma_transfer(priv, kcb, (unsigned long)iov.iov_base,
 				iov.iov_len);
 }
@@ -364,8 +352,6 @@ static ssize_t kpc_dma_write_iter(struct kiocb *kcb, struct iov_iter *from)
 
 	iov = iov_iter_iovec(from);
 
-	if (!is_sync_kiocb(kcb))
-		kiocb_set_cancel_fn(kcb, kpc_dma_aio_cancel);
 	return kpc_dma_transfer(priv, kcb, (unsigned long)iov.iov_base,
 				iov.iov_len);
 }
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
