Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B3F2790E3
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:40:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C36E486375;
	Fri, 25 Sep 2020 18:40:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id grjCb10LfanW; Fri, 25 Sep 2020 18:39:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 63D868610F;
	Fri, 25 Sep 2020 18:39:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 00D4D1BF9B9
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:39:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EE7F52E165
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:39:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3xcF8Rl5Q5LN for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:39:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 63DA32E176
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:39:28 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id f18so4011273pfa.10
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bWoBtuj1a3OWnukIH+6aFRxvQnbnVbFdKWkrBtcBHUs=;
 b=JtZSThmcnDELzXKqu6dB8Yz51iMzscfQM8Kcdqbzs33Xwssi3YI7oR3KmY8MpVfgj9
 J0cTBM7SAAIAtSuoJdpW/6VhztVMVo//l3NwOzSYIkd5kkclA8g176Gf2ceZYZNKwTzm
 wmQeVFvOCLadZ0rIjhKH0LarQXZEEwFbrmMIyvnr1lN7Dznki1qPC+dXdskZhIyeHndH
 GBSn241rkrBFiYlVwYqdX00Wunmd6J+aGCfV2v4QgDG61y1zTks9Aps1qJiyFxidfhWq
 6WTxSTrhn/sBLDjV9CjEm6axbEWTphu2ObU7eJ365lvgLtSxI0EOxlKkQQO0Gx+mcQGT
 S8DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bWoBtuj1a3OWnukIH+6aFRxvQnbnVbFdKWkrBtcBHUs=;
 b=g1zknQXtKSvlXTYesXUvltkADdIhwnrb2hqzgTpkvmr7BbR+ELoSwDqJeFl//P/rE7
 PZU3RwAjw/MwyoLubEV0GXpK6cSWEY7f2n/3RTPnH9r2fNI52Av46KgFbe30rL+WkihT
 jYxdIE6Ixqcs54JrWJUaOtxYJ25GgQkYuQw/93nqXU7k5ILMCXfNYoS4qn6jdXJdUSQ1
 pFIlTQCRCZ8P8tKHyWl4BI9GCURslZSG+TFG+8rdwNi5NvJESCfw4p8aL0J3UB8JnQDu
 Kh/17kIUeJJiUd7pEgguDJhQ4eKhjcAA77r5DBQM5WZqPU967ylyIKDlCE7Akz9MuDO4
 ygfw==
X-Gm-Message-State: AOAM5315UukNQGX/b7HSE30YpoIN3p+vYL+o1oqdIXjLzd1RiB0Y5Gwb
 oskhqaCIZ1LlsBqaPniEwVw6FCnkgWC7iw==
X-Google-Smtp-Source: ABdhPJyN302LQLPpJTJCVZY6pg5hfwvc06wPwY4BdZrLWxUbaMx3hxN//HP95gPxpA5WjK4UeWLYew==
X-Received: by 2002:a63:4703:: with SMTP id u3mr249392pga.322.1601058813796;
 Fri, 25 Sep 2020 11:33:33 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.33.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:33:33 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 23/47] staging: media: zoran: Use DMA coherent for
 stat_com
Date: Fri, 25 Sep 2020 18:30:33 +0000
Message-Id: <1601058657-14042-24-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
References: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
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

Instead of using a fragile virt_to_bus, let's use proper DMA coherent
for the stat_com entry.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran.h        |  2 ++
 drivers/staging/media/zoran/zoran_card.c   | 22 +++++++++++++++-------
 drivers/staging/media/zoran/zoran_device.c |  3 +--
 3 files changed, 18 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index aa2a8f688a01..8f3faa4eb60f 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -351,6 +351,8 @@ struct zoran {
 	unsigned long frame_num;
 
 	wait_queue_head_t test_q;
+
+	dma_addr_t p_sc;
 };
 
 static inline struct zoran *to_zoran(struct v4l2_device *v4l2_dev)
diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 5919803a6a5e..9fe2bc2b036a 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -936,11 +936,17 @@ static int zr36057_init(struct zoran *zr)
 	zoran_open_init_params(zr);
 
 	/* allocate memory *before* doing anything to the hardware in case allocation fails */
-	zr->stat_com = kzalloc(BUZ_NUM_STAT_COM * 4, GFP_KERNEL);
 	zr->video_dev = video_device_alloc();
-	if (!zr->stat_com || !zr->video_dev) {
+	if (!zr->video_dev) {
 		err = -ENOMEM;
-		goto exit_free;
+		goto exit;
+	}
+	zr->stat_com = dma_alloc_coherent(&zr->pci_dev->dev,
+					  BUZ_NUM_STAT_COM * sizeof(u32),
+					  &zr->p_sc, GFP_KERNEL);
+	if (!zr->stat_com) {
+		err = -ENOMEM;
+		goto exit_video;
 	}
 	for (j = 0; j < BUZ_NUM_STAT_COM; j++)
 		zr->stat_com[j] = cpu_to_le32(1); /* mark as unavailable to zr36057 */
@@ -958,7 +964,7 @@ static int zr36057_init(struct zoran *zr)
 	zr->video_dev->vfl_dir = VFL_DIR_M2M;
 	err = video_register_device(zr->video_dev, VFL_TYPE_VIDEO, video_nr[zr->id]);
 	if (err < 0)
-		goto exit_free;
+		goto exit_statcom;
 	video_set_drvdata(zr->video_dev, zr);
 
 	zoran_init_hardware(zr);
@@ -973,9 +979,11 @@ static int zr36057_init(struct zoran *zr)
 	zr->initialized = 1;
 	return 0;
 
-exit_free:
-	kfree(zr->stat_com);
+exit_statcom:
+	dma_free_coherent(&zr->pci_dev->dev, BUZ_NUM_STAT_COM * sizeof(u32), zr->stat_com, zr->p_sc);
+exit_video:
 	kfree(zr->video_dev);
+exit:
 	return err;
 }
 
@@ -1009,7 +1017,7 @@ static void zoran_remove(struct pci_dev *pdev)
 	btwrite(0, ZR36057_SPGPPCR);
 	free_irq(zr->pci_dev->irq, zr);
 	/* unmap and free memory */
-	kfree(zr->stat_com);
+	dma_free_coherent(&zr->pci_dev->dev, BUZ_NUM_STAT_COM * sizeof(u32), zr->stat_com, zr->p_sc);
 	iounmap(zr->zr36057_mem);
 	pci_disable_device(zr->pci_dev);
 	video_unregister_device(zr->video_dev);
diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 627ebda33cc8..0ecb044f8e8f 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -579,8 +579,7 @@ static void zr36057_set_jpg(struct zoran *zr, enum zoran_codec_mode mode)
 	//btor(ZR36057_VFESPFR_VCLKPol, ZR36057_VFESPFR);
 
 	/* code base address */
-	reg = virt_to_bus(zr->stat_com);
-	btwrite(reg, ZR36057_JCBA);
+	btwrite(zr->p_sc, ZR36057_JCBA);
 
 	/* FIFO threshold (FIFO is 160. double words) */
 	/* NOTE: decimal values here */
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
