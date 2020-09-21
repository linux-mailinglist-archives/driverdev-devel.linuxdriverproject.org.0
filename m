Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9180127201E
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:20:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4819785FA2;
	Mon, 21 Sep 2020 10:20:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jS7Aolsl3ESH; Mon, 21 Sep 2020 10:20:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8E9FF85F90;
	Mon, 21 Sep 2020 10:20:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 69D8B1BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6379485DE6
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PGkVStg-0IV1 for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:20:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F073885EC2
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:20:39 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id x14so12095835wrl.12
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:20:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5uhe1308m43PG3J5ondyQyQs1QTAcFPlc6WH9QwCnnE=;
 b=Ss/NN1u/0g/clmuxuiU5Ltl01J4XDcDKnLMhrqklubZqRwix6RqLqpOgi58sG1Odm+
 3w5vrCzcX8bcTofTRpB8lbX+QQk4lmS1o+EnOVp8XlOoQaEEQvQtgsC5XTevym3QqYCU
 TmzGgqBic8FUjLWRh4NSuuQBLxn8xxA3Rkt4oRKKV9p4hsK7R8VUu0a90NjnjTNi+5q5
 RfXCihA+X7UqEtNdaglfcu10zVK94wbfoS2rymBl8zklydPZtwu3dJ+GliWpIWtgzAkK
 mZ/o3y3hU/4Dgwx7DX5H+3YL46wp+nc3TstOtNXAQyh8nzikv8gxGtG49NRdgBch74gs
 ci/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5uhe1308m43PG3J5ondyQyQs1QTAcFPlc6WH9QwCnnE=;
 b=Tc4V4P8nLvWqbm7ik4Zgj2QgqEGaXdsaCogwBVZprqOxSvCyG4Sx6ZjNbkQlnEC5CY
 mWgSAwM/8qdL7c5IVj8NatZg8I1lRzkhr5qAqCyl2FJiQCU8WqNoCrTFeBdb2sPCN9eG
 tFBZcJu7wkhMLa4s8Je2RT4ITdMypWvKtl6biiqhFYgzGCW8HPvTwdtf/JPqKB99Jz2R
 ylGYsPjoj24vC4xX5U4DEjUVjVR2m1RCzpbv0ow4gDsYBni7PrBP05JDYIIrf0SQaeH6
 +KHj9apayjLIutcUMCh/m8u4BxcP/3vBOAZv7gRPZkPgUzYax3InVbCgczp9Gv7unT0N
 bM+A==
X-Gm-Message-State: AOAM532gyOwci201Rt6W23ZomtgxFnxOtJ4XbNVZIhrqArq9/J92P9Fg
 nt9nNiSz5pJ9oDSv11tPlGhOVQ==
X-Google-Smtp-Source: ABdhPJynsNZF2lfqM2QoZBJw1Kg3ObcuY8dl+u8cPTCKUkXOXYa2rSFAA+V/EUk71eoHNffB5ROLDQ==
X-Received: by 2002:adf:e4cc:: with SMTP id v12mr50542076wrm.216.1600683638415; 
 Mon, 21 Sep 2020 03:20:38 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.20.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:20:37 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 06/49] staging: media: zoran: unsplit lines
Date: Mon, 21 Sep 2020 10:19:41 +0000
Message-Id: <1600683624-5863-7-git-send-email-clabbe@baylibre.com>
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

This patch un-split some lines.
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c   | 27 ++++--------
 drivers/staging/media/zoran/zoran_device.c | 49 +++++++---------------
 drivers/staging/media/zoran/zoran_driver.c | 27 ++++--------
 3 files changed, 34 insertions(+), 69 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 960257cd43d6..fcf58d69de31 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -652,8 +652,7 @@ static int zoran_register_i2c(struct zoran *zr)
 {
 	zr->i2c_algo = zoran_i2c_bit_data_template;
 	zr->i2c_algo.data = zr;
-	strscpy(zr->i2c_adapter.name, ZR_DEVNAME(zr),
-		sizeof(zr->i2c_adapter.name));
+	strscpy(zr->i2c_adapter.name, ZR_DEVNAME(zr), sizeof(zr->i2c_adapter.name));
 	i2c_set_adapdata(&zr->i2c_adapter, &zr->v4l2_dev);
 	zr->i2c_adapter.algo_data = &zr->i2c_algo;
 	zr->i2c_adapter.dev.parent = &zr->pci_dev->dev;
@@ -666,8 +665,7 @@ static void zoran_unregister_i2c(struct zoran *zr)
 }
 
 /* Check a zoran_params struct for correctness, insert default params */
-int zoran_check_jpg_settings(struct zoran *zr,
-			     struct zoran_jpg_settings *settings, int try)
+int zoran_check_jpg_settings(struct zoran *zr, struct zoran_jpg_settings *settings, int try)
 {
 	int err = 0, err0 = 0;
 
@@ -866,13 +864,10 @@ void zoran_open_init_params(struct zoran *zr)
 		zr->jpg_settings.odd_even = 0;
 	zr->jpg_settings.jpg_comp.APPn = 0;
 	zr->jpg_settings.jpg_comp.APP_len = 0;	/* No APPn marker */
-	memset(zr->jpg_settings.jpg_comp.APP_data, 0,
-	       sizeof(zr->jpg_settings.jpg_comp.APP_data));
+	memset(zr->jpg_settings.jpg_comp.APP_data, 0, sizeof(zr->jpg_settings.jpg_comp.APP_data));
 	zr->jpg_settings.jpg_comp.COM_len = 0;	/* No COM marker */
-	memset(zr->jpg_settings.jpg_comp.COM_data, 0,
-	       sizeof(zr->jpg_settings.jpg_comp.COM_data));
-	zr->jpg_settings.jpg_comp.jpeg_markers =
-	    V4L2_JPEG_MARKER_DHT | V4L2_JPEG_MARKER_DQT;
+	memset(zr->jpg_settings.jpg_comp.COM_data, 0, sizeof(zr->jpg_settings.jpg_comp.COM_data));
+	zr->jpg_settings.jpg_comp.jpeg_markers = V4L2_JPEG_MARKER_DHT | V4L2_JPEG_MARKER_DQT;
 	i = zoran_check_jpg_settings(zr, &zr->jpg_settings, 0);
 	if (i)
 		dprintk(1, KERN_ERR "%s: %s internal error\n",
@@ -1059,8 +1054,7 @@ void zoran_vdev_release(struct video_device *vdev)
 	kfree(vdev);
 }
 
-static struct videocodec_master *zoran_setup_videocodec(struct zoran *zr,
-							int type)
+static struct videocodec_master *zoran_setup_videocodec(struct zoran *zr, int type)
 {
 	struct videocodec_master *m = NULL;
 
@@ -1214,8 +1208,7 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	 * keep general card information, no settings or anything
 	 */
 	zr->card = zoran_cards[card_num];
-	snprintf(ZR_DEVNAME(zr), sizeof(ZR_DEVNAME(zr)), "%s[%u]",
-		 zr->card.name, zr->id);
+	snprintf(ZR_DEVNAME(zr), sizeof(ZR_DEVNAME(zr)), "%s[%u]", zr->card.name, zr->id);
 
 	zr->zr36057_mem = pci_ioremap_bar(zr->pci_dev, 0);
 	if (!zr->zr36057_mem) {
@@ -1266,14 +1259,12 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto zr_free_irq;
 	}
 
-	zr->decoder = v4l2_i2c_new_subdev(&zr->v4l2_dev, &zr->i2c_adapter,
-					  zr->card.i2c_decoder, 0,
+	zr->decoder = v4l2_i2c_new_subdev(&zr->v4l2_dev, &zr->i2c_adapter, zr->card.i2c_decoder, 0,
 					  zr->card.addrs_decoder);
 
 	if (zr->card.i2c_encoder)
 		zr->encoder = v4l2_i2c_new_subdev(&zr->v4l2_dev, &zr->i2c_adapter,
-						  zr->card.i2c_encoder, 0,
-						  zr->card.addrs_encoder);
+						  zr->card.i2c_encoder, 0, zr->card.addrs_encoder);
 
 	dprintk(2, KERN_INFO "%s: Initializing videocodec bus...\n", ZR_DEVNAME(zr));
 
diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index cbacfa4ea2d0..783d7bce6c80 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -679,8 +679,7 @@ static void zr36057_set_jpg(struct zoran *zr, enum zoran_codec_mode mode)
 
 	/* vertical */
 	btor(ZR36057_VFEVCR_VSPol, ZR36057_VFEVCR);
-	reg = (6 << ZR36057_VSP_VsyncSize) |
-	      (tvn->Ht << ZR36057_VSP_FrmTot);
+	reg = (6 << ZR36057_VSP_VsyncSize) | (tvn->Ht << ZR36057_VSP_FrmTot);
 	btwrite(reg, ZR36057_VSP);
 	reg = ((zr->jpg_settings.img_y + tvn->VStart) << ZR36057_FVAP_NAY) |
 	      (zr->jpg_settings.img_height << ZR36057_FVAP_PAY);
@@ -691,11 +690,9 @@ static void zr36057_set_jpg(struct zoran *zr, enum zoran_codec_mode mode)
 		btor(ZR36057_VFEHCR_HSPol, ZR36057_VFEHCR);
 	else
 		btand(~ZR36057_VFEHCR_HSPol, ZR36057_VFEHCR);
-	reg = ((tvn->HSyncStart) << ZR36057_HSP_HsyncStart) |
-	      (tvn->Wt << ZR36057_HSP_LineTot);
+	reg = ((tvn->HSyncStart) << ZR36057_HSP_HsyncStart) | (tvn->Wt << ZR36057_HSP_LineTot);
 	btwrite(reg, ZR36057_HSP);
-	reg = ((zr->jpg_settings.img_x +
-		tvn->HStart + 4) << ZR36057_FHAP_NAX) |
+	reg = ((zr->jpg_settings.img_x + tvn->HStart + 4) << ZR36057_FHAP_NAX) |
 	      (zr->jpg_settings.img_width << ZR36057_FHAP_PAX);
 	btwrite(reg, ZR36057_FHAP);
 
@@ -887,8 +884,7 @@ void zr36057_enable_jpg(struct zoran *zr, enum zoran_codec_mode mode)
 	cap.y = zr->jpg_settings.img_y;
 	cap.width = zr->jpg_settings.img_width;
 	cap.height = zr->jpg_settings.img_height;
-	cap.decimation =
-	    zr->jpg_settings.HorDcm | (zr->jpg_settings.VerDcm << 8);
+	cap.decimation = zr->jpg_settings.HorDcm | (zr->jpg_settings.VerDcm << 8);
 	cap.quality = zr->jpg_settings.jpg_comp.quality;
 
 	switch (mode) {
@@ -919,18 +915,14 @@ void zr36057_enable_jpg(struct zoran *zr, enum zoran_codec_mode mode)
 				   sizeof(struct jpeg_com_marker), &com);
 
 		/* Setup the JPEG codec */
-		zr->codec->control(zr->codec, CODEC_S_JPEG_TDS_BYTE,
-				   sizeof(int), &field_size);
-		zr->codec->set_video(zr->codec, zr->timing, &cap,
-				     &zr->card.vfe_pol);
+		zr->codec->control(zr->codec, CODEC_S_JPEG_TDS_BYTE, sizeof(int), &field_size);
+		zr->codec->set_video(zr->codec, zr->timing, &cap, &zr->card.vfe_pol);
 		zr->codec->set_mode(zr->codec, CODEC_DO_COMPRESSION);
 
 		/* Setup the VFE */
 		if (zr->vfe) {
-			zr->vfe->control(zr->vfe, CODEC_S_JPEG_TDS_BYTE,
-					 sizeof(int), &field_size);
-			zr->vfe->set_video(zr->vfe, zr->timing, &cap,
-					   &zr->card.vfe_pol);
+			zr->vfe->control(zr->vfe, CODEC_S_JPEG_TDS_BYTE, sizeof(int), &field_size);
+			zr->vfe->set_video(zr->vfe, zr->timing, &cap, &zr->card.vfe_pol);
 			zr->vfe->set_mode(zr->vfe, CODEC_DO_COMPRESSION);
 		}
 
@@ -955,13 +947,11 @@ void zr36057_enable_jpg(struct zoran *zr, enum zoran_codec_mode mode)
 		jpeg_codec_sleep(zr, 0);
 		/* Setup the VFE */
 		if (zr->vfe) {
-			zr->vfe->set_video(zr->vfe, zr->timing, &cap,
-					   &zr->card.vfe_pol);
+			zr->vfe->set_video(zr->vfe, zr->timing, &cap, &zr->card.vfe_pol);
 			zr->vfe->set_mode(zr->vfe, CODEC_DO_EXPANSION);
 		}
 		/* Setup the JPEG codec */
-		zr->codec->set_video(zr->codec, zr->timing, &cap,
-				     &zr->card.vfe_pol);
+		zr->codec->set_video(zr->codec, zr->timing, &cap, &zr->card.vfe_pol);
 		zr->codec->set_mode(zr->codec, CODEC_DO_EXPANSION);
 
 		init_jpeg_queue(zr);
@@ -975,10 +965,8 @@ void zr36057_enable_jpg(struct zoran *zr, enum zoran_codec_mode mode)
 	case BUZ_MODE_IDLE:
 	default:
 		/* shut down processing */
-		btand(~(zr->card.jpeg_int | ZR36057_ICR_JPEGRepIRQ),
-		      ZR36057_ICR);
-		btwrite(zr->card.jpeg_int | ZR36057_ICR_JPEGRepIRQ,
-			ZR36057_ISR);
+		btand(~(zr->card.jpeg_int | ZR36057_ICR_JPEGRepIRQ), ZR36057_ICR);
+		btwrite(zr->card.jpeg_int | ZR36057_ICR_JPEGRepIRQ, ZR36057_ISR);
 		btand(~ZR36057_JMC_Go_en, ZR36057_JMC);	// \Go_en
 
 		msleep(50);
@@ -1008,25 +996,21 @@ void zoran_feed_stat_com(struct zoran *zr)
 
 	int frame, i, max_stat_com;
 
-	max_stat_com =
-	    (zr->jpg_settings.TmpDcm ==
-	     1) ? BUZ_NUM_STAT_COM : (BUZ_NUM_STAT_COM >> 1);
+	max_stat_com = (zr->jpg_settings.TmpDcm == 1) ? BUZ_NUM_STAT_COM : (BUZ_NUM_STAT_COM >> 1);
 
 	while ((zr->jpg_dma_head - zr->jpg_dma_tail) < max_stat_com &&
 	       zr->jpg_dma_head < zr->jpg_que_head) {
 		frame = zr->jpg_pend[zr->jpg_dma_head & BUZ_MASK_FRAME];
 		if (zr->jpg_settings.TmpDcm == 1) {
 			/* fill 1 stat_com entry */
-			i = (zr->jpg_dma_head -
-			     zr->jpg_err_shift) & BUZ_MASK_STAT_COM;
+			i = (zr->jpg_dma_head - zr->jpg_err_shift) & BUZ_MASK_STAT_COM;
 			if (!(zr->stat_com[i] & cpu_to_le32(1)))
 				break;
 			zr->stat_com[i] =
 			    cpu_to_le32(zr->jpg_buffers.buffer[frame].jpg.frag_tab_bus);
 		} else {
 			/* fill 2 stat_com entries */
-			i = ((zr->jpg_dma_head -
-			      zr->jpg_err_shift) & 1) * 2;
+			i = ((zr->jpg_dma_head - zr->jpg_err_shift) & 1) * 2;
 			if (!(zr->stat_com[i] & cpu_to_le32(1)))
 				break;
 			zr->stat_com[i] =
@@ -1453,8 +1437,7 @@ void zoran_init_hardware(struct zoran *zr)
 
 	decoder_call(zr, core, init, 0);
 	decoder_call(zr, video, s_std, zr->norm);
-	decoder_call(zr, video, s_routing,
-		     zr->card.input[zr->input].muxsel, 0, 0);
+	decoder_call(zr, video, s_routing, zr->card.input[zr->input].muxsel, 0, 0);
 
 	encoder_call(zr, core, init, 0);
 	encoder_call(zr, video, s_std_output, zr->norm);
diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index fd4795468069..cd8198183e6a 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -1501,8 +1501,7 @@ static int zoran_enum_fmt(struct zoran *zr, struct v4l2_fmtdesc *fmt, int flag)
 
 	for (num = i = 0; i < NUM_FORMATS; i++) {
 		if (zoran_formats[i].flags & flag && num++ == fmt->index) {
-			strscpy(fmt->description, zoran_formats[i].name,
-				sizeof(fmt->description));
+			strscpy(fmt->description, zoran_formats[i].name, sizeof(fmt->description));
 			/* fmt struct pre-zeroed, so adding '\0' not needed */
 			fmt->pixelformat = zoran_formats[i].fourcc;
 			if (zoran_formats[i].flags & ZORAN_FORMAT_COMPRESSED)
@@ -1540,8 +1539,7 @@ static int zoran_enum_fmt_vid_overlay(struct file *file, void *__fh,
 	return zoran_enum_fmt(zr, f, ZORAN_FORMAT_OVERLAY);
 }
 
-static int zoran_g_fmt_vid_out(struct file *file, void *__fh,
-			       struct v4l2_format *fmt)
+static int zoran_g_fmt_vid_out(struct file *file, void *__fh, struct v4l2_format *fmt)
 {
 	struct zoran_fh *fh = __fh;
 
@@ -1562,8 +1560,7 @@ static int zoran_g_fmt_vid_out(struct file *file, void *__fh,
 	return 0;
 }
 
-static int zoran_g_fmt_vid_cap(struct file *file, void *__fh,
-			       struct v4l2_format *fmt)
+static int zoran_g_fmt_vid_cap(struct file *file, void *__fh, struct v4l2_format *fmt)
 {
 	struct zoran_fh *fh = __fh;
 	struct zoran *zr = fh->zr;
@@ -1728,8 +1725,7 @@ static int zoran_s_fmt_vid_overlay(struct file *file, void *__fh,
 	return res;
 }
 
-static int zoran_s_fmt_vid_out(struct file *file, void *__fh,
-			       struct v4l2_format *fmt)
+static int zoran_s_fmt_vid_out(struct file *file, void *__fh, struct v4l2_format *fmt)
 {
 	struct zoran_fh *fh = __fh;
 	struct zoran *zr = fh->zr;
@@ -1795,8 +1791,7 @@ static int zoran_s_fmt_vid_out(struct file *file, void *__fh,
 
 	/* tell the user what we actually did */
 	fmt->fmt.pix.width = settings.img_width / settings.HorDcm;
-	fmt->fmt.pix.height = settings.img_height * 2 /
-		(settings.TmpDcm * settings.VerDcm);
+	fmt->fmt.pix.height = settings.img_height * 2 / (settings.TmpDcm * settings.VerDcm);
 	if (settings.TmpDcm == 1)
 		fmt->fmt.pix.field = (fh->jpg_settings.odd_even ?
 				V4L2_FIELD_SEQ_TB : V4L2_FIELD_SEQ_BT);
@@ -1809,8 +1804,7 @@ static int zoran_s_fmt_vid_out(struct file *file, void *__fh,
 	return res;
 }
 
-static int zoran_s_fmt_vid_cap(struct file *file, void *__fh,
-			       struct v4l2_format *fmt)
+static int zoran_s_fmt_vid_cap(struct file *file, void *__fh, struct v4l2_format *fmt)
 {
 	struct zoran_fh *fh = __fh;
 	struct zoran *zr = fh->zr;
@@ -1843,8 +1837,7 @@ static int zoran_s_fmt_vid_cap(struct file *file, void *__fh,
 
 	map_mode_raw(fh);
 
-	res = zoran_v4l_set_format(fh, fmt->fmt.pix.width, fmt->fmt.pix.height,
-				   &zoran_formats[i]);
+	res = zoran_v4l_set_format(fh, fmt->fmt.pix.width, fmt->fmt.pix.height, &zoran_formats[i]);
 	if (res)
 		return res;
 
@@ -2259,8 +2252,7 @@ static int zoran_s_std(struct file *file, void *__fh, v4l2_std_id std)
 	return res;
 }
 
-static int zoran_enum_input(struct file *file, void *__fh,
-			    struct v4l2_input *inp)
+static int zoran_enum_input(struct file *file, void *__fh, struct v4l2_input *inp)
 {
 	struct zoran_fh *fh = __fh;
 	struct zoran *zr = fh->zr;
@@ -2416,8 +2408,7 @@ static int zoran_s_selection(struct file *file, void *__fh, struct v4l2_selectio
 	return res;
 }
 
-static int zoran_g_jpegcomp(struct file *file, void *__fh,
-			    struct v4l2_jpegcompression *params)
+static int zoran_g_jpegcomp(struct file *file, void *__fh, struct v4l2_jpegcompression *params)
 {
 	struct zoran_fh *fh = __fh;
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
