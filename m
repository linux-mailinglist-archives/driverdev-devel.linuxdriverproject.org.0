Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AC020EFCA
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jun 2020 09:44:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 17B00884B2;
	Tue, 30 Jun 2020 07:44:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iWvFTMDAiSS9; Tue, 30 Jun 2020 07:44:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 88B3D88437;
	Tue, 30 Jun 2020 07:44:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 34C2F1BF29A
 for <devel@linuxdriverproject.org>; Tue, 30 Jun 2020 07:44:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2DE7888437
 for <devel@linuxdriverproject.org>; Tue, 30 Jun 2020 07:44:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zhp+UuRDx7er for <devel@linuxdriverproject.org>;
 Tue, 30 Jun 2020 07:44:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 94E578841A
 for <devel@driverdev.osuosl.org>; Tue, 30 Jun 2020 07:44:35 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id gc9so2640598pjb.2
 for <devel@driverdev.osuosl.org>; Tue, 30 Jun 2020 00:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sVK5V/4PBzeYWjMj+/BOipu6Mqur09tAOGAuoqIzEPw=;
 b=bHwvxnfk/4rv5l902jpKhPfmpGks9NYfD6z8bU6lXaQ++Ss8cARLGhUr1mCI299/Ri
 MtjVixl0k6CTlphPiWnx+fWwIkhbH0TQfZsUO1eRNpjf1/trfVLP1WW49zCv8Kb9qPvz
 F5269NB9yyeOS1agBK2DXaTVHESxtI5v4Ftp5vlhuIJbmUQysIA5qSYdawgrZkFqnWFo
 1vTIocvjWkkyX5r/m9lJrfXiIyuZwWKOdvWDkVAnWtHgOTirKfmd2gxLZwFl0Wghu3NV
 /U1JYNWVbDDsxT9UOgCd30DPK1nH7WhKzfs603mT1OrF/Pald320eI/bbe2EE/zMfrR5
 IKkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sVK5V/4PBzeYWjMj+/BOipu6Mqur09tAOGAuoqIzEPw=;
 b=jMSzajuesKyOIbDj5IO/VfQd1zzWK2Fz2464p8edcyqVdW4k8nXnShCQoRLC0FCCSj
 GVEOJOtwiQiVAwJ+Dfvh32ZFjCSizLloqZ39TKiBdY4o6o09TMxdn7HpQJvQ8nKmbfBi
 5LB/Uqj7CGdZVRUHUt5CtW7yBbVB9TbcBo+HcfFjUtEJrI6TyX5lE3o7I5KlEcpCHl0b
 wSfmhyE0L9zvr3auLUs1+SVbDE+BYAahfa5fk+zpfvHPlQokwhJge8liI481J1LCfwUa
 nA63JkoY7Q8xxGbKs/GWhU/KQWsQ3B7fRx5z+Tg1qqC5xVT0/Gs4Iya+ryMGzU0VJSzS
 XvMg==
X-Gm-Message-State: AOAM532NovSiSYD6bFB+JwW2MuX3nOVdHqWdsCC0L3yNv9UFbLye+TQ5
 IijNZO7vdmH236FIwZ899X0=
X-Google-Smtp-Source: ABdhPJzq1rYQk6wf24CmsFZCONIfWMH8K7yvJ9eYrKxRrMFc52O14Ueg3KnsHOsz4Um9iK1YNuhxIw==
X-Received: by 2002:a17:902:6945:: with SMTP id
 k5mr16235242plt.336.1593503075145; 
 Tue, 30 Jun 2020 00:44:35 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.182.225.143])
 by smtp.gmail.com with ESMTPSA id w1sm1754276pfq.53.2020.06.30.00.44.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jun 2020 00:44:34 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: jane.pnx9@gmail.com, ldufour@linux.ibm.com, gregkh@linuxfoundation.org,
 harshjain32@gmail.com, pakki001@umn.edu
Subject: [PATCH v2 4/4] staging: kpc2000: kpc_dma: Remove additional goto
 statements
Date: Tue, 30 Jun 2020 13:22:19 +0530
Message-Id: <1593503539-18649-5-git-send-email-jrdr.linux@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1593503539-18649-1-git-send-email-jrdr.linux@gmail.com>
References: <1593503539-18649-1-git-send-email-jrdr.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Bharath Vedartham <linux.bhar@gmail.com>,
 John Hubbard <jhubbard@nvidia.com>, linux-kernel@vger.kernel.org,
 Souptick Joarder <jrdr.linux@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As 3 goto level referring to same common code, those can be
accomodated with a single goto level and renameing it to
unpin_pages. Set the -ERRNO when returning partial mapped
pages in more appropriate place.

Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
Cc: John Hubbard <jhubbard@nvidia.com>
Cc: Bharath Vedartham <linux.bhar@gmail.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 8cd20ad..d21a4fd 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -35,7 +35,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 			    unsigned long iov_base, size_t iov_len)
 {
 	unsigned int i = 0;
-	int rv = 0;
+	int rv = 0, nr_pages = 0;
 	struct kpc_dma_device *ldev;
 	struct aio_cb_data *acd;
 	DECLARE_COMPLETION_ONSTACK(done);
@@ -79,22 +79,27 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 	rv = pin_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE, acd->user_pages, NULL);
 	mmap_read_unlock(current->mm);        /*  release the semaphore */
 	if (rv != acd->page_count) {
+		nr_pages = rv;
+		if (rv > 0)
+			rv = -EFAULT;
+
 		dev_err(&priv->ldev->pldev->dev, "Couldn't pin_user_pages (%d)\n", rv);
-		goto err_get_user_pages;
+		goto unpin_pages;
 	}
+	nr_pages = acd->page_count;
 
 	// Allocate and setup the sg_table (scatterlist entries)
 	rv = sg_alloc_table_from_pages(&acd->sgt, acd->user_pages, acd->page_count, iov_base & (PAGE_SIZE - 1), iov_len, GFP_KERNEL);
 	if (rv) {
 		dev_err(&priv->ldev->pldev->dev, "Couldn't alloc sg_table (%d)\n", rv);
-		goto err_alloc_sg_table;
+		goto unpin_pages;
 	}
 
 	// Setup the DMA mapping for all the sg entries
 	acd->mapped_entry_count = dma_map_sg(&ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, ldev->dir);
 	if (acd->mapped_entry_count <= 0) {
 		dev_err(&priv->ldev->pldev->dev, "Couldn't dma_map_sg (%d)\n", acd->mapped_entry_count);
-		goto err_dma_map_sg;
+		goto unpin_pages;
 	}
 
 	// Calculate how many descriptors are actually needed for this transfer.
@@ -187,15 +192,10 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 	unlock_engine(ldev);
 	dma_unmap_sg(&ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, ldev->dir);
 	sg_free_table(&acd->sgt);
- err_dma_map_sg:
- err_alloc_sg_table:
-	unpin_user_pages(acd->user_pages, acd->page_count);
 
- err_get_user_pages:
-	if (rv > 0) {
-		unpin_user_pages(acd->user_pages, rv);
-		rv = -EFAULT;
-	}
+ unpin_pages:
+	if (nr_pages > 0)
+		unpin_user_pages(acd->user_pages, nr_pages);
 	kfree(acd->user_pages);
  err_alloc_userpages:
 	kfree(acd);
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
