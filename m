Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE6F1FC40F
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jun 2020 04:20:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A0F122052D;
	Wed, 17 Jun 2020 02:20:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NwKT22VHw+ZE; Wed, 17 Jun 2020 02:20:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A71EE2150A;
	Wed, 17 Jun 2020 02:20:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 144791BF308
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 02:20:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1021187EC3
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 02:20:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wc3lIDS92eJq for <devel@linuxdriverproject.org>;
 Wed, 17 Jun 2020 02:20:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 369E487EAF
 for <devel@driverdev.osuosl.org>; Wed, 17 Jun 2020 02:20:35 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id d6so305436pjs.3
 for <devel@driverdev.osuosl.org>; Tue, 16 Jun 2020 19:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RU7+sTzElvyavGrWR8T0S7aCMXu0KpU3ibcKQwydBt8=;
 b=fpuuQUH3hWdUn+U7INlHJcayaHQPXBGXinKmcYF/y1ILtPdYRYdIzzata24fOY6gIB
 p4sFbwmfuveqQ2rrvIo8ezp5x6tNqLtdU0uciIhyoUVUygQJZyONvWDLMtiG5uAeCiTg
 zpsIhV5qKbSUdW/fODn7VPZ3J/UYfr0Mj0khQ2LkL5CrYOehrnx+47+bnqWDMDiejRod
 tJNWkL6D0YkSzS3dNQhTOQIkKOogW1EJ7JIbuC6HMecWyj/hob7mPiRJPdidmUu7ZoZu
 B4qXKMbTZdUysI4e5IousnwlSmkJogzWExcQRr6bzCzRBWvL+hIItMt8sOz1JAkEfUT2
 XlKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=RU7+sTzElvyavGrWR8T0S7aCMXu0KpU3ibcKQwydBt8=;
 b=AyvSN7QdMQndwacJlODEyNloyTnVd0GINXXL+0N8d0Vd7Z0S6OesXHjuAn1VNGGv3w
 zJvX6KkIp4ZSdUx9lgEa92C8dXcdh/wQkXzB7GtDV8HCzgPK5LB6Bt2Pch2JxB2z0v3x
 dPZynuLNNierPoNu6WtRmxvQslBU5TLbO47bOKe5qhDu70q16Yqy4bDn7L5TK+iB4339
 5zIafJAzWCHSl2Oa6ZZ/E7GjOeXTfPgG8VagOHdjRH04NfIKleWvikdMbWJz29tbRtCA
 f4iZCV43HwAHLux1SJVVdfmF8SMFsQDHTalhYwjxt9W0CeaMLur1Z7MRh9eZ3Yl+Mxh2
 hBcg==
X-Gm-Message-State: AOAM530JP0gqjkgGiQk3OOxE5qTZbDesVVzGnREvtT8RnwuItz86IEND
 5PCYiSzfgjB9dCot/HiLiBw=
X-Google-Smtp-Source: ABdhPJzg6h+CLn2Va7ZN3PG5ayxoM0H2rr+xluUcuM0/FATKGVhrM+pDRBO9X6IfhMJ46f4WIcBLWQ==
X-Received: by 2002:a17:90a:fa8f:: with SMTP id
 cu15mr5967338pjb.9.1592360434786; 
 Tue, 16 Jun 2020 19:20:34 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.171.213.184])
 by smtp.gmail.com with ESMTPSA id h9sm1203208pfe.32.2020.06.16.19.20.30
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jun 2020 19:20:34 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: gregkh@linuxfoundation.org, jane.pnx9@gmail.com, pakki001@umn.edu,
 ldufour@linux.ibm.com, harshjain32@gmail.com, simon@nikanor.nu,
 walken@google.com
Subject: [PATCH 3/4] staging: kpc2000: kpc_dma: Convert get_user_pages() -->
 pin_user_pages()
Date: Wed, 17 Jun 2020 07:57:22 +0530
Message-Id: <1592360843-3440-4-git-send-email-jrdr.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Bharath Vedartham <linux.bhar@gmail.com>,
 John Hubbard <jhubbard@nvidia.com>, linux-kernel@vger.kernel.org,
 Souptick Joarder <jrdr.linux@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In 2019, we introduced pin_user_pages*() and now we are converting
get_user_pages*() to the new API as appropriate. [1] & [2] could
be referred for more information.

[1] Documentation/core-api/pin_user_pages.rst

[2] "Explicit pinning of user-space pages":
        https://lwn.net/Articles/807108/

Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
Cc: John Hubbard <jhubbard@nvidia.com>
Cc: Bharath Vedartham <linux.bhar@gmail.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index bcce86c..1f5ab81 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -76,10 +76,10 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 
 	// Lock the user buffer pages in memory, and hold on to the page pointers (for the sglist)
 	mmap_read_lock(current->mm);      /*  get memory map semaphore */
-	rv = get_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE | FOLL_GET, acd->user_pages, NULL);
+	rv = pin_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE, acd->user_pages, NULL);
 	mmap_read_unlock(current->mm);        /*  release the semaphore */
 	if (rv != acd->page_count) {
-		dev_err(&priv->ldev->pldev->dev, "Couldn't get_user_pages (%ld)\n", rv);
+		dev_err(&priv->ldev->pldev->dev, "Couldn't pin_user_pages (%ld)\n", rv);
 		goto err_get_user_pages;
 	}
 
@@ -189,14 +189,11 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 	sg_free_table(&acd->sgt);
  err_dma_map_sg:
  err_alloc_sg_table:
-	for (i = 0 ; i < acd->page_count ; i++)
-		put_page(acd->user_pages[i]);
+	unpin_user_pages(acd->user_pages, acd->page_count);
 
  err_get_user_pages:
-	if (rv > 0) {
-		for (i = 0; i < rv; i++)
-			put_pages(acd->user_pages[i])
-	}
+	if (rv > 0)
+		unpin_user_pages(acd->user_pages, rv);
 	kfree(acd->user_pages);
  err_alloc_userpages:
 	kfree(acd);
@@ -221,8 +218,7 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
 			set_page_dirty_lock(acd->user_pages[i]);
 	}
 
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
