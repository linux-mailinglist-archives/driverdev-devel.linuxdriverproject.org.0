Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A06BF245940
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Aug 2020 21:23:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4D72887E3C;
	Sun, 16 Aug 2020 19:23:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1mQE0yDcnlMO; Sun, 16 Aug 2020 19:23:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A53EE87E09;
	Sun, 16 Aug 2020 19:23:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A6CDA1BF21A
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 19:23:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A36F78525D
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 19:23:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NKwDNqy687yO for <devel@linuxdriverproject.org>;
 Sun, 16 Aug 2020 19:23:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EF5618523B
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 19:23:45 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id a14so12848781wra.5
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 12:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=EwFJZ7dfAqQ1UBhHBt6LFEw2dpyCC5fZ/uaODPbwQ/k=;
 b=V8aN4aPGz4W/rhy/Q2gJmxMbjDP4IRKELAm+TZMXVoa0g3IM5sKGSKxAL9WDkdzRdc
 uX5MQexjBo90N5mP/4jKoS5+JudjMkTKk3qNBvmKoOJ3808ZSsyL0gS0BM9pEUjkjpUa
 XWBxdX/ZyfepBIe5evz+gbIeF/ppVLyVFOizf3ffAoNVrVagVhIGSVrKp7GQHVy5VgUE
 jF84GKxPp5e/FBgozBO+6QPKig3WofCX9L+050rUp26G17L8UADyqFy/YVbyAGXzqy70
 3w21mQc95ILOXaVw0ukA1NkVVTWtvzAQ6G57LYlI9XYpWjIJ0D59UFkCgvXPKuj6BBw3
 BffQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EwFJZ7dfAqQ1UBhHBt6LFEw2dpyCC5fZ/uaODPbwQ/k=;
 b=ba4LMtX0toHQMc32vYwOBOnGPj3bTRxaQ2sCyZdbb70mkAyYROlVxW4bvFdZ5trKl/
 FLtTP3pFjcimkz6FV0nlbcCUDUAIU5T4klLYNWxUTyOAUlLXC3Gt7sVO92Z55SphHLU2
 ta803nutTubMdf2oOcgJ3hm/A0IXn2r8x6e6bkVb3tbg3DpTTmifaD4AvynWJHvGA7hM
 TydO0ASPJTsj8zOKa+w3a+djNNXhwmfQfkNExTfmBA/8z4tQj112tf3x15Td/vLMgzo9
 ApvOa+Da6xseGtiwoD2Wkue+7BV/+N+Ssv/njI02reG2REiwuAZTo/m5V7uKkXd3RQKT
 TF5A==
X-Gm-Message-State: AOAM5302VeZcsk+YpFF1L6e95vC46CI7+MmnkbLmk+g1/ZteoQewf/dR
 yjF2H6+v+zVvPkgyoLf7T/o=
X-Google-Smtp-Source: ABdhPJzKVZZ6r6L7ot1ZZO9bdKj1FQQ/74Sm840x6qryXJBgWNNZtbnpDq+zS2ZuU1QSHa5zhMF0vg==
X-Received: by 2002:a5d:4144:: with SMTP id c4mr11672695wrq.200.1597605824368; 
 Sun, 16 Aug 2020 12:23:44 -0700 (PDT)
Received: from tsnow ([94.159.146.190])
 by smtp.gmail.com with ESMTPSA id p17sm30992902wra.81.2020.08.16.12.23.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Aug 2020 12:23:43 -0700 (PDT)
Date: Sun, 16 Aug 2020 22:23:25 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 1/4] staging: android: Replace BUG_ON with WARN_ON
Message-ID: <fd55c53cb20c4887a87c05fffa28c28a740cd314.1597602783.git.tomersamara98@gmail.com>
References: <cover.1597602783.git.tomersamara98@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1597602783.git.tomersamara98@gmail.com>
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
index 0198b886d906..c1b9eda35c96 100644
--- a/drivers/staging/android/ion/ion_page_pool.c
+++ b/drivers/staging/android/ion/ion_page_pool.c
@@ -46,11 +46,13 @@ static struct page *ion_page_pool_remove(struct ion_page_pool *pool, bool high)
 	struct page *page;
 
 	if (high) {
-		BUG_ON(!pool->high_count);
+		if (WARN_ON(!pool->high_count))
+			return NULL;
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
