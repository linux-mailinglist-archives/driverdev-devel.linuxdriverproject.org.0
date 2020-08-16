Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D824724594D
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Aug 2020 21:31:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4AA7186160;
	Sun, 16 Aug 2020 19:31:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7-89g78Eltnr; Sun, 16 Aug 2020 19:31:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0B4AD860B0;
	Sun, 16 Aug 2020 19:31:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7186E1BF21A
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 19:31:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4D585204C9
 for <devel@linuxdriverproject.org>; Sun, 16 Aug 2020 19:31:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fm-j-lbi5-y8 for <devel@linuxdriverproject.org>;
 Sun, 16 Aug 2020 19:31:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id AC3112035E
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 19:31:27 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id c19so11921015wmd.1
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 12:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=riVeaXVjuZmcehfNxxO8lj1kUtlDfTSeuBv9qK6ixUA=;
 b=M35WWEAt9qJsNNvKpcIIpZDd4UCS92+EA1NKQ1mjYL7EO+BCytO5qucyp5SJ5ycDBW
 ok6UZvtncPj9Z2neCyQSNZF5vSNZkEwxhdJt5BCBMUbXd4yrGHw7qkcIzGC5oFi5Usn9
 WQNJXubTHLsJ00fSyWsZcgu/UMYdPTXN0Q6V7/d//ppdwwFoIW4GnLT9KXU/3advb3zz
 1UtIGTD9LHNCptcgSJL8oEA7rFk/LIsevxHRWlWzc4oMXZ+k8NWd9nKi1zu0Z8ECfg7p
 dg9RzfTXM9NoJGKySUUqFARfqIiR6X8xAk4CbHAvRE4W8631hQsy4Sv1NPKyzp5D798y
 Y8qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=riVeaXVjuZmcehfNxxO8lj1kUtlDfTSeuBv9qK6ixUA=;
 b=Q4PYaXBfv0gpGMFYYSluQZFV1vVI4owOVRcCyB/UPZhwrDaGpHKKJox6kH3sYpd9My
 afnl48ACqL9Ns8EehnodJoQpjpTFTdd7I8cwKc6bSzUJovZV9POgWTGuevjxs69TRi5x
 REFXH6Wcig3ZrG3EPGdaAVkKWOzWOnopoCyh4OiQhjis/+tLSY7o5fR5n5hx2nQ6997V
 dtE39sKNP93Ht3VR2UEO0hdjUiJItqKyHFh4EFyZGSoV7JCO2wjoDBGZrsD1zKUyHI00
 kWRPOi49nC6CMDTrzt6hwj5oe/4bhNOO5GK2jpd/FECPAHFnMy/fH780572Zie0fVwNR
 lUeA==
X-Gm-Message-State: AOAM530GLxwhkW8eI25J3vliaKnsXJklv3wo2lbVFjz3acKRaAVR9ybm
 8VF9X8Tv/SZjUB29haOUvTs=
X-Google-Smtp-Source: ABdhPJyi4UbmT00nTsoSw/OuAaaFid8FGig1pZoNI7QyAgobSL5JM93sWI/I2tZYZtmJy2gncMhaeQ==
X-Received: by 2002:a7b:cc13:: with SMTP id f19mr11556318wmh.168.1597606285796; 
 Sun, 16 Aug 2020 12:31:25 -0700 (PDT)
Received: from tsnow ([94.159.146.190])
 by smtp.gmail.com with ESMTPSA id u66sm27717981wmu.37.2020.08.16.12.31.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Aug 2020 12:31:25 -0700 (PDT)
Date: Sun, 16 Aug 2020 22:31:22 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 4/4] staging: android: Add error handling to
 order_to_index callers
Message-ID: <c653c468e0c3044b10df375e8245e5d50634a7fa.1597602783.git.tomersamara98@gmail.com>
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

Add error check to:
- free_buffer_page
- alloc_buffer_page
after calling order_to_index, due to converting BUG to WARN at
order_to_index.

Signed-off-by: Tomer Samara <tomersamara98@gmail.com>
---
 drivers/staging/android/ion/ion_system_heap.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/android/ion/ion_system_heap.c b/drivers/staging/android/ion/ion_system_heap.c
index 37065a59ca69..1e73bfc88884 100644
--- a/drivers/staging/android/ion/ion_system_heap.c
+++ b/drivers/staging/android/ion/ion_system_heap.c
@@ -49,8 +49,13 @@ static struct page *alloc_buffer_page(struct ion_system_heap *heap,
 				      struct ion_buffer *buffer,
 				      unsigned long order)
 {
-	struct ion_page_pool *pool = heap->pools[order_to_index(order)];
+	struct ion_page_pool *pool;
+	int index = order_to_index(order);
+
+	if (index < 0)
+		return NULL;
 
+	pool = heap->pools[index];
 	return ion_page_pool_alloc(pool);
 }
 
@@ -59,6 +64,7 @@ static void free_buffer_page(struct ion_system_heap *heap,
 {
 	struct ion_page_pool *pool;
 	unsigned int order = compound_order(page);
+	int index;
 
 	/* go to system */
 	if (buffer->private_flags & ION_PRIV_FLAG_SHRINKER_FREE) {
@@ -66,8 +72,11 @@ static void free_buffer_page(struct ion_system_heap *heap,
 		return;
 	}
 
-	pool = heap->pools[order_to_index(order)];
+	index = order_to_index(order);
+	if (index < 0)
+		return;
 
+	pool = heap->pools[index];
 	ion_page_pool_free(pool, page);
 }
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
