Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 997E324A703
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Aug 2020 21:39:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4C02D861BC;
	Wed, 19 Aug 2020 19:39:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kGa_mFPzQE6D; Wed, 19 Aug 2020 19:39:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3CD5D86049;
	Wed, 19 Aug 2020 19:39:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5947D1BF316
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 19:39:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4DFF522219
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 19:39:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yq0GvTSFi628 for <devel@linuxdriverproject.org>;
 Wed, 19 Aug 2020 19:39:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 53F51221D2
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 19:39:43 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id t15so19046958edq.13
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 12:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Yd7EYvVEuvXaQQnlQebjKHZTDtyygSQlPm6fYa8dX0c=;
 b=NH7adRKAPFPqZPXCowY/ar3Ei1f5iH0HB+od9dTrfZ2Q2zUAIfVlraBF/Fxwux/zc7
 Qesy8hn2qkE3lri4hKI8j3wtgYeFKwxVac52bl2h2WmvlLmA74QcWLk1orOx4vde9Tn2
 0IPJN7vNLSBr2JIbZ40KjUcC8mErBK/GR13YjOlhouPHETMFWv/cniY/UWH1St5nVFrw
 YVFgyD0G4Kwdpdje0udHuHg043j6p3aVp+WSUnL9erAxPMF+C3LByIAooTqKVFX4UFuL
 SiojRV6UrVcFkdC3LxawWpCpkiijD6Ej5VBcYpJjIgCt8UXcGZZzmTxm5KXQ3c95LNCU
 563Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Yd7EYvVEuvXaQQnlQebjKHZTDtyygSQlPm6fYa8dX0c=;
 b=sRSGgWzQxg+Ojd1UDp7tcBYBB+iAU21MTfrPMMjhE3A2PivSqD32M2ARSvXgidbi8P
 Z7IbFxlsBDc399/OuwxMydt9+f3vDe4SwRZ+djac261MyW4vf3uz70drP2LKa1QPeu5r
 lTuFXqdQhqVowHbNbSiAuc2ycwnUctbsy3NFVOuL0wS9P2pnwjwrrbDv1amWv2YOQYQK
 vNo9UhlNrAPCf0Ja7WmooYzKlJgMBcWLVWUqsvdbHc1WGvKsBLFed78hDKL5zSnQtEs8
 8rRypTprPehZM62K0K1XRYUnOlb+yLI8SoCy+ZYt3iJ9hvleWiKktcvhFo2HW5yqaLL/
 EsaQ==
X-Gm-Message-State: AOAM532ILXDVm59Saq8pRL5Gx6xsMnM4s6ga/j4Z4RQfMsR/2+hK01Nq
 ogEFKPUdj6AQR9cxuCAimjE=
X-Google-Smtp-Source: ABdhPJzRnOQW8YcxGuz4rNEnMK/i4+CphrpkfHFQ/9AogKnkfRQdSdNfeYjk6Gsj1pC+dzZxDPkFaw==
X-Received: by 2002:a05:6402:1443:: with SMTP id
 d3mr27266551edx.40.1597865981745; 
 Wed, 19 Aug 2020 12:39:41 -0700 (PDT)
Received: from tsnow (IGLD-83-130-68-114.inter.net.il. [83.130.68.114])
 by smtp.gmail.com with ESMTPSA id a19sm18231355edv.49.2020.08.19.12.39.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Aug 2020 12:39:41 -0700 (PDT)
Date: Wed, 19 Aug 2020 22:39:34 +0300
From: Tomer Samara <tomersamara98@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 2/2] staging: android: Remove BUG from ion_system_heap.c
Message-ID: <39222c3a041708c41ab3bc1be855ac83912ee07b.1597865771.git.tomersamara98@gmail.com>
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

Remove BUG()  at ion_sytem_heap.c and error handling to:
 - free_buffer_page
 - alloc_buffer_page
this fix the following checkpatch issue:
Avoid crashing the kernel - try using WARN_ON &
recovery code ratherthan BUG() or BUG_ON().

Signed-off-by: Tomer Samara <tomersamara98@gmail.com>
---
 drivers/staging/android/ion/ion_system_heap.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/android/ion/ion_system_heap.c b/drivers/staging/android/ion/ion_system_heap.c
index eac0632ab4e8..56d53268b82c 100644
--- a/drivers/staging/android/ion/ion_system_heap.c
+++ b/drivers/staging/android/ion/ion_system_heap.c
@@ -30,7 +30,7 @@ static int order_to_index(unsigned int order)
 	for (i = 0; i < NUM_ORDERS; i++)
 		if (order == orders[i])
 			return i;
-	BUG();
+
 	return -1;
 }
 
@@ -48,8 +48,13 @@ static struct page *alloc_buffer_page(struct ion_system_heap *heap,
 				      struct ion_buffer *buffer,
 				      unsigned long order)
 {
-	struct ion_page_pool *pool = heap->pools[order_to_index(order)];
+	struct ion_page_pool *pool;
+	int index = order_to_index(order);
 
+	if (index < 0)
+		return NULL;
+
+	pool = heap->pools[index];
 	return ion_page_pool_alloc(pool);
 }
 
@@ -58,6 +63,7 @@ static void free_buffer_page(struct ion_system_heap *heap,
 {
 	struct ion_page_pool *pool;
 	unsigned int order = compound_order(page);
+	int index;
 
 	/* go to system */
 	if (buffer->private_flags & ION_PRIV_FLAG_SHRINKER_FREE) {
@@ -65,8 +71,11 @@ static void free_buffer_page(struct ion_system_heap *heap,
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
