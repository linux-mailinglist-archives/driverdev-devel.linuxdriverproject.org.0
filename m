Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFC12948ED
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Oct 2020 09:31:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 22F708641E;
	Wed, 21 Oct 2020 07:31:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2v-VBv4fXdvn; Wed, 21 Oct 2020 07:31:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DD7DB85FA2;
	Wed, 21 Oct 2020 07:31:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 75F7E1BF5A9
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 07:31:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6D95E863BB
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 07:31:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rEF1nrzpcYOX for <devel@linuxdriverproject.org>;
 Wed, 21 Oct 2020 07:31:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0A831851C0
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 07:31:13 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id d23so769678pll.7
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 00:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=JP7lnBWo4brGHQWiDoGO/kDXnyiW8oaHvnK0mIcbp8Y=;
 b=YYuHQs/cdU8PBY9vZnvj7GJNs/D8YFeFGdX1gHmuSRkVjMdUgmsj0R5DPik/PtKHx8
 XKvwMdd2GvFwzvRfX30y9g0az1kejenXOqOKQrtZfUg+iFIx4p5cw6egIUKprIpH+VQL
 akyhyjcPzfVGHwyQBs6GHeisPPV2NFlqHzq57PdT0Vi/JMoLogcBPfYRDGwweU9FhfGF
 xFMDMhum853EIJt8vSvZvbdwxltw389OgZ6AX2GgSWZHwk8Rgq6lDxq3g1c+pLRgtTTi
 sownjl2Y4zTLuib1AK+cbjy4AzF/mJqnpzHdgV7RoG4fOxoO9AHY6MnKo3JwoEC+U/y2
 X2Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=JP7lnBWo4brGHQWiDoGO/kDXnyiW8oaHvnK0mIcbp8Y=;
 b=WlXph78JoU1QOm81XsPiOOoKAnGGjY7dq7rt0cWJhpkCCfFbtcR6BR6ODKCHuo73Jv
 DW1rAqOEsKbANehdHc6WaNPsFLfUNMz2x0eCRYtdxAzoIOMkpoi5BF9HuCDk/G3/J8zl
 abjJNdqDZMR8WzOwPZ72oUmRh2qU3CKzvw5lUaSo8kMm96ykB94EReaTAA7c4caKo5b7
 UjV6++BcqFTa2cX/LUcInuwVFF2+nM4Chg38OdN//rQ/2tmS1cJ+SPLqsQiwbusffr7p
 dK/MKdjRBs+17bTJfJoyv/nTtk8/NECrBGKz6tkpBqJ7b2uUC6g/mIYa4Y+nScBB9Gnj
 hw/Q==
X-Gm-Message-State: AOAM531YvjWh9lUXicHpzcciX5x75mS3SuKI6/px3l4+k0EG3/kPJn+d
 Tf8uW0mqpwJ7v1xxBmC9mik=
X-Google-Smtp-Source: ABdhPJyR01TxKypTnujz7SlYA9pbz+4FSlqfaSQasTjSuMjo5QODD5495ogOjo21qUFpZ3YiVu+A5Q==
X-Received: by 2002:a17:90b:3393:: with SMTP id
 ke19mr2110399pjb.3.1603265472699; 
 Wed, 21 Oct 2020 00:31:12 -0700 (PDT)
Received: from ubuntu204 ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id y4sm1427040pgs.0.2020.10.21.00.31.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Oct 2020 00:31:12 -0700 (PDT)
Date: Wed, 21 Oct 2020 13:01:07 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] staging: kpc2000: kpc_dma: rearrange lines exceeding
 100 columns
Message-ID: <c61a3c244bea516528e9ca4e909c30f16959c3aa.1603264617.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: mh12gx2825@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Reformat lines that exceed 100 column in length. Issue reported by
checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v1:
   - No change in this patch.
   - Patch 2/2 has a change.

 drivers/staging/kpc2000/kpc_dma/dma.c         | 27 +++++++++---
 drivers/staging/kpc2000/kpc_dma/fileops.c     | 44 +++++++++++++++----
 .../staging/kpc2000/kpc_dma/kpc_dma_driver.c  |  9 ++--
 3 files changed, 63 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/dma.c b/drivers/staging/kpc2000/kpc_dma/dma.c
index 452a3f7c835d..b8d8294aa4c3 100644
--- a/drivers/staging/kpc2000/kpc_dma/dma.c
+++ b/drivers/staging/kpc2000/kpc_dma/dma.c
@@ -16,7 +16,8 @@ irqreturn_t  ndd_irq_handler(int irq, void *dev_id)
 {
 	struct kpc_dma_device *ldev = (struct kpc_dma_device *)dev_id;
 
-	if ((GetEngineControl(ldev) & ENG_CTL_IRQ_ACTIVE) || (ldev->desc_completed->MyDMAAddr != GetEngineCompletePtr(ldev)))
+	if ((GetEngineControl(ldev) & ENG_CTL_IRQ_ACTIVE) ||
+	    (ldev->desc_completed->MyDMAAddr != GetEngineCompletePtr(ldev)))
 		schedule_work(&ldev->irq_work);
 
 	return IRQ_HANDLED;
@@ -39,7 +40,9 @@ void  ndd_irq_worker(struct work_struct *ws)
 	cur = eng->desc_completed;
 	do {
 		cur = cur->Next;
-		dev_dbg(&eng->pldev->dev, "Handling completed descriptor %p (acd = %p)\n", cur, cur->acd);
+		dev_dbg(&eng->pldev->dev, "Handling completed descriptor %p (acd = %p)\n",
+			cur,
+			cur->acd);
 		BUG_ON(cur == eng->desc_next); // Ordering failure.
 
 		if (cur->DescControlFlags & DMA_DESC_CTL_SOP) {
@@ -56,7 +59,9 @@ void  ndd_irq_worker(struct work_struct *ws)
 
 		if (cur->DescControlFlags & DMA_DESC_CTL_EOP) {
 			if (cur->acd)
-				transfer_complete_cb(cur->acd, eng->accumulated_bytes, eng->accumulated_flags | ACD_FLAG_DONE);
+				transfer_complete_cb(cur->acd,
+						     eng->accumulated_bytes,
+						     eng->accumulated_flags | ACD_FLAG_DONE);
 		}
 
 		eng->desc_completed = cur;
@@ -103,7 +108,10 @@ int  setup_dma_engine(struct kpc_dma_device *eng, u32 desc_cnt)
 		eng->dir = DMA_TO_DEVICE;
 
 	eng->desc_pool_cnt = desc_cnt;
-	eng->desc_pool = dma_pool_create("KPC DMA Descriptors", &eng->pldev->dev, sizeof(struct kpc_dma_descriptor), DMA_DESC_ALIGNMENT, 4096);
+	eng->desc_pool = dma_pool_create("KPC DMA Descriptors",
+					 &eng->pldev->dev,
+					 sizeof(struct kpc_dma_descriptor),
+					 DMA_DESC_ALIGNMENT, 4096);
 
 	eng->desc_pool_first = dma_pool_alloc(eng->desc_pool, GFP_KERNEL | GFP_DMA, &head_handle);
 	if (!eng->desc_pool_first) {
@@ -141,7 +149,11 @@ int  setup_dma_engine(struct kpc_dma_device *eng, u32 desc_cnt)
 	INIT_WORK(&eng->irq_work, ndd_irq_worker);
 
 	// Grab IRQ line
-	rv = request_irq(eng->irq, ndd_irq_handler, IRQF_SHARED, KP_DRIVER_NAME_DMA_CONTROLLER, eng);
+	rv = request_irq(eng->irq,
+			 ndd_irq_handler,
+			 IRQF_SHARED,
+			 KP_DRIVER_NAME_DMA_CONTROLLER,
+			 eng);
 	if (rv) {
 		dev_err(&eng->pldev->dev, "%s: failed to request_irq: %d\n", __func__, rv);
 		return rv;
@@ -195,7 +207,10 @@ void  stop_dma_engine(struct kpc_dma_device *eng)
 	}
 
 	// Clear any persistent bits just to make sure there is no residue from the reset
-	SetClearEngineControl(eng, (ENG_CTL_IRQ_ACTIVE | ENG_CTL_DESC_COMPLETE | ENG_CTL_DESC_ALIGN_ERR | ENG_CTL_DESC_FETCH_ERR | ENG_CTL_SW_ABORT_ERR | ENG_CTL_DESC_CHAIN_END | ENG_CTL_DMA_WAITING_PERSIST), 0);
+	SetClearEngineControl(eng, (ENG_CTL_IRQ_ACTIVE | ENG_CTL_DESC_COMPLETE |
+				    ENG_CTL_DESC_ALIGN_ERR | ENG_CTL_DESC_FETCH_ERR |
+				    ENG_CTL_SW_ABORT_ERR | ENG_CTL_DESC_CHAIN_END |
+				    ENG_CTL_DMA_WAITING_PERSIST), 0);
 
 	// Reset performance counters
 
diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index e1c7c04f16fe..b929987844ff 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -76,7 +76,11 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 
 	// Lock the user buffer pages in memory, and hold on to the page pointers (for the sglist)
 	mmap_read_lock(current->mm);      /*  get memory map semaphore */
-	rv = pin_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE, acd->user_pages, NULL);
+	rv = pin_user_pages(iov_base,
+			    acd->page_count,
+			    FOLL_TOUCH | FOLL_WRITE,
+			    acd->user_pages,
+			    NULL);
 	mmap_read_unlock(current->mm);        /*  release the semaphore */
 	if (rv != acd->page_count) {
 		nr_pages = rv;
@@ -89,16 +93,25 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 	nr_pages = acd->page_count;
 
 	// Allocate and setup the sg_table (scatterlist entries)
-	rv = sg_alloc_table_from_pages(&acd->sgt, acd->user_pages, acd->page_count, iov_base & (PAGE_SIZE - 1), iov_len, GFP_KERNEL);
+	rv = sg_alloc_table_from_pages(&acd->sgt,
+				       acd->user_pages,
+				       acd->page_count,
+				       iov_base & (PAGE_SIZE - 1),
+				       iov_len, GFP_KERNEL);
 	if (rv) {
 		dev_err(&priv->ldev->pldev->dev, "Couldn't alloc sg_table (%d)\n", rv);
 		goto unpin_pages;
 	}
 
 	// Setup the DMA mapping for all the sg entries
-	acd->mapped_entry_count = dma_map_sg(&ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, ldev->dir);
+	acd->mapped_entry_count = dma_map_sg(&ldev->pldev->dev,
+					     acd->sgt.sgl,
+					     acd->sgt.nents,
+					     ldev->dir);
 	if (acd->mapped_entry_count <= 0) {
-		dev_err(&priv->ldev->pldev->dev, "Couldn't dma_map_sg (%d)\n", acd->mapped_entry_count);
+		dev_err(&priv->ldev->pldev->dev,
+			"Couldn't dma_map_sg (%d)\n",
+			acd->mapped_entry_count);
 		goto free_table;
 	}
 
@@ -111,14 +124,26 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 
 	// Figoure out how many descriptors are available and return an error if there aren't enough
 	num_descrs_avail = count_descriptors_available(ldev);
-	dev_dbg(&priv->ldev->pldev->dev, "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d\n", acd->mapped_entry_count, desc_needed, num_descrs_avail);
+	dev_dbg(&priv->ldev->pldev->dev,
+		"    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d\n",
+		acd->mapped_entry_count,
+		desc_needed,
+		num_descrs_avail);
 	if (desc_needed >= ldev->desc_pool_cnt) {
-		dev_warn(&priv->ldev->pldev->dev, "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d    TOO MANY to ever complete!\n", acd->mapped_entry_count, desc_needed, num_descrs_avail);
+		dev_warn(&priv->ldev->pldev->dev,
+			 "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d    TOO MANY to ever complete!\n",
+			 acd->mapped_entry_count,
+			 desc_needed,
+			 num_descrs_avail);
 		rv = -EAGAIN;
 		goto err_descr_too_many;
 	}
 	if (desc_needed > num_descrs_avail) {
-		dev_warn(&priv->ldev->pldev->dev, "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d    Too many to complete right now.\n", acd->mapped_entry_count, desc_needed, num_descrs_avail);
+		dev_warn(&priv->ldev->pldev->dev,
+			 "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d    Too many to complete right now.\n",
+			 acd->mapped_entry_count,
+			 desc_needed,
+			 num_descrs_avail);
 		rv = -EMSGSIZE;
 		goto err_descr_too_many;
 	}
@@ -163,7 +188,10 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 			if (i == acd->mapped_entry_count - 1 && p == pcnt - 1)
 				desc->acd = acd;
 
-			dev_dbg(&priv->ldev->pldev->dev, "  Filled descriptor %p (acd = %p)\n", desc, desc->acd);
+			dev_dbg(&priv->ldev->pldev->dev,
+				"  Filled descriptor %p (acd = %p)\n",
+				desc,
+				desc->acd);
 
 			ldev->desc_next = desc->Next;
 			desc = desc->Next;
diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index 624d47bae4d1..7698e5ef2a7c 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
@@ -138,7 +138,8 @@ int  kpc_dma_probe(struct platform_device *pldev)
 
 	// Setup miscdev struct
 	dev = MKDEV(assigned_major_num, pldev->id);
-	ldev->kpc_dma_dev = device_create(kpc_dma_class, &pldev->dev, dev, ldev, "kpc_dma%d", pldev->id);
+	ldev->kpc_dma_dev = device_create(kpc_dma_class, &pldev->dev,
+					  dev, ldev, "kpc_dma%d", pldev->id);
 	if (IS_ERR(ldev->kpc_dma_dev)) {
 		rv = PTR_ERR(ldev->kpc_dma_dev);
 		dev_err(&ldev->pldev->dev, "%s: device_create failed: %d\n", __func__, rv);
@@ -205,9 +206,11 @@ int __init kpc_dma_driver_init(void)
 {
 	int err;
 
-	err = __register_chrdev(KPC_DMA_CHAR_MAJOR, 0, KPC_DMA_NUM_MINORS, "kpc_dma", &kpc_dma_fops);
+	err = __register_chrdev(KPC_DMA_CHAR_MAJOR, 0,
+				KPC_DMA_NUM_MINORS, "kpc_dma", &kpc_dma_fops);
 	if (err < 0) {
-		pr_err("Can't allocate a major number (%d) for kpc_dma (err = %d)\n", KPC_DMA_CHAR_MAJOR, err);
+		pr_err("Can't allocate a major number (%d) for kpc_dma (err = %d)\n",
+		       KPC_DMA_CHAR_MAJOR, err);
 		goto fail_chrdev_register;
 	}
 	assigned_major_num = err;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
