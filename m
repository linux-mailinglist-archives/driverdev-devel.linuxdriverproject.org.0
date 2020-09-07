Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B2825F373
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Sep 2020 08:58:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7C23E862ED;
	Mon,  7 Sep 2020 06:58:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hwXL1YEimnAi; Mon,  7 Sep 2020 06:58:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4E5988610F;
	Mon,  7 Sep 2020 06:58:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1E8AB1BF573
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 06:58:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1895F20368
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 06:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OoEoguNtLOf7 for <devel@linuxdriverproject.org>;
 Mon,  7 Sep 2020 06:58:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 2B3BC20345
 for <devel@driverdev.osuosl.org>; Mon,  7 Sep 2020 06:58:22 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id l191so7592547pgd.5
 for <devel@driverdev.osuosl.org>; Sun, 06 Sep 2020 23:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=LKqGEGfZu+9yBYF0gMGbxjoNciSYpOurX9vGA/w/tHs=;
 b=h0Ljo/uV94yJjaPN2S59uCTNiwyniFEK7bEeC1ih89o4Y/LNyDgkj0YZDtYiKswhkf
 uLinXvQ9Vg36rkZAaE94u1uuSArN+5FpOxpPUorS6iW4PQzc67EvqOz8XesBpu8+acG/
 q+UbjgIDlc/4c+wSlLdcd+h/vDm/hjCTZFqKoNZExB8dFLEze33Oz+Of0U9cxztHZ1E0
 +aQUwDYZ4KFaycnt+BJzya3c/TVGeRkwPq1J3JxARM7uxDqIXT70WufsReKOa0259UUG
 f0wsraBZ6hBOUsBOa9cVZJlu/kuwuCySMNdoVMvPlGGF/OMtV/MsOplKePhgAFdig5BZ
 tBww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LKqGEGfZu+9yBYF0gMGbxjoNciSYpOurX9vGA/w/tHs=;
 b=GGxewxkT+FiuMXy/KtxrMvaSCq4tV3JtvPlh0NKHV4Zl6SQWKCfiFjKGUmEyv3rcRo
 x6pB2j+wNW4fuKDh6G4j0QpG7YkszItmemGTfxyuZ2x78G88M6yn598UDz+y6m3MU93n
 XpBRZJgGsTkDMZTiyOVUVyc//vFsoyzBz8EJhVqRY9Z4iNWEUnBJQ7wLkBmnebfb9KZe
 L05UIMih/FspQ+kx5103kIwT19CJknVtHdQrG3WXOJ/HVdvultvcsqsEfiYQwkZZB1YN
 xt6+k9aSKtr5Jm4ZfzwMsgAajCRuEXqOoVyvpbCTIbeZnEm8Yhjtj4wBg5VBSF90E/DK
 jKBw==
X-Gm-Message-State: AOAM531bcLGDZF25pNE1HG8KwuikKJd1gnLgFbp1o2H5buPgOvsd/rQk
 hkdi21mu+xDp3lXRSnOHzW4=
X-Google-Smtp-Source: ABdhPJy07uqzYSsi8wXNiQXIBFIQipoilcJ/cdRxmq6k6Bz4R+L2tMes6OzohnwuD9g3wxVI9/YE7A==
X-Received: by 2002:a62:5e81:: with SMTP id s123mr19782288pfb.40.1599461901471; 
 Sun, 06 Sep 2020 23:58:21 -0700 (PDT)
Received: from laptop.Scindia.edu (proxy.scindia.edu. [210.212.152.36])
 by smtp.gmail.com with ESMTPSA id i17sm203127pfa.2.2020.09.06.23.58.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Sep 2020 23:58:20 -0700 (PDT)
From: Naveen Panwar <naveen.panwar27@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: Ralink: ralink-gdma: Fixed codestyle issue and
 warnings
Date: Mon,  7 Sep 2020 12:27:45 +0530
Message-Id: <20200907065745.21439-1-naveen.panwar27@gmail.com>
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
Cc: devel@driverdev.osuosl.org, mpe@ellerman.id.au, stern@rowland.harvard.edu,
 linux-kernel@vger.kernel.org, Naveen Panwar <naveen.panwar27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed checkpatch warnings two warnings still exits about DT
compatible strings appers undocumented. Fixed the other codestyle
errors, and some warnings about use of volatile and un-necessary
out of memory errors.

Signed-off-by: Naveen Panwar <naveen.panwar27@gmail.com>
---
 drivers/staging/ralink-gdma/ralink-gdma.c | 29 ++++++++++++-----------
 1 file changed, 15 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index eabf10933..1c3388b7c 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -122,7 +122,8 @@ struct gdma_dma_dev {
 	struct gdma_data *data;
 	void __iomem *base;
 	struct tasklet_struct task;
-	volatile unsigned long chan_issued;
+
+	unsigned long chan_issued;
 	atomic_t cnt;
 
 	struct gdma_dmaengine_chan chan[];
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
+	 unsigned int sg_len, enum dma_transfer_direction direction,
+	 unsigned long flags, void *context)
 {
 	struct gdma_dmaengine_chan *chan = to_gdma_dma_chan(c);
 	struct gdma_dma_desc *desc;
@@ -522,7 +523,7 @@ static struct dma_async_tx_descriptor *gdma_dma_prep_slave_sg(
 
 	desc = kzalloc(struct_size(desc, sg, sg_len), GFP_ATOMIC);
 	if (!desc) {
-		dev_err(c->device->dev, "alloc sg decs error\n");
+		goto free_rx_tx;
 		return NULL;
 	}
 	desc->residue = 0;
@@ -558,9 +559,9 @@ static struct dma_async_tx_descriptor *gdma_dma_prep_slave_sg(
 	return NULL;
 }
 
-static struct dma_async_tx_descriptor *gdma_dma_prep_dma_memcpy(
-		struct dma_chan *c, dma_addr_t dest, dma_addr_t src,
-		size_t len, unsigned long flags)
+static struct dma_async_tx_descriptor *gdma_dma_prep_dma_memcpy
+	(struct dma_chan *c, dma_addr_t dest, dma_addr_t src,
+	 size_t len, unsigned long flags)
 {
 	struct gdma_dmaengine_chan *chan = to_gdma_dma_chan(c);
 	struct gdma_dma_desc *desc;
@@ -577,7 +578,7 @@ static struct dma_async_tx_descriptor *gdma_dma_prep_dma_memcpy(
 
 	desc = kzalloc(struct_size(desc, sg, num_periods), GFP_ATOMIC);
 	if (!desc) {
-		dev_err(c->device->dev, "alloc memcpy decs error\n");
+		goto free_rx_tx;
 		return NULL;
 	}
 	desc->residue = len;
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
