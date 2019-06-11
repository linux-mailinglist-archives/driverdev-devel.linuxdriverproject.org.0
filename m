Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 931113D72E
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2019 21:51:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A500F87D5D;
	Tue, 11 Jun 2019 19:51:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8HJQRFGX3Nlv; Tue, 11 Jun 2019 19:51:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 992C287D7F;
	Tue, 11 Jun 2019 19:51:18 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B4E901BF3BB
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B2C3087D56
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QYEoHwmwYkWJ
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9FFFE87D5D
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 19:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6KHXhPkW1QNGz8BudC7TlWFtKOgcUqDtkP/H2KybZ5s=; b=jEouVXKAeVc56LTAAZX2w0uk/2
 aInnTcpQEERuJ35s8snv8qp9OFCMKeYseM9WmKgXg6afDtnp9v06zyewhJB/iVCYNgJ6jzFGyGtMq
 2plPyHBtkZdZ8Oe4DeA5fqvBIdhigzkzCkdxpWK+ngDPEV/tsY18nNzSXPyDelDevVnr6AL9nS1M6
 +mYYLxZDeUmowRo2MbnhslLD+SvtsQsolYVE7lc8GfhU3GvzP9FVr7p5r+vHpSF+ZdIYpM8gH7W/A
 qXirRq/Uh24nJSiga1zxlBES3wa5Kd1gmLp9WM4lDELsNUIA7iV3P/mQLQusUYZ0feVv7qRAkj2xl
 K2/BukeA==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hamnQ-0002Uq-Rr; Tue, 11 Jun 2019 20:51:04 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH 2/6] staging: kpc2000_dma: removed casts of void pointers.
Date: Tue, 11 Jun 2019 20:51:00 +0100
Message-Id: <20190611195104.4828-3-jeremy@azazel.net>
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

The AIO call-backs assigned void pointers to local variables and used
superfluous casts in the process.  Removed the casts.

Cc: Matt Sickler <matt.sickler@daktronics.com>
Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index ee382dee01ca..b77fa5c34dc2 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -312,7 +312,7 @@ int  kpc_dma_close(struct inode *inode, struct file *filp)
 static
 int  kpc_dma_aio_cancel(struct kiocb *kcb)
 {
-	struct dev_private_data *priv = (struct dev_private_data *)kcb->ki_filp->private_data;
+	struct dev_private_data *priv = kcb->ki_filp->private_data;
 
 	dev_dbg(&priv->ldev->pldev->dev, "%s(kcb = [%p]) priv = [%p], ldev = [%p]\n", __func__, kcb, priv, priv->ldev);
 	return 0;
@@ -321,7 +321,7 @@ int  kpc_dma_aio_cancel(struct kiocb *kcb)
 static
 ssize_t   kpc_dma_aio_read(struct kiocb *kcb, const struct iovec *iov, unsigned long iov_count, loff_t pos)
 {
-	struct dev_private_data *priv = (struct dev_private_data *)kcb->ki_filp->private_data;
+	struct dev_private_data *priv = kcb->ki_filp->private_data;
 
 	if (priv->ldev->dir != DMA_FROM_DEVICE)
 		return -EMEDIUMTYPE;
@@ -339,7 +339,7 @@ ssize_t   kpc_dma_aio_read(struct kiocb *kcb, const struct iovec *iov, unsigned
 static
 ssize_t  kpc_dma_aio_write(struct kiocb *kcb, const struct iovec *iov, unsigned long iov_count, loff_t pos)
 {
-	struct dev_private_data *priv = (struct dev_private_data *)kcb->ki_filp->private_data;
+	struct dev_private_data *priv = kcb->ki_filp->private_data;
 
 	if (priv->ldev->dir != DMA_TO_DEVICE)
 		return -EMEDIUMTYPE;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
