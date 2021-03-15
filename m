Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7926D33B2D5
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Mar 2021 13:34:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE3E74BE7B;
	Mon, 15 Mar 2021 12:34:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jDl2iSjSns9p; Mon, 15 Mar 2021 12:34:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DEC04C6C9;
	Mon, 15 Mar 2021 12:34:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CAAAD1BF3F9
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 12:34:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B7D73430ED
 for <devel@linuxdriverproject.org>; Mon, 15 Mar 2021 12:34:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gDzwEHwiEWM7 for <devel@linuxdriverproject.org>;
 Mon, 15 Mar 2021 12:34:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com
 [IPv6:2a00:1450:4864:20::62b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 06D18430E9
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 12:34:11 +0000 (UTC)
Received: by mail-ej1-x62b.google.com with SMTP id mm21so65806534ejb.12
 for <devel@driverdev.osuosl.org>; Mon, 15 Mar 2021 05:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6fzzF2nTd+REl5qE5E9llLopvCzR8WvhV0GzxYvbKiQ=;
 b=hoyWYL6Ua5bHjZ5fFiNjWiTwgVHOeBMTl+C5u13Hz9ANPNeqiQqB5bdkXQOvPxa4JC
 TXZrjnLLJzAUkFsn3tNWaX8h3rYBk90pIGTe4hmFG7FsbEsYNyD8330Qq0UeAvATAY2r
 OAS+nnMyIWc8xYtIds8GqZY6O2L+O+c43FTIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6fzzF2nTd+REl5qE5E9llLopvCzR8WvhV0GzxYvbKiQ=;
 b=AAAbw2mPckrlvooXR1W2a0KBErAkP+K5ECUFUQEGQH1xX29BNRYfY8ekENseF4hszY
 heaBWBiolSfhdycix7kVk6kBodDYUAB1o1hgnWYLregM+yy/MOqQUhBAUYiMetc2w0dY
 LC+9BDFbKN4bh2je1kOuAorn3uGOSMRl9/IqHWEqPDErB+KHcDWhi2NHqS1q+gjXbsak
 xdVpzKJsYbGsv8ZIPThSWS5bHSuZcrXDT5mbC+0dIT3IY8rUGoNygm/mZWcweY4s2FKg
 8alBU/SKP/P1kZ15j4zB0RO++spT0rdk9ionRoL8XKbDfptAZ1asDPe9sUHrKgj1PhrO
 sHVg==
X-Gm-Message-State: AOAM532kFSnQ3CUtP7m0jl7/SmcgRtAuNjQXMr75fX4Qz3nlPN8CoURi
 T04jwIyjTQH/VoY88KwjJA506A==
X-Google-Smtp-Source: ABdhPJyOPSGp9sA5eXQVAxbFL4UxF/O8joRa0JjAWd6X3k2uT1JpqKrHlwRtbH8Vpz2mWPC4OuSQOg==
X-Received: by 2002:a17:906:b297:: with SMTP id
 q23mr23580704ejz.315.1615811650164; 
 Mon, 15 Mar 2021 05:34:10 -0700 (PDT)
Received: from alco.lan ([80.71.134.83])
 by smtp.gmail.com with ESMTPSA id p3sm7155128ejd.7.2021.03.15.05.34.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Mar 2021 05:34:09 -0700 (PDT)
From: Ricardo Ribalda <ribalda@chromium.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>,
 Bingbu Cao <bingbu.cao@intel.com>, Tianshu Qiu <tian.shu.qiu@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arnd Bergmann <arnd@arndb.de>, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] media: staging/intel-ipu3: Fix set_fmt error handling
Date: Mon, 15 Mar 2021 13:34:06 +0100
Message-Id: <20210315123406.1523607-2-ribalda@chromium.org>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
In-Reply-To: <20210315123406.1523607-1-ribalda@chromium.org>
References: <20210315123406.1523607-1-ribalda@chromium.org>
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
Cc: stable@vger.kernel.org, Ricardo Ribalda <ribalda@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

If there in an error during a set_fmt, do not overwrite the previous
sizes with the invalid config.

[   38.662975] ipu3-imgu 0000:00:05.0: swiotlb buffer is full (sz: 4096 bytes)
[   38.662980] DMA: Out of SW-IOMMU space for 4096 bytes at device 0000:00:05.0
[   38.663010] general protection fault: 0000 [#1] PREEMPT SMP

Cc: stable@vger.kernel.org
Fixes: 6d5f26f2e045 ("media: staging/intel-ipu3-v4l: reduce kernel stack usage")
Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/staging/media/ipu3/ipu3-v4l2.c | 25 ++++++++++++++-----------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3-v4l2.c b/drivers/staging/media/ipu3/ipu3-v4l2.c
index 35a74d99322f..6d9c49b39531 100644
--- a/drivers/staging/media/ipu3/ipu3-v4l2.c
+++ b/drivers/staging/media/ipu3/ipu3-v4l2.c
@@ -686,6 +686,7 @@ static int imgu_fmt(struct imgu_device *imgu, unsigned int pipe, int node,
 
 	dev_dbg(dev, "IPU3 pipe %u pipe_id = %u", pipe, css_pipe->pipe_id);
 
+	css_q = imgu_node_to_queue(node);
 	for (i = 0; i < IPU3_CSS_QUEUES; i++) {
 		unsigned int inode = imgu_map_node(imgu, i);
 
@@ -700,6 +701,11 @@ static int imgu_fmt(struct imgu_device *imgu, unsigned int pipe, int node,
 			continue;
 		}
 
+		if (i == css_q) {
+			fmts[i] = &f->fmt.pix_mp;
+			continue;
+		}
+
 		if (try) {
 			fmts[i] = kmemdup(&imgu_pipe->nodes[inode].vdev_fmt.fmt.pix_mp,
 					  sizeof(struct v4l2_pix_format_mplane),
@@ -728,16 +734,10 @@ static int imgu_fmt(struct imgu_device *imgu, unsigned int pipe, int node,
 		rects[IPU3_CSS_RECT_GDC]->height = pad_fmt.height;
 	}
 
-	/*
-	 * imgu doesn't set the node to the value given by user
-	 * before we return success from this function, so set it here.
-	 */
-	css_q = imgu_node_to_queue(node);
 	if (!fmts[css_q]) {
 		ret = -EINVAL;
 		goto out;
 	}
-	*fmts[css_q] = f->fmt.pix_mp;
 
 	if (try)
 		ret = imgu_css_fmt_try(&imgu->css, fmts, rects, pipe);
@@ -748,15 +748,18 @@ static int imgu_fmt(struct imgu_device *imgu, unsigned int pipe, int node,
 	if (ret < 0)
 		goto out;
 
-	if (try)
-		f->fmt.pix_mp = *fmts[css_q];
-	else
-		f->fmt = imgu_pipe->nodes[node].vdev_fmt.fmt;
+	/*
+	 * imgu doesn't set the node to the value given by user
+	 * before we return success from this function, so set it here.
+	 */
+	if (!try)
+		imgu_pipe->nodes[node].vdev_fmt.fmt.pix_mp = f->fmt.pix_mp;
 
 out:
 	if (try) {
 		for (i = 0; i < IPU3_CSS_QUEUES; i++)
-			kfree(fmts[i]);
+			if (i != css_q)
+				kfree(fmts[i]);
 	}
 
 	return ret;
-- 
2.31.0.rc2.261.g7f71774620-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
