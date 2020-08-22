Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B26F24E976
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Aug 2020 21:43:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CCFB585F72;
	Sat, 22 Aug 2020 19:43:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hcMhrfFpoTGU; Sat, 22 Aug 2020 19:43:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B407784627;
	Sat, 22 Aug 2020 19:43:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0DC401BF42E
 for <devel@linuxdriverproject.org>; Sat, 22 Aug 2020 19:43:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DF9C72039C
 for <devel@linuxdriverproject.org>; Sat, 22 Aug 2020 19:43:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xlb2VPnLqVbu for <devel@linuxdriverproject.org>;
 Sat, 22 Aug 2020 19:43:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 95EC820009
 for <devel@driverdev.osuosl.org>; Sat, 22 Aug 2020 19:43:23 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id a65so1244650wme.5
 for <devel@driverdev.osuosl.org>; Sat, 22 Aug 2020 12:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=bDeHhD/5z6aaFlItq04V8HlPaMZcoXhz68jm6W6MONk=;
 b=E4a7p3u+k/VHbSDKvo+vWFDgHYz75Y8+NmMpZQGWE5shPjdmZTRi24d7YVdsF6YAFZ
 zrYn1oTQeDaXMki76OWmSBV9Vyn6OIAazfgRl3Y0NYfr5L1R+JueMY7PulbAUEYYTnHP
 ae9Ipw2x67GtWT1+eQBwo51wObjS5xBprbcXr5Dk6a7ZvOmo8xGQzaJpAGeuS5F/Bakt
 W2r1VFpkF83+xZm5nurZsceL67OmWE3bi/pV6mNiCNI0Ok94JeIWh2+8BeX5Zs6ltUDK
 chaMncvuVVyxcbzBUTXB2oy0iwh0lEjDBuVexS9xnCBznQ715CgWQ+2HK3ir/iMCELyV
 jBzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bDeHhD/5z6aaFlItq04V8HlPaMZcoXhz68jm6W6MONk=;
 b=B4ehWSRSgVjTflzvBUjm05F/VHdb4fOxwy7SR1GCC3VAexL/ORqE+dAaJAyijBL6xn
 FJW1MBqYo1lx5303IDp6gg91Lj+HhGeLK+NghHGqAYmV3giUVVqcGGGZnPTeJakzQ9qp
 FuekS4yL+RtJvPhPW7Ws3O2kEP2yQypxsTi4JtZsLwTBL1hii+gTDHfi0Bz5NJbnEG45
 m0AW2IIjj6x+r6DPTI+1fIo00Vi3xKgUEiUrf3nd1CkINw1tHn1d0KVaXWfUcis0u+6u
 GjAWlpXWqRcOLf6Oani8i3MjLPGCCQKdoPoNls17tFnOoC6YgyNZhKdt759PbYfgDPnG
 Fj1w==
X-Gm-Message-State: AOAM533sNhkX93S87esRgXG9Wh0QDWV5mp/BkDCO6T/9Q2g5FVNABAua
 W8Y87Pv9qzwzHOv1cRvqKow=
X-Google-Smtp-Source: ABdhPJwnnkIT5/uCftHhMXqn1D4NcYSiQuuoKXX9omd0RYEa9lVbqCbaGzyn1xpBO11hX4gU7y3p3w==
X-Received: by 2002:a1c:28d5:: with SMTP id o204mr9837747wmo.104.1598125402082; 
 Sat, 22 Aug 2020 12:43:22 -0700 (PDT)
Received: from tsnow (IGLD-83-130-62-237.inter.net.il. [83.130.62.237])
 by smtp.gmail.com with ESMTPSA id z12sm12968394wrp.20.2020.08.22.12.43.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Aug 2020 12:43:21 -0700 (PDT)
Date: Sat, 22 Aug 2020 22:43:02 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v5 1/2] staging: android: Remove BUG_ON from ion_page_pool.c
Message-ID: <aaea4be2ab36395e70f759f3b6976782fe2acfa1.1598125227.git.tomersamara98@gmail.com>
References: <cover.1598125227.git.tomersamara98@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1598125227.git.tomersamara98@gmail.com>
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
 drivers/staging/android/ion/ion_page_pool.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/android/ion/ion_page_pool.c b/drivers/staging/android/ion/ion_page_pool.c
index 0198b886d906..fa764299f004 100644
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
@@ -82,8 +78,6 @@ struct page *ion_page_pool_alloc(struct ion_page_pool *pool)
 
 void ion_page_pool_free(struct ion_page_pool *pool, struct page *page)
 {
-	BUG_ON(pool->order != compound_order(page));
-
 	ion_page_pool_add(pool, page);
 }
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
