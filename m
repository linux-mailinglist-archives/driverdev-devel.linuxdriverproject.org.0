Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4611A36E
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 May 2019 21:39:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B1FC686A54;
	Fri, 10 May 2019 19:39:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mCN2NfvyFh-V; Fri, 10 May 2019 19:39:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2ACD186A9A;
	Fri, 10 May 2019 19:39:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3AEF91BF5DC
 for <devel@linuxdriverproject.org>; Fri, 10 May 2019 19:39:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3765431302
 for <devel@linuxdriverproject.org>; Fri, 10 May 2019 19:39:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2OZfSIIBSi6h for <devel@linuxdriverproject.org>;
 Fri, 10 May 2019 19:39:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id A669F23491
 for <devel@driverdev.osuosl.org>; Fri, 10 May 2019 19:39:37 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id u17so3742023pfn.7
 for <devel@driverdev.osuosl.org>; Fri, 10 May 2019 12:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=kVizBYwaHURYSI0KhoB4+NwZaALLEJ9C+B4am8PZevc=;
 b=QFLs8/syjoDsPtDfMoG0kuoig+UTmIcF46TtuS3tBaIMH7hbLQAbXHGFn0Wy5cCIIn
 Vue6kJ+hsAkrDj1DOcgW92SiPHK9+qlZVzc5sYL0ufLADoF9qjbnWGELGNBF9FZ5aSsD
 pO9BwWZTyQnmoSHj4FJJk5fCVciXdBWsS3hSd6fgm6dvmcPuEiVd/5xAvuYrV3rGS6ud
 eA8D6rm8E4HwsBkn8RWlQ0qjFmgxHZvWUakQI5RwbLz2wc8Y6g76Cq9CDbds+EtLfUvG
 9IeXYgOxRztvZmlwFWcZfN+CBVi8Pny87R0tPzu0kCqY1NHtzY0l0+dU+IAQ2ZEFc5Rt
 oO/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=kVizBYwaHURYSI0KhoB4+NwZaALLEJ9C+B4am8PZevc=;
 b=merpCALO19NbRk0AcGZH+Kee8/ON3JUvx/EADZMRCoCWHCRAa5fxQhGr2+JI1iJY2V
 COFemsW9RltcAN9m4zhBwgFncanI5veELf5AaMxpCTLbEDKERE5AbQWxvw0IRbhA1QRX
 3f3EzVub66X8vOSs6GPJmZHh5GSbdIJGlVhX2nLPuMNWz37Yq4loadyY7EQ4ovlPC5tv
 4pkFNgn59noRMm+ChxZ/mQ7iXkX19rru5gULBF5m7D4O+sqzE8yx3Xl8vQTiAjcNxCXW
 rrZ1zpr9BoFvMhStUf2+qAQrAvMR8FT8SxaGtHsLSnKqor0NyYnyhSsuh/kq50iies1s
 U51g==
X-Gm-Message-State: APjAAAVIxd+niTeT+u8eCSfVOUZNTHzLmrt6zATrQsuc2cvt1aMp7pLI
 ePn3FfDi3+JulO7QDRwNG653aXKn1u8=
X-Google-Smtp-Source: APXvYqwRvBHLrVJVpOHAE08tAexPNq2tdLFBgTpKPQaQ7x9AE9UPEyPWHGRMiW65KehQlxHclF/VNQ==
X-Received: by 2002:a62:d44a:: with SMTP id u10mr16411638pfl.227.1557517176434; 
 Fri, 10 May 2019 12:39:36 -0700 (PDT)
Received: from bnva-HP-Pavilion-g6-Notebook-PC.domain.name ([117.248.70.207])
 by smtp.gmail.com with ESMTPSA id
 k14sm14179789pfj.171.2019.05.10.12.39.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 12:39:35 -0700 (PDT)
From: Vandana BN <bnvandana@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] Staging: kpc2000: kpc_dma: resolve checkpath errors and
 warnings
Date: Sat, 11 May 2019 01:08:33 +0530
Message-Id: <20190510193833.1051-1-bnvandana@gmail.com>
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
Cc: Vandana BN <bnvandana@gmail.com>,
 linux-kernel-mentees@lists.linuxfoundation.org, skhan@linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch resolves coding style errors and warnings reported by chechpatch

ERROR: "(foo*)" should be "(foo *)"
ERROR: trailing whitespace
ERROR: space required before the open brace '{'
ERROR: "foo * bar" should be "foo *bar"
ERROR: space prohibited after that '!' (ctx:BxW)
ERROR: space prohibited after that open parenthesis '('
ERROR: switch and case should be at the same indent
ERROR: trailing statements should be on next line
ERROR: Macros with complex values should be enclosed in parentheses
ERROR: "foo __init  bar" should be "foo __init bar"
ERROR: "foo __exit  bar" should be "foo __exit bar"
WARNING: Missing a blank line after declarations
WARNING: Prefer using '"%s...", __func__' to using function's name, in a string
WARNING: braces {} are not necessary for any arm of this statement
WARNING: unnecessary cast may hide bugs
WARNING: braces {} are not necessary for single statement
WARNING: struct file_operations should normally be const
WARNING: labels should not be indented
Signed-off-by: Vandana BN <bnvandana@gmail.com>
---
 drivers/staging/kpc2000/kpc_dma/dma.c         | 137 +++++------
 drivers/staging/kpc2000/kpc_dma/fileops.c     | 220 +++++++++---------
 .../staging/kpc2000/kpc_dma/kpc_dma_driver.c  | 121 +++++-----
 .../staging/kpc2000/kpc_dma/kpc_dma_driver.h  |  32 +--
 4 files changed, 265 insertions(+), 245 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/dma.c b/drivers/staging/kpc2000/kpc_dma/dma.c
index 6959bac11388..e7967f3089c2 100644
--- a/drivers/staging/kpc2000/kpc_dma/dma.c
+++ b/drivers/staging/kpc2000/kpc_dma/dma.c
@@ -14,11 +14,11 @@
 static
 irqreturn_t  ndd_irq_handler(int irq, void *dev_id)
 {
-	struct kpc_dma_device *ldev = (struct kpc_dma_device*)dev_id;
-	
+	struct kpc_dma_device *ldev = (struct kpc_dma_device *)dev_id;
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
-		if (cur->DescControlFlags & DMA_DESC_CTL_SOP){
+
+		if (cur->DescControlFlags & DMA_DESC_CTL_SOP) {
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
-		if (cur->DescControlFlags & DMA_DESC_CTL_EOP){
+
+		if (cur->DescControlFlags & DMA_DESC_CTL_EOP) {
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
 
@@ -73,171 +73,172 @@ void  start_dma_engine(struct kpc_dma_device *eng)
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
 	int rv;
+
 	dev_dbg(&eng->pldev->dev, "Setting up DMA engine [%p]\n", eng);
-	
+
 	caps = GetEngineCapabilities(eng);
-	
-	if (WARN(!(caps & ENG_CAP_PRESENT), "setup_dma_engine() called for DMA Engine at %p which isn't present in hardware!\n", eng))
+
+	if (WARN(!(caps & ENG_CAP_PRESENT), "%s() called for DMA Engine at  %p which isn't present in hardware!\n", __func__, eng))
 		return -ENXIO;
-	
-	if (caps & ENG_CAP_DIRECTION){
+
+	if (caps & ENG_CAP_DIRECTION)
 		eng->dir = DMA_FROM_DEVICE;
-	} else {
+	else
 		eng->dir = DMA_TO_DEVICE;
-	}
-	
+
 	eng->desc_pool_cnt = desc_cnt;
 	eng->desc_pool = dma_pool_create("KPC DMA Descriptors", &eng->pldev->dev, sizeof(struct kpc_dma_descriptor), DMA_DESC_ALIGNMENT, 4096);
-	
+
 	eng->desc_pool_first = dma_pool_alloc(eng->desc_pool, GFP_KERNEL | GFP_DMA, &head_handle);
-	if (!eng->desc_pool_first){
-		dev_err(&eng->pldev->dev, "setup_dma_engine: couldn't allocate desc_pool_first!\n");
+	if (!eng->desc_pool_first) {
+		dev_err(&eng->pldev->dev, "%s: couldn't allocate desc_pool_first!\n", __func__);
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
-	for (i = 1 ; i < eng->desc_pool_cnt ; i++){
+	for (i = 1 ; i < eng->desc_pool_cnt ; i++) {
 		next = dma_pool_alloc(eng->desc_pool, GFP_KERNEL | GFP_DMA, &next_handle);
-		if (next == NULL)
+		if (!next)
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
-	if (rv){
-		dev_err(&eng->pldev->dev, "setup_dma_engine: failed to request_irq: %d\n", rv);
+	if (rv) {
+		dev_err(&eng->pldev->dev, "%s: failed to request_irq: %d\n", __func__, rv);
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
 
 void  stop_dma_engine(struct kpc_dma_device *eng)
 {
 	unsigned long timeout;
+
 	dev_dbg(&eng->pldev->dev, "Destroying DMA engine [%p]\n", eng);
-	
 	// Disable the descriptor engine
 	WriteEngineControl(eng, 0);
-	
+
 	// Wait for descriptor engine to finish current operaion
 	timeout = jiffies + (HZ / 2);
-	while (GetEngineControl(eng) & ENG_CTL_DMA_RUNNING){
-		if (time_after(jiffies, timeout)){
+	while (GetEngineControl(eng) & ENG_CTL_DMA_RUNNING) {
+		if (time_after(jiffies, timeout)) {
 			dev_crit(&eng->pldev->dev, "DMA_RUNNING still asserted!\n");
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
-	while (GetEngineControl(eng) & (ENG_CTL_DMA_RUNNING | ENG_CTL_DMA_RESET_REQUEST)){
-		if (time_after(jiffies, timeout)){
+	while (GetEngineControl(eng) & (ENG_CTL_DMA_RUNNING | ENG_CTL_DMA_RESET_REQUEST)) {
+		if (time_after(jiffies, timeout)) {
 			dev_crit(&eng->pldev->dev, "ENG_CTL_DMA_RESET_REQUEST still asserted!\n");
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
-	while (GetEngineControl(eng) & ENG_CTL_DMA_RESET){
-		if (time_after(jiffies, timeout)){
+	while (GetEngineControl(eng) & ENG_CTL_DMA_RESET) {
+		if (time_after(jiffies, timeout)) {
 			dev_crit(&eng->pldev->dev, "DMA_RESET still asserted!\n");
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
 
 void  destroy_dma_engine(struct kpc_dma_device *eng)
 {
-	struct kpc_dma_descriptor * cur;
+	struct kpc_dma_descriptor *cur;
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
-	for (i = 0 ; i < eng->desc_pool_cnt ; i++){
+
+	for (i = 0 ; i < eng->desc_pool_cnt ; i++) {
 		struct kpc_dma_descriptor *next = cur->Next;
 		dma_addr_t next_handle = cur->DescNextDescPtr;
+
 		dma_pool_free(eng->desc_pool, cur, cur_handle);
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
 
 
-
 /**********  Helper Functions  **********/
 int  count_descriptors_available(struct kpc_dma_device *eng)
 {
 	u32 count = 0;
 	struct kpc_dma_descriptor *cur = eng->desc_next;
-	while (cur != eng->desc_completed){
+
+	while (cur != eng->desc_completed) {
 		BUG_ON(cur == NULL);
 		count++;
 		cur = cur->Next;
diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 5741d2b49a7d..db38f9c8e12a 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -21,6 +21,7 @@ unsigned int  count_pages(unsigned long iov_base, size_t iov_len)
 {
 	unsigned long first = (iov_base             & PAGE_MASK) >> PAGE_SHIFT;
 	unsigned long last  = ((iov_base+iov_len-1) & PAGE_MASK) >> PAGE_SHIFT;
+
 	return last - first + 1;
 }
 
@@ -28,7 +29,9 @@ static inline
 unsigned int  count_parts_for_sge(struct scatterlist *sg)
 {
 	unsigned int sg_length = sg_dma_len(sg);
+
 	sg_length += (0x80000-1);
+
 	return (sg_length / 0x80000);
 }
 
@@ -50,20 +53,20 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 	u64 card_addr;
 	u64 dma_addr;
 	u64 user_ctl;
-	
+
 	BUG_ON(priv == NULL);
 	ldev = priv->ldev;
 	BUG_ON(ldev == NULL);
-	
-	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_transfer(priv = [%p], kcb = [%p], iov_base = [%p], iov_len = %ld) ldev = [%p]\n", priv, kcb, (void*)iov_base, iov_len, ldev);
-	
-	acd = (struct aio_cb_data *) kzalloc(sizeof(struct aio_cb_data), GFP_KERNEL);
-	if (!acd){
+
+	dev_dbg(&priv->ldev->pldev->dev, "%s(priv = [%p], kcb = [%p], iov_base = [%p], iov_len = %ld) ldev = [%p]\n", __func__, priv, kcb, (void *)iov_base, iov_len, ldev);
+
+	acd = kzalloc(sizeof(struct aio_cb_data), GFP_KERNEL);
+	if (!acd) {
 		dev_err(&priv->ldev->pldev->dev, "Couldn't kmalloc space for for the aio data\n");
 		return -ENOMEM;
 	}
 	memset(acd, 0x66, sizeof(struct aio_cb_data));
-	
+
 	acd->priv = priv;
 	acd->ldev = priv->ldev;
 	acd->cpl = &done;
@@ -71,55 +74,55 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 	acd->kcb = kcb;
 	acd->len = iov_len;
 	acd->page_count = count_pages(iov_base, iov_len);
-	
+
 	// Allocate an array of page pointers
 	acd->user_pages = kzalloc(sizeof(struct page *) * acd->page_count, GFP_KERNEL);
-	if (!acd->user_pages){
+	if (!acd->user_pages) {
 		dev_err(&priv->ldev->pldev->dev, "Couldn't kmalloc space for for the page pointers\n");
 		rv = -ENOMEM;
 		goto err_alloc_userpages;
 	}
-	
+
 	// Lock the user buffer pages in memory, and hold on to the page pointers (for the sglist)
 	down_read(&current->mm->mmap_sem);      /*  get memory map semaphore */
 	rv = get_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE | FOLL_GET, acd->user_pages, NULL);
 	up_read(&current->mm->mmap_sem);        /*  release the semaphore */
-	if (rv != acd->page_count){
+	if (rv != acd->page_count) {
 		dev_err(&priv->ldev->pldev->dev, "Couldn't get_user_pages (%ld)\n", rv);
 		goto err_get_user_pages;
 	}
-	
+
 	// Allocate and setup the sg_table (scatterlist entries)
 	rv = sg_alloc_table_from_pages(&acd->sgt, acd->user_pages, acd->page_count, iov_base & (PAGE_SIZE-1), iov_len, GFP_KERNEL);
-	if (rv){
+	if (rv) {
 		dev_err(&priv->ldev->pldev->dev, "Couldn't alloc sg_table (%ld)\n", rv);
 		goto err_alloc_sg_table;
 	}
-	
+
 	// Setup the DMA mapping for all the sg entries
 	acd->mapped_entry_count = dma_map_sg(&ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, ldev->dir);
-	if (acd->mapped_entry_count <= 0){
+	if (acd->mapped_entry_count <= 0) {
 		dev_err(&priv->ldev->pldev->dev, "Couldn't dma_map_sg (%d)\n", acd->mapped_entry_count);
 		goto err_dma_map_sg;
 	}
 
 	// Calculate how many descriptors are actually needed for this transfer.
-	for_each_sg(acd->sgt.sgl, sg, acd->mapped_entry_count, i){
+	for_each_sg(acd->sgt.sgl, sg, acd->mapped_entry_count, i) {
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
-	if (desc_needed >= ldev->desc_pool_cnt){
+	if (desc_needed >= ldev->desc_pool_cnt) {
 		dev_warn(&priv->ldev->pldev->dev, "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d    TOO MANY to ever complete!\n", acd->mapped_entry_count, desc_needed, num_descrs_avail);
 		rv = -EAGAIN;
 		unlock_engine(ldev);
 		goto err_descr_too_many;
 	}
-	if (desc_needed > num_descrs_avail){
+	if (desc_needed > num_descrs_avail) {
 		dev_warn(&priv->ldev->pldev->dev, "    mapped_entry_count = %d    num_descrs_needed = %d    num_descrs_avail = %d    Too many to complete right now.\n", acd->mapped_entry_count, desc_needed, num_descrs_avail);
 		rv = -EMSGSIZE;
 		unlock_engine(ldev);
@@ -129,69 +132,69 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 	// Loop through all the sg table entries and fill out a descriptor for each one.
 	desc = ldev->desc_next;
 	card_addr = acd->priv->card_addr;
-	for_each_sg(acd->sgt.sgl, sg, acd->mapped_entry_count, i){
+	for_each_sg(acd->sgt.sgl, sg, acd->mapped_entry_count, i) {
 		pcnt = count_parts_for_sge(sg);
-		for (p = 0 ; p < pcnt ; p++){
+		for (p = 0 ; p < pcnt ; p++) {
 			// Fill out the descriptor
 			BUG_ON(desc == NULL);
 			clear_desc(desc);
-			if (p != pcnt-1){
+			if (p != pcnt-1) {
 				desc->DescByteCount = 0x80000;
 			} else {
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
-			if (i == acd->mapped_entry_count-1 && p == pcnt-1){
+			if (i == acd->mapped_entry_count-1 && p == pcnt-1) {
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
-	if (kcb == NULL || is_sync_kiocb(kcb)){
+	if (kcb == NULL || is_sync_kiocb(kcb)) {
 		rv = wait_for_completion_interruptible(&done);
 		// If the user aborted (rv == -ERESTARTSYS), we're no longer responsible for cleaning up the acd
-		if (rv == -ERESTARTSYS){
+		if (rv == -ERESTARTSYS)
 			acd->cpl = NULL;
-		}
-		if (rv == 0){
+
+		if (rv == 0) {
 			rv = acd->len;
 			kfree(acd);
 		}
 		return rv;
 	}
-	
+
 	return -EIOCBQUEUED;
 
  err_descr_too_many:
@@ -200,49 +203,48 @@ int  kpc_dma_transfer(struct dev_private_data *priv, struct kiocb *kcb, unsigned
 	sg_free_table(&acd->sgt);
  err_dma_map_sg:
  err_alloc_sg_table:
-	for (i = 0 ; i < acd->page_count ; i++){
+	for (i = 0 ; i < acd->page_count ; i++) {
 		put_page(acd->user_pages[i]);
 	}
  err_get_user_pages:
 	kfree(acd->user_pages);
  err_alloc_userpages:
 	kfree(acd);
-	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_transfer returning with error %ld\n", rv);
+	dev_dbg(&priv->ldev->pldev->dev, "%s returning with error %ld\n", __func__, rv);
 	return rv;
 }
 
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
-	dev_dbg(&acd->ldev->pldev->dev, "transfer_complete_cb(acd = [%p])\n", acd);
-	
-	for (i = 0 ; i < acd->page_count ; i++){
-		if (!PageReserved(acd->user_pages[i])){
+
+	dev_dbg(&acd->ldev->pldev->dev, "%s(acd = [%p])\n", __func__, acd);
+
+	for (i = 0 ; i < acd->page_count ; i++) {
+		if (!PageReserved(acd->user_pages[i]))
 			set_page_dirty(acd->user_pages[i]);
-		}
 	}
-	
+
 	dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd->ldev->dir);
-	
-	for (i = 0 ; i < acd->page_count ; i++){
+
+	for (i = 0 ; i < acd->page_count ; i++) {
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
-	if (acd->kcb == NULL || is_sync_kiocb(acd->kcb)){
-		if (acd->cpl){
+
+	if (acd->kcb == NULL || is_sync_kiocb(acd->kcb)) {
+		if (acd->cpl) {
 			complete(acd->cpl);
 		} else {
 			// There's no completion, so we're responsible for cleaning up the acd
@@ -262,22 +264,23 @@ int  kpc_dma_open(struct inode *inode, struct file *filp)
 {
 	struct dev_private_data *priv;
 	struct kpc_dma_device *ldev = kpc_dma_lookup_device(iminor(inode));
+
 	if (ldev == NULL)
 		return -ENODEV;
-	
-	if (! atomic_dec_and_test(&ldev->open_count)){
+
+	if (!atomic_dec_and_test(&ldev->open_count)) {
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
-	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_open(inode = [%p], filp = [%p]) priv = [%p] ldev = [%p]\n", inode, filp, priv, priv->ldev);
+
+	dev_dbg(&priv->ldev->pldev->dev, "%s(inode = [%p], filp = [%p]) priv = [%p] ldev = [%p]\n", __func__, inode, filp, priv, priv->ldev);
 	return 0;
 }
 
@@ -287,30 +290,30 @@ int  kpc_dma_close(struct inode *inode, struct file *filp)
 	struct kpc_dma_descriptor *cur;
 	struct dev_private_data *priv = (struct dev_private_data *)filp->private_data;
 	struct kpc_dma_device *eng = priv->ldev;
-	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_close(inode = [%p], filp = [%p]) priv = [%p], ldev = [%p]\n", inode, filp, priv, priv->ldev);
-	
+
+	dev_dbg(&priv->ldev->pldev->dev, "%s(inode = [%p], filp = [%p]) priv = [%p], ldev = [%p]\n", __func__, inode, filp, priv, priv->ldev);
+
 	lock_engine(eng);
-	
+
 	stop_dma_engine(eng);
-	
+
 	cur = eng->desc_completed->Next;
-	while (cur != eng->desc_next){
+	while (cur != eng->desc_next) {
 		dev_dbg(&eng->pldev->dev, "Aborting descriptor %p (acd = %p)\n", cur, cur->acd);
-		if (cur->DescControlFlags & DMA_DESC_CTL_EOP){
+		if (cur->DescControlFlags & DMA_DESC_CTL_EOP) {
 			if (cur->acd)
 				transfer_complete_cb(cur->acd, 0, ACD_FLAG_ABORT);
 		}
-		
+
 		clear_desc(cur);
 		eng->desc_completed = cur;
-		
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
@@ -321,7 +324,8 @@ static
 int  kpc_dma_aio_cancel(struct kiocb *kcb)
 {
 	struct dev_private_data *priv = (struct dev_private_data *)kcb->ki_filp->private_data;
-	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_aio_cancel(kcb = [%p]) priv = [%p], ldev = [%p]\n", kcb, priv, priv->ldev);
+
+	dev_dbg(&priv->ldev->pldev->dev, "%s(kcb = [%p]) priv = [%p], ldev = [%p]\n", __func__, kcb, priv, priv->ldev);
 	return 0;
 }
 
@@ -329,16 +333,17 @@ static
 ssize_t   kpc_dma_aio_read(struct kiocb *kcb, const struct iovec *iov, unsigned long iov_count, loff_t pos)
 {
 	struct dev_private_data *priv = (struct dev_private_data *)kcb->ki_filp->private_data;
-	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_aio_read(kcb = [%p], iov = [%p], iov_count = %ld, pos = %lld) priv = [%p], ldev = [%p]\n", kcb, iov, iov_count, pos, priv, priv->ldev);
-	
+
+	dev_dbg(&priv->ldev->pldev->dev, "%s(kcb = [%p], iov = [%p], iov_count = %ld, pos = %lld) priv = [%p], ldev = [%p]\n", __func__, kcb, iov, iov_count, pos, priv, priv->ldev);
+
 	if (priv->ldev->dir != DMA_FROM_DEVICE)
 		return -EMEDIUMTYPE;
-	
-	if (iov_count != 1){
-		dev_err(&priv->ldev->pldev->dev, "kpc_dma_aio_read() called with iov_count > 1!\n");
+
+	if (iov_count != 1) {
+		dev_err(&priv->ldev->pldev->dev, "%s() called with iov_count > 1!\n", __func__);
 		return -EFAULT;
 	}
-	
+
 	if (!is_sync_kiocb(kcb))
 		kiocb_set_cancel_fn(kcb, kpc_dma_aio_cancel);
 	return kpc_dma_transfer(priv, kcb, (unsigned long)iov->iov_base, iov->iov_len);
@@ -348,16 +353,17 @@ static
 ssize_t  kpc_dma_aio_write(struct kiocb *kcb, const struct iovec *iov, unsigned long iov_count, loff_t pos)
 {
 	struct dev_private_data *priv = (struct dev_private_data *)kcb->ki_filp->private_data;
-	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_aio_write(kcb = [%p], iov = [%p], iov_count = %ld, pos = %lld) priv = [%p], ldev = [%p]\n", kcb, iov, iov_count, pos, priv, priv->ldev);
-	
+
+	dev_dbg(&priv->ldev->pldev->dev, "%s(kcb = [%p], iov = [%p], iov_count = %ld, pos = %lld) priv = [%p], ldev = [%p]\n", __func__, kcb, iov, iov_count, pos, priv, priv->ldev);
+
 	if (priv->ldev->dir != DMA_TO_DEVICE)
 		return -EMEDIUMTYPE;
-	
-	if (iov_count != 1){
-		dev_err(&priv->ldev->pldev->dev, "kpc_dma_aio_write() called with iov_count > 1!\n");
+
+	if (iov_count != 1) {
+		dev_err(&priv->ldev->pldev->dev, "%s() called with iov_count > 1!\n", __func__);
 		return -EFAULT;
 	}
-	
+
 	if (!is_sync_kiocb(kcb))
 		kiocb_set_cancel_fn(kcb, kpc_dma_aio_cancel);
 	return kpc_dma_transfer(priv, kcb, (unsigned long)iov->iov_base, iov->iov_len);
@@ -365,14 +371,15 @@ ssize_t  kpc_dma_aio_write(struct kiocb *kcb, const struct iovec *iov, unsigned
 #endif
 
 static
-ssize_t  kpc_dma_read( struct file *filp,       char __user *user_buf, size_t count, loff_t *ppos)
+ssize_t  kpc_dma_read(struct file *filp,       char __user *user_buf, size_t count, loff_t *ppos)
 {
 	struct dev_private_data *priv = (struct dev_private_data *)filp->private_data;
-	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_read(filp = [%p], user_buf = [%p], count = %zu, ppos = [%p]) priv = [%p], ldev = [%p]\n", filp, user_buf, count, ppos, priv, priv->ldev);
-	
+
+	dev_dbg(&priv->ldev->pldev->dev, "%s(filp = [%p], user_buf = [%p], count = %zu, ppos = [%p]) priv = [%p], ldev = [%p]\n", __func__, filp, user_buf, count, ppos, priv, priv->ldev);
+
 	if (priv->ldev->dir != DMA_FROM_DEVICE)
 		return -EMEDIUMTYPE;
-	
+
 	return kpc_dma_transfer(priv, (struct kiocb *)NULL, (unsigned long)user_buf, count);
 }
 
@@ -380,11 +387,12 @@ static
 ssize_t  kpc_dma_write(struct file *filp, const char __user *user_buf, size_t count, loff_t *ppos)
 {
 	struct dev_private_data *priv = (struct dev_private_data *)filp->private_data;
-	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_write(filp = [%p], user_buf = [%p], count = %zu, ppos = [%p]) priv = [%p], ldev = [%p]\n", filp, user_buf, count, ppos, priv, priv->ldev);
-	
+
+	dev_dbg(&priv->ldev->pldev->dev, "%s(filp = [%p], user_buf = [%p], count = %zu, ppos = [%p]) priv = [%p], ldev = [%p]\n", __func__, filp, user_buf, count, ppos, priv, priv->ldev);
+
 	if (priv->ldev->dir != DMA_TO_DEVICE)
 		return -EMEDIUMTYPE;
-	
+
 	return kpc_dma_transfer(priv, (struct kiocb *)NULL, (unsigned long)user_buf, count);
 }
 
@@ -392,20 +400,24 @@ static
 long  kpc_dma_ioctl(struct file *filp, unsigned int ioctl_num, unsigned long ioctl_param)
 {
 	struct dev_private_data *priv = (struct dev_private_data *)filp->private_data;
-	dev_dbg(&priv->ldev->pldev->dev, "kpc_dma_ioctl(filp = [%p], ioctl_num = 0x%x, ioctl_param = 0x%lx) priv = [%p], ldev = [%p]\n", filp, ioctl_num, ioctl_param, priv, priv->ldev);
-	
-	switch (ioctl_num){
-		case KND_IOCTL_SET_CARD_ADDR:           priv->card_addr  = ioctl_param; return priv->card_addr; 
-		case KND_IOCTL_SET_USER_CTL:            priv->user_ctl   = ioctl_param; return priv->user_ctl; 
-		case KND_IOCTL_SET_USER_CTL_LAST:       priv->user_ctl_last = ioctl_param; return priv->user_ctl_last; 
-		case KND_IOCTL_GET_USER_STS:            return priv->user_sts;
+
+	dev_dbg(&priv->ldev->pldev->dev, "%s(filp = [%p], ioctl_num = 0x%x, ioctl_param = 0x%lx) priv = [%p], ldev = [%p]\n", __func__, filp, ioctl_num, ioctl_param, priv, priv->ldev);
+
+	switch (ioctl_num) {
+	case KND_IOCTL_SET_CARD_ADDR:
+		priv->card_addr  = ioctl_param; return priv->card_addr;
+	case KND_IOCTL_SET_USER_CTL:
+		priv->user_ctl   = ioctl_param; return priv->user_ctl;
+	case KND_IOCTL_SET_USER_CTL_LAST:
+		priv->user_ctl_last = ioctl_param; return priv->user_ctl_last;
+	case KND_IOCTL_GET_USER_STS:
+		return priv->user_sts;
 	}
-	
+
 	return -ENOTTY;
 }
 
-
-struct file_operations  kpc_dma_fops = {
+const struct file_operations  kpc_dma_fops = {
 	.owner      = THIS_MODULE,
 	.open           = kpc_dma_open,
 	.release        = kpc_dma_close,
diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index aeae58d9bc18..bbbd617b0e71 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
@@ -14,36 +14,35 @@ MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Matt.Sickler@daktronics.com");
 
 #define KPC_DMA_CHAR_MAJOR    UNNAMED_MAJOR
-#define KPC_DMA_NUM_MINORS    1 << MINORBITS
+#define KPC_DMA_NUM_MINORS    (1 << MINORBITS)
 static DEFINE_MUTEX(kpc_dma_mtx);
 static int assigned_major_num;
 static LIST_HEAD(kpc_dma_list);
 
-
 /**********  kpc_dma_list list management  **********/
-struct kpc_dma_device *  kpc_dma_lookup_device(int minor)
+struct kpc_dma_device *kpc_dma_lookup_device(int minor)
 {
 	struct kpc_dma_device *c;
+
 	mutex_lock(&kpc_dma_mtx);
 	list_for_each_entry(c, &kpc_dma_list, list) {
-		if (c->pldev->id == minor) {
+		if (c->pldev->id == minor)
 			goto out;
-		}
 	}
 	c = NULL; // not-found case
-  out:
+out:
 	mutex_unlock(&kpc_dma_mtx);
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
@@ -55,11 +54,14 @@ static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *at
 {
 	struct kpc_dma_device *ldev;
 	struct platform_device *pldev = to_platform_device(dev);
-	if (!pldev) return 0;
+
+	if (!pldev)
+		return 0;
 	ldev = platform_get_drvdata(pldev);
-	if (!ldev) return 0;
-	
-	return scnprintf(buf, PAGE_SIZE, 
+	if (!ldev)
+		return 0;
+
+	return scnprintf(buf, PAGE_SIZE,
 		"EngineControlStatus      = 0x%08x\n"
 		"RegNextDescPtr           = 0x%08x\n"
 		"RegSWDescPtr             = 0x%08x\n"
@@ -80,14 +82,13 @@ static ssize_t  show_engine_regs(struct device *dev, struct device_attribute *at
 }
 DEVICE_ATTR(engine_regs, 0444, show_engine_regs, NULL);
 
-static const struct attribute *  ndd_attr_list[] = {
+static const struct attribute *ndd_attr_list[] = {
 	&dev_attr_engine_regs.attr,
 	NULL,
 };
 
 struct class *kpc_dma_class;
 
-
 /**********  Platform Driver Functions  **********/
 static
 int  kpc_dma_probe(struct platform_device *pldev)
@@ -95,73 +96,73 @@ int  kpc_dma_probe(struct platform_device *pldev)
 	struct resource *r = NULL;
 	int rv = 0;
 	dev_t dev;
-	
+
 	struct kpc_dma_device *ldev = kzalloc(sizeof(struct kpc_dma_device), GFP_KERNEL);
-	if (!ldev){
-		dev_err(&pldev->dev, "kpc_dma_probe: unable to kzalloc space for kpc_dma_device\n");
+	if (!ldev) {
+		dev_err(&pldev->dev, "%s: unable to kzalloc space for kpc_dma_device\n", __func__);
 		rv = -ENOMEM;
 		goto err_rv;
 	}
-	
-	dev_dbg(&pldev->dev, "kpc_dma_probe(pldev = [%p]) ldev = [%p]\n", pldev, ldev);
-	
+
+	dev_dbg(&pldev->dev, "%s(pldev = [%p]) ldev = [%p]\n", __func__, pldev, ldev);
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
-	if (!r){
-		dev_err(&ldev->pldev->dev, "kpc_dma_probe: didn't get the engine regs resource!\n");
+	if (!r) {
+		dev_err(&ldev->pldev->dev, "%s: didn't get the engine regs resource!\n", __func__);
 		rv = -ENXIO;
 		goto err_kfree;
 	}
 	ldev->eng_regs = ioremap_nocache(r->start, resource_size(r));
-	if (!ldev->eng_regs){
-		dev_err(&ldev->pldev->dev, "kpc_dma_probe: failed to ioremap engine regs!\n");
+	if (!ldev->eng_regs) {
+		dev_err(&ldev->pldev->dev, "%s: failed to ioremap engine regs!\n", __func__);
 		rv = -ENXIO;
 		goto err_kfree;
 	}
-	
+
 	r = platform_get_resource(pldev, IORESOURCE_IRQ, 0);
-	if (!r){
-		dev_err(&ldev->pldev->dev, "kpc_dma_probe: didn't get the IRQ resource!\n");
+	if (!r) {
+		dev_err(&ldev->pldev->dev, "%s: didn't get the IRQ resource!\n", __func__);
 		rv = -ENXIO;
 		goto err_kfree;
 	}
 	ldev->irq = r->start;
-	
+
 	// Setup miscdev struct
 	dev = MKDEV(assigned_major_num, pldev->id);
 	ldev->kpc_dma_dev = device_create(kpc_dma_class, &pldev->dev, dev, ldev, "kpc_dma%d", pldev->id);
-	if (IS_ERR(ldev->kpc_dma_dev)){
-		dev_err(&ldev->pldev->dev, "kpc_dma_probe: device_create failed: %d\n", rv);
+	if (IS_ERR(ldev->kpc_dma_dev)) {
+		dev_err(&ldev->pldev->dev, "%s: device_create failed: %d\n", __func__, rv);
 		goto err_kfree;
 	}
-	
+
 	// Setup the DMA engine
 	rv = setup_dma_engine(ldev, 30);
-	if (rv){
-		dev_err(&ldev->pldev->dev, "kpc_dma_probe: failed to setup_dma_engine: %d\n", rv);
+	if (rv) {
+		dev_err(&ldev->pldev->dev, "%s: failed to setup_dma_engine: %d\n", __func__, rv);
 		goto err_misc_dereg;
 	}
-	
+
 	// Setup the sysfs files
 	rv = sysfs_create_files(&(ldev->pldev->dev.kobj), ndd_attr_list);
-	if (rv){
-		dev_err(&ldev->pldev->dev, "kpc_dma_probe: Failed to add sysfs files: %d\n", rv);
+	if (rv) {
+		dev_err(&ldev->pldev->dev, "%s: Failed to add sysfs files: %d\n", __func__, rv);
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
@@ -176,22 +177,22 @@ static
 int  kpc_dma_remove(struct platform_device *pldev)
 {
 	struct kpc_dma_device *ldev = platform_get_drvdata(pldev);
+
 	if (!ldev)
 		return -ENXIO;
-	
-	dev_dbg(&ldev->pldev->dev, "kpc_dma_remove(pldev = [%p]) ldev = [%p]\n", pldev, ldev);
-	
+
+	dev_dbg(&ldev->pldev->dev, "%s(pldev = [%p]) ldev = [%p]\n", __func__, pldev, ldev);
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
 
-
 /**********  Driver Functions  **********/
 struct platform_driver kpc_dma_plat_driver_i = {
 	.probe        = kpc_dma_probe,
@@ -203,43 +204,43 @@ struct platform_driver kpc_dma_plat_driver_i = {
 };
 
 static
-int __init  kpc_dma_driver_init(void)
+int __init kpc_dma_driver_init(void)
 {
 	int err;
-	
+
 	err = __register_chrdev(KPC_DMA_CHAR_MAJOR, 0, KPC_DMA_NUM_MINORS, "kpc_dma", &kpc_dma_fops);
-	if (err < 0){
+	if (err < 0) {
 		pr_err("Can't allocate a major number (%d) for kpc_dma (err = %d)\n", KPC_DMA_CHAR_MAJOR, err);
 		goto fail_chrdev_register;
 	}
 	assigned_major_num = err;
-	
+
 	kpc_dma_class = class_create(THIS_MODULE, "kpc_dma");
 	err = PTR_ERR(kpc_dma_class);
-	if (IS_ERR(kpc_dma_class)){
+	if (IS_ERR(kpc_dma_class)) {
 		pr_err("Can't create class kpc_dma (err = %d)\n", err);
 		goto fail_class_create;
 	}
-	
+
 	err = platform_driver_register(&kpc_dma_plat_driver_i);
-	if (err){
+	if (err) {
 		pr_err("Can't register platform driver for kpc_dma (err = %d)\n", err);
 		goto fail_platdriver_register;
 	}
-	
+
 	return err;
-	
-  fail_platdriver_register:
+
+fail_platdriver_register:
 	class_destroy(kpc_dma_class);
-  fail_class_create:
+fail_class_create:
 	__unregister_chrdev(KPC_DMA_CHAR_MAJOR, 0, KPC_DMA_NUM_MINORS, "kpc_dma");
-  fail_chrdev_register:
+fail_chrdev_register:
 	return err;
 }
 module_init(kpc_dma_driver_init);
 
 static
-void __exit  kpc_dma_driver_exit(void)
+void __exit kpc_dma_driver_exit(void)
 {
 	platform_driver_unregister(&kpc_dma_plat_driver_i);
 	class_destroy(kpc_dma_class);
diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
index ef913b7496e6..89925af7b81e 100644
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
@@ -56,9 +56,9 @@ struct dev_private_data {
 	u64                         user_sts;
 };
 
-struct kpc_dma_device *  kpc_dma_lookup_device(int minor);
+struct kpc_dma_device *kpc_dma_lookup_device(int minor);
 
-extern struct file_operations  kpc_dma_fops;
+extern const struct file_operations  kpc_dma_fops;
 
 #define ENG_CAP_PRESENT                 0x00000001
 #define ENG_CAP_DIRECTION               0x00000002
@@ -90,7 +90,7 @@ struct aio_cb_data {
 	unsigned char       flags;
 	struct kiocb       *kcb;
 	size_t              len;
-	
+
 	unsigned int        page_count;
 	struct page       **user_pages;
 	struct sg_table     sgt;
@@ -119,12 +119,13 @@ struct kpc_dma_descriptor {
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
+
 // DescControlFlags:
 #define DMA_DESC_CTL_SOP            BIT(7)
 #define DMA_DESC_CTL_EOP            BIT(6)
@@ -157,35 +158,41 @@ void  WriteEngineControl(struct kpc_dma_device *eng, u32 value)
 {
 	writel(value, eng->eng_regs + 1);
 }
+
 static inline
 u32  GetEngineControl(struct kpc_dma_device *eng)
 {
 	return readl(eng->eng_regs + 1);
 }
+
 static inline
 void  SetClearEngineControl(struct kpc_dma_device *eng, u32 set_bits, u32 clear_bits)
 {
 	u32 val = GetEngineControl(eng);
+
 	val |= set_bits;
 	val &= ~clear_bits;
 	WriteEngineControl(eng, val);
 }
 
 static inline
-void  SetEngineNextPtr(struct kpc_dma_device *eng, struct kpc_dma_descriptor * desc)
+void  SetEngineNextPtr(struct kpc_dma_device *eng, struct kpc_dma_descriptor *desc)
 {
 	writel(desc->MyDMAAddr, eng->eng_regs + 2);
 }
+
 static inline
-void  SetEngineSWPtr(struct kpc_dma_device *eng, struct kpc_dma_descriptor * desc)
+void  SetEngineSWPtr(struct kpc_dma_device *eng, struct kpc_dma_descriptor *desc)
 {
 	writel(desc->MyDMAAddr, eng->eng_regs + 3);
 }
+
 static inline
 void  ClearEngineCompletePtr(struct kpc_dma_device *eng)
 {
 	writel(0, eng->eng_regs + 4);
 }
+
 static inline
 u32  GetEngineCompletePtr(struct kpc_dma_device *eng)
 {
@@ -206,7 +213,6 @@ void  unlock_engine(struct kpc_dma_device *eng)
 	mutex_unlock(&eng->sem);
 }
 
-
 /// Shared Functions
 void  start_dma_engine(struct kpc_dma_device *eng);
 int   setup_dma_engine(struct kpc_dma_device *eng, u32 desc_cnt);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

