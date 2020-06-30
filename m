Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7873420EFC4
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jun 2020 09:44:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 187CF884C3;
	Tue, 30 Jun 2020 07:44:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 82DweUblCz8c; Tue, 30 Jun 2020 07:44:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 95A7A8843A;
	Tue, 30 Jun 2020 07:44:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 66FE71BF29A
 for <devel@linuxdriverproject.org>; Tue, 30 Jun 2020 07:44:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 63DA086D22
 for <devel@linuxdriverproject.org>; Tue, 30 Jun 2020 07:44:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hMkEjOkal6tv for <devel@linuxdriverproject.org>;
 Tue, 30 Jun 2020 07:44:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DBA7286935
 for <devel@driverdev.osuosl.org>; Tue, 30 Jun 2020 07:44:19 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id gc15so1686521pjb.0
 for <devel@driverdev.osuosl.org>; Tue, 30 Jun 2020 00:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=oOqmjhvuPBAEiyHp7TL6kqUg9v7jBR3QwTJJwMLLxHI=;
 b=ZsDNRiEKrC4VHDYEKtee+J3noCJYUeVzePIO7GhImTxDvwPvsL291zvooNL/qm6jx7
 qnvsqFrrr0H9ihS1Is66bjEEHeG61sx8gZXf4AR63LdcMvlVMWz70K1HcmorWTDmY3pP
 TZhk1IU+7I3ifHtGRczUy13jzXO2ePWyUmxA5hMxDowgt3qR/Z4ORHblGjrLbrC5L5ee
 U+9wphIvfpa45jM7lc/FtHUy6WxuPiAeZE9+AxZdhLq9JI3WerBztmKQ1ZG3dycI5ezF
 v5Oo6JytqtOLuwLLnWK5+PDUVYoNkLTPb6z7rWPGFrWO7BAgOntchsftSa2mZkihgAwV
 zDzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=oOqmjhvuPBAEiyHp7TL6kqUg9v7jBR3QwTJJwMLLxHI=;
 b=r7u7TtoduFeo6YtAUM8PJ9DWmoh0cOcvlwDSQLCO7+XhwMWNzKFKKjE7sXUgtyY8eA
 /9dDwU5qXoSaqfUEFYKlIaJkza3LQyffK5Eti76CN8WR4bFkiVBHEqRkjolnm/UE6YSB
 IdQ2FFJa1Y9hpIyobljcmtwNXuDxvFQCvhohVuRUgtFEbI4EaXITqkDxjWdcRCgo28Z6
 tvbbVU7AAdH4H9VHwqP2IInJ4UQ83Dzw+bVNMuZwZqR3aEP6U2T+XPvZhjEJqvKEo3Nu
 cU1eAXm7faKBhWrCCjFbuwmf4COoalm6gzY20DBYKqXuWeTs9vXqslVPU/lSPe23cge/
 yiVw==
X-Gm-Message-State: AOAM530GslEGIQ+3HW6Qjv5NpX73wvUsR3gc0dFTgQCusfLlTW3GPY0i
 o54py8KAh/aCVJvb12RsfBk=
X-Google-Smtp-Source: ABdhPJx+RRpJReS8kxqO754KZ2IlBwIUOUaGkjouPlErmio0TT+zq3yenb0xAzezXeGRpVtKb+gcjQ==
X-Received: by 2002:a17:90b:1497:: with SMTP id
 js23mr21624060pjb.30.1593503059495; 
 Tue, 30 Jun 2020 00:44:19 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.182.225.143])
 by smtp.gmail.com with ESMTPSA id w1sm1754276pfq.53.2020.06.30.00.44.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Jun 2020 00:44:18 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: jane.pnx9@gmail.com, ldufour@linux.ibm.com, gregkh@linuxfoundation.org,
 harshjain32@gmail.com, pakki001@umn.edu
Subject: [PATCH v2 1/4] staging: kpc2000: kpc_dma: Unpin partial pinned pages
Date: Tue, 30 Jun 2020 13:22:16 +0530
Message-Id: <1593503539-18649-2-git-send-email-jrdr.linux@gmail.com>
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

There is a bug, when get_user_pages() failed but partially pinned
pages are not unpinned and positive numbers are returned instead of
-ERRNO. Fixed it.

Also, int is more appropriate type for rv. Changed it.

Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
Cc: John Hubbard <jhubbard@nvidia.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Bharath Vedartham <linux.bhar@gmail.com>
---
 drivers/staging/kpc2000/kpc_dma/fileops.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 8975346..becdb41 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -35,7 +35,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 			    unsigned long iov_base, size_t iov_len)
 {
 	unsigned int i = 0;
-	long rv = 0;
+	int rv = 0;
 	struct kpc_dma_device *ldev;
 	struct aio_cb_data *acd;
 	DECLARE_COMPLETION_ONSTACK(done);
@@ -79,14 +79,14 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 	rv = get_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE | FOLL_GET, acd->user_pages, NULL);
 	mmap_read_unlock(current->mm);        /*  release the semaphore */
 	if (rv != acd->page_count) {
-		dev_err(&priv->ldev->pldev->dev, "Couldn't get_user_pages (%ld)\n", rv);
+		dev_err(&priv->ldev->pldev->dev, "Couldn't get_user_pages (%d)\n", rv);
 		goto err_get_user_pages;
 	}
 
 	// Allocate and setup the sg_table (scatterlist entries)
 	rv = sg_alloc_table_from_pages(&acd->sgt, acd->user_pages, acd->page_count, iov_base & (PAGE_SIZE - 1), iov_len, GFP_KERNEL);
 	if (rv) {
-		dev_err(&priv->ldev->pldev->dev, "Couldn't alloc sg_table (%ld)\n", rv);
+		dev_err(&priv->ldev->pldev->dev, "Couldn't alloc sg_table (%d)\n", rv);
 		goto err_alloc_sg_table;
 	}
 
@@ -193,10 +193,15 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 		put_page(acd->user_pages[i]);
 
  err_get_user_pages:
+	if (rv > 0) {
+		for (i = 0; i < rv; i++)
+			put_pages(acd->user_pages[i]);
+		rv = -EFAULT;
+	}
 	kfree(acd->user_pages);
  err_alloc_userpages:
 	kfree(acd);
-	dev_dbg(&priv->ldev->pldev->dev, "%s returning with error %ld\n", __func__, rv);
+	dev_dbg(&priv->ldev->pldev->dev, "%s returning with error %d\n", __func__, rv);
 	return rv;
 }
 
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
