Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA481FC410
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jun 2020 04:20:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 987C58975D;
	Wed, 17 Jun 2020 02:20:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ACrsNGQCfDDE; Wed, 17 Jun 2020 02:20:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 15358895A1;
	Wed, 17 Jun 2020 02:20:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 46CF71BF308
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 02:20:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 41E84895CD
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 02:20:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nuBddg7eGblC for <devel@linuxdriverproject.org>;
 Wed, 17 Jun 2020 02:20:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7EC73895A1
 for <devel@driverdev.osuosl.org>; Wed, 17 Jun 2020 02:20:41 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id 10so375417pfx.8
 for <devel@driverdev.osuosl.org>; Tue, 16 Jun 2020 19:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jlkXg/8cOfRCJwhgUdmNAqWeiDO0B4upmFZZOpihX9I=;
 b=edvNWiJ+gkcqCHT7jn5Sx5Bppkph0xBg6PExMZ0ZPnaw4TGNXhwu0hbMLP+K0Vn10U
 i63dPF1ZNJIgbArGNAUG6fauIcC59cJZfJdlSm7hucbaUnmtcqadgb1wK1NfjQIphV6H
 Uww02kpaj2SNivtZBsvIs49JLRTsHscEfLaIEhpWmxM7le+7G+GtkCEnNsD4ZwTXhPtR
 cOMHGXVzwIl9ViqBfvSaVRI96k5nB25X1oiv2ycfbJFEsU2+ysmqu9H7c5RkxGCB9jMG
 RRoa90WwgsojE65qKCow6wrChWGBhvhUuV5sqFvEpabBTEkrotDExkhd7iRhNbfg//aN
 QniQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jlkXg/8cOfRCJwhgUdmNAqWeiDO0B4upmFZZOpihX9I=;
 b=WjRo0+eNQQT9eNT0g/v4xVV91MkIWvGSesoeVCOd+99AV2+Q9XOM3YVIJxL431rb5x
 4K4dgaiUa2h4IdznWteFk/lFgsXGrTbRQk8jY/WiHAl/mH05hjfw5MVXTKN5jvIdv+ve
 VCqGamx9lj599uIyktOvzwy2Z6NDJJiLgtwoHsjv6rloKNqVrNCkgSJ80+yLBmIr8UMy
 zCUoZTvg0mInsdrIKvdpX/JtP7Tmd/Sr0gf6Es32UrDudI8lZt9KT05BqZCskh/n465q
 s2S59VBVYrpXks/D1uBX+GNFDpAnEs7tWwaNnnpPxMwvZTVFFhGSaHKExk2X6xSXHRqJ
 N4QQ==
X-Gm-Message-State: AOAM530+tqXmz2tkikMc+WqXNsmtxQXwyXe1lhHFfO/6/3OrS6KPxa/X
 BXuSNavuLq2OVnsVLwolY3A=
X-Google-Smtp-Source: ABdhPJwSZgwKD4NqK2+PwKN2v4HkajjDh0kBp7FxB9eNSPs43n8r1gDRLRWvcReIlLpH0HRzHVZANw==
X-Received: by 2002:aa7:93b4:: with SMTP id x20mr4968683pff.9.1592360441065;
 Tue, 16 Jun 2020 19:20:41 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.171.213.184])
 by smtp.gmail.com with ESMTPSA id h9sm1203208pfe.32.2020.06.16.19.20.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jun 2020 19:20:40 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: gregkh@linuxfoundation.org, jane.pnx9@gmail.com, pakki001@umn.edu,
 ldufour@linux.ibm.com, harshjain32@gmail.com, simon@nikanor.nu,
 walken@google.com
Subject: [PATCH 4/4] staging: kpc2000: kpc_dma: Remove excess goto statement
Date: Wed, 17 Jun 2020 07:57:23 +0530
Message-Id: <1592360843-3440-5-git-send-email-jrdr.linux@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1592360843-3440-1-git-send-email-jrdr.linux@gmail.com>
References: <1592360843-3440-1-git-send-email-jrdr.linux@gmail.com>
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
 linux-kernel@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>,
 Souptick Joarder <jrdr.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As 3 goto level referring to same common code, those can be
accomodated with a single goto level and renameing it to
unpin_user_pages.

Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Cc: John Hubbard <jhubbard@nvidia.com>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 1f5ab81..b0fcde5 100644
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
@@ -79,22 +79,23 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 	rv = pin_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE, acd->user_pages, NULL);
 	mmap_read_unlock(current->mm);        /*  release the semaphore */
 	if (rv != acd->page_count) {
+		nr_pages = rv;
 		dev_err(&priv->ldev->pldev->dev, "Couldn't pin_user_pages (%ld)\n", rv);
-		goto err_get_user_pages;
+		goto unpin_user_pages;
 	}
-
+	nr_pages = acd->page_count;
 	// Allocate and setup the sg_table (scatterlist entries)
 	rv = sg_alloc_table_from_pages(&acd->sgt, acd->user_pages, acd->page_count, iov_base & (PAGE_SIZE - 1), iov_len, GFP_KERNEL);
 	if (rv) {
 		dev_err(&priv->ldev->pldev->dev, "Couldn't alloc sg_table (%ld)\n", rv);
-		goto err_alloc_sg_table;
+		goto unpin_user_pages;
 	}
 
 	// Setup the DMA mapping for all the sg entries
 	acd->mapped_entry_count = dma_map_sg(&ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, ldev->dir);
 	if (acd->mapped_entry_count <= 0) {
 		dev_err(&priv->ldev->pldev->dev, "Couldn't dma_map_sg (%d)\n", acd->mapped_entry_count);
-		goto err_dma_map_sg;
+		goto unpin_user_pages;
 	}
 
 	// Calculate how many descriptors are actually needed for this transfer.
@@ -187,13 +188,9 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 	unlock_engine(ldev);
 	dma_unmap_sg(&ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, ldev->dir);
 	sg_free_table(&acd->sgt);
- err_dma_map_sg:
- err_alloc_sg_table:
-	unpin_user_pages(acd->user_pages, acd->page_count);
-
- err_get_user_pages:
-	if (rv > 0)
-		unpin_user_pages(acd->user_pages, rv);
+ unpin_user_pages:
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
