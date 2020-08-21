Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D47EA24D885
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Aug 2020 17:27:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EC940203D7;
	Fri, 21 Aug 2020 15:27:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yNzuqyzHvl39; Fri, 21 Aug 2020 15:27:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 42F63204B9;
	Fri, 21 Aug 2020 15:27:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 476BF1BF5F8
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 15:27:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 43A82203B4
 for <devel@linuxdriverproject.org>; Fri, 21 Aug 2020 15:27:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GNq6Xi8fYZST for <devel@linuxdriverproject.org>;
 Fri, 21 Aug 2020 15:27:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 49EDB20242
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 15:27:45 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id 88so2327735wrh.3
 for <devel@driverdev.osuosl.org>; Fri, 21 Aug 2020 08:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=A2ib5YeLmICUMl8rksAwSuoFVXHYJ4y/hwVWZYHuMbY=;
 b=q1l9IeVSjBMpvx9pappt54xWWzVHKZAIjcy2grhmETrscRqtkMd92gelvCAxF9/YxC
 df2utnw/GutYtLaWTyxshKq81bXGskLk4qcfcSscEKDCL886LGJEwbC1r96+vnepfNBv
 jkjHnEbfuoDp1u2zzg9/wRQMYc1+nwHjwzSo5R54G3vmWIpoag3D8Nw+ooApVOW1lPIL
 2sySVBcDBsREymUfLDG/3d/biHjObMIHhwnvYhhvHCc+2n9XpU8cgcNkZzk/MNTvt1Kj
 Z68WE74zqAh5LRtvnrlfIyn4mnRWfq7JDcngcwi2y3FeCEqGNlMqQpe1/NrbzwXGCJjD
 9J8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=A2ib5YeLmICUMl8rksAwSuoFVXHYJ4y/hwVWZYHuMbY=;
 b=ui/6qD+19h4F4dAJ+SlNphgOf5kd3v04U45LjB10i9MDuAbsRpkWJLohTTgcNInmXO
 50w7XkGNNAOWULlmLirZZ9LM7Y2n8AZtbmvKyWa60XntEpaFNBCefajazC3B//VYLJIb
 azZZ767JsCEyq+ZQqJOQHi+w/ljcURoJ5PlaSYEsVnlf3EzczRgNIZFpO0EwWJxTx4CI
 ok92NwH4oiVSqNJtI1fA3KESXPPpogPHrAqgbKqxJiTqW/qgQVzhCdThV1DW9xLq+JJa
 KfivDXXIPTKK9lL9S2ZSxeuB5Bc2LQVKEA514mySvrzQpVkuJvv4zqw3Oww+AN5krICl
 T9bA==
X-Gm-Message-State: AOAM532Sm+ex2I8cg5dKRqX2zH9Lhg4C9Mk7c3ENWOYyOoJxQbL/HanY
 3L/Y7TXuYfvfXEswc8K6/mc=
X-Google-Smtp-Source: ABdhPJwnHUuth1Lgg+jMpWeo2o0KMQOm5Qu+a71/U7ael4vzzcfepC1XxXX3R/e7IfVXP9rCUNyY7Q==
X-Received: by 2002:a5d:4701:: with SMTP id y1mr3322387wrq.416.1598023663658; 
 Fri, 21 Aug 2020 08:27:43 -0700 (PDT)
Received: from tsnow (IGLD-83-130-85-196.inter.net.il. [83.130.85.196])
 by smtp.gmail.com with ESMTPSA id i4sm4575674wrw.26.2020.08.21.08.27.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Aug 2020 08:27:43 -0700 (PDT)
Date: Fri, 21 Aug 2020 18:27:37 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4 1/2] staging: android: Remove BUG_ON from ion_page_pool.c
Message-ID: <32ea3b6d840cb56ea927400e1875d9d4db38e926.1598023524.git.tomersamara98@gmail.com>
References: <cover.1598023523.git.tomersamara98@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1598023523.git.tomersamara98@gmail.com>
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

BUG_ON() is removed at ion_page_pool.c

Fixes the following issue:
Avoid crashing the kernel - try using WARN_ON & recovery code ratherthan BUG() or BUG_ON().

Signed-off-by: Tomer Samara <tomersamara98@gmail.com>
---
 drivers/staging/android/ion/ion_page_pool.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/android/ion/ion_page_pool.c b/drivers/staging/android/ion/ion_page_pool.c
index 0198b886d906..a3ed3bfd47ee 100644
--- a/drivers/staging/android/ion/ion_page_pool.c
+++ b/drivers/staging/android/ion/ion_page_pool.c
@@ -46,11 +46,9 @@ static struct page *ion_page_pool_remove(struct ion_page_pool *pool, bool high)
 	struct page *page;
 
 	if (high) {
-		BUG_ON(!pool->high_count);
 		page = list_first_entry(&pool->high_items, struct page, lru);
 		pool->high_count--;
 	} else {
-		BUG_ON(!pool->low_count);
 		page = list_first_entry(&pool->low_items, struct page, lru);
 		pool->low_count--;
 	}
@@ -65,8 +63,6 @@ struct page *ion_page_pool_alloc(struct ion_page_pool *pool)
 {
 	struct page *page = NULL;
 
-	BUG_ON(!pool);
-
 	mutex_lock(&pool->mutex);
 	if (pool->high_count)
 		page = ion_page_pool_remove(pool, true);
@@ -82,7 +78,7 @@ struct page *ion_page_pool_alloc(struct ion_page_pool *pool)
 
 void ion_page_pool_free(struct ion_page_pool *pool, struct page *page)
 {
-	BUG_ON(pool->order != compound_order(page));
+	WARN_ON(pool->order != compound_order(page))
 
 	ion_page_pool_add(pool, page);
 }
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
