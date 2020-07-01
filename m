Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 11B3A2103AA
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 08:10:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ED4FE3019A;
	Wed,  1 Jul 2020 06:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CG07GxRgUqYn; Wed,  1 Jul 2020 06:10:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3EC9F30184;
	Wed,  1 Jul 2020 06:10:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 95A351BF83C
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 06:10:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9283D8B86D
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 06:10:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Fmnb1Bkbgvg for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 06:10:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B1ECE8B1C5
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 06:10:00 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id o13so8210330pgf.0
 for <devel@driverdev.osuosl.org>; Tue, 30 Jun 2020 23:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iJXQLBehWwPwwPoGiInoAvr+iwWO0xFUwp5XsZYJ0Wc=;
 b=qsy1oTEzSRTnDgDlzAbsXmEbfOTK6Kgt+sy4W4NbwNJeT/VgP5zyHxXEAl7okwkCY2
 4v9rfF40pxuxPrjHK1mS9QoJn1ALGVIAvsKF2QJmYXpMhmW3rJZ+4phopvzekJq4owgS
 xeBvwHnrtDk1EXUjR3/UrYnmOphRxpk9ApPK2VQbF8uBMhoWNv4oMTeHbNvhMvGbp2sI
 yKxXK3uXJeFpLmlS1zkUL9Con0gW7VAkjwFQqoPzftnGu6ZEmgeju4Lsw5HGK0y4FpPp
 NxxoYy0pjuSTDhiDzRmmmiEmOA/FO1R5T1fzd/RhDp8R/9HOJwGPmAGdI/nHr25jiquX
 gNkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=iJXQLBehWwPwwPoGiInoAvr+iwWO0xFUwp5XsZYJ0Wc=;
 b=CC7zfJjprsbgbLU2g1i/ctE3bNyGNUauo9Mz4CRoH+QUoJTghmJ6xPhsl9AQtgB9uM
 U1P7aWwQD5Z6a49hmaq/oCeWBqPu+GmeOJp7u0nzGbw3rZ5yKpRAXwM2r4KNnClc8Jrt
 9q94a1ACU45pvRs/9Iy15N2mIIR1iYGpkihrYeAcpgI6UrmQ1YDyxPWoh/YAAJPA7OdX
 OnK2Iz+7TkneBEyZFDObtnttzxtW1JSaSVnEPh8GJql/omCwXPITREdtzkbsjfFO0NP9
 Jid3GI/KMzvCb2l2ZqbopYsiK+UfcPKi/5o0jxJdVzjoMp+b4zAM9UvgzrtVVMW5W9XV
 uyEg==
X-Gm-Message-State: AOAM530/9RFYVWr1XoxUthIYgrzWwh6qMMteM3fTGeGa+zqOwVrEFzfv
 VL4yNXuZ7Yuq7dX6RCSdd14=
X-Google-Smtp-Source: ABdhPJyAWnEZKEKAJ11azWAi7WrF/Rs8eY9d2O15O3QWBbIEB9lh8c4pvA0qM811KBZO3njehbGxGA==
X-Received: by 2002:a63:5013:: with SMTP id e19mr18445859pgb.68.1593583800326; 
 Tue, 30 Jun 2020 23:10:00 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.171.42.200])
 by smtp.gmail.com with ESMTPSA id 127sm4694073pgf.5.2020.06.30.23.09.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jun 2020 23:09:59 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: gregkh@linuxfoundation.org, jane.pnx9@gmail.com,
 daniel.m.jordan@oracle.com, simon@nikanor.nu, harshjain32@gmail.com,
 pakki001@umn.edu
Subject: [PATCH v3 4/4] staging: kpc2000: kpc_dma: Remove additional goto
 statements
Date: Wed,  1 Jul 2020 11:47:44 +0530
Message-Id: <1593584264-16982-5-git-send-email-jrdr.linux@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1593584264-16982-1-git-send-email-jrdr.linux@gmail.com>
References: <1593584264-16982-1-git-send-email-jrdr.linux@gmail.com>
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

When dma_map_sg() failed, the previously allocated memory was
not freed properly. This is corrected now.

Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
Cc: John Hubbard <jhubbard@nvidia.com>
Cc: Bharath Vedartham <linux.bhar@gmail.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 8cd20ad..dd716edd 100644
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
+		goto free_table;
 	}
 
 	// Calculate how many descriptors are actually needed for this transfer.
@@ -186,16 +191,12 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
  err_descr_too_many:
 	unlock_engine(ldev);
 	dma_unmap_sg(&ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, ldev->dir);
+ free_table:
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
