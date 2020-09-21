Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F77272027
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 95631871E9;
	Mon, 21 Sep 2020 10:21:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tquJLj0Z0-Z0; Mon, 21 Sep 2020 10:21:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 46481871DB;
	Mon, 21 Sep 2020 10:21:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4E6141BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 493A885F9C
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pAcw7pamVHRH for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:20:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F137185FAC
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:20:56 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id z9so12016728wmk.1
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AP/XqtDTUKt4yJ0ASxePcyGSZvxUdYkBiARpAfmeNO4=;
 b=0gkErDheeGjztlrRvZ/Es3bFNzrJNLgywBc/bMxB79jS5SuFqExN763HDwrpjfawAW
 /tK97cTawr7pTm7w6amKyxAyBW7VaPFzdor19W6x7hIN7b/K0betYlvkXPGjBqfw0cj8
 XASuvPHYNaxO/uitvF6UIEpyDMnCKngyZo383TckofuE53Nfmag/XAyg1uDVBJGGBGjt
 0yWCgamzV0yYSZ79iZLGgu39s0Bzfc/pP1B1mKNWVKQOGME2TDxL0VghAdxOrgM7cvAW
 2nw7djGo6Z7WfonsQBvYu4V5jnXw3UpadepGhNLHx2xR8hTzGjgUzKaNXGUH4/9XtCOo
 yIQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AP/XqtDTUKt4yJ0ASxePcyGSZvxUdYkBiARpAfmeNO4=;
 b=jHMfor7HbFE9A7SBwckCmz75ZtcDWok/JtSh+3ryhRgaVkt3zMH6n1rnxy3OH/rpOL
 mxrnuuHwnCfdFoh5oge2Aw0XbGA8mEo7cXcdSeR0fgIw3CJBISACJGQi/+j4SdTUFYFx
 3SYg2a5EDUDNEi6An4s7aH1YlOfrf0B0kxD/yyx0hwOaI9oxAJUte5KXiCm36tLsAUWp
 ej00oMfOo0jPQ+PnvqoqsCfrisHWBJHlTIurLLBczmafMGJ7WOx7n7p+dGcEGqZmi85t
 AGOAN2yt/2pIkHiqeFKnSWG1obyU11CLsciHGWFzbz2Mk/ydxnIBPS/TA0UN4R6CcPo/
 8Y2w==
X-Gm-Message-State: AOAM530yxTeNE3/Qfr14K3XbYvTFoAzDHu4h0e1KxzMyOGJbpJuI8WB0
 6Mqw1CHC+Iz5UxgGQ7GsGsB7kw==
X-Google-Smtp-Source: ABdhPJxlYgiJf9kz7Mv2tj9VbWR0BjfFaLonl0Gw6TmnDDV//GmMsjbTozmNdlfGxUXxY32DmOQYdA==
X-Received: by 2002:a7b:c103:: with SMTP id w3mr28044636wmi.24.1600683655521; 
 Mon, 21 Sep 2020 03:20:55 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.20.54
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:20:54 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 24/49] staging: media: zoran: Use DMA coherent for
 stat_com
Date: Mon, 21 Sep 2020 10:19:59 +0000
Message-Id: <1600683624-5863-25-git-send-email-clabbe@baylibre.com>
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

Instead of using a fragile virt_to_bus, let's use proper DMA coherent
for the stat_com entry.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran.h        |  2 ++
 drivers/staging/media/zoran/zoran_card.c   | 20 +++++++++++++-------
 drivers/staging/media/zoran/zoran_device.c |  3 +--
 3 files changed, 16 insertions(+), 9 deletions(-)

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
index 3a7895be3341..a8d23bf126c3 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -931,11 +931,15 @@ static int zr36057_init(struct zoran *zr)
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
+	zr->stat_com = dma_alloc_coherent(&zr->pci_dev->dev, BUZ_NUM_STAT_COM * sizeof(u32), &zr->p_sc, GFP_KERNEL);
+	if (!zr->stat_com) {
+		err = -ENOMEM;
+		goto exit_video;
 	}
 	for (j = 0; j < BUZ_NUM_STAT_COM; j++)
 		zr->stat_com[j] = cpu_to_le32(1); /* mark as unavailable to zr36057 */
@@ -953,7 +957,7 @@ static int zr36057_init(struct zoran *zr)
 	zr->video_dev->vfl_dir = VFL_DIR_M2M;
 	err = video_register_device(zr->video_dev, VFL_TYPE_VIDEO, video_nr[zr->id]);
 	if (err < 0)
-		goto exit_free;
+		goto exit_statcom;
 	video_set_drvdata(zr->video_dev, zr);
 
 	zoran_init_hardware(zr);
@@ -968,9 +972,11 @@ static int zr36057_init(struct zoran *zr)
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
 
@@ -1004,7 +1010,7 @@ static void zoran_remove(struct pci_dev *pdev)
 	btwrite(0, ZR36057_SPGPPCR);
 	free_irq(zr->pci_dev->irq, zr);
 	/* unmap and free memory */
-	kfree(zr->stat_com);
+	dma_free_coherent(&zr->pci_dev->dev, BUZ_NUM_STAT_COM * sizeof(u32), zr->stat_com, zr->p_sc);
 	iounmap(zr->zr36057_mem);
 	pci_disable_device(zr->pci_dev);
 	video_unregister_device(zr->video_dev);
diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index e3104b534471..3a353130afb9 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -576,8 +576,7 @@ static void zr36057_set_jpg(struct zoran *zr, enum zoran_codec_mode mode)
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
