Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BF9272028
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0E4678686B;
	Mon, 21 Sep 2020 10:21:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UTGXK1SXVuIZ; Mon, 21 Sep 2020 10:21:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 796A98683A;
	Mon, 21 Sep 2020 10:21:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D61301BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CE52C86818
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wJcBPQ6ujeVU for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:20:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 286508683F
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:20:55 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id q9so11566785wmj.2
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=W9l+Ys/sZM3d6xhrHezcVkS5bzDQH0s3RIYh871x9x4=;
 b=iqAWoqv5mek5bGr8V+7R0brhUWGzYzXqVnoTLGANdKVfzIASu5Ltfsvs/4QvSr1bUj
 W13DByuHiY/QO33bU9WbKnRQIveOUq9DnzlbCwj/k9Wb0sXc6xN/r7a24sY5Mr5fmlW9
 fehkIyJ/btG4MOLjcvxxxBmQsEuU8/+Q77ItYkW1vYAZuYW8Hgcj1G7tbGddUM6yjBoc
 2f5+DJ7tggv8b7IlDjP2SRf7gJRqMLVtiFedDbDt3ktarlkUN64pGtcv0lmwGrAQQM74
 73MCe6ygzcqb+xnEfU1jGZgwFmrKtVHDR4cuOOXIN60VVQH6n14jNbvOSWLyWMYFWQxx
 m06A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=W9l+Ys/sZM3d6xhrHezcVkS5bzDQH0s3RIYh871x9x4=;
 b=KPxqovHzpLrWFzcv7un5W1sdxqjbkiy1PP2/YMhaw2nDu1h/jDAES5BNzd8tu8ov2+
 ZP9A1pbMXO9UFsEggUIcQi8FeKBx7euAmhzPVrlGQEpnKsYxaorHhayosjRRiCPtexwT
 i/iXbErJF9Ykh3KG5lMGO+1uspXPm2n2WQ4FiyQTOy6VHyNC7fGShfZsPJN+XR7P4VzC
 3tPi16I9d8++LjM1i+ZpiDv+2WqxdfTUk2pfmykhKxnaqx3tMNxv8QKu7nVFTJ6mJBiv
 6xRFgF6E/tteYp/Bs9bGVTyXXYTjrVbR7vLB6McKP4i4dbV2mK3Qp231EA31Z7TdNcdI
 r1uA==
X-Gm-Message-State: AOAM531WDV8SLnrtBz0okVpUdJYw8VlIKRYcQVte+0XhSwFQ5qj+HKn1
 B9vbZPC185npS1PMupRu/lS9eQ==
X-Google-Smtp-Source: ABdhPJx+Jio63BI97Ba3xgqm05G+Ycj9Xis82lW+zvFdcZtzfep2WU/z7PUICZIkSF0z6EKAwYAVtw==
X-Received: by 2002:a1c:6187:: with SMTP id v129mr29088035wmb.35.1600683653663; 
 Mon, 21 Sep 2020 03:20:53 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.20.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:20:53 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 22/49] staging: media: zoran: Change
 zoran_v4l_set_format parameter from zoran_fh to zoran
Date: Mon, 21 Sep 2020 10:19:57 +0000
Message-Id: <1600683624-5863-23-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
References: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
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
Cc: devel@driverdev.osuosl.org, Corentin Labbe <clabbe@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

We need to get rid of zoran_fh, so let's change function arguments.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 9d39e98c9af1..078575334b5d 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -401,11 +401,9 @@ static void jpg_fbuffer_free(struct zoran_fh *fh)
 /*
  *   V4L Buffer grabbing
  */
-
-static int zoran_v4l_set_format(struct zoran_fh *fh, int width, int height,
+static int zoran_v4l_set_format(struct zoran *zr, int width, int height,
 				const struct zoran_format *format)
 {
-	struct zoran *zr = fh->zr;
 	int bpp;
 
 	/* Check size and format of the grab wanted */
@@ -1665,7 +1663,7 @@ static int zoran_s_fmt_vid_cap(struct file *file, void *__fh, struct v4l2_format
 
 	map_mode_raw(fh);
 
-	res = zoran_v4l_set_format(fh, fmt->fmt.pix.width, fmt->fmt.pix.height, &zoran_formats[i]);
+	res = zoran_v4l_set_format(zr, fmt->fmt.pix.width, fmt->fmt.pix.height, &zoran_formats[i]);
 	if (res)
 		return res;
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
