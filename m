Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF3424A700
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Aug 2020 21:39:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D28E386130;
	Wed, 19 Aug 2020 19:39:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qB5d17Kau6Vr; Wed, 19 Aug 2020 19:39:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A65A085F50;
	Wed, 19 Aug 2020 19:39:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3497D1BF316
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 19:38:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2384122219
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 19:38:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZDLuEUOtHgXo for <devel@linuxdriverproject.org>;
 Wed, 19 Aug 2020 19:38:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by silver.osuosl.org (Postfix) with ESMTPS id E48DA221D2
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 19:38:57 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id g19so27661504ejc.9
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 12:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YRPJpeT5dhxWJ12GIFcarr8oc1JgRi4yV8j1UvVpQQs=;
 b=Y/TMCp2AfpTBeZ1xLSiaWieg09HkNJpTltYziCwR0usYRnVKobknSYN9bZc2H9GOU3
 RlIzAqE9UhP0dz/dIgffplwsHnZ1x+3PLshll/AhehzZn2KTF23JO76enX5pTX5OJsup
 8WmPltVJM2ZOJdjgexK8RyQ0dCeuBPqsGfwdgFRz+oF84/sKwsu+AC5jELgEtq0rgbQE
 PjJIav1YKoqMmyPrZWdFV3DEyAjPYgVOlnEnEkUMxzCHp3n575g0i3fAw1QUt6gfcOIp
 DcmV0sGoZMEdYhGzIEsBf1K6jqr4iBeu7ULnw1jnCMq4sCDnr/ug208FqJx8N6exgCI8
 bXhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YRPJpeT5dhxWJ12GIFcarr8oc1JgRi4yV8j1UvVpQQs=;
 b=bQGac2jul44tvljQbRuNUYPn4wT+GDN9Wj/JPeM6j0UaliqBAJOYNQbwLwWj6SAwjn
 b6DaBQ1+wQ5pfia9JhaGEh5pTLfhtmxlA7t1XynacK0imspiz/gdurv4eG8j+/Np3t6e
 gp3H4xQ4ia+UzFIrmnmWDHZwizpQIXaZJ/sy6EdY7H689D6sCdZuM4TBMmzbRwqnrHZO
 nANtEIeAASzAuNKWBL4+UTewZpG4Etu4bHOHBwz1ODIAO1PuGjrwpi3fXnnRIQFrm1vb
 +vjqjGDqFiet5RSzj85G3BmwT63bnv0JgVJ4xaHkQpceBJYPv34UBnUh/SVQ0J+GX2Px
 DAdA==
X-Gm-Message-State: AOAM5300kr+31HCGO3Df9h2RTZyukFxC2hkNX60eb4WQj0p6VL+lOQcu
 fWjbs+oCLCpubynCUsimhz8=
X-Google-Smtp-Source: ABdhPJwaiRRbcYN8dZl/U4YqQD41O2+zpth7YbXzWPNZCNAzTKai7VUycG9u+6QMlPAbQdRSaR7nAQ==
X-Received: by 2002:a17:906:c187:: with SMTP id
 g7mr6051159ejz.108.1597865936360; 
 Wed, 19 Aug 2020 12:38:56 -0700 (PDT)
Received: from tsnow (IGLD-83-130-68-114.inter.net.il. [83.130.68.114])
 by smtp.gmail.com with ESMTPSA id x16sm18064084edr.25.2020.08.19.12.38.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Aug 2020 12:38:55 -0700 (PDT)
Date: Wed, 19 Aug 2020 22:38:47 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 1/2] staging: android: Remove BUG_ON from ion_page_pool.c
Message-ID: <2e6c71ad168f92170ef856922b9a0c8dd0f85e11.1597865771.git.tomersamara98@gmail.com>
References: <cover.1597865771.git.tomersamara98@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1597865771.git.tomersamara98@gmail.com>
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

BUG_ON() is removed at ion_page_pool.c and add error handleing to
ion_page_pool_shrink

Fixes the following issue:
Avoid crashing the kernel - try using WARN_ON & recovery code ratherthan BUG() or BUG_ON().

Signed-off-by: Tomer Samara <tomersamara98@gmail.com>
---
 drivers/staging/android/ion/ion_page_pool.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/android/ion/ion_page_pool.c b/drivers/staging/android/ion/ion_page_pool.c
index 0198b886d906..ae2bc57bcbe8 100644
--- a/drivers/staging/android/ion/ion_page_pool.c
+++ b/drivers/staging/android/ion/ion_page_pool.c
@@ -46,11 +46,13 @@ static struct page *ion_page_pool_remove(struct ion_page_pool *pool, bool high)
 	struct page *page;
 
 	if (high) {
-		BUG_ON(!pool->high_count);
+		if (!pool->high_count)
+			return NULL;
 		page = list_first_entry(&pool->high_items, struct page, lru);
 		pool->high_count--;
 	} else {
-		BUG_ON(!pool->low_count);
+		if (!pool->low_count)
+			return NULL;
 		page = list_first_entry(&pool->low_items, struct page, lru);
 		pool->low_count--;
 	}
@@ -65,7 +67,8 @@ struct page *ion_page_pool_alloc(struct ion_page_pool *pool)
 {
 	struct page *page = NULL;
 
-	BUG_ON(!pool);
+	if (!pool)
+		return NULL;
 
 	mutex_lock(&pool->mutex);
 	if (pool->high_count)
@@ -82,7 +85,8 @@ struct page *ion_page_pool_alloc(struct ion_page_pool *pool)
 
 void ion_page_pool_free(struct ion_page_pool *pool, struct page *page)
 {
-	BUG_ON(pool->order != compound_order(page));
+	if (pool->order != compound_order(page))
+		return;
 
 	ion_page_pool_add(pool, page);
 }
@@ -124,6 +128,8 @@ int ion_page_pool_shrink(struct ion_page_pool *pool, gfp_t gfp_mask,
 			break;
 		}
 		mutex_unlock(&pool->mutex);
+		if (!page)
+			break;
 		ion_page_pool_free_pages(pool, page);
 		freed += (1 << pool->order);
 	}
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
