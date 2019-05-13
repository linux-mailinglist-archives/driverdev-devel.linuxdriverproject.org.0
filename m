Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F471B746
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 15:44:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BC9FD8680C;
	Mon, 13 May 2019 13:44:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NuPjAzp2EVfD; Mon, 13 May 2019 13:44:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD668811EB;
	Mon, 13 May 2019 13:44:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9DBA81BF291
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 13:44:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 99C20258EB
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 13:44:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7OH27tfTr34f for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 13:44:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 6E7CE22EE7
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 13:44:16 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id n19so7256851pfa.1
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 06:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mGX2Mr21OsC3Cf9X1D+KearNv+Y7HOxRT8DWKLBU5XU=;
 b=BswZVRenIQoRa1xpUYuemfaD/LHQlw286KXz6QNHklzB74ZV6xOnMZlAz/Q706M91D
 mFJwK0RgqLCtu1tGp3drl8f28I6Hu7jBtTKzf3FawwDc2gwq2uezFeIFqgjURdj6Uir/
 27AwPiF8DenxGlYyN87IMaNu+1Mz5/HpZA5Ex+kOjjBMwvXnFa73BRnZpWMdRUlsPRpI
 QEZmGFbEAduuGy4dwp2WJ3NagbWefQlSitYEwza4VDRu1L+c3VZp3nX/PZu7TYtMm1aD
 L+8jlF6wcyInuqsL8r65S8fArDdkd3AkCfM5LcUGXJZWJ5m2BoRwTCk6VAKvi5xineDz
 CzyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mGX2Mr21OsC3Cf9X1D+KearNv+Y7HOxRT8DWKLBU5XU=;
 b=caHxwSImNRr/bdD41feVFPNFpcV71iu/x78L7U/JU22cE7yrUibuglmVpR0u+VmNGy
 hJYUuHvHfxjus8sq3gUriEV1CvN3umVrYiDbkCC7U89YcjimjZ9TLwUgITkm+4TPkfA5
 8uGtczNeED8VXxyUzRHADzKjRlaJFjJAIjZoh47pfNrIVKxjtHebGsovP9xNzF6bDu3I
 +TlxUNpFA5XwimVDHTiupqbTp72M1JS/RyNjcpFzrNZ+J3XaKxkur9U4zUOmBwgOUBAB
 CcyRQeIkCbHETfmEph28LckVWpB1e2grLYwde6YmU84PwvcMk24Vkari179ESG6ZGc53
 p1FQ==
X-Gm-Message-State: APjAAAVHoFwPQkhvxqRcUGS9LifcSpqyPrq7KOTbncXbheHbflZPHLn3
 343sjwZDWfXkflYXstL3+Wc=
X-Google-Smtp-Source: APXvYqwr4pPzQqbXmnklb6QjRpiYodUB+i9pz1rAxhjyHMvLN2r2B4x7igVYZjIluZEnKRLvXgTxkw==
X-Received: by 2002:a63:9dc8:: with SMTP id i191mr30507243pgd.91.1557755056031; 
 Mon, 13 May 2019 06:44:16 -0700 (PDT)
Received: from bnva-HP-Pavilion-g6-Notebook-PC.domain.name ([117.248.72.152])
 by smtp.gmail.com with ESMTPSA id
 e10sm10874261pfm.137.2019.05.13.06.44.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 06:44:15 -0700 (PDT)
From: Vandana BN <bnvandana@gmail.com>
To: dan.carpenter@oracle.com, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lukas.bulwahn@gmail.com
Subject: [PATCH v4 8/8] Staging: kpc2000: kpc_dma: Resolve cast warning and
 use const for file_operation
Date: Mon, 13 May 2019 19:13:27 +0530
Message-Id: <20190513134327.26320-8-bnvandana@gmail.com>
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

This Patch resolves unnecessary cast warning and const file_operations
reported by checkpath.pl
WARNING: unnecessary cast may hide bugs
WARNING: struct file_operations should normally be const

Signed-off-by: Vandana BN <bnvandana@gmail.com>
---
v2 - split changes to multiple patches
v3 - edit commit message, subject line
v4 - edit commit message

 drivers/staging/kpc2000/kpc_dma/fileops.c        | 4 ++--
 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index c21672ea2b4f..54a1419728ce 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -59,7 +59,7 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 
 	dev_dbg(&priv->ldev->pldev->dev, "%s(priv = [%p], kcb = [%p], iov_base = [%p], iov_len = %ld) ldev = [%p]\n", __func__, priv, kcb, (void *)iov_base, iov_len, ldev);
 
-	acd = (struct aio_cb_data *) kzalloc(sizeof(struct aio_cb_data), GFP_KERNEL);
+	acd = kzalloc(sizeof(struct aio_cb_data), GFP_KERNEL);
 	if (!acd) {
 		dev_err(&priv->ldev->pldev->dev, "Couldn't kmalloc space for for the aio data\n");
 		return -ENOMEM;
@@ -418,7 +418,7 @@ long  kpc_dma_ioctl(struct file *filp, unsigned int ioctl_num, unsigned long ioc
 	return -ENOTTY;
 }
 
-struct file_operations  kpc_dma_fops = {
+const struct file_operations  kpc_dma_fops = {
 	.owner      = THIS_MODULE,
 	.open           = kpc_dma_open,
 	.release        = kpc_dma_close,
diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
index cf781940ac1b..ee47f43e71cf 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
@@ -57,7 +57,7 @@ struct dev_private_data {
 
 struct kpc_dma_device *kpc_dma_lookup_device(int minor);
 
-extern struct file_operations  kpc_dma_fops;
+extern const struct file_operations  kpc_dma_fops;
 
 #define ENG_CAP_PRESENT                 0x00000001
 #define ENG_CAP_DIRECTION               0x00000002
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
