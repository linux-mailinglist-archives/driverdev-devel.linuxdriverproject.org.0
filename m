Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 887A84EC002
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Mar 2022 13:47:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34FC8847BF;
	Wed, 30 Mar 2022 11:47:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RT164nS8-d6P; Wed, 30 Mar 2022 11:47:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C37BC847B0;
	Wed, 30 Mar 2022 11:47:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 69DB31BF5A4
 for <devel@linuxdriverproject.org>; Wed, 30 Mar 2022 11:47:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 571F741C27
 for <devel@linuxdriverproject.org>; Wed, 30 Mar 2022 11:47:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dVoU9rqBC-Bm for <devel@linuxdriverproject.org>;
 Wed, 30 Mar 2022 11:46:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1ECE641BEC
 for <devel@driverdev.osuosl.org>; Wed, 30 Mar 2022 11:46:56 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 392C6CE1928;
 Wed, 30 Mar 2022 11:46:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DF4BC340F3;
 Wed, 30 Mar 2022 11:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648640812;
 bh=FFoYu9xD39rqkIZEOepdvzpRGpwFoRxIoNbHOu8iJoc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sKgwZs6wPkm7S+UFEqbNwWgwJbqxYXO/ZJQexDgqp1FGc8bapkOC35SExCGr8bc0f
 BYPpmXZ8KTPzxGWps8xzyWTld3J4CMCg26hEdlD795dsJS5y32tqpT7jnIMmsYee9+
 NBxftNkVchLPWiY0PIFn0FKj/WPag9EG7qEunjTbQblvymJiRtCubP+MUWpPtUi2Ul
 RnM/PyxNrr8vaHB/bjFIMjp6RTbWBNnXbKHqJzAMtGw5g0u8DJ/UsjrDpi9xG6I0vh
 emAD7zyFWpbDYcHswA4jVgqv2BLy7k+5TdLbNYCWSymxbuDYy9aAYfSXnS1mdHu+wM
 V3paNvGZ5cxWA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.17 03/66] media: staging: media: zoran: fix various
 V4L2 compliance errors
Date: Wed, 30 Mar 2022 07:45:42 -0400
Message-Id: <20220330114646.1669334-3-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220330114646.1669334-1-sashal@kernel.org>
References: <20220330114646.1669334-1-sashal@kernel.org>
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

From: Hans Verkuil <hverkuil-cisco@xs4all.nl>

[ Upstream commit 914941827aad5ecddf9bf3a6dee67fbec1af1fff ]

This fixes several issues found with 'v4l2-compliance -s':

1) read()/write() is supported, but not reported in the capabilities
2) S_STD(G_STD()) failed: setting the same standard should just return 0.
3) G_PARM failed to set readbuffers.
4) different field values in the format vs. what v4l2_buffer reported.
5) zero the sequence number when starting streaming.
6) drop VB_USERPTR: makes no sense with dma_contig streaming.

Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/zoran/zoran_card.c   |  2 +-
 drivers/staging/media/zoran/zoran_driver.c | 13 ++++++++++---
 2 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 677d3a26cef4..175654d104c5 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -811,7 +811,7 @@ static int zoran_init_video_device(struct zoran *zr, struct video_device *video_
 	*video_dev = zoran_template;
 	video_dev->v4l2_dev = &zr->v4l2_dev;
 	video_dev->lock = &zr->lock;
-	video_dev->device_caps = V4L2_CAP_STREAMING | dir;
+	video_dev->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_READWRITE | dir;
 
 	strscpy(video_dev->name, ZR_DEVNAME(zr), sizeof(video_dev->name));
 	/*
diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 551db338c7f7..84665637ebb7 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -255,8 +255,6 @@ static int zoran_querycap(struct file *file, void *__fh, struct v4l2_capability
 	strscpy(cap->card, ZR_DEVNAME(zr), sizeof(cap->card));
 	strscpy(cap->driver, "zoran", sizeof(cap->driver));
 	snprintf(cap->bus_info, sizeof(cap->bus_info), "PCI:%s", pci_name(zr->pci_dev));
-	cap->device_caps = zr->video_dev->device_caps;
-	cap->capabilities = cap->device_caps | V4L2_CAP_DEVICE_CAPS;
 	return 0;
 }
 
@@ -582,6 +580,9 @@ static int zoran_s_std(struct file *file, void *__fh, v4l2_std_id std)
 	struct zoran *zr = video_drvdata(file);
 	int res = 0;
 
+	if (zr->norm == std)
+		return 0;
+
 	if (zr->running != ZORAN_MAP_MODE_NONE)
 		return -EBUSY;
 
@@ -739,6 +740,7 @@ static int zoran_g_parm(struct file *file, void *priv, struct v4l2_streamparm *p
 	if (parm->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
 		return -EINVAL;
 
+	parm->parm.capture.readbuffers = 9;
 	return 0;
 }
 
@@ -869,6 +871,10 @@ int zr_set_buf(struct zoran *zr)
 		vbuf = &buf->vbuf;
 
 		buf->vbuf.field = V4L2_FIELD_INTERLACED;
+		if (BUZ_MAX_HEIGHT < (zr->v4l_settings.height * 2))
+			buf->vbuf.field = V4L2_FIELD_INTERLACED;
+		else
+			buf->vbuf.field = V4L2_FIELD_TOP;
 		vb2_set_plane_payload(&buf->vbuf.vb2_buf, 0, zr->buffer_size);
 		vb2_buffer_done(&buf->vbuf.vb2_buf, VB2_BUF_STATE_DONE);
 		zr->inuse[0] = NULL;
@@ -928,6 +934,7 @@ static int zr_vb2_start_streaming(struct vb2_queue *vq, unsigned int count)
 		zr->stat_com[j] = cpu_to_le32(1);
 		zr->inuse[j] = NULL;
 	}
+	zr->vbseq = 0;
 
 	if (zr->map_mode != ZORAN_MAP_MODE_RAW) {
 		pci_info(zr->pci_dev, "START JPG\n");
@@ -1018,7 +1025,7 @@ int zoran_queue_init(struct zoran *zr, struct vb2_queue *vq, int dir)
 	vq->dev = &zr->pci_dev->dev;
 	vq->type = dir;
 
-	vq->io_modes = VB2_USERPTR | VB2_DMABUF | VB2_MMAP | VB2_READ | VB2_WRITE;
+	vq->io_modes = VB2_DMABUF | VB2_MMAP | VB2_READ | VB2_WRITE;
 	vq->drv_priv = zr;
 	vq->buf_struct_size = sizeof(struct zr_buffer);
 	vq->ops = &zr_video_qops;
-- 
2.34.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
