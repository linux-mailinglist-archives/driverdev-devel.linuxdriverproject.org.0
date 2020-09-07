Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0706F25F690
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Sep 2020 11:35:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6476D870DD;
	Mon,  7 Sep 2020 09:35:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DucKZ3hCpRkc; Mon,  7 Sep 2020 09:35:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 686DB870C7;
	Mon,  7 Sep 2020 09:35:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC26E1BF349
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 09:35:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C3298870BB
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 09:35:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F3VDgnAA43wt for <devel@linuxdriverproject.org>;
 Mon,  7 Sep 2020 09:35:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 43890870BA
 for <devel@driverdev.osuosl.org>; Mon,  7 Sep 2020 09:35:12 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id w7so8358669pfi.4
 for <devel@driverdev.osuosl.org>; Mon, 07 Sep 2020 02:35:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=TrKpq1HeubvB7u3vH7HRrwLBLyhUU9JVeUCW7U4oMXU=;
 b=hJNa+ff0zV1wIICx3W4NIIxjj9pcAks1AbVaODI8wctdotmMIwelrsY+XP9mU5XrW1
 BpiznuaYEyJ2qxLRytdLQvIlAaOsDJBm/AHQNtNSvB9Vt22reBs8hbvFfEl8A1TSxQaP
 2t68VfycjbFEgFEaEOvZmf3bzMGYG7YUPUx3e3D2Fs3EacSZWYjTjBhd4bEC9JNwyqCY
 4glISLMNQ0onvABYrFlS3b9svGEdBwYmeVle6nloZrBRNoaIHjjMTNe8OJTzvVy2U5Gr
 GnnnzdF5juvXzrVY/wdJYB0IEMQR5mdQF0e0hdfULgpwxJVRuisGZrKgJtjSCRPgs/r/
 er9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=TrKpq1HeubvB7u3vH7HRrwLBLyhUU9JVeUCW7U4oMXU=;
 b=e9jRITiGvZs/P8CwVgKrXuxi+UfBfS/bneYThDGPrAIPpZHVoDjyJXUKq8EV+IiDvp
 Y7K56lr2ZepIOGk1evaDiNU9nXVBuafM/mXlMo9sr+io9tvXsIMKls2ZoSxaCJR8c7AF
 B0+1zWa/PW3LVvL7XDZbhstaj8IBXExrVRwsOK4zsoKsKpEfqHMlmTdrC86hKAirlqd2
 63WkAXD5dxn6Sq70pa18aZtwWA4QIqtV6jicM6SFvd9jLyoZ0+l0PJUH02ZA138VVJ+A
 ZrtowPiLK7d77uG+sMC19A28dG/T8O2kC/Q2vbRpBOEt0/8vJD80zNHaOgpsptjHr53a
 wHbQ==
X-Gm-Message-State: AOAM533t1d94W1270vkl1mYLxwFRBvRt6bTaktDoMNB5IfejKs6MUjES
 B4N+pi4talssTzkQeWValgXRzpp7Po4qag==
X-Google-Smtp-Source: ABdhPJyi++uzru32BArcgr7slPiIL260zRcg1TGzLwlLdHCGYA8o9LdfXviG8PBaG8u3V0fq8is72A==
X-Received: by 2002:a65:5bcf:: with SMTP id o15mr15892210pgr.126.1599471311741; 
 Mon, 07 Sep 2020 02:35:11 -0700 (PDT)
Received: from laptop.Scindia.edu ([103.104.110.2])
 by smtp.gmail.com with ESMTPSA id jz6sm12198254pjb.22.2020.09.07.02.35.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Sep 2020 02:35:10 -0700 (PDT)
From: Naveen Panwar <naveen.panwar27@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] drivers: staging: ralink-gdma: fixing codestyle related
 changes
Date: Mon,  7 Sep 2020 15:05:03 +0530
Message-Id: <20200907093503.27725-1-naveen.panwar27@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: lokeshvutla@ti.com, mpe@ellerman.id.au, devel@driverdev.osuosl.org,
 Naveen Panwar <naveen.panwar27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixing the codestyle related changes in the ralink-gdma driver

Signed-off-by: Naveen Panwar <naveen.panwar27@gmail.com>
---
 drivers/staging/ralink-gdma/ralink-gdma.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index eabf1093328e..8e3b4a699322 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -122,6 +122,7 @@ struct gdma_dma_dev {
 	struct gdma_data *data;
 	void __iomem *base;
 	struct tasklet_struct task;
+
 	volatile unsigned long chan_issued;
 	atomic_t cnt;
 
@@ -135,8 +136,8 @@ struct gdma_data {
 	int (*start_transfer)(struct gdma_dmaengine_chan *chan);
 };
 
-static struct gdma_dma_dev *gdma_dma_chan_get_dev(
-	struct gdma_dmaengine_chan *chan)
+static struct gdma_dma_dev *gdma_dma_chan_get_dev
+	(struct gdma_dmaengine_chan *chan)
 {
 	return container_of(chan->vchan.chan.device, struct gdma_dma_dev,
 		ddev);
@@ -510,10 +511,10 @@ static void gdma_dma_issue_pending(struct dma_chan *c)
 	spin_unlock_irqrestore(&chan->vchan.lock, flags);
 }
 
-static struct dma_async_tx_descriptor *gdma_dma_prep_slave_sg(
-		struct dma_chan *c, struct scatterlist *sgl,
-		unsigned int sg_len, enum dma_transfer_direction direction,
-		unsigned long flags, void *context)
+static struct dma_async_tx_descriptor *gdma_dma_prep_slave_sg
+	(struct dma_chan *c, struct scatterlist *sgl,
+	unsigned int sg_len, enum dma_transfer_direction direction,
+	unsigned long flags, void *context)
 {
 	struct gdma_dmaengine_chan *chan = to_gdma_dma_chan(c);
 	struct gdma_dma_desc *desc;
@@ -558,9 +559,9 @@ static struct dma_async_tx_descriptor *gdma_dma_prep_slave_sg(
 	return NULL;
 }
 
-static struct dma_async_tx_descriptor *gdma_dma_prep_dma_memcpy(
-		struct dma_chan *c, dma_addr_t dest, dma_addr_t src,
-		size_t len, unsigned long flags)
+static struct dma_async_tx_descriptor *gdma_dma_prep_dma_memcpy
+	(struct dma_chan *c, dma_addr_t dest, dma_addr_t src,
+	size_t len, unsigned long flags)
 {
 	struct gdma_dmaengine_chan *chan = to_gdma_dma_chan(c);
 	struct gdma_dma_desc *desc;
@@ -601,8 +602,8 @@ static struct dma_async_tx_descriptor *gdma_dma_prep_dma_memcpy(
 	return vchan_tx_prep(&chan->vchan, &desc->vdesc, flags);
 }
 
-static struct dma_async_tx_descriptor *gdma_dma_prep_dma_cyclic(
-	struct dma_chan *c, dma_addr_t buf_addr, size_t buf_len,
+static struct dma_async_tx_descriptor *gdma_dma_prep_dma_cyclic
+	(struct dma_chan *c, dma_addr_t buf_addr, size_t buf_len,
 	size_t period_len, enum dma_transfer_direction direction,
 	unsigned long flags)
 {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
