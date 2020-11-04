Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB18E2A5C90
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 03:02:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6258E862FB;
	Wed,  4 Nov 2020 02:02:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oSqvxb6cgO8i; Wed,  4 Nov 2020 02:02:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3E27C8621D;
	Wed,  4 Nov 2020 02:02:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C0F5A1BF5A7
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 02:02:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BA2E08621D
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 02:02:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JVkX644kuh6n for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 02:02:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A2224861FF
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 02:02:26 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id 10so15998726pfp.5
 for <devel@driverdev.osuosl.org>; Tue, 03 Nov 2020 18:02:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=zLZ2B1qFXCWnVsySq4HnUvTNgYrIH/VL0K8QObmr1U0=;
 b=OdEs27YeZFJ7ENMGNloKWIAjFkabev0ketVmn74U7x0k3JKcPNahaybsTGU+ZNTpQs
 FdxnNdrB06C1iSbw3SRH4X2sB9uGZQPOYuE980iAJRpIpnoX1pIWTla1Bk22fX6Ectl6
 +yxXppm2WiU811fI2llEyrVjAVIi5458NZEe0w7L12dUjGZonwdmR2xS9v+RrTPzsST2
 Ai5WJ2hk+7d02soZ9jX3wPAwy5guA6DS/Z1JHBxkZ8fDMp7J9fdtBVHc0LvkFq47s2sl
 dqKRB5OvItYRoqJ4Q1Q6LyPLahuhAzxqPJRxJ3bEP6HvxmxNsdzgiNiu7MeLTTpLD7lr
 BSMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=zLZ2B1qFXCWnVsySq4HnUvTNgYrIH/VL0K8QObmr1U0=;
 b=rFSKPXi7Vz84Mh38Y0u4pXfwaFjOKCUb6Hp7lkTbo7GhneW6HJ7Zh7PeilzYzwlk4s
 jLM5uUs/Y5MiNXgrr+61bqYTbiamP5+EsAeYp4FN5NXAcCXU5V5oX/D7tITCD0UCbyBD
 4o5ttr9MGjXN8uDt34Yj4oZ9J3ihjWq+7a6Iq5YlXDSj4U0XhZXkTwQuordkBHDWR6uQ
 mhLkU1WOlcGEv/HlyNmCfLLXJvKU6a7WYfO++LTv+3TWfiftDAJgwTuIvRsO1FNBf2O5
 Bp+xvbIMpdNSdvPjZRtznspXjRYsFdlSAzpCoXB7ofQlR5VJxVkiG4gbzxc3cotOwMvZ
 8SRQ==
X-Gm-Message-State: AOAM530AiooJ/ScCmbpJEDFr1E3pYVDKDdkDdmm60n42/gJr5566LSal
 xt3NKUTHcc/g1Z6tplxM8p4=
X-Google-Smtp-Source: ABdhPJy3W+rqqTUMVNnBVx8pPGEeGA53ALYocNahJvGf4dk8IFBlNeYmMpfzStMN55qkRx8dQRBiwg==
X-Received: by 2002:a63:2247:: with SMTP id t7mr19576397pgm.215.1604455346168; 
 Tue, 03 Nov 2020 18:02:26 -0800 (PST)
Received: from jordon-HP-15-Notebook-PC.domain.name ([171.61.79.67])
 by smtp.gmail.com with ESMTPSA id g16sm414689pju.5.2020.11.03.18.02.22
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Nov 2020 18:02:25 -0800 (PST)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: mchehab@kernel.org, sakari.ailus@linux.intel.com,
 gregkh@linuxfoundation.org, gustavoars@kernel.org,
 akpm@linux-foundation.org, vbabka@suse.cz, daniel.m.jordan@oracle.com,
 walken@google.com
Subject: [PATCH v2] media: atomisp: Fixed error handling path
Date: Wed,  4 Nov 2020 07:32:11 +0530
Message-Id: <1604455331-28031-1-git-send-email-jrdr.linux@gmail.com>
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
 linux-kernel@vger.kernel.org, Souptick Joarder <jrdr.linux@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Inside alloc_user_pages() based on flag value either pin_user_pages()
or get_user_pages_fast() will be called. However, these API might fail.

But free_user_pages() called in error handling path doesn't bother
about return value and will try to unpin bo->pgnr pages, which is
incorrect.

Fix this by passing the page_nr to free_user_pages(). If page_nr > 0
pages will be unpinned based on bo->mem_type. This will also take care
of non error handling path.

Fixes: 14a638ab96c5 ("media: atomisp: use pin_user_pages() for memory
allocation")
Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
Cc: John Hubbard <jhubbard@nvidia.com>
Cc: Ira Weiny <ira.weiny@intel.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
---
v2:
    Added review tag.

 drivers/staging/media/atomisp/pci/hmm/hmm_bo.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
index f13af23..0168f98 100644
--- a/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
+++ b/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
@@ -857,16 +857,17 @@ static void free_private_pages(struct hmm_buffer_object *bo,
 	kfree(bo->page_obj);
 }
 
-static void free_user_pages(struct hmm_buffer_object *bo)
+static void free_user_pages(struct hmm_buffer_object *bo,
+			    unsigned int page_nr)
 {
 	int i;
 
 	hmm_mem_stat.usr_size -= bo->pgnr;
 
 	if (bo->mem_type == HMM_BO_MEM_TYPE_PFN) {
-		unpin_user_pages(bo->pages, bo->pgnr);
+		unpin_user_pages(bo->pages, page_nr);
 	} else {
-		for (i = 0; i < bo->pgnr; i++)
+		for (i = 0; i < page_nr; i++)
 			put_page(bo->pages[i]);
 	}
 	kfree(bo->pages);
@@ -942,6 +943,8 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
 		dev_err(atomisp_dev,
 			"get_user_pages err: bo->pgnr = %d, pgnr actually pinned = %d.\n",
 			bo->pgnr, page_nr);
+		if (page_nr < 0)
+			page_nr = 0;
 		goto out_of_mem;
 	}
 
@@ -954,7 +957,7 @@ static int alloc_user_pages(struct hmm_buffer_object *bo,
 
 out_of_mem:
 
-	free_user_pages(bo);
+	free_user_pages(bo, page_nr);
 
 	return -ENOMEM;
 }
@@ -1037,7 +1040,7 @@ void hmm_bo_free_pages(struct hmm_buffer_object *bo)
 	if (bo->type == HMM_BO_PRIVATE)
 		free_private_pages(bo, &dynamic_pool, &reserved_pool);
 	else if (bo->type == HMM_BO_USER)
-		free_user_pages(bo);
+		free_user_pages(bo, bo->pgnr);
 	else
 		dev_err(atomisp_dev, "invalid buffer type.\n");
 	mutex_unlock(&bo->mutex);
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
