Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C59120EFC9
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jun 2020 09:44:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D34A386D42;
	Tue, 30 Jun 2020 07:44:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oFEx1uiNztEx; Tue, 30 Jun 2020 07:44:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A7E0586935;
	Tue, 30 Jun 2020 07:44:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 56D411BF29A
 for <devel@linuxdriverproject.org>; Tue, 30 Jun 2020 07:44:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 530CE86D22
 for <devel@linuxdriverproject.org>; Tue, 30 Jun 2020 07:44:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z0cTOD9fm7Sy for <devel@linuxdriverproject.org>;
 Tue, 30 Jun 2020 07:44:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CFFDA86935
 for <devel@driverdev.osuosl.org>; Tue, 30 Jun 2020 07:44:30 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id f2so8144398plr.8
 for <devel@driverdev.osuosl.org>; Tue, 30 Jun 2020 00:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=IQZ0v72A1nwBi+dtLOqVNnehvx96WQ1i1bGMN4I9JcY=;
 b=XNNzML7QP2g/BVO/rIU4GyM6fsPoLTPI3AXcvi1lDz0mbGoN+RGl2UN/NG1OpPSj4a
 YRyC7PGhI7hRLHH5QxueLZFEDB6q5h5T1fkAKVpOLzZaFZJq0Hjvhv7OEtAee00ez2LE
 ILGfM0Zv94QEbVIay4Sw7q5XvxZ9zon0Gp0IHV8aQ/FdL5Th37skTepdeNHqF7SMELbF
 Zpc/uVrF9ZO6jCKdHelDQ+utsogwZeEr+EZPiEW5qnwwluGVCHd9iA4WGgCL9+/6uva1
 Sk/BAJVG+Q5FAMhR8oTPtFyKT9h++sYkWjmwXeFYzKXD/ZidmtzSl0F2huDeaLvvlSl0
 xUDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=IQZ0v72A1nwBi+dtLOqVNnehvx96WQ1i1bGMN4I9JcY=;
 b=rJiUDPoKCjm85b5cd7ZJRFnanrCojgI3xlJ6eMhrPSBGfw3X76mtsU2+aBvWid6Pq/
 eoV9uI1oq9Ts0+ySUkUMHo8suYu22pkNPE/s30hI+GbJiPMlPAg7mScB5CEcWjpRakOe
 mhdcBapbzmq9zxP4hNK728M0fWvqPxxkd2Aeyh8jIhNUzERojR7nbONeY4zmUmA/72I8
 8i6iqpEpWfIJE7VVB4Yi394mXkzxeBo6B6k+uMoW6+BhjZW9aQ9sGYczufC7lo7QHujg
 Ufmn89zZkgaMVn6rVpXOILTmYUSmJ50JG2smlxZQ2XqGlwshQ+hIdMTKlEcIizNDH582
 P2RA==
X-Gm-Message-State: AOAM533ogYfGdBfAxQOLs1TZaCx2mH7rivXGz9NtjK14A3kyA10Py6iy
 otwdP++ZCkl6sVZId44cxww=
X-Google-Smtp-Source: ABdhPJyM3PhIfiACdVMemPHU1vHfpeVF0l5A+OnyqiMT0sDXntN3OJFcG2Ucdk77Mh5UV3QYsy69iQ==
X-Received: by 2002:a17:902:a982:: with SMTP id
 bh2mr16846646plb.2.1593503070423; 
 Tue, 30 Jun 2020 00:44:30 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.182.225.143])
 by smtp.gmail.com with ESMTPSA id w1sm1754276pfq.53.2020.06.30.00.44.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jun 2020 00:44:29 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: jane.pnx9@gmail.com, ldufour@linux.ibm.com, gregkh@linuxfoundation.org,
 harshjain32@gmail.com, pakki001@umn.edu
Subject: [PATCH v2 3/4] staging: kpc2000: kpc_dma: Convert get_user_pages()
 --> pin_user_pages()
Date: Tue, 30 Jun 2020 13:22:18 +0530
Message-Id: <1593503539-18649-4-git-send-email-jrdr.linux@gmail.com>
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

In 2019, we introduced pin_user_pages*() and now we are converting
get_user_pages*() to the new API as appropriate. [1] & [2] could
be referred for more information. This is case 2 as per document [1].

[1] Documentation/core-api/pin_user_pages.rst

[2] "Explicit pinning of user-space pages":
        https://lwn.net/Articles/807108/

Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
Cc: John Hubbard <jhubbard@nvidia.com>
Cc: Bharath Vedartham <linux.bhar@gmail.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 08d90a6..8cd20ad 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -76,10 +76,10 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 
 	// Lock the user buffer pages in memory, and hold on to the page pointers (for the sglist)
 	mmap_read_lock(current->mm);      /*  get memory map semaphore */
-	rv = get_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE | FOLL_GET, acd->user_pages, NULL);
+	rv = pin_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE, acd->user_pages, NULL);
 	mmap_read_unlock(current->mm);        /*  release the semaphore */
 	if (rv != acd->page_count) {
-		dev_err(&priv->ldev->pldev->dev, "Couldn't get_user_pages (%d)\n", rv);
+		dev_err(&priv->ldev->pldev->dev, "Couldn't pin_user_pages (%d)\n", rv);
 		goto err_get_user_pages;
 	}
 
@@ -189,13 +189,11 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 	sg_free_table(&acd->sgt);
  err_dma_map_sg:
  err_alloc_sg_table:
-	for (i = 0 ; i < acd->page_count ; i++)
-		put_page(acd->user_pages[i]);
+	unpin_user_pages(acd->user_pages, acd->page_count);
 
  err_get_user_pages:
 	if (rv > 0) {
-		for (i = 0; i < rv; i++)
-			put_pages(acd->user_pages[i]);
+		unpin_user_pages(acd->user_pages, rv);
 		rv = -EFAULT;
 	}
 	kfree(acd->user_pages);
@@ -222,8 +220,7 @@ void  transfer_complete_cb(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
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
