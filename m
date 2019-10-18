Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE26DD11B
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Oct 2019 23:22:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B53B986EDF;
	Fri, 18 Oct 2019 21:22:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y-yBEjg0a4Kv; Fri, 18 Oct 2019 21:22:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6EF4886955;
	Fri, 18 Oct 2019 21:22:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4FEDB1BF5F5
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 21:22:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4CB8886955
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 21:22:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id igndTnf1lsIU for <devel@linuxdriverproject.org>;
 Fri, 18 Oct 2019 21:22:01 +0000 (UTC)
X-Greylist: delayed 00:25:17 by SQLgrey-1.7.6
Received: from mail-ua1-f74.google.com (mail-ua1-f74.google.com
 [209.85.222.74])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9A105868F5
 for <devel@driverdev.osuosl.org>; Fri, 18 Oct 2019 21:22:01 +0000 (UTC)
Received: by mail-ua1-f74.google.com with SMTP id 66so1047196uao.0
 for <devel@driverdev.osuosl.org>; Fri, 18 Oct 2019 14:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=pFSHWfsa4OYLf86WgPeUBVlVGsm2bxueW/eIsJSwKiQ=;
 b=ZxRofBTLLxqPyCT9Ejy040W4kNnnOcsZi+MYGlj8YmtDrP9euwn9536tbUMP5I5E9E
 F0qx7pSkCzwWzszOhh0BzfZEdDFhioSEIQsOAfXYzm67ai6YT5MHVUIh3otszhFmuwXm
 g3AqXIn7dagWoecDRZTNGWVxcocTUDUSU3HbY4V/ColcRzFd3jctb+BIV4Gt/lHRqXVg
 Ru7ba3cotGuss8tpCcF2Gt34tcszr8ssTjjdaM3cj+weEdMzb/JIGkO2ToQDLHGjH4iL
 qE9H6KIJiORtyryH1SHjaK45+zN7i1fJGvekzSHyy3Gdl62cIuKAlqcUdWw0l7TCTYVj
 YKmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=pFSHWfsa4OYLf86WgPeUBVlVGsm2bxueW/eIsJSwKiQ=;
 b=eS5Kp4lhM8up/LKobQWaeoCRS2Ck+8+d5lhnqSasDAgRwnar3Q+WKi+N+Tfgzsqx20
 sZgLC4x8RCf+YweUvZrPKB/khTXoLC8Iw6qoWjtCY8exshl0Fe67UgltWeJahYfRgVVa
 vA0Pf7QIID4/3omxsOMutCvagXA8S28f2iYAxuR0WgKmtTgjy/OxpnqyxAoZGdkS/dGK
 Ew2a+8BehpfQwcWoSbMdbzlrF9oukOSDAqQlq4L8SvuXpPZHdRqcQ9ooOlf4qxYz9Kvu
 WSZ9fFZqpxx2WQC17SlhSMQPVj3UagBwSA54GPn08ToH3A5hKdfSanqkNlrZskDUq7oU
 83Uw==
X-Gm-Message-State: APjAAAXoMFIZhuXl65aAwgqUYFJoe55dajcJ7syJtCbIWovr8K4Pq1FR
 BMP4P5lTBkjaneaviWYSOSs84jpv1A==
X-Google-Smtp-Source: APXvYqw3YHqNer9uDRETXpkMeSewm1GG1VHr/SMOl/zfhsvRorqD8QIY7Bi+m+OskYEEZDdwy6ZMEtTZhw==
X-Received: by 2002:ac5:cb62:: with SMTP id l2mr6580899vkn.32.1571432203606;
 Fri, 18 Oct 2019 13:56:43 -0700 (PDT)
Date: Fri, 18 Oct 2019 22:56:29 +0200
Message-Id: <20191018205631.248274-1-jannh@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 1/3] binder: Fix race between mmap() and
 binder_alloc_print_pages()
From: Jann Horn <jannh@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, 
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>, jannh@google.com
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

binder_alloc_print_pages() iterates over
alloc->pages[0..alloc->buffer_size-1] under alloc->mutex.
binder_alloc_mmap_handler() writes alloc->pages and alloc->buffer_size
without holding that lock, and even writes them before the last bailout
point.

Unfortunately we can't take the alloc->mutex in the ->mmap() handler
because mmap_sem can be taken while alloc->mutex is held.
So instead, we have to locklessly check whether the binder_alloc has been
fully initialized with binder_alloc_get_vma(), like in
binder_alloc_new_buf_locked().

Fixes: 8ef4665aa129 ("android: binder: Add page usage in binder stats")
Cc: stable@vger.kernel.org
Signed-off-by: Jann Horn <jannh@google.com>
---
 drivers/android/binder_alloc.c | 22 ++++++++++++++--------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/android/binder_alloc.c b/drivers/android/binder_alloc.c
index eb76a823fbb2..21952dfa147d 100644
--- a/drivers/android/binder_alloc.c
+++ b/drivers/android/binder_alloc.c
@@ -841,14 +841,20 @@ void binder_alloc_print_pages(struct seq_file *m,
 	int free = 0;
 
 	mutex_lock(&alloc->mutex);
-	for (i = 0; i < alloc->buffer_size / PAGE_SIZE; i++) {
-		page = &alloc->pages[i];
-		if (!page->page_ptr)
-			free++;
-		else if (list_empty(&page->lru))
-			active++;
-		else
-			lru++;
+	/*
+	 * Make sure the binder_alloc is fully initialized, otherwise we might
+	 * read inconsistent state.
+	 */
+	if (binder_alloc_get_vma(alloc) != NULL) {
+		for (i = 0; i < alloc->buffer_size / PAGE_SIZE; i++) {
+			page = &alloc->pages[i];
+			if (!page->page_ptr)
+				free++;
+			else if (list_empty(&page->lru))
+				active++;
+			else
+				lru++;
+		}
 	}
 	mutex_unlock(&alloc->mutex);
 	seq_printf(m, "  pages: %d:%d:%d\n", active, lru, free);
-- 
2.23.0.866.gb869b98d4c-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
