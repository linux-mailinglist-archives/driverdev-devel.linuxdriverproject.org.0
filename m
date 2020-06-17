Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 328171FC432
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jun 2020 04:38:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1AAF6895EC;
	Wed, 17 Jun 2020 02:38:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9CM7prxSUMpC; Wed, 17 Jun 2020 02:38:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB0F8895E3;
	Wed, 17 Jun 2020 02:38:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5A0291BF38E
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 02:38:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5680B87AFD
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 02:38:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id duT3Tf3vFEaY for <devel@linuxdriverproject.org>;
 Wed, 17 Jun 2020 02:38:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AE7C287AF7
 for <devel@driverdev.osuosl.org>; Wed, 17 Jun 2020 02:38:37 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id a45so1786022pje.1
 for <devel@driverdev.osuosl.org>; Tue, 16 Jun 2020 19:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=2fsUbTxVXQuihX2yvqrI7NERARlbGjrtDeHmGabbVEU=;
 b=Wf5TG5YNvh6DHTC/0T6jlYTVpC4iC7DxxYZmDDnkhjXp536NkdxWm88Xc4J+bSnhkH
 pPqZvmVLxyBCwN+rMxsmAOcEavVUAAT9tvmQpYsT5PIltn3AoItPSFrjbCDfSX5j+8Gp
 ayPi4vydHAbNWSTSGGNfhgIF5Vfs0m6UvO5h2JPnMXaB3TuPChe3uqaIldWV+XuszzXx
 x3OXFPcJMUlK0HQ+TYRTuEE/PgNNmuLsua23gcqWw6xaLxBR/bx6TYTRqY+uLBwZFw0f
 f1zQtKBH2ctsK2HVIKauwSXsrUwZr+wAbgBh+Y+VxapXOdzZHbuek2uhLdS3vDaTBYRL
 JJtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=2fsUbTxVXQuihX2yvqrI7NERARlbGjrtDeHmGabbVEU=;
 b=iELphLf40OiRdUPCEMTpxDLCO6LbZ2b3VtWGk5XNA6nAhfcRsmwOSMiwsFB/iekP89
 pWGJAxxRaDrdU+zjC8xxM3MAxhbJeYXA0qPdiVELf2aMn/pWq9z3y7f+obJg8WYCfAiQ
 C9VJGzqYBS7Nn31OZ2KMCh+KA+kv18f73oMY036VLulHAkD8zODIdy48up/sbJwywW+G
 xPXdAT1ajaeQIcfaPsLwZYJnsf9lrtdfNfzASEQc02Mhx5pocmgZs+8lOCX/Tinq62Em
 7x6kAWreMG+JzowStnPgMhc6Wvf12uEHTbXahGyhuSxkDwL7fg/PESm0T3YYl1ioXkO9
 B2mQ==
X-Gm-Message-State: AOAM530FeLu6EKCOdT2v2JnpcVGqpuH8sJk7DVkDsCkWn7TbrqiNUN5L
 CEhXEdT/MpFeNUudEPHawMM=
X-Google-Smtp-Source: ABdhPJwi59hfult5Zg7AIgt1J9g2XkeDyBiXVlRPd6nR92yvVk9hrW3BpM0C20966+Kv7H45oOHGxg==
X-Received: by 2002:a17:90a:de95:: with SMTP id
 n21mr5731559pjv.100.1592361517243; 
 Tue, 16 Jun 2020 19:38:37 -0700 (PDT)
Received: from jordon-HP-15-Notebook-PC.domain.name ([122.171.213.184])
 by smtp.gmail.com with ESMTPSA id s11sm17806105pfh.204.2020.06.16.19.38.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jun 2020 19:38:36 -0700 (PDT)
From: Souptick Joarder <jrdr.linux@gmail.com>
To: rspringer@google.com, toddpoynor@google.com, benchan@chromium.org,
 gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: gasket: Convert get_user_pages*() -->
 pin_user_pages*()
Date: Wed, 17 Jun 2020 08:15:30 +0530
Message-Id: <1592361930-3813-1-git-send-email-jrdr.linux@gmail.com>
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
 linux-kernel@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>,
 Souptick Joarder <jrdr.linux@gmail.com>
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
Acked-by: Dan Carpenter <dan.carpenter@oracle.com>
Cc: John Hubbard <jhubbard@nvidia.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>

---
Hi,

I'm compile tested this, but unable to run-time test, so any testing
help is much appriciated.

v2: 
	Added review tag.

 drivers/staging/gasket/gasket_page_table.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/gasket/gasket_page_table.c b/drivers/staging/gasket/gasket_page_table.c
index f6d7157..d712ad4 100644
--- a/drivers/staging/gasket/gasket_page_table.c
+++ b/drivers/staging/gasket/gasket_page_table.c
@@ -449,7 +449,7 @@ static bool gasket_release_page(struct page *page)
 
 	if (!PageReserved(page))
 		SetPageDirty(page);
-	put_page(page);
+	unpin_user_page(page);
 
 	return true;
 }
@@ -486,12 +486,12 @@ static int gasket_perform_mapping(struct gasket_page_table *pg_tbl,
 			ptes[i].dma_addr = pg_tbl->coherent_pages[0].paddr +
 					   off + i * PAGE_SIZE;
 		} else {
-			ret = get_user_pages_fast(page_addr - offset, 1,
+			ret = pin_user_pages_fast(page_addr - offset, 1,
 						  FOLL_WRITE, &page);
 
 			if (ret <= 0) {
 				dev_err(pg_tbl->device,
-					"get user pages failed for addr=0x%lx, offset=0x%lx [ret=%d]\n",
+					"pin user pages failed for addr=0x%lx, offset=0x%lx [ret=%d]\n",
 					page_addr, offset, ret);
 				return ret ? ret : -ENOMEM;
 			}
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
