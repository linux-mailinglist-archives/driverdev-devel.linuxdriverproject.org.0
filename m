Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 595E82103A8
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 08:10:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F32398ABC4;
	Wed,  1 Jul 2020 06:09:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wpK0CgJaH7ek; Wed,  1 Jul 2020 06:09:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 581448ABB3;
	Wed,  1 Jul 2020 06:09:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B9EF1BF83C
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 06:09:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 28A73894E6
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 06:09:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R-5pM5vxzmJP for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 06:09:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8B4DA894E5
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 06:09:55 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id k5so1005865pjg.3
 for <devel@driverdev.osuosl.org>; Tue, 30 Jun 2020 23:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=IQZ0v72A1nwBi+dtLOqVNnehvx96WQ1i1bGMN4I9JcY=;
 b=fEMG27AaP4D1S5jOvjynRjeoBbG2VgmoGI730zMRIrw1+HkS58v9w30oP7UilSnewg
 oKQNATB+wQgbVTx8D7tnAPjdAZDf+JzA/4xdQND3VoHGU8TgkHq9yjui97ZdfEcNdMX0
 3e7enLsMr7aebrSojaXXGtMM6mLD3/B6nfWZYysIPGKJJ9Ujn7NFRDnuxR1TZy/q0xfg
 BwRVLHtlS0AbY4OYfGdIfHp9Pylcp8LHxaCE5DssIYioiy/0QIt+wve9CtOVb0wmZaAj
 BkvlclyArnBVreDZIf/R6lVV6mPCvKry3rxKOC/aTxS3jLL+kyBVseBPcTU8jJPlrKGf
 Y6zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=IQZ0v72A1nwBi+dtLOqVNnehvx96WQ1i1bGMN4I9JcY=;
 b=mRpDUHNJ6XIwkV9tV5NI/AaE1CPkn6fMHWYEKx9IcoLJeZXzRVQ+RBOwHnLVxRF0A4
 nClqrjn+qY2Su5Pu5/ZYOxodJO7ArceTFVGKR/MJ5XEkk3MfjGoZnTha/2faF04ITB56
 P+KS4UCgT2u2o6rzZfJajtflGm4LD4lUcjtwDBal5R+EPlXC8M958z2ecoB96vLiO0pl
 lmOtYHxrbgAaU1NjUZdnRSmj/vdFcAB/G2I17Wd9og9epdCNC0TLPTUz1QVCpq7qB1h2
 kxhZ0Az1RiDFBYxbIiRjA6RNtkFauuHebMgJLwZPJpqSczTQdMf6N2PMnLhQEBXsGHlZ
 Qzog==
X-Gm-Message-State: AOAM533Oyq34MUU+5XI5noKpYx2c/ME4R9i67uPWqziQqb3gvCKjE7Bk
 c47LWa5H+v35q4OrLWPpHsE=
X-Google-Smtp-Source: ABdhPJzdWt0P0vdHU5UkKk0ojQQvk2chmuuO83+DtWzjWv+mlETXduJDn7sK7pokb1sAEpwQqOsdxw==
X-Received: by 2002:a17:90b:a0d:: with SMTP id
 gg13mr5172637pjb.203.1593583795168; 
 Tue, 30 Jun 2020 23:09:55 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.171.42.200])
 by smtp.gmail.com with ESMTPSA id 127sm4694073pgf.5.2020.06.30.23.09.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jun 2020 23:09:54 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: gregkh@linuxfoundation.org, jane.pnx9@gmail.com,
 daniel.m.jordan@oracle.com, simon@nikanor.nu, harshjain32@gmail.com,
 pakki001@umn.edu
Subject: [PATCH v3 3/4] staging: kpc2000: kpc_dma: Convert get_user_pages()
 --> pin_user_pages()
Date: Wed,  1 Jul 2020 11:47:43 +0530
Message-Id: <1593584264-16982-4-git-send-email-jrdr.linux@gmail.com>
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
