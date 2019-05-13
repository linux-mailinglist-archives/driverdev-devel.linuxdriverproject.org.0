Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6551B73E
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 15:43:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9C28185784;
	Mon, 13 May 2019 13:43:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1oaU6U77JyHR; Mon, 13 May 2019 13:43:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A04418575B;
	Mon, 13 May 2019 13:43:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DFDDB1BF291
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 13:43:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D713D2550C
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 13:43:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TPut4-g53hP0 for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 13:43:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 719E222EE7
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 13:43:42 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id s11so7228957pfm.12
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 06:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tyO1CARB2XmwLOUsnzEaMvBZrkAT+HgqQos+yPRRpxQ=;
 b=n1MRpO6ry2FqqFZWWf8KTEb03GYap7272JeWf+OUD0t6NLgqNc2uCX0JKrTCoWTHdV
 yq55Jembey0mM4nqunV9kO3XqIuldZOnsMbv8YdUT+/hyA828oVgcW0hQM/RFj7zZ+t2
 oaYzdXwtKfSzkaH740eoEWz9+z00pncK1LZgsTl1PXt4mkHkJNmXH/TE1i8NDhXXfO9w
 4jTR579VG1xjQKFTKrks77hSHEmu2glfWkSLwnDH5Rde8DeV66xuXlolugtwnnKywCOn
 zcRRwSSibSLl6huWQpKSuN9c5wNSbMqymr4AzQpHyM7U0Qh+4CZAhGYrMjLKlN4S8FmU
 zWng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tyO1CARB2XmwLOUsnzEaMvBZrkAT+HgqQos+yPRRpxQ=;
 b=TmOZmeKug1VSrGqSEqVQz9D6zz3DCTrTIyOO+UhQ5FUayaSf4nxCq+RqeDVlMj3WHo
 XfYXRtdTnOoqmPqDy7+Lrdq/jkyepUcHtH2Luzk4Qmsufez7XJmkzS96zyrlWWzNTknY
 ydjs3gt+TL+dgBrSW8O4cWnNBufp2WyjiQ0fXrbIg05Wa6zmPe1xWf1CWzAf49R31WoM
 49q7henq1NhhzO+Dky9ZB6S1RzgJ1pPelRXck+GPuwMEUpDraJaZUIfjOocyLP5R/NBG
 sT248gyTVrBQsyy3cVTGXgIWteoVVHssdkRn62dzrjRRVyvR01j5Rp4UOo4doGP1Fjxg
 +68A==
X-Gm-Message-State: APjAAAXDKZgjf0Q8yjuAMd3suM3qb2/1C7Pn/+xToXidB0FB3YreXfM3
 QXb+QnY2BKhdrKUyXzCdz6Y=
X-Google-Smtp-Source: APXvYqxiPClj0pjlpx+CLOyL2M/sT1Ruv8S6p288K/me6KIOJqu7YiLscMQwfyC+SDbvN9awMXqQwg==
X-Received: by 2002:aa7:9afc:: with SMTP id y28mr33475079pfp.101.1557755021721; 
 Mon, 13 May 2019 06:43:41 -0700 (PDT)
Received: from bnva-HP-Pavilion-g6-Notebook-PC.domain.name ([117.248.72.152])
 by smtp.gmail.com with ESMTPSA id
 e10sm10874261pfm.137.2019.05.13.06.43.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 06:43:41 -0700 (PDT)
From: Vandana BN <bnvandana@gmail.com>
To: dan.carpenter@oracle.com, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 lukas.bulwahn@gmail.com
Subject: [PATCH v4 1/8] Staging: kpc2000: kpc_dma: Resolve trailing whitespace
 error reported by checkpatch
Date: Mon, 13 May 2019 19:13:20 +0530
Message-Id: <20190513134327.26320-1-bnvandana@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190510193833.1051-1-bnvandana@gmail.com>
References: <20190510193833.1051-1-bnvandana@gmail.com>
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

Resolve trailing whitespace error from checkpatch.pl
ERROR: trailing whitespace

Signed-off-by: Vandana BN <bnvandana@gmail.com>
---
v2 - split changes to multiple patches
v3 - edit commit message, subject line
v4 - edit commit message

 drivers/staging/kpc2000/kpc_dma/dma.c         |  86 ++++++-------
 drivers/staging/kpc2000/kpc_dma/fileops.c     | 114 +++++++++---------
 .../staging/kpc2000/kpc_dma/kpc_dma_driver.c  |  46 +++----
 .../staging/kpc2000/kpc_dma/kpc_dma_driver.h  |  16 +--
 4 files changed, 131 insertions(+), 131 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/dma.c b/drivers/staging/kpc2000/kpc_dma/dma.c
index 6959bac11388..ba987307d898 100644
--- a/drivers/staging/kpc2000/kpc_dma/dma.c
+++ b/drivers/staging/kpc2000/kpc_dma/dma.c
@@ -15,10 +15,10 @@ static
 irqreturn_t  ndd_irq_handler(int irq, void *dev_id)
 {
 	struct kpc_dma_device *ldev = (struct kpc_dma_device*)dev_id;
-	
+
 	if ((GetEngineControl(ldev) & ENG_CTL_IRQ_ACTIVE) || (ldev->desc_completed->MyDMAAddr != GetEngineCompletePtr(ldev)))
 		schedule_work(&ldev->irq_work);
-	
+
 	return IRQ_HANDLED;
 }
 
@@ -28,42 +28,42 @@ void  ndd_irq_worker(struct work_struct *ws)
 	struct kpc_dma_descriptor *cur;
 	struct kpc_dma_device *eng = container_of(ws, struct kpc_dma_device, irq_work);
 	lock_engine(eng);
-	
+
 	if (GetEngineCompletePtr(eng) == 0)
 		goto out;
-	
+
 	if (eng->desc_completed->MyDMAAddr == GetEngineCompletePtr(eng))
 		goto out;
-	
+
 	cur = eng->desc_completed;
 	do {
 		cur = cur->Next;
 		dev_dbg(&eng->pldev->dev, "Handling completed descriptor %p (acd = %p)\n", cur, cur->acd);
 		BUG_ON(cur == eng->desc_next); // Ordering failure.
-		
+
 		if (cur->DescControlFlags & DMA_DESC_CTL_SOP){
 			eng->accumulated_bytes = 0;
 			eng->accumulated_flags = 0;
 		}
-		
+
 		eng->accumulated_bytes += cur->DescByteCount;
 		if (cur->DescStatusFlags & DMA_DESC_STS_ERROR)
 			eng->accumulated_flags |= ACD_FLAG_ENG_ACCUM_ERROR;
-		
+
 		if (cur->DescStatusFlags & DMA_DESC_STS_SHORT)
 			eng->accumulated_flags |= ACD_FLAG_ENG_ACCUM_SHORT;
-		
+
 		if (cur->DescControlFlags & DMA_DESC_CTL_EOP){
 			if (cur->acd)
 				transfer_complete_cb(cur->acd, eng->accumulated_bytes, eng->accumulated_flags | ACD_FLAG_DONE);
 		}
-		
+
 		eng->desc_completed = cur;
 	} while (cur->MyDMAAddr != GetEngineCompletePtr(eng));
-	
+
  out:
 	SetClearEngineControl(eng, ENG_CTL_IRQ_ACTIVE, 0);
-	
+
 	unlock_engine(eng);
 }
 
@@ -73,12 +73,12 @@ void  start_dma_engine(struct kpc_dma_device *eng)
 {
 	eng->desc_next       = eng->desc_pool_first;
 	eng->desc_completed  = eng->desc_pool_last;
-	
+
 	// Setup the engine pointer registers
 	SetEngineNextPtr(eng, eng->desc_pool_first);
 	SetEngineSWPtr(eng, eng->desc_pool_first);
 	ClearEngineCompletePtr(eng);
-	
+
 	WriteEngineControl(eng, ENG_CTL_DMA_ENABLE | ENG_CTL_IRQ_ENABLE);
 }
 
@@ -92,67 +92,67 @@ int  setup_dma_engine(struct kpc_dma_device *eng, u32 desc_cnt)
 	unsigned int i;
 	int rv;
 	dev_dbg(&eng->pldev->dev, "Setting up DMA engine [%p]\n", eng);
-	
+
 	caps = GetEngineCapabilities(eng);
-	
+
 	if (WARN(!(caps & ENG_CAP_PRESENT), "setup_dma_engine() called for DMA Engine at %p which isn't present in hardware!\n", eng))
 		return -ENXIO;
-	
+
 	if (caps & ENG_CAP_DIRECTION){
 		eng->dir = DMA_FROM_DEVICE;
 	} else {
 		eng->dir = DMA_TO_DEVICE;
 	}
-	
+
 	eng->desc_pool_cnt = desc_cnt;
 	eng->desc_pool = dma_pool_create("KPC DMA Descriptors", &eng->pldev->dev, sizeof(struct kpc_dma_descriptor), DMA_DESC_ALIGNMENT, 4096);
-	
+
 	eng->desc_pool_first = dma_pool_alloc(eng->desc_pool, GFP_KERNEL | GFP_DMA, &head_handle);
 	if (!eng->desc_pool_first){
 		dev_err(&eng->pldev->dev, "setup_dma_engine: couldn't allocate desc_pool_first!\n");
 		dma_pool_destroy(eng->desc_pool);
 		return -ENOMEM;
 	}
-	
+
 	eng->desc_pool_first->MyDMAAddr = head_handle;
 	clear_desc(eng->desc_pool_first);
-	
+
 	cur = eng->desc_pool_first;
 	for (i = 1 ; i < eng->desc_pool_cnt ; i++){
 		next = dma_pool_alloc(eng->desc_pool, GFP_KERNEL | GFP_DMA, &next_handle);
 		if (next == NULL)
 			goto done_alloc;
-		
+
 		clear_desc(next);
 		next->MyDMAAddr = next_handle;
-		
+
 		cur->DescNextDescPtr = next_handle;
 		cur->Next = next;
 		cur = next;
 	}
-	
+
  done_alloc:
 	// Link the last descriptor back to the first, so it's a circular linked list
 	cur->Next = eng->desc_pool_first;
 	cur->DescNextDescPtr = eng->desc_pool_first->MyDMAAddr;
-	
+
 	eng->desc_pool_last = cur;
 	eng->desc_completed = eng->desc_pool_last;
-	
+
 	// Setup work queue
 	INIT_WORK(&eng->irq_work, ndd_irq_worker);
-	
+
 	// Grab IRQ line
 	rv = request_irq(eng->irq, ndd_irq_handler, IRQF_SHARED, KP_DRIVER_NAME_DMA_CONTROLLER, eng);
 	if (rv){
 		dev_err(&eng->pldev->dev, "setup_dma_engine: failed to request_irq: %d\n", rv);
 		return rv;
 	}
-	
+
 	// Turn on the engine!
 	start_dma_engine(eng);
 	unlock_engine(eng);
-	
+
 	return 0;
 }
 
@@ -160,10 +160,10 @@ void  stop_dma_engine(struct kpc_dma_device *eng)
 {
 	unsigned long timeout;
 	dev_dbg(&eng->pldev->dev, "Destroying DMA engine [%p]\n", eng);
-	
+
 	// Disable the descriptor engine
 	WriteEngineControl(eng, 0);
-	
+
 	// Wait for descriptor engine to finish current operaion
 	timeout = jiffies + (HZ / 2);
 	while (GetEngineControl(eng) & ENG_CTL_DMA_RUNNING){
@@ -172,10 +172,10 @@ void  stop_dma_engine(struct kpc_dma_device *eng)
 			break;
 		}
 	}
-	
+
 	// Request a reset
 	WriteEngineControl(eng, ENG_CTL_DMA_RESET_REQUEST);
-	
+
 	// Wait for reset request to be processed
 	timeout = jiffies + (HZ / 2);
 	while (GetEngineControl(eng) & (ENG_CTL_DMA_RUNNING | ENG_CTL_DMA_RESET_REQUEST)){
@@ -184,10 +184,10 @@ void  stop_dma_engine(struct kpc_dma_device *eng)
 			break;
 		}
 	}
-	
+
 	// Request a reset
 	WriteEngineControl(eng, ENG_CTL_DMA_RESET);
-	
+
 	// And wait for reset to complete
 	timeout = jiffies + (HZ / 2);
 	while (GetEngineControl(eng) & ENG_CTL_DMA_RESET){
@@ -196,12 +196,12 @@ void  stop_dma_engine(struct kpc_dma_device *eng)
 			break;
 		}
 	}
-	
+
 	// Clear any persistent bits just to make sure there is no residue from the reset
 	SetClearEngineControl(eng, (ENG_CTL_IRQ_ACTIVE | ENG_CTL_DESC_COMPLETE | ENG_CTL_DESC_ALIGN_ERR | ENG_CTL_DESC_FETCH_ERR | ENG_CTL_SW_ABORT_ERR | ENG_CTL_DESC_CHAIN_END | ENG_CTL_DMA_WAITING_PERSIST), 0);
-	
+
 	// Reset performance counters
-	
+
 	// Completely disable the engine
 	WriteEngineControl(eng, 0);
 }
@@ -211,12 +211,12 @@ void  destroy_dma_engine(struct kpc_dma_device *eng)
 	struct kpc_dma_descriptor * cur;
 	dma_addr_t cur_handle;
 	unsigned int i;
-	
+
 	stop_dma_engine(eng);
-	
+
 	cur = eng->desc_pool_first;
 	cur_handle = eng->desc_pool_first->MyDMAAddr;
-	
+
 	for (i = 0 ; i < eng->desc_pool_cnt ; i++){
 		struct kpc_dma_descriptor *next = cur->Next;
 		dma_addr_t next_handle = cur->DescNextDescPtr;
@@ -224,9 +224,9 @@ void  destroy_dma_engine(struct kpc_dma_device *eng)
 		cur_handle = next_handle;
 		cur = next;
 	}
-	
+
 	dma_pool_destroy(eng->desc_pool);
-	
+
 	free_irq(eng->irq, eng);
 }
 
diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 5741d2b49a7d..6c38c3f978c3 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -50,20 +50,20 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 	u64 card_addr;
 	u64 dma_addr;
 	u64 user_ctl;
-	
+
 	BUG_ON(priv == NULL);
 	ldev = priv->ldev;
 	BUG_ON(ldev == NULL);
-	
+
 	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_transfer(priv = [%p], kcb = [%p], iov_base = [%p], iov_len = %ld) ldev = [%p]\n", priv, kcb, (void*)iov_base, iov_len, ldev);
-	
+
 	acd = (struct aio_cb_data *) kzalloc(sizeof(struct aio_cb_data), GFP_KERNEL);
 	if (!acd){
 		dev_err(&priv->ldev->pldev->dev, "Couldn't kmalloc space for for the aio data\n");
 		return -ENOMEM;
 	}
 	memset(acd, 0x66, sizeof(struct aio_cb_data));
-	
+
 	acd->priv = priv;
 	acd->ldev = priv->ldev;
 	acd->cpl = &done;
@@ -71,7 +71,7 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 	acd->kcb = kcb;
 	acd->len = iov_len;
 	acd->page_count = count_pages(iov_base, iov_len);
-	
+
 	// Allocate an array of page pointers
 	acd->user_pages = kzalloc(sizeof(struct page *) * acd->page_count, GFP_KERNEL);
 	if (!acd->user_pages){
@@ -79,7 +79,7 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 		rv = -ENOMEM;
 		goto err_alloc_userpages;
 	}
-	
+
 	// Lock the user buffer pages in memory, and hold on to the page pointers (for the sglist)
 	down_read(&current->mm->mmap_sem);      /*  get memory map semaphore */
 	rv = get_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE | FOLL_GET, acd->user_pages, NULL);
@@ -88,14 +88,14 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 		dev_err(&priv->ldev->pldev->dev, "Couldn't get_user_pages (%ld)\n", rv);
 		goto err_get_user_pages;
 	}
-	
+
 	// Allocate and setup the sg_table (scatterlist entries)
 	rv = sg_alloc_table_from_pages(&acd->sgt, acd->user_pages, acd->page_count, iov_base & (PAGE_SIZE-1), iov_len, GFP_KERNEL);
 	if (rv){
 		dev_err(&priv->ldev->pldev->dev, "Couldn't alloc sg_table (%ld)\n", rv);
 		goto err_alloc_sg_table;
 	}
-	
+
 	// Setup the DMA mapping for all the sg entries
 	acd->mapped_entry_count = dma_map_sg(&ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, ldev->dir);
 	if (acd->mapped_entry_count <= 0){
@@ -107,9 +107,9 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 	for_each_sg(acd->sgt.sgl, sg, acd->mapped_entry_count, i){
 		desc_needed += count_parts_for_sge(sg);
 	}
-	
+
 	lock_engine(ldev);
-	
+
 	// Figoure out how many descriptors are available and return an error if there aren't enough
 	num_descrs_avail = count_descriptors_available(ldev);
 	dev_dbg(&priv->ldev->pldev->dev, "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d\n", acd->mapped_entry_count, desc_needed, num_descrs_avail);
@@ -141,43 +141,43 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 				desc->DescByteCount = sg_dma_len(sg) - (p * 0x80000);
 			}
 			desc->DescBufferByteCount = desc->DescByteCount;
-			
+
 			desc->DescControlFlags |= DMA_DESC_CTL_IRQONERR;
 			if (i == 0 && p == 0)
 				desc->DescControlFlags |= DMA_DESC_CTL_SOP;
 			if (i == acd->mapped_entry_count-1 && p == pcnt-1)
 				desc->DescControlFlags |= DMA_DESC_CTL_EOP | DMA_DESC_CTL_IRQONDONE;
-			
+
 			desc->DescCardAddrLS = (card_addr & 0xFFFFFFFF);
 			desc->DescCardAddrMS = (card_addr >> 32) & 0xF;
 			card_addr += desc->DescByteCount;
-			
+
 			dma_addr  = sg_dma_address(sg) + (p * 0x80000);
 			desc->DescSystemAddrLS = (dma_addr & 0x00000000FFFFFFFF) >>  0;
 			desc->DescSystemAddrMS = (dma_addr & 0xFFFFFFFF00000000) >> 32;
-			
+
 			user_ctl = acd->priv->user_ctl;
 			if (i == acd->mapped_entry_count-1 && p == pcnt-1){
 				user_ctl = acd->priv->user_ctl_last;
 			}
 			desc->DescUserControlLS = (user_ctl & 0x00000000FFFFFFFF) >>  0;
 			desc->DescUserControlMS = (user_ctl & 0xFFFFFFFF00000000) >> 32;
-			
+
 			if (i == acd->mapped_entry_count-1 && p == pcnt-1)
 				desc->acd = acd;
-			
+
 			dev_dbg(&priv->ldev->pldev->dev, "  Filled descriptor %p (acd = %p)\n", desc, desc->acd);
-			
+
 			ldev->desc_next = desc->Next;
 			desc = desc->Next;
 		}
 	}
-	
+
 	// Send the filled descriptors off to the hardware to process!
 	SetEngineSWPtr(ldev, ldev->desc_next);
-	
+
 	unlock_engine(ldev);
-	
+
 	// If this is a synchronous kiocb, we need to put the calling process to sleep until the transfer is complete
 	if (kcb == NULL || is_sync_kiocb(kcb)){
 		rv = wait_for_completion_interruptible(&done);
@@ -191,7 +191,7 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 		}
 		return rv;
 	}
-	
+
 	return -EIOCBQUEUED;
 
  err_descr_too_many:
@@ -214,33 +214,33 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
 {
 	unsigned int i;
-	
+
 	BUG_ON(acd == NULL);
 	BUG_ON(acd->user_pages == NULL);
 	BUG_ON(acd->sgt.sgl == NULL);
 	BUG_ON(acd->ldev == NULL);
 	BUG_ON(acd->ldev->pldev == NULL);
-	
+
 	dev_dbg(&acd->ldev->pldev->dev, "transfer_complete_cb(acd = [%p])\n", acd);
-	
+
 	for (i = 0 ; i < acd->page_count ; i++){
 		if (!PageReserved(acd->user_pages[i])){
 			set_page_dirty(acd->user_pages[i]);
 		}
 	}
-	
+
 	dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd->ldev->dir);
-	
+
 	for (i = 0 ; i < acd->page_count ; i++){
 		put_page(acd->user_pages[i]);
 	}
-	
+
 	sg_free_table(&acd->sgt);
-	
+
 	kfree(acd->user_pages);
-	
+
 	acd->flags = flags;
-	
+
 	if (acd->kcb == NULL || is_sync_kiocb(acd->kcb)){
 		if (acd->cpl){
 			complete(acd->cpl);
@@ -264,19 +264,19 @@ int  kpc_dma_open(struct inode *inode, struct file *filp)
 	struct kpc_dma_device *ldev = kpc_dma_lookup_device(iminor(inode));
 	if (ldev == NULL)
 		return -ENODEV;
-	
+
 	if (! atomic_dec_and_test(&ldev->open_count)){
 		atomic_inc(&ldev->open_count);
 		return -EBUSY; /* already open */
 	}
-	
+
 	priv = kzalloc(sizeof(struct dev_private_data), GFP_KERNEL);
 	if (!priv)
 		return -ENOMEM;
-	
+
 	priv->ldev = ldev;
 	filp->private_data = priv;
-	
+
 	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_open(inode = [%p], filp = [%p]) priv = [%p] ldev = [%p]\n", inode, filp, priv, priv->ldev);
 	return 0;
 }
@@ -288,11 +288,11 @@ int  kpc_dma_close(struct inode *inode, struct file *filp)
 	struct dev_private_data *priv = (struct dev_private_data *)filp->private_data;
 	struct kpc_dma_device *eng = priv->ldev;
 	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_close(inode = [%p], filp = [%p]) priv = [%p], ldev = [%p]\n", inode, filp, priv, priv->ldev);
-	
+
 	lock_engine(eng);
-	
+
 	stop_dma_engine(eng);
-	
+
 	cur = eng->desc_completed->Next;
 	while (cur != eng->desc_next){
 		dev_dbg(&eng->pldev->dev, "Aborting descriptor %p (acd = %p)\n", cur, cur->acd);
@@ -300,17 +300,17 @@ int  kpc_dma_close(struct inode *inode, struct file *filp)
 			if (cur->acd)
 				transfer_complete_cb(cur->acd, 0, ACD_FLAG_ABORT);
 		}
-		
+
 		clear_desc(cur);
 		eng->desc_completed = cur;
-		
+
 		cur = cur->Next;
 	}
-	
+
 	start_dma_engine(eng);
-	
+
 	unlock_engine(eng);
-	
+
 	atomic_inc(&priv->ldev->open_count); /* release the device */
 	kfree(priv);
 	return 0;
@@ -330,15 +330,15 @@ ssize_t   kpc_dma_aio_read(struct kiocb *kcb, const struct iovec *iov, unsigned
 {
 	struct dev_private_data *priv = (struct dev_private_data *)kcb->ki_filp->private_data;
 	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_aio_read(kcb = [%p], iov = [%p], iov_count = %ld, pos = %lld) priv = [%p], ldev = [%p]\n", kcb, iov, iov_count, pos, priv, priv->ldev);
-	
+
 	if (priv->ldev->dir != DMA_FROM_DEVICE)
 		return -EMEDIUMTYPE;
-	
+
 	if (iov_count != 1){
 		dev_err(&priv->ldev->pldev->dev, "kpc_dma_aio_read() called with iov_count > 1!\n");
 		return -EFAULT;
 	}
-	
+
 	if (!is_sync_kiocb(kcb))
 		kiocb_set_cancel_fn(kcb, kpc_dma_aio_cancel);
 	return kpc_dma_transfer(priv, kcb, (unsigned long)iov->iov_base, iov->iov_len);
@@ -349,15 +349,15 @@ ssize_t  kpc_dma_aio_write(struct kiocb *kcb, const struct iovec *iov, unsigned
 {
 	struct dev_private_data *priv = (struct dev_private_data *)kcb->ki_filp->private_data;
 	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_aio_write(kcb = [%p], iov = [%p], iov_count = %ld, pos = %lld) priv = [%p], ldev = [%p]\n", kcb, iov, iov_count, pos, priv, priv->ldev);
-	
+
 	if (priv->ldev->dir != DMA_TO_DEVICE)
 		return -EMEDIUMTYPE;
-	
+
 	if (iov_count != 1){
 		dev_err(&priv->ldev->pldev->dev, "kpc_dma_aio_write() called with iov_count > 1!\n");
 		return -EFAULT;
 	}
-	
+
 	if (!is_sync_kiocb(kcb))
 		kiocb_set_cancel_fn(kcb, kpc_dma_aio_cancel);
 	return kpc_dma_transfer(priv, kcb, (unsigned long)iov->iov_base, iov->iov_len);
@@ -369,10 +369,10 @@ ssize_t  kpc_dma_read( struct file *filp,       char __user *user_buf, size_t co
 {
 	struct dev_private_data *priv = (struct dev_private_data *)filp->private_data;
 	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_read(filp = [%p], user_buf = [%p], count = %zu, ppos = [%p]) priv = [%p], ldev = [%p]\n", filp, user_buf, count, ppos, priv, priv->ldev);
-	
+
 	if (priv->ldev->dir != DMA_FROM_DEVICE)
 		return -EMEDIUMTYPE;
-	
+
 	return kpc_dma_transfer(priv, (struct kiocb *)NULL, (unsigned long)user_buf, count);
 }
 
@@ -381,10 +381,10 @@ ssize_t  kpc_dma_write(struct file *filp, const char __user *user_buf, size_t co
 {
 	struct dev_private_data *priv = (struct dev_private_data *)filp->private_data;
 	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_write(filp = [%p], user_buf = [%p], count = %zu, ppos = [%p]) priv = [%p], ldev = [%p]\n", filp, user_buf, count, ppos, priv, priv->ldev);
-	
+
 	if (priv->ldev->dir != DMA_TO_DEVICE)
 		return -EMEDIUMTYPE;
-	
+
 	return kpc_dma_transfer(priv, (struct kiocb *)NULL, (unsigned long)user_buf, count);
 }
 
@@ -393,14 +393,14 @@ long  kpc_dma_ioctl(struct file *filp, unsigned int ioctl_num, unsigned long ioc
 {
 	struct dev_private_data *priv = (struct dev_private_data *)filp->private_data;
 	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_ioctl(filp = [%p], ioctl_num = 0x%x, ioctl_param = 0x%lx) priv = [%p], ldev = [%p]\n", filp, ioctl_num, ioctl_param, priv, priv->ldev);
-	
+
 	switch (ioctl_num){
-		case KND_IOCTL_SET_CARD_ADDR:           priv->card_addr  = ioctl_param; return priv->card_addr; 
-		case KND_IOCTL_SET_USER_CTL:            priv->user_ctl   = ioctl_param; return priv->user_ctl; 
-		case KND_IOCTL_SET_USER_CTL_LAST:       priv->user_ctl_last = ioctl_param; return priv->user_ctl_last; 
+		case KND_IOCTL_SET_CARD_ADDR:           priv->card_addr  = ioctl_param; return priv->card_addr;
+		case KND_IOCTL_SET_USER_CTL:            priv->user_ctl   = ioctl_param; return priv->user_ctl;
+		case KND_IOCTL_SET_USER_CTL_LAST:       priv->user_ctl_last = ioctl_param; return priv->user_ctl_last;
 		case KND_IOCTL_GET_USER_STS:            return priv->user_sts;
 	}
-	
+
 	return -ENOTTY;
 }
 
diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index aeae58d9bc18..dece60e6e3f3 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
@@ -58,8 +58,8 @@ static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *at
 	if (!pldev) return 0;
 	ldev = platform_get_drvdata(pldev);
 	if (!ldev) return 0;
-	
-	return scnprintf(buf, PAGE_SIZE, 
+
+	return scnprintf(buf, PAGE_SIZE,
 		"EngineControlStatus      = 0x%08x\n"
 		"RegNextDescPtr           = 0x%08x\n"
 		"RegSWDescPtr             = 0x%08x\n"
@@ -95,25 +95,25 @@ int  kpc_dma_probe(struct platform_device *pldev)
 	struct resource *r = NULL;
 	int rv = 0;
 	dev_t dev;
-	
+
 	struct kpc_dma_device *ldev = kzalloc(sizeof(struct kpc_dma_device), GFP_KERNEL);
 	if (!ldev){
 		dev_err(&pldev->dev, "kpc_dma_probe: unable to kzalloc space for kpc_dma_device\n");
 		rv = -ENOMEM;
 		goto err_rv;
 	}
-	
+
 	dev_dbg(&pldev->dev, "kpc_dma_probe(pldev = [%p]) ldev = [%p]\n", pldev, ldev);
-	
+
 	INIT_LIST_HEAD(&ldev->list);
-	
+
 	ldev->pldev = pldev;
 	platform_set_drvdata(pldev, ldev);
 	atomic_set(&ldev->open_count, 1);
-	
+
 	mutex_init(&ldev->sem);
 	lock_engine(ldev);
-	
+
 	// Get Engine regs resource
 	r = platform_get_resource(pldev, IORESOURCE_MEM, 0);
 	if (!r){
@@ -127,7 +127,7 @@ int  kpc_dma_probe(struct platform_device *pldev)
 		rv = -ENXIO;
 		goto err_kfree;
 	}
-	
+
 	r = platform_get_resource(pldev, IORESOURCE_IRQ, 0);
 	if (!r){
 		dev_err(&ldev->pldev->dev, "kpc_dma_probe: didn't get the IRQ resource!\n");
@@ -135,7 +135,7 @@ int  kpc_dma_probe(struct platform_device *pldev)
 		goto err_kfree;
 	}
 	ldev->irq = r->start;
-	
+
 	// Setup miscdev struct
 	dev = MKDEV(assigned_major_num, pldev->id);
 	ldev->kpc_dma_dev = device_create(kpc_dma_class, &pldev->dev, dev, ldev, "kpc_dma%d", pldev->id);
@@ -143,25 +143,25 @@ int  kpc_dma_probe(struct platform_device *pldev)
 		dev_err(&ldev->pldev->dev, "kpc_dma_probe: device_create failed: %d\n", rv);
 		goto err_kfree;
 	}
-	
+
 	// Setup the DMA engine
 	rv = setup_dma_engine(ldev, 30);
 	if (rv){
 		dev_err(&ldev->pldev->dev, "kpc_dma_probe: failed to setup_dma_engine: %d\n", rv);
 		goto err_misc_dereg;
 	}
-	
+
 	// Setup the sysfs files
 	rv = sysfs_create_files(&(ldev->pldev->dev.kobj), ndd_attr_list);
 	if (rv){
 		dev_err(&ldev->pldev->dev, "kpc_dma_probe: Failed to add sysfs files: %d\n", rv);
 		goto err_destroy_eng;
 	}
-	
+
 	kpc_dma_add_device(ldev);
-	
+
 	return 0;
-	
+
  err_destroy_eng:
 	destroy_dma_engine(ldev);
  err_misc_dereg:
@@ -178,16 +178,16 @@ int  kpc_dma_remove(struct platform_device *pldev)
 	struct kpc_dma_device *ldev = platform_get_drvdata(pldev);
 	if (!ldev)
 		return -ENXIO;
-	
+
 	dev_dbg(&ldev->pldev->dev, "kpc_dma_remove(pldev = [%p]) ldev = [%p]\n", pldev, ldev);
-	
+
 	lock_engine(ldev);
 	sysfs_remove_files(&(ldev->pldev->dev.kobj), ndd_attr_list);
 	destroy_dma_engine(ldev);
 	kpc_dma_del_device(ldev);
 	device_destroy(kpc_dma_class, MKDEV(assigned_major_num, ldev->pldev->id));
 	kfree(ldev);
-	
+
 	return 0;
 }
 
@@ -206,29 +206,29 @@ static
 int __init  kpc_dma_driver_init(void)
 {
 	int err;
-	
+
 	err = __register_chrdev(KPC_DMA_CHAR_MAJOR, 0, KPC_DMA_NUM_MINORS, "kpc_dma", &kpc_dma_fops);
 	if (err < 0){
 		pr_err("Can't allocate a major number (%d) for kpc_dma (err = %d)\n", KPC_DMA_CHAR_MAJOR, err);
 		goto fail_chrdev_register;
 	}
 	assigned_major_num = err;
-	
+
 	kpc_dma_class = class_create(THIS_MODULE, "kpc_dma");
 	err = PTR_ERR(kpc_dma_class);
 	if (IS_ERR(kpc_dma_class)){
 		pr_err("Can't create class kpc_dma (err = %d)\n", err);
 		goto fail_class_create;
 	}
-	
+
 	err = platform_driver_register(&kpc_dma_plat_driver_i);
 	if (err){
 		pr_err("Can't register platform driver for kpc_dma (err = %d)\n", err);
 		goto fail_platdriver_register;
 	}
-	
+
 	return err;
-	
+
   fail_platdriver_register:
 	class_destroy(kpc_dma_class);
   fail_class_create:
diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
index ef913b7496e6..67c0ea31acab 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
@@ -27,23 +27,23 @@ struct kpc_dma_device {
 	struct device              *kpc_dma_dev;
 	struct kobject              kobj;
 	char                        name[16];
-	
+
 	int                         dir; // DMA_FROM_DEVICE || DMA_TO_DEVICE
 	struct mutex                sem;
 	unsigned int                irq;
 	struct work_struct          irq_work;
-	
+
 	atomic_t                    open_count;
-	
+
 	size_t                      accumulated_bytes;
 	u32                         accumulated_flags;
-	
+
 	// Descriptor "Pool" housekeeping
 	u32                         desc_pool_cnt;
 	struct dma_pool            *desc_pool;
 	struct kpc_dma_descriptor  *desc_pool_first;
 	struct kpc_dma_descriptor  *desc_pool_last;
-	
+
 	struct kpc_dma_descriptor  *desc_next;
 	struct kpc_dma_descriptor  *desc_completed;
 };
@@ -90,7 +90,7 @@ struct aio_cb_data {
 	unsigned char       flags;
 	struct kiocb       *kcb;
 	size_t              len;
-	
+
 	unsigned int        page_count;
 	struct page       **user_pages;
 	struct sg_table     sgt;
@@ -119,10 +119,10 @@ struct kpc_dma_descriptor {
 		volatile u32  DescSystemAddrLS;
 		volatile u32  DescSystemAddrMS;
 		volatile u32  DescNextDescPtr;
-		
+
 		dma_addr_t    MyDMAAddr;
 		struct kpc_dma_descriptor   *Next;
-		
+
 		struct aio_cb_data  *acd;
 } __attribute__((packed));
 // DescControlFlags:
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
