Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F3411B405
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 12:27:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BFDF4207A2;
	Mon, 13 May 2019 10:27:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w6CIIX3rY3gE; Mon, 13 May 2019 10:27:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 785CE22BCC;
	Mon, 13 May 2019 10:27:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 675351BF842
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 10:27:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 646FD854B3
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 10:27:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8cUU7bDSkYFM for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 10:27:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 16BBF865B0
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 10:27:33 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id b3so6261449plr.7
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 03:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jCVFFIvk/dM3akUvv+q1GBXV3JQofCa1Kd1PS4pC1i4=;
 b=WsbkEv2+u24qjjfmf5Q7lHIg7ZqB/Df3kEknjnkM6zUpRkL07KG025dbev1wr3tMm3
 hHmHSWy2pZ2SIT0KxFuI8LuaxpkOMXgjkLT7YfBVpqNFf31HHlg+Bx5d8o6pqWvoNDyr
 OBG0jcnDbHODSFWpmVam0d1S8qO5kfM6/yV2yb+zn90dVcw1E9QeuMHYwKGCxJxRj5jz
 nkdqTEFQJjANCy9ubw9WO87Eba76vpXii3PMKYMaNXWGjCWbOiDF5UdGy/tkja2FDdmV
 eOj/q6o7LDkFi8r3SIUnBFU0SIfT4sQvRTa4jBpYAYbyStyqom9+dPsx2xyDrZ2aqpbI
 QRcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jCVFFIvk/dM3akUvv+q1GBXV3JQofCa1Kd1PS4pC1i4=;
 b=sxY+v34qQ/zVqPXcoz0oKsg0t6UJDs0Yt8uULO5ab+HNrMeYH8DyYSItnE4knFtHKd
 MXHsMlEAdzKV13jWjSxUlMs9Xqfz7RRYxFFY89dIJjPqIOIy4Jc/PfvizP9c6he5B8lT
 BngCxMAGNFnCt9+8a9b36ftjoA0aZy+sqdixCdpGIj4M+Nuw28krEGSSFnJ7p+aQfpdA
 EzjtxoQQjjSd9PGaOZRkMlEArWZORwayI0rECHGKTscVeZ1ec+BdrSJZS8JfonfBMPoG
 j7Wgsvix+mTsc4j/AnugePsBzzjPm/wzf9T/3TgxlnvNNR14wNYn/4AmY/UOBshB7bqE
 F+bw==
X-Gm-Message-State: APjAAAVSjKB2Td3ytOTu4KJ8f+wT1LbEkOPHq4dVlH1kGMpUxVuRevPy
 cIvPiKGCeX4xZZUg3n2TMf8=
X-Google-Smtp-Source: APXvYqymWvZ4WEVfo0YerAxV4IAUGp6ilTSVL4wfLHxcBZVZ0y3n26ysaI3oTx4uh2W0rOWxnXaavQ==
X-Received: by 2002:a17:902:e305:: with SMTP id
 cg5mr29472095plb.112.1557743252621; 
 Mon, 13 May 2019 03:27:32 -0700 (PDT)
Received: from bnva-HP-Pavilion-g6-Notebook-PC.domain.name ([117.248.72.152])
 by smtp.gmail.com with ESMTPSA id
 r124sm11773487pgr.91.2019.05.13.03.27.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 03:27:32 -0700 (PDT)
From: Vandana BN <bnvandana@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lukas.bulwahn@gmail.com
Subject: [PATCH v3 8/8] Staging: kpc2000: kpc_dma: Resolve cast warning and
 use const for file_operation
Date: Mon, 13 May 2019 15:56:22 +0530
Message-Id: <20190513102622.22398-8-bnvandana@gmail.com>
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

This Patch resolves unnecessary cast warning and const file_operations
reported by checkpath.pl
WARNING: unnecessary cast may hide bugs
WARNING: struct file_operations should normally be const
---
v2 - split changes to multiple patches
v3 - edit commit message
---

Signed-off-by: Vandana BN <bnvandana@gmail.com>
---
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
