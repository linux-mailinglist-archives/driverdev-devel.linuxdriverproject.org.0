Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA661B73F
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 15:44:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D0672857BE;
	Mon, 13 May 2019 13:43:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rRzHPthDLuxd; Mon, 13 May 2019 13:43:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E457E85633;
	Mon, 13 May 2019 13:43:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 814E91BF291
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 13:43:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7E398867A8
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 13:43:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rdZZy6uVUi7A for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 13:43:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 97F658674D
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 13:43:54 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id c6so7236570pfa.10
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 06:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vYRE2PE/o4Rokbg9HSZTVl0oklNBIN2QHpBrgUFOAuQ=;
 b=rthKC4TkfAZvrMQ7Fnp6df3onVSlWrFcw9lrglQRpOJj+jGsSMMYq8V/I+beDYfU8Q
 8IGWNoK/UeWqxuvjI0tCdsCdwfLlRsj6XNDTTo3c17S4g6jfK5MNbAi7EG+BuLaqS0tS
 fhpGF317u4WBtUOpVPKKUp1xJkTEWw+7SeB/A3bCi7CbcMPRRd7fN7ESLU9TT2HJdvRi
 PO3WTDvpQ6CmNshlQwNaM9Mq0XwkvQEP6R0qoVeem3azxN5qNLuQIN0miSlB1cgPKR+a
 BAlj/ZDYe10efY0YdhM6emLiFc3WIGTPueNTtUAEkMbNt8/MaqTACC9DNDvuWze6QWN6
 NAXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vYRE2PE/o4Rokbg9HSZTVl0oklNBIN2QHpBrgUFOAuQ=;
 b=nLRKvknjLRLVcy8uKZMu5Yz/dAL8d3iCbxxz9V1GFR61/UZVXeO6a9MSiYjpdd3OQJ
 GiKsleji5OlZ3DoqdJ0vgDOg3KxBzEEtQ7zM8SOAuWwCJmdbWTc5oBUevunul4jC9YnW
 M6N3j3IxaTrt2O2OaOranXn9Cr/SMB2CLMDdpILEXa51c5/uAMmNulxakE+hwiWIR2XO
 95UZcCQrF5MO4WEPDysWSwteL+I/ptWMAmpcN7zSaOglrl0vazikjFGmW5wpyWd+9kMr
 9XPNzrB6mapn4nT5gz8FNi+noCNGg1Y09O/DDc2ac5iZ8p62jYpehvyC+G4ZV3ezYStv
 FlKw==
X-Gm-Message-State: APjAAAVwRpQP5B67vOG22DyA1F0UTp1KbAZIKjsNTedY5zK9736kokkY
 Qh1udJ2gSuPLdgiBnv1aLXCLBCGACQ4=
X-Google-Smtp-Source: APXvYqxGFDLDSRiLDt5+9TMPDbkFLC6xcIClC85+25sl+JEIKTs/QxlzEx0mcHultGflA86ML69oUQ==
X-Received: by 2002:a62:304:: with SMTP id 4mr15559587pfd.186.1557755034133;
 Mon, 13 May 2019 06:43:54 -0700 (PDT)
Received: from bnva-HP-Pavilion-g6-Notebook-PC.domain.name ([117.248.72.152])
 by smtp.gmail.com with ESMTPSA id
 e10sm10874261pfm.137.2019.05.13.06.43.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 06:43:53 -0700 (PDT)
From: Vandana BN <bnvandana@gmail.com>
To: dan.carpenter@oracle.com, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lukas.bulwahn@gmail.com
Subject: [PATCH v4 2/8] Staging: kpc2000: kpc_dma: Resolve space errors around
 pointers and function declarations reported by checkpatch.
Date: Mon, 13 May 2019 19:13:21 +0530
Message-Id: <20190513134327.26320-2-bnvandana@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513134327.26320-1-bnvandana@gmail.com>
References: <20190510193833.1051-1-bnvandana@gmail.com>
 <20190513134327.26320-1-bnvandana@gmail.com>
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

This patch resolves below errors reported by checkpatch
ERROR: "(foo*)" should be "(foo *)"
ERROR: "foo * bar" should be "foo *bar"
ERROR: "foo __init  bar" should be "foo __init bar"
ERROR: "foo __exit  bar" should be "foo __exit bar"

Signed-off-by: Vandana BN <bnvandana@gmail.com>
---
v2 - split changes to multiple patches
v3 - edit commit message, subject line
v4 - edit commit message

 drivers/staging/kpc2000/kpc_dma/dma.c            |  8 ++++----
 drivers/staging/kpc2000/kpc_dma/fileops.c        |  2 +-
 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 12 ++++++------
 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h |  6 +++---
 4 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/dma.c b/drivers/staging/kpc2000/kpc_dma/dma.c
index ba987307d898..488b9b81debc 100644
--- a/drivers/staging/kpc2000/kpc_dma/dma.c
+++ b/drivers/staging/kpc2000/kpc_dma/dma.c
@@ -14,7 +14,7 @@
 static
 irqreturn_t  ndd_irq_handler(int irq, void *dev_id)
 {
-	struct kpc_dma_device *ldev = (struct kpc_dma_device*)dev_id;
+	struct kpc_dma_device *ldev = (struct kpc_dma_device *)dev_id;
 
 	if ((GetEngineControl(ldev) & ENG_CTL_IRQ_ACTIVE) || (ldev->desc_completed->MyDMAAddr != GetEngineCompletePtr(ldev)))
 		schedule_work(&ldev->irq_work);
@@ -85,8 +85,8 @@ void  start_dma_engine(struct kpc_dma_device *eng)
 int  setup_dma_engine(struct kpc_dma_device *eng, u32 desc_cnt)
 {
 	u32 caps;
-	struct kpc_dma_descriptor * cur;
-	struct kpc_dma_descriptor * next;
+	struct kpc_dma_descriptor *cur;
+	struct kpc_dma_descriptor *next;
 	dma_addr_t next_handle;
 	dma_addr_t head_handle;
 	unsigned int i;
@@ -208,7 +208,7 @@ void  stop_dma_engine(struct kpc_dma_device *eng)
 
 void  destroy_dma_engine(struct kpc_dma_device *eng)
 {
-	struct kpc_dma_descriptor * cur;
+	struct kpc_dma_descriptor *cur;
 	dma_addr_t cur_handle;
 	unsigned int i;
 
diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 6c38c3f978c3..61927b313a26 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -55,7 +55,7 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 	ldev = priv->ldev;
 	BUG_ON(ldev == NULL);
 
-	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_transfer(priv = [%p], kcb = [%p], iov_base = [%p], iov_len = %ld) ldev = [%p]\n", priv, kcb, (void*)iov_base, iov_len, ldev);
+	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_transfer(priv = [%p], kcb = [%p], iov_base = [%p], iov_len = %ld) ldev = [%p]\n", priv, kcb, (void *)iov_base, iov_len, ldev);
 
 	acd = (struct aio_cb_data *) kzalloc(sizeof(struct aio_cb_data), GFP_KERNEL);
 	if (!acd){
diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index dece60e6e3f3..004d91b5ad00 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
@@ -21,7 +21,7 @@ static LIST_HEAD(kpc_dma_list);
 
 
 /**********  kpc_dma_list list management  **********/
-struct kpc_dma_device *  kpc_dma_lookup_device(int minor)
+struct kpc_dma_device *kpc_dma_lookup_device(int minor)
 {
 	struct kpc_dma_device *c;
 	mutex_lock(&kpc_dma_mtx);
@@ -36,14 +36,14 @@ struct kpc_dma_device *  kpc_dma_lookup_device(int minor)
 	return c;
 }
 
-void  kpc_dma_add_device(struct kpc_dma_device * ldev)
+void  kpc_dma_add_device(struct kpc_dma_device *ldev)
 {
 	mutex_lock(&kpc_dma_mtx);
 	list_add(&ldev->list, &kpc_dma_list);
 	mutex_unlock(&kpc_dma_mtx);
 }
 
-void kpc_dma_del_device(struct kpc_dma_device * ldev)
+void kpc_dma_del_device(struct kpc_dma_device *ldev)
 {
 	mutex_lock(&kpc_dma_mtx);
 	list_del(&ldev->list);
@@ -80,7 +80,7 @@ static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *at
 }
 DEVICE_ATTR(engine_regs, 0444, show_engine_regs, NULL);
 
-static const struct attribute *  ndd_attr_list[] = {
+static const struct attribute *ndd_attr_list[] = {
 	&dev_attr_engine_regs.attr,
 	NULL,
 };
@@ -203,7 +203,7 @@ struct platform_driver kpc_dma_plat_driver_i = {
 };
 
 static
-int __init  kpc_dma_driver_init(void)
+int __init kpc_dma_driver_init(void)
 {
 	int err;
 
@@ -239,7 +239,7 @@ int __init  kpc_dma_driver_init(void)
 module_init(kpc_dma_driver_init);
 
 static
-void __exit  kpc_dma_driver_exit(void)
+void __exit kpc_dma_driver_exit(void)
 {
 	platform_driver_unregister(&kpc_dma_plat_driver_i);
 	class_destroy(kpc_dma_class);
diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
index 67c0ea31acab..8101601736a2 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
@@ -56,7 +56,7 @@ struct dev_private_data {
 	u64                         user_sts;
 };
 
-struct kpc_dma_device *  kpc_dma_lookup_device(int minor);
+struct kpc_dma_device *kpc_dma_lookup_device(int minor);
 
 extern struct file_operations  kpc_dma_fops;
 
@@ -172,12 +172,12 @@ void  SetClearEngineControl(struct kpc_dma_device *eng, u32 set_bits, u32 clear_
 }
 
 static inline
-void  SetEngineNextPtr(struct kpc_dma_device *eng, struct kpc_dma_descriptor * desc)
+void  SetEngineNextPtr(struct kpc_dma_device *eng, struct kpc_dma_descriptor *desc)
 {
 	writel(desc->MyDMAAddr, eng->eng_regs + 2);
 }
 static inline
-void  SetEngineSWPtr(struct kpc_dma_device *eng, struct kpc_dma_descriptor * desc)
+void  SetEngineSWPtr(struct kpc_dma_device *eng, struct kpc_dma_descriptor *desc)
 {
 	writel(desc->MyDMAAddr, eng->eng_regs + 3);
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
