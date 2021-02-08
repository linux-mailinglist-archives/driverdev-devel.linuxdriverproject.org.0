Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FDB3132E6
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 14:06:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9921C85DF5;
	Mon,  8 Feb 2021 13:06:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iLbxHv7Lr_0J; Mon,  8 Feb 2021 13:06:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8783985C86;
	Mon,  8 Feb 2021 13:06:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E3D91BF39C
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 13:06:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 74D8585C9D
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 13:06:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hwm9CQLyvjLm for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 13:06:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com
 [209.85.216.54])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D1CF685C8F
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 13:06:20 +0000 (UTC)
Received: by mail-pj1-f54.google.com with SMTP id gx20so8770350pjb.1
 for <devel@driverdev.osuosl.org>; Mon, 08 Feb 2021 05:06:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=tDkrlYtZmuyvnaWiBGMywioTd48GfDMumoWRGFyu84w=;
 b=fNMPZeLvIAAx2Vpkoh6yYR/HAKpuK7SNhC9dioPe4VUOlo3LCAHkMVVBhjW2PWSr6L
 PzunAGEo14xhBo9lPscPVJ89N+RB0G5wVJbfeMEY97nBUX1ASsEfZr61P45NKuU1eS1x
 bOAV96ApYE7OJ+0GP07dId7IBI/5YoVJIzXt0vDsHDYvL8d6PQAUzj0AKBcXSt1WXqez
 23ctQiCzpnHysZnwuvl4GWOFZXJxhfIbONgOP0/7lPRcywok8HXFIFJyULIbIxnD6/7z
 +n4O45k8Y4zCdQ3W29QzcVAxb8D60shaowZ6tGffr0YWql2eUdg9+vByam3R9DlpzUpV
 41ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=tDkrlYtZmuyvnaWiBGMywioTd48GfDMumoWRGFyu84w=;
 b=MAbJc/6Uu1CnrzJYr4Qyp5Ca2HeMP8zEnV3nHuFdrZEPO0ypan3dVafsJ9hHqGI8JO
 a4CDHUechYRlZ6mBEwjgv7W4H07hfJOl1RrOo+E0Gfm3Q8MLmVq1xJwN+9ru6VbOzplF
 4zV1NLaJjzj/5rf2kBsl+w9Ksoe4zWzbko0kRVdTdCDygJUL4veuXGBITJ8ER3Hra7rQ
 BA3lo/gBWG9rObPbkHW/RcXxN7wJCvs+XtPq3u6F37/o1yhTxfxOZHLRdGc66gOnS6HA
 5gr6/yS6ram/VwXq1Y1lNp+8QKiXriXSaOF1WxcIDrF1w8QOcGY3hNmjXD3b6e+gxs6C
 9plQ==
X-Gm-Message-State: AOAM533XpbwBQc+p5j/582Ttr8CMY6WcQapB0xZ84wWBkYzzhgougsFM
 VUk8ChhXfulW8I9MVREQ3kA=
X-Google-Smtp-Source: ABdhPJx9g2+NJpvVe8zyDIhi2SByihhU6LUFZzQVuPblT4cxP6g4d9EzlC5jn1FdaTCVHoAiKZf0kA==
X-Received: by 2002:a17:902:eb53:b029:e1:2b0f:6a88 with SMTP id
 i19-20020a170902eb53b02900e12b0f6a88mr16584512pli.36.1612789580393; 
 Mon, 08 Feb 2021 05:06:20 -0800 (PST)
Received: from gmail.com ([2405:201:5c0a:f013:cb90:bcaf:3a99:cafe])
 by smtp.gmail.com with ESMTPSA id s21sm18413055pga.12.2021.02.08.05.06.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Feb 2021 05:06:19 -0800 (PST)
Date: Mon, 8 Feb 2021 18:36:14 +0530
From: Mukul Mehar <mukulmehar02@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH]: checkpatch: Fixed styling issue
Message-ID: <20210208130614.GA7749@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="uAKRQypu60I7Lcqm"
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org, christian.gromm@microchip.com,
 linux-kernel@vger.kernel.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--uAKRQypu60I7Lcqm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


--uAKRQypu60I7Lcqm
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="first_patch.patch"

From 29bcaf0066003983da29b1e026b985c0727b091a Mon Sep 17 00:00:00 2001
From: Mukul Mehar <mukulmehar02@gmail.com>
Date: Mon, 8 Feb 2021 01:03:06 +0530
Subject: [PATCH] Drivers: staging: most: sound: Fixed style issue.
Signed-off-by: Mukul Mehar <mukulmehar02@gmail.com>


This patch fixes a warning, of the line ending with a '(',
generated by checkpatch.pl.
This is my first patch.
---
 drivers/staging/most/sound/sound.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 3a1a59058042..4dd1bf95d1ce 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -228,12 +228,12 @@ static int playback_thread(void *data)
 		struct mbo *mbo = NULL;
 		bool period_elapsed = false;
 
-		wait_event_interruptible(
-			channel->playback_waitq,
-			kthread_should_stop() ||
-			(channel->is_stream_running &&
-			 (mbo = most_get_mbo(channel->iface, channel->id,
-					     &comp))));
+		wait_event_interruptible(channel->playback_waitq,
+					 kthread_should_stop() ||
+					 (channel->is_stream_running &&
+					 (mbo = most_get_mbo(channel->iface,
+					 channel->id,
+					 &comp))));
 		if (!mbo)
 			continue;
 
-- 
2.25.1


--uAKRQypu60I7Lcqm
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--uAKRQypu60I7Lcqm--
