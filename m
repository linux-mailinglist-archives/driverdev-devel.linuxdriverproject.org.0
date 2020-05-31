Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C14711E9990
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 May 2020 19:43:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D370D87E41;
	Sun, 31 May 2020 17:43:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jl7D0KI7N9ty; Sun, 31 May 2020 17:43:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F0FDF87CC9;
	Sun, 31 May 2020 17:43:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D44891BF3BD
 for <devel@linuxdriverproject.org>; Sun, 31 May 2020 17:43:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C132287CC9
 for <devel@linuxdriverproject.org>; Sun, 31 May 2020 17:43:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y8JM8E0wD20r for <devel@linuxdriverproject.org>;
 Sun, 31 May 2020 17:43:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A0B7F87C76
 for <devel@driverdev.osuosl.org>; Sun, 31 May 2020 17:43:22 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id q9so3897059pjm.2
 for <devel@driverdev.osuosl.org>; Sun, 31 May 2020 10:43:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=++n8hYI7Hh/vLPZoLCJ3ybLJ1cQuKKnfR3srqDdsFqA=;
 b=or7Yj6wbWRbcUof3aPMTrXzC6Vty0IKsuZmHclnbXMuzVoBys6Mf1FIMscIynDJG4I
 jaUtSxKzb7THMZ9depepNWDU9biPH8AbtWckODKKo016njYRuf+6Wiyt0DcofFSZ2D3d
 Jz43SrssK8bQEA4tfA7lNsZzVIFhMD6JKWzt27HDjtu3HGFFmwBEJ4aOEmzPMzRgotES
 FroUj8Pb4c9SOJHpa4iVAAMGPCjVXErhF0DbjXOZLo2rm5XJGRZ8yWQ004O23DcjLMa0
 pGNjAiQoBykDUKUlpSQxVs7aoRyil/npFOg0ptyn5hbfbOsfeGZymGSFRL00a1/lH82+
 prVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=++n8hYI7Hh/vLPZoLCJ3ybLJ1cQuKKnfR3srqDdsFqA=;
 b=LNOXGFb29geKnoOYGpAVf7zcAIxFhSIcpYvfZKWx5wPaH2Kzszg80xihMjqiwiwIKk
 EWYAesR6qCR9AcrW+UywOnQGRj1X6YRLrNOQ0hEScCYI5WROu8mGaZ1+nz/Uc55T3E7f
 pIp//I2siVlR6eXaIqR96aCE8s9mHjs+a7T3dV6CLJDCQYPerTsbkc0pzkZ8yDOUWvo2
 +Kw4d4Q43yWHUOETNCEZtPGngOMwZ+PZ4fuUm+2Y/TVuNccGX2TURleAibiYhDRnjCj9
 YsV7k+UBN7g0p5ReLhFpjs2xy51QBNCUK/Qc9VF3CBpDI++VPtJ0oD+tjjA2kvHFJ92Z
 K9DA==
X-Gm-Message-State: AOAM531I+tr3txKY4RJSw0b8dxPiCB6gp+xNVOADOWeGrZ8gPB3C+06n
 d951zCzmtbhuZu9QkwS9n4M=
X-Google-Smtp-Source: ABdhPJzHSnEPb3AH9bRq0HQlO7tVo/4iay4/TCFEo5BBOG4UwnaAMCFunroy+R9JYQsAk3PbMUCO2A==
X-Received: by 2002:a17:90a:32ee:: with SMTP id
 l101mr13742252pjb.213.1590947002134; 
 Sun, 31 May 2020 10:43:22 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.167.39.216])
 by smtp.gmail.com with ESMTPSA id go1sm4922841pjb.26.2020.05.31.10.43.18
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 31 May 2020 10:43:21 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: gregkh@linuxfoundation.org, jane.pnx9@gmail.com, simon@nikanor.nu,
 harshjain32@gmail.com, linux.bhar@gmail.com, festevam@gmail.com,
 jeremy@azazel.net
Subject: [PATCH] staging: kpc2000: kpc_dma: Convert get_user_pages() -->
 pin_user_pages()
Date: Sun, 31 May 2020 23:21:31 +0530
Message-Id: <1590947491-11194-1-git-send-email-jrdr.linux@gmail.com>
X-Mailer: git-send-email 1.9.1
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
Cc: devel@driverdev.osuosl.org, John Hubbard <jhubbard@nvidia.com>,
 linux-kernel@vger.kernel.org, Souptick Joarder <jrdr.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In 2019, we introduced pin_user_pages*() and now we are converting
get_user_pages*() to the new API as appropriate. [1] & [2] could
be referred for more information.

When pin_user_pages() returns numbers of partially mapped pages,
those pages were not unpinned as part of error handling. Fixed
it as part of this patch.

[1] Documentation/core-api/pin_user_pages.rst

[2] "Explicit pinning of user-space pages":
        https://lwn.net/Articles/807108/

Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
Cc: John Hubbard <jhubbard@nvidia.com>
---
Hi,

I'm compile tested this, but unable to run-time test, so any testing
help is much appriciated.

 drivers/staging/kpc2000/kpc_dma/fileops.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 8975346..29bab13 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -48,6 +48,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 	u64 card_addr;
 	u64 dma_addr;
 	u64 user_ctl;
+	int nr_pages = 0;
 
 	ldev = priv->ldev;
 
@@ -76,13 +77,15 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 
 	// Lock the user buffer pages in memory, and hold on to the page pointers (for the sglist)
 	mmap_read_lock(current->mm);      /*  get memory map semaphore */
-	rv = get_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE | FOLL_GET, acd->user_pages, NULL);
+	rv = pin_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE, acd->user_pages, NULL);
 	mmap_read_unlock(current->mm);        /*  release the semaphore */
 	if (rv != acd->page_count) {
-		dev_err(&priv->ldev->pldev->dev, "Couldn't get_user_pages (%ld)\n", rv);
+		dev_err(&priv->ldev->pldev->dev, "Couldn't pin_user_pages (%ld)\n", rv);
+		nr_pages = rv;
 		goto err_get_user_pages;
 	}
 
+	nr_pages = acd->page_count;
 	// Allocate and setup the sg_table (scatterlist entries)
 	rv = sg_alloc_table_from_pages(&acd->sgt, acd->user_pages, acd->page_count, iov_base & (PAGE_SIZE - 1), iov_len, GFP_KERNEL);
 	if (rv) {
@@ -189,10 +192,9 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 	sg_free_table(&acd->sgt);
  err_dma_map_sg:
  err_alloc_sg_table:
-	for (i = 0 ; i < acd->page_count ; i++)
-		put_page(acd->user_pages[i]);
-
  err_get_user_pages:
+	if (nr_pages > 0)
+		unpin_user_pages(acd->user_pages, nr_pages);
 	kfree(acd->user_pages);
  err_alloc_userpages:
 	kfree(acd);
@@ -217,8 +219,7 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
 
 	dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd->ldev->dir);
 
-	for (i = 0 ; i < acd->page_count ; i++)
-		put_page(acd->user_pages[i]);
+	unpin_user_pages(acd->user_pages, acd->page_count);
 
 	sg_free_table(&acd->sgt);
 
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
