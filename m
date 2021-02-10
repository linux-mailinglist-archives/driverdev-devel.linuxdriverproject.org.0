Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C67D3165EC
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Feb 2021 13:04:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7FF37872A3;
	Wed, 10 Feb 2021 12:04:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g9BUuynH9Eyp; Wed, 10 Feb 2021 12:04:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 33F5687285;
	Wed, 10 Feb 2021 12:04:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 51B6A1BF9B6
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 12:04:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4BBB08064C
 for <devel@linuxdriverproject.org>; Wed, 10 Feb 2021 12:04:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9uuqZ1jhAcyX for <devel@linuxdriverproject.org>;
 Wed, 10 Feb 2021 12:04:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A715B84627
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 12:04:18 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id u14so2226579wri.3
 for <devel@driverdev.osuosl.org>; Wed, 10 Feb 2021 04:04:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rJ/fTja9mKD4KGroCmj04WxehP7kOKRd+7I/05Mbq4M=;
 b=eJNnrdbROY/AGjV55wNNaknvjSt8hJpicfMFtrcXgdTyFJmqpIaHusDBb6lLW31/CZ
 ZmxfvmYvy/ApYALBZnb4vj4x2QRgYoJXpl/v/cBecrscBqCs3RkqaM06Bqfvap61XIvk
 T8Ce8CL68S4E71Oi6EpucQ/oNuWHaeNJHzf7yzo+aZUOzIS2oYIujpS3u9TWHRKX3wtV
 ilh5fn9C40JBv1O7sklmbN5iRBTrvdoHAK5qSGvYuvr/avyhTXQ45hQevJXK5cJ8dEXi
 y3uweFvSazUr3ynpR6vPjAgNqpx+Un2eNco96FBxNTKmAMq1Xv6u7FkmDgsAt7ToOSPl
 8OPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rJ/fTja9mKD4KGroCmj04WxehP7kOKRd+7I/05Mbq4M=;
 b=pj1+yJE6Smhk6pfse+IGR5ibhtrbjEyt1UfPu0uPeoGgdkE5X8xHM+wPQ2TzenJ+jl
 JAz5Eafr8WEU45QBHW9eUbxZStpprgT7gPdYoNqCeIulllILKGctQWL4gL1eXaXcCs9t
 VmIqpK8+L82cBqoI+vmY57/UwMkNJVx+mwNwTZUMJ83OP+82GVnvku3ZbFzm81/79PBA
 dt+ODNPlwvy2QhGQOSAsH9wJf5oDbOhjq4ULi577QU3hgc2xLwBz4bEnAt/Jhfb/CU0m
 D1JhAey9wUkdYL48SjBkToR7CUMgx/xf8nOrYmAK1AqSg+jXFTqYgI0JHryn6soemiS1
 QVqQ==
X-Gm-Message-State: AOAM533b0lpr1996Y3oYCPSGsJSSxPYgz+Btun2duf8xQ8S8tUFJJyRP
 8VkTdrAKahmRd1e1Tdgjpnk=
X-Google-Smtp-Source: ABdhPJwIkpRJMNidPY7E8t77YNkSjglI/0+vLjMQRtxMoAor2nPGNhM0AYpSxXSb6En7s3W2Jn8oGA==
X-Received: by 2002:adf:97d3:: with SMTP id t19mr2308218wrb.164.1612958657043; 
 Wed, 10 Feb 2021 04:04:17 -0800 (PST)
Received: from xps.yggdrail ([2409:4072:301:1438:3689:6d67:ef18:b9a7])
 by smtp.gmail.com with ESMTPSA id f7sm2822529wre.78.2021.02.10.04.04.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Feb 2021 04:04:16 -0800 (PST)
From: Aakash Hemadri <aakashhemadri123@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: ralink-gdma: Fix checkpatch.pl CHECK
Date: Wed, 10 Feb 2021 17:33:48 +0530
Message-Id: <20210210120348.262328-1-aakashhemadri123@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel-mentees@lists.linuxfoundation.org,
 linux-kernel@vger.kernel.org, Shuah Khan <skhan@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove CHECK: Lines should not end with a '('

Signed-off-by: Aakash Hemadri <aakashhemadri123@gmail.com>
---

 drivers/staging/ralink-gdma/ralink-gdma.c | 28 ++++++++++++-----------
 1 file changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index 655df317d0ee..a11f915f3308 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -135,8 +135,7 @@ struct gdma_data {
 	int (*start_transfer)(struct gdma_dmaengine_chan *chan);
 };

-static struct gdma_dma_dev *gdma_dma_chan_get_dev(
-	struct gdma_dmaengine_chan *chan)
+static struct gdma_dma_dev *gdma_dma_chan_get_dev(struct gdma_dmaengine_chan *chan)
 {
 	return container_of(chan->vchan.chan.device, struct gdma_dma_dev,
 		ddev);
@@ -510,10 +509,11 @@ static void gdma_dma_issue_pending(struct dma_chan *c)
 	spin_unlock_irqrestore(&chan->vchan.lock, flags);
 }

-static struct dma_async_tx_descriptor *gdma_dma_prep_slave_sg(
-		struct dma_chan *c, struct scatterlist *sgl,
-		unsigned int sg_len, enum dma_transfer_direction direction,
-		unsigned long flags, void *context)
+static struct dma_async_tx_descriptor
+	*gdma_dma_prep_slave_sg(struct dma_chan *c, struct scatterlist *sgl,
+				unsigned int sg_len,
+				enum dma_transfer_direction direction,
+				unsigned long flags, void *context)
 {
 	struct gdma_dmaengine_chan *chan = to_gdma_dma_chan(c);
 	struct gdma_dma_desc *desc;
@@ -558,9 +558,10 @@ static struct dma_async_tx_descriptor *gdma_dma_prep_slave_sg(
 	return NULL;
 }

-static struct dma_async_tx_descriptor *gdma_dma_prep_dma_memcpy(
-		struct dma_chan *c, dma_addr_t dest, dma_addr_t src,
-		size_t len, unsigned long flags)
+static struct dma_async_tx_descriptor
+	*gdma_dma_prep_dma_memcpy(struct dma_chan *c,
+				  dma_addr_t dest, dma_addr_t src,
+				  size_t len, unsigned long flags)
 {
 	struct gdma_dmaengine_chan *chan = to_gdma_dma_chan(c);
 	struct gdma_dma_desc *desc;
@@ -601,10 +602,11 @@ static struct dma_async_tx_descriptor *gdma_dma_prep_dma_memcpy(
 	return vchan_tx_prep(&chan->vchan, &desc->vdesc, flags);
 }

-static struct dma_async_tx_descriptor *gdma_dma_prep_dma_cyclic(
-	struct dma_chan *c, dma_addr_t buf_addr, size_t buf_len,
-	size_t period_len, enum dma_transfer_direction direction,
-	unsigned long flags)
+static struct dma_async_tx_descriptor
+	*gdma_dma_prep_dma_cyclic(struct dma_chan *c, dma_addr_t buf_addr,
+				  size_t buf_len, size_t period_len,
+				  enum dma_transfer_direction direction,
+				  unsigned long flags)
 {
 	struct gdma_dmaengine_chan *chan = to_gdma_dma_chan(c);
 	struct gdma_dma_desc *desc;
--
2.30.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
