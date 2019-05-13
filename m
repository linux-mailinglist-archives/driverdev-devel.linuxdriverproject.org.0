Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 662B21B401
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 12:27:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 01BD68768B;
	Mon, 13 May 2019 10:27:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id joEi7HzY-ULi; Mon, 13 May 2019 10:27:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 346C1875BC;
	Mon, 13 May 2019 10:27:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ED8461BF842
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 10:27:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EA525875AD
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 10:27:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2+DAs+Qn061t for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 10:27:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DF8C487594
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 10:27:27 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id x15so6249378pln.9
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 03:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=o8jnGTCfhp7t5g2CHWH8tT/Ym8AzXDN9ycuvqd67YlQ=;
 b=lbvoR4e0ZVYEubY5NbX3DUUBwBc+/xbydydLZHDdM4I/3ApWq0PrRcgzxt11vi6XOI
 7v3s+vYpXhnYKoBP/pwROO4MVJh/76E/xohyx+d18qbe9DksrRnfVV+vAbp9kLI/mTyC
 BM2n2dfI+45zFHHJMzpgjtYNXnuudVpQrRCbGQ/+MdALvOE0hmQgwUMCb8oKEU3lZHBg
 vf5T+ne9CdzAGdcAf8gTFrzRLRU05Wrmhr6GIsqokhqeI6kct6x8+vAMyE4GTsAwlsv6
 2Z8GnIQEEavE1cQrZt1apr7PlZWvea44AO+9JfjNlsvdS32Q24ev4NxP0LSnlEb7dgmT
 SloA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=o8jnGTCfhp7t5g2CHWH8tT/Ym8AzXDN9ycuvqd67YlQ=;
 b=SUR/S5mBUuac9REnuG3U45MNjcXkq3iMpNpI08UBNsI43iGiK6Vpl2ywI2yGDRnELU
 8c64r/aWB1ne56bHl2AgOFEowDzT1yCKxnITUlTZK0rl7LcnEnZfvVJhGB+Ss/jo+Swu
 P2uyEu6INyagAu/pD3aXCYkCppWArJ7Z2Aj5v9kuMyIxqkylX1n2Aljg7zVPXHN9HfAj
 F1D1W6oxsAfhwvN+bUDUWXszVl5X0W+DLyCgYAvISBxNJQqMcumbJyeFqhNx85rB0wBi
 73hEDfp4aJS0FNmhWTAH3/5yJKDHO4i+L2alIYTRS6QroXS6oroGH6o0MCCSV68xRAKZ
 zb1Q==
X-Gm-Message-State: APjAAAVo7aoxDj3/q0Fir2ofvadVXQycy9QyyHBMI+KOX1yyr4jKolyp
 d74jx0ks4kbdHtdi1izox7U=
X-Google-Smtp-Source: APXvYqxcGznBlWm2C0EKw90Oz3inyhQv33o8it3XG7sr4v6mDOMpabU9S5TMXM/heKrlKqOAwwh90A==
X-Received: by 2002:a17:902:5ac9:: with SMTP id
 g9mr29465162plm.134.1557743247373; 
 Mon, 13 May 2019 03:27:27 -0700 (PDT)
Received: from bnva-HP-Pavilion-g6-Notebook-PC.domain.name ([117.248.72.152])
 by smtp.gmail.com with ESMTPSA id
 r124sm11773487pgr.91.2019.05.13.03.27.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 03:27:26 -0700 (PDT)
From: Vandana BN <bnvandana@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lukas.bulwahn@gmail.com
Subject: [PATCH v3 7/8] Staging: kpc2000: kpc_dma: Resolve warning to use
 __func__ insted of funtion name reported by checkpatch.
Date: Mon, 13 May 2019 15:56:21 +0530
Message-Id: <20190513102622.22398-7-bnvandana@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513102622.22398-1-bnvandana@gmail.com>
References: <20190510193833.1051-1-bnvandana@gmail.com>
 <20190513102622.22398-1-bnvandana@gmail.com>
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
Cc: Vandana BN <bnvandana@gmail.com>,
 linux-kernel-mentees@lists.linuxfoundation.org, skhan@linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch resolves warnings to use __func__ insted of funtion name.
WARNING: Prefer using '"%s...", __func__' to using 'setup_dma_engine', this function's name, in a string
---
v2 - split changes to multiple patches
v3 - edit commit message
---

Signed-off-by: Vandana BN <bnvandana@gmail.com>
---
 drivers/staging/kpc2000/kpc_dma/dma.c         |  6 ++---
 drivers/staging/kpc2000/kpc_dma/fileops.c     | 26 +++++++++----------
 .../staging/kpc2000/kpc_dma/kpc_dma_driver.c  | 18 ++++++-------
 3 files changed, 25 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/dma.c b/drivers/staging/kpc2000/kpc_dma/dma.c
index ac842fa38c64..13687ab3e9c7 100644
--- a/drivers/staging/kpc2000/kpc_dma/dma.c
+++ b/drivers/staging/kpc2000/kpc_dma/dma.c
@@ -96,7 +96,7 @@ int  setup_dma_engine(struct kpc_dma_device *eng, u32 desc_cnt)
 
 	caps = GetEngineCapabilities(eng);
 
-	if (WARN(!(caps & ENG_CAP_PRESENT), "setup_dma_engine() called for DMA Engine at %p which isn't present in hardware!\n", eng))
+	if (WARN(!(caps & ENG_CAP_PRESENT), "%s() called for DMA Engine at %p which isn't present in hardware!\n", __func__, eng))
 		return -ENXIO;
 
 	if (caps & ENG_CAP_DIRECTION) {
@@ -110,7 +110,7 @@ int  setup_dma_engine(struct kpc_dma_device *eng, u32 desc_cnt)
 
 	eng->desc_pool_first = dma_pool_alloc(eng->desc_pool, GFP_KERNEL | GFP_DMA, &head_handle);
 	if (!eng->desc_pool_first) {
-		dev_err(&eng->pldev->dev, "setup_dma_engine: couldn't allocate desc_pool_first!\n");
+		dev_err(&eng->pldev->dev, "%s: couldn't allocate desc_pool_first!\n", __func__);
 		dma_pool_destroy(eng->desc_pool);
 		return -ENOMEM;
 	}
@@ -146,7 +146,7 @@ int  setup_dma_engine(struct kpc_dma_device *eng, u32 desc_cnt)
 	// Grab IRQ line
 	rv = request_irq(eng->irq, ndd_irq_handler, IRQF_SHARED, KP_DRIVER_NAME_DMA_CONTROLLER, eng);
 	if (rv) {
-		dev_err(&eng->pldev->dev, "setup_dma_engine: failed to request_irq: %d\n", rv);
+		dev_err(&eng->pldev->dev, "%s: failed to request_irq: %d\n", __func__, rv);
 		return rv;
 	}
 
diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 13c0e532437e..c21672ea2b4f 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -57,7 +57,7 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 	ldev = priv->ldev;
 	BUG_ON(ldev == NULL);
 
-	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_transfer(priv = [%p], kcb = [%p], iov_base = [%p], iov_len = %ld) ldev = [%p]\n", priv, kcb, (void *)iov_base, iov_len, ldev);
+	dev_dbg(&priv->ldev->pldev->dev, "%s(priv = [%p], kcb = [%p], iov_base = [%p], iov_len = %ld) ldev = [%p]\n", __func__, priv, kcb, (void *)iov_base, iov_len, ldev);
 
 	acd = (struct aio_cb_data *) kzalloc(sizeof(struct aio_cb_data), GFP_KERNEL);
 	if (!acd) {
@@ -209,7 +209,7 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 	kfree(acd->user_pages);
  err_alloc_userpages:
 	kfree(acd);
-	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_transfer returning with error %ld\n", rv);
+	dev_dbg(&priv->ldev->pldev->dev, "%s returning with error %ld\n", __func__, rv);
 	return rv;
 }
 
@@ -223,7 +223,7 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
 	BUG_ON(acd->ldev == NULL);
 	BUG_ON(acd->ldev->pldev == NULL);
 
-	dev_dbg(&acd->ldev->pldev->dev, "transfer_complete_cb(acd = [%p])\n", acd);
+	dev_dbg(&acd->ldev->pldev->dev, "%s(acd = [%p])\n", __func__, acd);
 
 	for (i = 0 ; i < acd->page_count ; i++) {
 		if (!PageReserved(acd->user_pages[i])) {
@@ -280,7 +280,7 @@ int  kpc_dma_open(struct inode *inode, struct file *filp)
 	priv->ldev = ldev;
 	filp->private_data = priv;
 
-	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_open(inode = [%p], filp = [%p]) priv = [%p] ldev = [%p]\n", inode, filp, priv, priv->ldev);
+	dev_dbg(&priv->ldev->pldev->dev, "%s(inode = [%p], filp = [%p]) priv = [%p] ldev = [%p]\n", __func__, inode, filp, priv, priv->ldev);
 	return 0;
 }
 
@@ -291,7 +291,7 @@ int  kpc_dma_close(struct inode *inode, struct file *filp)
 	struct dev_private_data *priv = (struct dev_private_data *)filp->private_data;
 	struct kpc_dma_device *eng = priv->ldev;
 
-	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_close(inode = [%p], filp = [%p]) priv = [%p], ldev = [%p]\n", inode, filp, priv, priv->ldev);
+	dev_dbg(&priv->ldev->pldev->dev, "%s(inode = [%p], filp = [%p]) priv = [%p], ldev = [%p]\n", __func__, inode, filp, priv, priv->ldev);
 
 	lock_engine(eng);
 
@@ -326,7 +326,7 @@ int  kpc_dma_aio_cancel(struct kiocb *kcb)
 {
 	struct dev_private_data *priv = (struct dev_private_data *)kcb->ki_filp->private_data;
 
-	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_aio_cancel(kcb = [%p]) priv = [%p], ldev = [%p]\n", kcb, priv, priv->ldev);
+	dev_dbg(&priv->ldev->pldev->dev, "%s(kcb = [%p]) priv = [%p], ldev = [%p]\n", __func__, kcb, priv, priv->ldev);
 	return 0;
 }
 
@@ -335,13 +335,13 @@ ssize_t   kpc_dma_aio_read(struct kiocb *kcb, const struct iovec *iov, unsigned
 {
 	struct dev_private_data *priv = (struct dev_private_data *)kcb->ki_filp->private_data;
 
-	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_aio_read(kcb = [%p], iov = [%p], iov_count = %ld, pos = %lld) priv = [%p], ldev = [%p]\n", kcb, iov, iov_count, pos, priv, priv->ldev);
+	dev_dbg(&priv->ldev->pldev->dev, "%s(kcb = [%p], iov = [%p], iov_count = %ld, pos = %lld) priv = [%p], ldev = [%p]\n", __func__, kcb, iov, iov_count, pos, priv, priv->ldev);
 
 	if (priv->ldev->dir != DMA_FROM_DEVICE)
 		return -EMEDIUMTYPE;
 
 	if (iov_count != 1) {
-		dev_err(&priv->ldev->pldev->dev, "kpc_dma_aio_read() called with iov_count > 1!\n");
+		dev_err(&priv->ldev->pldev->dev, "%s() called with iov_count > 1!\n", __func__);
 		return -EFAULT;
 	}
 
@@ -355,13 +355,13 @@ ssize_t  kpc_dma_aio_write(struct kiocb *kcb, const struct iovec *iov, unsigned
 {
 	struct dev_private_data *priv = (struct dev_private_data *)kcb->ki_filp->private_data;
 
-	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_aio_write(kcb = [%p], iov = [%p], iov_count = %ld, pos = %lld) priv = [%p], ldev = [%p]\n", kcb, iov, iov_count, pos, priv, priv->ldev);
+	dev_dbg(&priv->ldev->pldev->dev, "%s(kcb = [%p], iov = [%p], iov_count = %ld, pos = %lld) priv = [%p], ldev = [%p]\n", __func__, kcb, iov, iov_count, pos, priv, priv->ldev);
 
 	if (priv->ldev->dir != DMA_TO_DEVICE)
 		return -EMEDIUMTYPE;
 
 	if (iov_count != 1) {
-		dev_err(&priv->ldev->pldev->dev, "kpc_dma_aio_write() called with iov_count > 1!\n");
+		dev_err(&priv->ldev->pldev->dev, "%s() called with iov_count > 1!\n", __func__);
 		return -EFAULT;
 	}
 
@@ -376,7 +376,7 @@ ssize_t  kpc_dma_read(struct file *filp,       char __user *user_buf, size_t cou
 {
 	struct dev_private_data *priv = (struct dev_private_data *)filp->private_data;
 
-	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_read(filp = [%p], user_buf = [%p], count = %zu, ppos = [%p]) priv = [%p], ldev = [%p]\n", filp, user_buf, count, ppos, priv, priv->ldev);
+	dev_dbg(&priv->ldev->pldev->dev, "%s(filp = [%p], user_buf = [%p], count = %zu, ppos = [%p]) priv = [%p], ldev = [%p]\n", __func__, filp, user_buf, count, ppos, priv, priv->ldev);
 
 	if (priv->ldev->dir != DMA_FROM_DEVICE)
 		return -EMEDIUMTYPE;
@@ -389,7 +389,7 @@ ssize_t  kpc_dma_write(struct file *filp, const char __user *user_buf, size_t co
 {
 	struct dev_private_data *priv = (struct dev_private_data *)filp->private_data;
 
-	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_write(filp = [%p], user_buf = [%p], count = %zu, ppos = [%p]) priv = [%p], ldev = [%p]\n", filp, user_buf, count, ppos, priv, priv->ldev);
+	dev_dbg(&priv->ldev->pldev->dev, "%s(filp = [%p], user_buf = [%p], count = %zu, ppos = [%p]) priv = [%p], ldev = [%p]\n", __func__, filp, user_buf, count, ppos, priv, priv->ldev);
 
 	if (priv->ldev->dir != DMA_TO_DEVICE)
 		return -EMEDIUMTYPE;
@@ -402,7 +402,7 @@ long  kpc_dma_ioctl(struct file *filp, unsigned int ioctl_num, unsigned long ioc
 {
 	struct dev_private_data *priv = (struct dev_private_data *)filp->private_data;
 
-	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_ioctl(filp = [%p], ioctl_num = 0x%x, ioctl_param = 0x%lx) priv = [%p], ldev = [%p]\n", filp, ioctl_num, ioctl_param, priv, priv->ldev);
+	dev_dbg(&priv->ldev->pldev->dev, "%s(filp = [%p], ioctl_num = 0x%x, ioctl_param = 0x%lx) priv = [%p], ldev = [%p]\n", __func__, filp, ioctl_num, ioctl_param, priv, priv->ldev);
 
 	switch (ioctl_num) {
 	case KND_IOCTL_SET_CARD_ADDR:
diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index 135428e62f8e..cda057569163 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
@@ -101,12 +101,12 @@ int  kpc_dma_probe(struct platform_device *pldev)
 	struct kpc_dma_device *ldev = kzalloc(sizeof(struct kpc_dma_device), GFP_KERNEL);
 
 	if (!ldev) {
-		dev_err(&pldev->dev, "kpc_dma_probe: unable to kzalloc space for kpc_dma_device\n");
+		dev_err(&pldev->dev, "%s: unable to kzalloc space for kpc_dma_device\n", __func__);
 		rv = -ENOMEM;
 		goto err_rv;
 	}
 
-	dev_dbg(&pldev->dev, "kpc_dma_probe(pldev = [%p]) ldev = [%p]\n", pldev, ldev);
+	dev_dbg(&pldev->dev, "%s(pldev = [%p]) ldev = [%p]\n", __func__, pldev, ldev);
 
 	INIT_LIST_HEAD(&ldev->list);
 
@@ -120,20 +120,20 @@ int  kpc_dma_probe(struct platform_device *pldev)
 	// Get Engine regs resource
 	r = platform_get_resource(pldev, IORESOURCE_MEM, 0);
 	if (!r) {
-		dev_err(&ldev->pldev->dev, "kpc_dma_probe: didn't get the engine regs resource!\n");
+		dev_err(&ldev->pldev->dev, "%s: didn't get the engine regs resource!\n", __func__);
 		rv = -ENXIO;
 		goto err_kfree;
 	}
 	ldev->eng_regs = ioremap_nocache(r->start, resource_size(r));
 	if (!ldev->eng_regs) {
-		dev_err(&ldev->pldev->dev, "kpc_dma_probe: failed to ioremap engine regs!\n");
+		dev_err(&ldev->pldev->dev, "%s: failed to ioremap engine regs!\n", __func__);
 		rv = -ENXIO;
 		goto err_kfree;
 	}
 
 	r = platform_get_resource(pldev, IORESOURCE_IRQ, 0);
 	if (!r) {
-		dev_err(&ldev->pldev->dev, "kpc_dma_probe: didn't get the IRQ resource!\n");
+		dev_err(&ldev->pldev->dev, "%s: didn't get the IRQ resource!\n", __func__);
 		rv = -ENXIO;
 		goto err_kfree;
 	}
@@ -143,21 +143,21 @@ int  kpc_dma_probe(struct platform_device *pldev)
 	dev = MKDEV(assigned_major_num, pldev->id);
 	ldev->kpc_dma_dev = device_create(kpc_dma_class, &pldev->dev, dev, ldev, "kpc_dma%d", pldev->id);
 	if (IS_ERR(ldev->kpc_dma_dev)) {
-		dev_err(&ldev->pldev->dev, "kpc_dma_probe: device_create failed: %d\n", rv);
+		dev_err(&ldev->pldev->dev, "%s: device_create failed: %d\n", __func__, rv);
 		goto err_kfree;
 	}
 
 	// Setup the DMA engine
 	rv = setup_dma_engine(ldev, 30);
 	if (rv) {
-		dev_err(&ldev->pldev->dev, "kpc_dma_probe: failed to setup_dma_engine: %d\n", rv);
+		dev_err(&ldev->pldev->dev, "%s: failed to setup_dma_engine: %d\n", __func__, rv);
 		goto err_misc_dereg;
 	}
 
 	// Setup the sysfs files
 	rv = sysfs_create_files(&(ldev->pldev->dev.kobj), ndd_attr_list);
 	if (rv) {
-		dev_err(&ldev->pldev->dev, "kpc_dma_probe: Failed to add sysfs files: %d\n", rv);
+		dev_err(&ldev->pldev->dev, "%s: Failed to add sysfs files: %d\n", __func__, rv);
 		goto err_destroy_eng;
 	}
 
@@ -183,7 +183,7 @@ int  kpc_dma_remove(struct platform_device *pldev)
 	if (!ldev)
 		return -ENXIO;
 
-	dev_dbg(&ldev->pldev->dev, "kpc_dma_remove(pldev = [%p]) ldev = [%p]\n", pldev, ldev);
+	dev_dbg(&ldev->pldev->dev, "%s(pldev = [%p]) ldev = [%p]\n", __func__, pldev, ldev);
 
 	lock_engine(ldev);
 	sysfs_remove_files(&(ldev->pldev->dev.kobj), ndd_attr_list);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
