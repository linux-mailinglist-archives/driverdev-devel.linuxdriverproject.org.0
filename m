Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C152458C1
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Aug 2020 19:22:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2F22920472;
	Sun, 16 Aug 2020 17:21:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Punrarxon8Lw; Sun, 16 Aug 2020 17:21:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 67E6E20459;
	Sun, 16 Aug 2020 17:21:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A95E31BF410
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 17:21:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8D2DE20459
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 17:21:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6QnePvXCtI6x for <devel@linuxdriverproject.org>;
 Sun, 16 Aug 2020 17:21:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 01B1D2035E
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 17:21:49 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id a14so12666932wra.5
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 10:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=qhnpa/trjt4QH5oDT0w3lHC9wDtosLLIKcCmM7fmRXQ=;
 b=Y6u1bIXtETM8nGKBLOBIaoMtwk7e5Dq322h5yNAMefwW3i4FFJYEsqBEsxmq18/fq9
 ObAoERHhe90ZEKwShMc6+htbd50V4WJvTmDHdgjXBjna2PbHzD844iMrjmHMbrEojuDU
 JCuD+pgOnmx8YEZO8konRuzf8afDGnIl2/BrV26HFcFCb08Pxh/a8tgAfV+lwWfO1iSb
 lyd4tRbvqaKbydcHQt7dMMHBM1ThkrT0Q8aXsrvpbGtNimi3nNj9zyG1iDsQTiltuSJJ
 ySeqmVUsvIJcj7WvE+UX+MZx8rQIMNNV9PgA5qj85w1Jaqyfvg+PH1vymjfAGYmlaHst
 RAJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qhnpa/trjt4QH5oDT0w3lHC9wDtosLLIKcCmM7fmRXQ=;
 b=hmkS54oVHGEZVIbNMYNJdMToUdW7+XVjSM2qSd815bw5EsBHw+4CChZonjA61bqBDR
 JiSXJ8eBBdqAW1mn+B3EVMISoWr1n2M3aN8ud74Xv9BGuvJefV1a+/ogDNgiqbk1YC57
 ijkEc3PoLNYdsxq16qVcIeKgAjKa6tkubldr0gflOGa8xVTT5jHspp63HAMiGyMyl8G7
 XDUGpLx2aFPWC/kI2T3Wpqea88bA3LS9idXcpgyB0hYrJ0j7p7SJ7wmGfGgLJNonHcPj
 xWFZdgb62Iv1BASLukvBgTfjs56dGEhuooiw6jTKjz6HQ/5JlczW9RCylKFdPZhq4QOO
 OKGQ==
X-Gm-Message-State: AOAM530jRJ9kK9GN7rf8SGCgZOiVuAE4f61C3ZQsXt+PGVRXbjhLp1Mk
 iPce2fbnOw6WN0kN1FndI90=
X-Google-Smtp-Source: ABdhPJxyPopkvGjX4OPrqDue+B2GiVZNzO8/x7ztlFw9xOxvn8pjAforCHS7gsWVwSKA3+GmKPlmtQ==
X-Received: by 2002:a5d:4b11:: with SMTP id v17mr11304091wrq.224.1597598508589; 
 Sun, 16 Aug 2020 10:21:48 -0700 (PDT)
Received: from tsnow ([94.159.146.190])
 by smtp.gmail.com with ESMTPSA id i66sm27550212wma.35.2020.08.16.10.21.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Aug 2020 10:21:48 -0700 (PDT)
Date: Sun, 16 Aug 2020 20:21:44 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/3] staging: androind: Replace BUG_ONs with WARN_ONs
Message-ID: <b300cc0e9c75bfc14b091c874d22359b8ad9d6c9.1597597955.git.tomersamara98@gmail.com>
References: <cover.1597597955.git.tomersamara98@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1597597955.git.tomersamara98@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Suren Baghdasaryan <surenb@google.com>, Riley Andrews <riandrews@android.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Hridya Valsaraju <hridya@google.com>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Laura Abbott <labbott@redhat.com>,
 Martijn Coenen <maco@android.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

BUG_ON() is replaced with WARN_ON at ion_page_pool.c
Fixes the following issue:
Avoid crashing the kernel - try using WARN_ON & recovery code ratherthan BUG() or BUG_ON().

Signed-off-by: Tomer Samara <tomersamara98@gmail.com>
---
 drivers/staging/android/ion/ion_page_pool.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/android/ion/ion_page_pool.c b/drivers/staging/android/ion/ion_page_pool.c
index 0198b886d906..4acc0eebf781 100644
--- a/drivers/staging/android/ion/ion_page_pool.c
+++ b/drivers/staging/android/ion/ion_page_pool.c
@@ -46,11 +46,13 @@ static struct page *ion_page_pool_remove(struct ion_page_pool *pool, bool high)
 	struct page *page;
 
 	if (high) {
-		BUG_ON(!pool->high_count);
+		if (WARN_ON(!pool->high_count))
+			return NULL:
 		page = list_first_entry(&pool->high_items, struct page, lru);
 		pool->high_count--;
 	} else {
-		BUG_ON(!pool->low_count);
+		if (WARN_ON(!pool->low_count))
+			return NULL;
 		page = list_first_entry(&pool->low_items, struct page, lru);
 		pool->low_count--;
 	}
@@ -65,7 +67,8 @@ struct page *ion_page_pool_alloc(struct ion_page_pool *pool)
 {
 	struct page *page = NULL;
 
-	BUG_ON(!pool);
+	if (WARN_ON(!pool))
+		return NULL;
 
 	mutex_lock(&pool->mutex);
 	if (pool->high_count)
@@ -82,7 +85,8 @@ struct page *ion_page_pool_alloc(struct ion_page_pool *pool)
 
 void ion_page_pool_free(struct ion_page_pool *pool, struct page *page)
 {
-	BUG_ON(pool->order != compound_order(page));
+	if (WARN_ON(pool->order != compound_order(page)))
+		return;
 
 	ion_page_pool_add(pool, page);
 }
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
