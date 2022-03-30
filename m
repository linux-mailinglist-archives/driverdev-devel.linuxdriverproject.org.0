Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 186994EC0BB
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Mar 2022 13:51:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C81141C8C;
	Wed, 30 Mar 2022 11:51:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kbQYGqiPGMa9; Wed, 30 Mar 2022 11:51:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8E10B4054E;
	Wed, 30 Mar 2022 11:51:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DBC0A1BF5A4
 for <devel@linuxdriverproject.org>; Wed, 30 Mar 2022 11:51:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C87E4611E2
 for <devel@linuxdriverproject.org>; Wed, 30 Mar 2022 11:51:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k5G0m0huhHUZ for <devel@linuxdriverproject.org>;
 Wed, 30 Mar 2022 11:51:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AD9EC60592
 for <devel@driverdev.osuosl.org>; Wed, 30 Mar 2022 11:51:28 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 21DB7B81ACC;
 Wed, 30 Mar 2022 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8FA5C340EE;
 Wed, 30 Mar 2022 11:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648641085;
 bh=r5TaWUTSXYPA4/vomf1OarpwF/PHhekznTUhKvN8Wl8=;
 h=From:To:Cc:Subject:Date:From;
 b=Ap6wUUL9yglvJZIjZ3vnR07CXMFEMFxhh8cUy8w+mJci6MtGwZGPCReYEwqVrnlMn
 G3qpqrf42H+QEdA7k0fR3bKEidavFH1rh415tLuUx5b8nj6C4gXcKBG8gI+iVTViiL
 yIJ5IpaeqURuwN4IJzFVEPIVd45JuOwf/EqbpX0+SLYb+Vslx/F7m2APP7KiKQDYB3
 0ydeue1QD2GAMxX5kYm5m4vuQxqD18ljijiY5SGJTqYe3tRftxaAQRUoKKGCL2nccE
 toHVx6/mPNWNXC3DIB5JpySrt8ksCSfBSoIz0ACMck0NBCk/AltUBBXCNFwzfGcLJr
 4FwVOG9WZeWaQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.10 01/37] media: staging: media: zoran: move
 videodev alloc
Date: Wed, 30 Mar 2022 07:50:46 -0400
Message-Id: <20220330115122.1671763-1-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 gregkh@linuxfoundation.org, Corentin Labbe <clabbe@baylibre.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Corentin Labbe <clabbe@baylibre.com>

[ Upstream commit 82e3a496eb56da0b9f29fdc5b63cedb3289e91de ]

Move some code out of zr36057_init() and create new functions for handling
zr->video_dev. This permit to ease code reading and fix a zr->video_dev
memory leak.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/zoran/zoran.h        |  2 +-
 drivers/staging/media/zoran/zoran_card.c   | 80 ++++++++++++++--------
 drivers/staging/media/zoran/zoran_driver.c |  5 +-
 3 files changed, 54 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index e7fe8da7732c..3f223e5b1872 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -314,6 +314,6 @@ static inline struct zoran *to_zoran(struct v4l2_device *v4l2_dev)
 
 #endif
 
-int zoran_queue_init(struct zoran *zr, struct vb2_queue *vq);
+int zoran_queue_init(struct zoran *zr, struct vb2_queue *vq, int dir);
 void zoran_queue_exit(struct zoran *zr);
 int zr_set_buf(struct zoran *zr);
diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index dfc60e2e9dd7..e4df72cd4d28 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -802,6 +802,52 @@ int zoran_check_jpg_settings(struct zoran *zr,
 	return 0;
 }
 
+static int zoran_init_video_device(struct zoran *zr, struct video_device *video_dev, int dir)
+{
+	int err;
+
+	/* Now add the template and register the device unit. */
+	*video_dev = zoran_template;
+	video_dev->v4l2_dev = &zr->v4l2_dev;
+	video_dev->lock = &zr->lock;
+	video_dev->device_caps = V4L2_CAP_STREAMING | dir;
+
+	strscpy(video_dev->name, ZR_DEVNAME(zr), sizeof(video_dev->name));
+	/*
+	 * It's not a mem2mem device, but you can both capture and output from one and the same
+	 * device. This should really be split up into two device nodes, but that's a job for
+	 * another day.
+	 */
+	video_dev->vfl_dir = VFL_DIR_M2M;
+	zoran_queue_init(zr, &zr->vq, V4L2_BUF_TYPE_VIDEO_CAPTURE);
+
+	err = video_register_device(video_dev, VFL_TYPE_VIDEO, video_nr[zr->id]);
+	if (err < 0)
+		return err;
+	video_set_drvdata(video_dev, zr);
+	return 0;
+}
+
+static void zoran_exit_video_devices(struct zoran *zr)
+{
+	video_unregister_device(zr->video_dev);
+	kfree(zr->video_dev);
+}
+
+static int zoran_init_video_devices(struct zoran *zr)
+{
+	int err;
+
+	zr->video_dev = video_device_alloc();
+	if (!zr->video_dev)
+		return -ENOMEM;
+
+	err = zoran_init_video_device(zr, zr->video_dev, V4L2_CAP_VIDEO_CAPTURE);
+	if (err)
+		kfree(zr->video_dev);
+	return err;
+}
+
 void zoran_open_init_params(struct zoran *zr)
 {
 	int i;
@@ -873,17 +919,11 @@ static int zr36057_init(struct zoran *zr)
 	zoran_open_init_params(zr);
 
 	/* allocate memory *before* doing anything to the hardware in case allocation fails */
-	zr->video_dev = video_device_alloc();
-	if (!zr->video_dev) {
-		err = -ENOMEM;
-		goto exit;
-	}
 	zr->stat_com = dma_alloc_coherent(&zr->pci_dev->dev,
 					  BUZ_NUM_STAT_COM * sizeof(u32),
 					  &zr->p_sc, GFP_KERNEL);
 	if (!zr->stat_com) {
-		err = -ENOMEM;
-		goto exit_video;
+		return -ENOMEM;
 	}
 	for (j = 0; j < BUZ_NUM_STAT_COM; j++)
 		zr->stat_com[j] = cpu_to_le32(1); /* mark as unavailable to zr36057 */
@@ -896,26 +936,9 @@ static int zr36057_init(struct zoran *zr)
 		goto exit_statcom;
 	}
 
-	/* Now add the template and register the device unit. */
-	*zr->video_dev = zoran_template;
-	zr->video_dev->v4l2_dev = &zr->v4l2_dev;
-	zr->video_dev->lock = &zr->lock;
-	zr->video_dev->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_CAPTURE;
-
-	strscpy(zr->video_dev->name, ZR_DEVNAME(zr), sizeof(zr->video_dev->name));
-	/*
-	 * It's not a mem2mem device, but you can both capture and output from one and the same
-	 * device. This should really be split up into two device nodes, but that's a job for
-	 * another day.
-	 */
-	zr->video_dev->vfl_dir = VFL_DIR_M2M;
-
-	zoran_queue_init(zr, &zr->vq);
-
-	err = video_register_device(zr->video_dev, VFL_TYPE_VIDEO, video_nr[zr->id]);
-	if (err < 0)
+	err = zoran_init_video_devices(zr);
+	if (err)
 		goto exit_statcomb;
-	video_set_drvdata(zr->video_dev, zr);
 
 	zoran_init_hardware(zr);
 	if (!pass_through) {
@@ -930,9 +953,6 @@ static int zr36057_init(struct zoran *zr)
 	dma_free_coherent(&zr->pci_dev->dev, BUZ_NUM_STAT_COM * sizeof(u32) * 2, zr->stat_comb, zr->p_scb);
 exit_statcom:
 	dma_free_coherent(&zr->pci_dev->dev, BUZ_NUM_STAT_COM * sizeof(u32), zr->stat_com, zr->p_sc);
-exit_video:
-	kfree(zr->video_dev);
-exit:
 	return err;
 }
 
@@ -964,7 +984,7 @@ static void zoran_remove(struct pci_dev *pdev)
 	dma_free_coherent(&zr->pci_dev->dev, BUZ_NUM_STAT_COM * sizeof(u32) * 2, zr->stat_comb, zr->p_scb);
 	pci_release_regions(pdev);
 	pci_disable_device(zr->pci_dev);
-	video_unregister_device(zr->video_dev);
+	zoran_exit_video_devices(zr);
 exit_free:
 	v4l2_ctrl_handler_free(&zr->hdl);
 	v4l2_device_unregister(&zr->v4l2_dev);
diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 808196ea5b81..7f22596cc630 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -1006,7 +1006,7 @@ static const struct vb2_ops zr_video_qops = {
 	.wait_finish            = vb2_ops_wait_finish,
 };
 
-int zoran_queue_init(struct zoran *zr, struct vb2_queue *vq)
+int zoran_queue_init(struct zoran *zr, struct vb2_queue *vq, int dir)
 {
 	int err;
 
@@ -1014,7 +1014,8 @@ int zoran_queue_init(struct zoran *zr, struct vb2_queue *vq)
 	INIT_LIST_HEAD(&zr->queued_bufs);
 
 	vq->dev = &zr->pci_dev->dev;
-	vq->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
+	vq->type = dir;
+
 	vq->io_modes = VB2_USERPTR | VB2_DMABUF | VB2_MMAP | VB2_READ | VB2_WRITE;
 	vq->drv_priv = zr;
 	vq->buf_struct_size = sizeof(struct zr_buffer);
-- 
2.34.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
