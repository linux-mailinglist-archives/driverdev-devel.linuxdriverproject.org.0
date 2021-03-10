Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D99CE333235
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Mar 2021 01:17:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 24EBC4305C;
	Wed, 10 Mar 2021 00:17:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SBBcdwvtwqSx; Wed, 10 Mar 2021 00:17:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F96E42F3A;
	Wed, 10 Mar 2021 00:17:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C86381BF2C2
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 00:16:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C4929842AB
 for <devel@linuxdriverproject.org>; Wed, 10 Mar 2021 00:16:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=chromium.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MvVKClN3cF4A for <devel@linuxdriverproject.org>;
 Wed, 10 Mar 2021 00:16:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com
 [IPv6:2a00:1450:4864:20::631])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D936C842A6
 for <devel@driverdev.osuosl.org>; Wed, 10 Mar 2021 00:16:49 +0000 (UTC)
Received: by mail-ej1-x631.google.com with SMTP id hs11so33306736ejc.1
 for <devel@driverdev.osuosl.org>; Tue, 09 Mar 2021 16:16:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/Nutp93mDHb5cEjtktNc7hYpoY2Gb6DtS9YFtOrP0KY=;
 b=At/Kbc5OmUHxC0v9+TomGng358WQaPZWCCQ7AdMFWYZEJBf+ixxuUmvy35hCUIby+u
 695IqXsuYyK8aBBJYncBfDOl4kdA+fj6wGJ1cUYHjG2OVuLVgD82cMZ6UPK7/feZU7S0
 bW1E+hqmLJPX62zZ6mLk6jlMe+8idlwl3VInU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/Nutp93mDHb5cEjtktNc7hYpoY2Gb6DtS9YFtOrP0KY=;
 b=TFXAyIG4a9xsimpfMI1iUnv10W1Tn0qTPm69zyckW0qORdBXxp9cr4rWvu6fSBk+BE
 3mF1dqZz1k7otB15NYSpKcAtAysTvOTyXSqd1To1Jrw1OBax2qidu54fpQqjP5CuudLQ
 xB/c5D7JrfCAm4RxXhQPO4AVIMkpYOWZq0jo+/T+2EQvde+SegVXC1To8diO9lX41lzx
 blyLFktyMjEbqWtyz4KZaFkQ2HfuOkcWdbz/TpZ9xut/HMOlv0hLRYQou3IR06PWZG0L
 gOxy9lXvYHBroT+0tQIk9x3DdnhUE/0SmM36nhI+YUlPbdZebI/XNLh2DXQNOhLS4ijc
 e74w==
X-Gm-Message-State: AOAM531BexFBs0NXLYdwBKBAz9Q+COKiO/sTlWrVRgCxxg0RydLfFhGV
 gZOUqpQbcMCozGtE7z8LlNHBKQ==
X-Google-Smtp-Source: ABdhPJykuK1NwgMON/87WWXZOt+SX7jB3tSF1UdYKODRl1jNMCe9zB5Wjjaj6n2s6XeGl/hsUchbHg==
X-Received: by 2002:a17:907:7651:: with SMTP id
 kj17mr648621ejc.127.1615335408007; 
 Tue, 09 Mar 2021 16:16:48 -0800 (PST)
Received: from alco.lan ([80.71.134.83])
 by smtp.gmail.com with ESMTPSA id o1sm9991202eds.26.2021.03.09.16.16.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Mar 2021 16:16:47 -0800 (PST)
From: Ricardo Ribalda <ribalda@chromium.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, Arnd Bergmann <arnd@arndb.de>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] media: staging/intel-ipu3: Fix set_fmt error handling
Date: Wed, 10 Mar 2021 01:16:46 +0100
Message-Id: <20210310001646.1026557-1-ribalda@chromium.org>
X-Mailer: git-send-email 2.30.1.766.gb4fecdf3b7-goog
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

Without this patch, v4l2-compliance ends up allocating 4GiB of RAM and
causing the following OOPs

[   38.662975] ipu3-imgu 0000:00:05.0: swiotlb buffer is full (sz: 4096 bytes)
[   38.662980] DMA: Out of SW-IOMMU space for 4096 bytes at device 0000:00:05.0
[   38.663010] general protection fault: 0000 [#1] PREEMPT SMP

Cc: stable@vger.kernel.org
Fixes: 6d5f26f2e045 ("media: staging/intel-ipu3-v4l: reduce kernel stack usage")
Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
---
 drivers/staging/media/ipu3/ipu3-v4l2.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/media/ipu3/ipu3-v4l2.c b/drivers/staging/media/ipu3/ipu3-v4l2.c
index 60aa02eb7d2a..e8944e489c56 100644
--- a/drivers/staging/media/ipu3/ipu3-v4l2.c
+++ b/drivers/staging/media/ipu3/ipu3-v4l2.c
@@ -669,6 +669,7 @@ static int imgu_fmt(struct imgu_device *imgu, unsigned int pipe, int node,
 	struct imgu_css_pipe *css_pipe = &imgu->css.pipes[pipe];
 	struct imgu_media_pipe *imgu_pipe = &imgu->imgu_pipe[pipe];
 	struct imgu_v4l2_subdev *imgu_sd = &imgu_pipe->imgu_sd;
+	struct v4l2_pix_format_mplane fmt_backup;
 
 	dev_dbg(dev, "set fmt node [%u][%u](try = %u)", pipe, node, try);
 
@@ -734,6 +735,7 @@ static int imgu_fmt(struct imgu_device *imgu, unsigned int pipe, int node,
 		ret = -EINVAL;
 		goto out;
 	}
+	fmt_backup = *fmts[css_q];
 	*fmts[css_q] = f->fmt.pix_mp;
 
 	if (try)
@@ -741,6 +743,9 @@ static int imgu_fmt(struct imgu_device *imgu, unsigned int pipe, int node,
 	else
 		ret = imgu_css_fmt_set(&imgu->css, fmts, rects, pipe);
 
+	if (try || ret < 0)
+		*fmts[css_q] = fmt_backup;
+
 	/* ret is the binary number in the firmware blob */
 	if (ret < 0)
 		goto out;
-- 
2.30.1.766.gb4fecdf3b7-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
