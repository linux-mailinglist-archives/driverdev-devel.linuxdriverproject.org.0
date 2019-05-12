Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C018E1AE70
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 01:41:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4B65C85CBB;
	Sun, 12 May 2019 23:41:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tYxU8lfFb8ui; Sun, 12 May 2019 23:41:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0F02B85C28;
	Sun, 12 May 2019 23:40:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 365BB1BF44A
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 23:40:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3376B85C28
 for <devel@linuxdriverproject.org>; Sun, 12 May 2019 23:40:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j3KTcbqp6iTm for <devel@linuxdriverproject.org>;
 Sun, 12 May 2019 23:40:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8277985F96
 for <devel@driverdev.osuosl.org>; Sun, 12 May 2019 23:40:52 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id r18so721980pls.13
 for <devel@driverdev.osuosl.org>; Sun, 12 May 2019 16:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TsfAx4zdDRwJihvbXlCQCbZL+ogh5EWvAaFZBJ14qzE=;
 b=odEjzDhBDSt624wUmmRe80CWR+X4JGaDOdCMbKq0o37HRRK17Wp/tODyVPGA6vuhGW
 JnxqMWAJnkIw9E2d6RbPkVVKpZNZ9chvGfC2U90PDhJodQOJw1qWiWZafr+g0Ui9EI5m
 BdhJuy4n4o0e7uUriKzc3z6/Q26HY2DHx+hS/oPhqpirqlow9suQ6febvnBQcVkHGRFV
 lMG122BCVItxkakMcMJ101r23OwcDFw8poh8Z98lFOx4lvgGnjNyqSI4K0CfRaQ8z5Dy
 dhHNaG0OMzHlrw19ETI6zcg2z2Hqv+Ybje6g2nQtOMI5D14N2ZAtWRW7FokerbPG9hnz
 LQiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TsfAx4zdDRwJihvbXlCQCbZL+ogh5EWvAaFZBJ14qzE=;
 b=qXYuFI9J8T0T4WmbsVE34g5hfGOzxXRFrUITXNnhWECB0P1rq/HCTCb2TcZ5hymJKy
 8byrSafzcIgKU4bJqZajeSxblZcGmcTPFekRa3BYLYSsp3kcHQeav4tNqIvQdvJABRzy
 ge6uoydHvl+COMWHRGD94cYm795nNo7tQZZrMpQ8tRgVtsCBRhCFzEx/kmROfwjGrjp6
 FpQvcVWu7EDU6jP9TanrP3lZfD0RLI+jLSc9SbpiO9Ue5qSTXK66Mijb8VwUKfK9EsXh
 iXucGJwfLGqrldtyaSwtCui2vHCWaYtfnaWeMchPCylHe0qlAuFIl2GErv1r4AYangri
 kfxg==
X-Gm-Message-State: APjAAAWvSoRVep4igzgs6QAsbv8YscuuS8vIEtC/BQBim38wd5H1qbOg
 qFLywnvTu+Bv+gx9Y2xuF6k=
X-Google-Smtp-Source: APXvYqyihJeYKxyJYA5oX+uDnBAJTL69DTbZ+7rv3dodfLpO627ZNHCV14A+621NrF3LLSa251I5Hw==
X-Received: by 2002:a17:902:a01:: with SMTP id 1mr27085632plo.36.1557704452022; 
 Sun, 12 May 2019 16:40:52 -0700 (PDT)
Received: from bnva-HP-Pavilion-g6-Notebook-PC.domain.name ([117.241.202.125])
 by smtp.gmail.com with ESMTPSA id
 e29sm13528376pgb.37.2019.05.12.16.40.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 16:40:51 -0700 (PDT)
From: Vandana BN <bnvandana@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, lukas.bulwahn@gmail.com
Subject: [PATCH v2 8/8] Staging: kpc2000: kpc_dma: Resolve coding style
 warning reported by checkpatch
Date: Mon, 13 May 2019 05:10:00 +0530
Message-Id: <20190512234000.16555-8-bnvandana@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190512234000.16555-1-bnvandana@gmail.com>
References: <20190510193833.1051-1-bnvandana@gmail.com>
 <20190512234000.16555-1-bnvandana@gmail.com>
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
WARNING: unnecessary cast may hide bugs
WARNING: struct file_operations should normally be const

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
