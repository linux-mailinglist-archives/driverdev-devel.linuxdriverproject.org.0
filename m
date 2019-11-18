Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDF41002A7
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Nov 2019 11:42:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1FE7987009;
	Mon, 18 Nov 2019 10:42:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5FxxhMnhZWKy; Mon, 18 Nov 2019 10:42:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8A98386101;
	Mon, 18 Nov 2019 10:42:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 80B5A1BF392
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 10:42:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7D1178618C
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 10:42:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id piQ90+otV+TB for <devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 10:42:19 +0000 (UTC)
X-Greylist: delayed 00:06:30 by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 797D086101
 for <devel@driverdev.osuosl.org>; Mon, 18 Nov 2019 10:42:19 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id l7so18806424wrp.6
 for <devel@driverdev.osuosl.org>; Mon, 18 Nov 2019 02:42:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zrkZzi6xJZH0ir+v9sQYIFLS7Cjay4SqxxYFpecXTc4=;
 b=HUUjPlDf/7REWOmOIC/TSGb4uoOHNXPFE6noEEwpSESnIUvoPs/No8EZbDpIAmHPq2
 PYW/aO/SMcNUzsmyVKPJDpjFQZgD0rxGnGChrOz/1PkWF4NYSB1awoKnGAiDY0Hz49Yn
 oa/k62j8e1twHYqHm2dARgS0una/N7QVx4E54=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zrkZzi6xJZH0ir+v9sQYIFLS7Cjay4SqxxYFpecXTc4=;
 b=IgaH0lTT60709Wt5z+Wz19yH0oiqt6F4v3VpnCFLkXR6BBccjOt/5gz+miBjddZgBZ
 LJpepFC/HlpLfU2YK6MEtb9dxOtdbBgW8i4QkZFi3AERNDeAL1qDWOi5wg4WHBWYs9zv
 2XLCMLLkPsGPmuF7DiNOMkOsakKXWStUm7ZXoK+hNNE06NYTjvTkqa9WleuhjJFDZKKR
 Egzfz27FAc8Cw3plMcEeAavPd9dGGlQg8LVK+bNe8+j6K+X9lzPL91eG0NGNaLPzdlVP
 MKqVAjJx8b6sWNiIQcPk5BDEmRzsHFe2RKWAoJFjwCzHS9L+5lplN/f7/AcThE8WDCzF
 P8+Q==
X-Gm-Message-State: APjAAAXvaS/QXFq9ko53d4+MC1wV+NA7DCQKcoqjA1tS+rGGlbst+YP6
 CAW/H3t8YGm6/ycLwV2nx5yiRA==
X-Google-Smtp-Source: APXvYqzI/YjzhTbWzi6ciucIdm8C7vWezG/8QWxens/pBTDSA4sreEr++yzgVhnRd33mMZNdnAbvBA==
X-Received: by 2002:a5d:484f:: with SMTP id n15mr11212226wrs.112.1574073348186; 
 Mon, 18 Nov 2019 02:35:48 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id j2sm22749200wrt.61.2019.11.18.02.35.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 02:35:47 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 04/15] staging/android/ion: delete dma_buf->kmap/unmap
 implemenation
Date: Mon, 18 Nov 2019 11:35:25 +0100
Message-Id: <20191118103536.17675-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
References: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There's no callers in-tree anymore.

For merging probably best to stuff this into drm-misc, since that's
where the dma-buf heaps will land too. And the resulting conflict
hopefully ensures that dma-buf heaps wont have a new ->kmap/unmap
implemenation.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Laura Abbott <labbott@redhat.com>
Cc: Sumit Semwal <sumit.semwal@linaro.org>
Cc: devel@driverdev.osuosl.org
Cc: linaro-mm-sig@lists.linaro.org
---
 drivers/staging/android/ion/ion.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/staging/android/ion/ion.c b/drivers/staging/android/ion/ion.c
index e6b1ca141b93..bb4ededc1150 100644
--- a/drivers/staging/android/ion/ion.c
+++ b/drivers/staging/android/ion/ion.c
@@ -274,18 +274,6 @@ static void ion_dma_buf_release(struct dma_buf *dmabuf)
 	_ion_buffer_destroy(buffer);
 }
 
-static void *ion_dma_buf_kmap(struct dma_buf *dmabuf, unsigned long offset)
-{
-	struct ion_buffer *buffer = dmabuf->priv;
-
-	return buffer->vaddr + offset * PAGE_SIZE;
-}
-
-static void ion_dma_buf_kunmap(struct dma_buf *dmabuf, unsigned long offset,
-			       void *ptr)
-{
-}
-
 static int ion_dma_buf_begin_cpu_access(struct dma_buf *dmabuf,
 					enum dma_data_direction direction)
 {
@@ -349,8 +337,6 @@ static const struct dma_buf_ops dma_buf_ops = {
 	.detach = ion_dma_buf_detatch,
 	.begin_cpu_access = ion_dma_buf_begin_cpu_access,
 	.end_cpu_access = ion_dma_buf_end_cpu_access,
-	.map = ion_dma_buf_kmap,
-	.unmap = ion_dma_buf_kunmap,
 };
 
 static int ion_alloc(size_t len, unsigned int heap_id_mask, unsigned int flags)
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
