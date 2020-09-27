Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 428B727A18A
	for <lists+driverdev-devel@lfdr.de>; Sun, 27 Sep 2020 17:08:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD0388503D;
	Sun, 27 Sep 2020 15:08:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D8owBZfLKYDb; Sun, 27 Sep 2020 15:08:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7DECD84DDC;
	Sun, 27 Sep 2020 15:08:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B03431BF408
 for <devel@linuxdriverproject.org>; Sun, 27 Sep 2020 15:08:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AA8728715F
 for <devel@linuxdriverproject.org>; Sun, 27 Sep 2020 15:08:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id muwBqA93WBCg for <devel@linuxdriverproject.org>;
 Sun, 27 Sep 2020 15:08:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E6B368710B
 for <devel@driverdev.osuosl.org>; Sun, 27 Sep 2020 15:08:28 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id o20so7024368pfp.11
 for <devel@driverdev.osuosl.org>; Sun, 27 Sep 2020 08:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=5SVq0w/G+BJ0BoVyLc2hLMW/0QGne7FVXE/0ouMIQTk=;
 b=UAJHbXD4pUnwppm9iqHuRKXE1T9OvaMBWCBVDP3NGuqJaNxJty/AMalHQ4a0dsVH++
 Plru0DNUbaHjINH3PkT1yubbx+UnOCNSIkhP4g7w57FjlZOsmbLu5QESZTKkUaCy+ISo
 3d4LXOyOkZn/zIfVkpgKSQ3VJQt45oZoWABEvCCHYhiTRXI2oEblHDqgdTQm+l11/pNU
 sNZ1XUp6OQ1pfpSP3RyoecxMipmqLcftJEXB62kmmwv/QHyXmR/9rJyT20tgAHIhTWT3
 6nYBC1CskgWEPkNC/pmsIulyjTD+EWcJRMFdxdqAC0OFxZwjXHZcudLFskQaoP5fg4kR
 2rRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=5SVq0w/G+BJ0BoVyLc2hLMW/0QGne7FVXE/0ouMIQTk=;
 b=AR8uU963Qa5eV8NzZyspUGw77w1SqRbdXfCokQY5Z+KV95q1FsU45/NWp9wb4bu6dc
 I/qDlzu6W6Wd9Vz0m1YYppLEbaGehEhQcGGYoVEnDi80wkRbe6OaBuD5ZuX0RuQiwMqE
 9ibzhcypzdlcuZ0ed2wg0sGJNoWTmNLB4WwtD7phoUe9oftjXTwvMpajDg8z1Rkp/SGK
 qrBMJWCOxKc9e1xxVPito5lfGg7Pr7dlJhS6t1tMFv6OMi5+pQ7XkfjT9eZyH3S+nJYw
 PV8zb59K62itKVJx/ymSxynp3RmCV2PEzJZIKekH0PuTuJzle+i2JJ08rb6ujkGlkFcE
 idPg==
X-Gm-Message-State: AOAM531SIF/U+Pg+2hN1rdCZdB8jkEcgmlLZRBhu0UHHMz3UeXX3d9NW
 XnZ6z55sZdKT1kXieSswwyc=
X-Google-Smtp-Source: ABdhPJzxBslQerYnkiihEyJMATnZ9dRB/0v/TFlZdW7LYCAdJkD2VYfoNnC1t/1jYTH/LH8AZpPCxw==
X-Received: by 2002:a62:6147:0:b029:142:2501:34e8 with SMTP id
 v68-20020a6261470000b0290142250134e8mr7398794pfb.65.1601219308467; 
 Sun, 27 Sep 2020 08:08:28 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.167.144.166])
 by smtp.gmail.com with ESMTPSA id t9sm1384795pgp.90.2020.09.27.08.08.24
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 27 Sep 2020 08:08:27 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: mchehab@kernel.org, sakari.ailus@linux.intel.com,
 gregkh@linuxfoundation.org, daniel.m.jordan@oracle.com,
 akpm@linux-foundation.org, walken@google.com, gustavoars@kernel.org
Subject: [PATCH] media: atomisp: Fixed error handling path
Date: Sun, 27 Sep 2020 20:38:04 +0530
Message-Id: <1601219284-13275-1-git-send-email-jrdr.linux@gmail.com>
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
Cc: John Hubbard <jhubbard@nvidia.com>
Cc: Ira Weiny <ira.weiny@intel.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
---
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
