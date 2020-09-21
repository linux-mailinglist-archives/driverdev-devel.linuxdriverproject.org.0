Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F0B272031
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DDB5785EA5;
	Mon, 21 Sep 2020 10:21:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5C3ZbjDAABaU; Mon, 21 Sep 2020 10:21:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A21ED85F91;
	Mon, 21 Sep 2020 10:21:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 781F51BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7295D2052B
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mn0dGOx1LP-R for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:20:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 1EFDE20502
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:20:44 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id a9so12040100wmm.2
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XQtRtjHSNQiSv0g3mZwkcnE0Fkjc1fIWl4XCgS/r66c=;
 b=slyncmICmXdEhhWYEdsc+ean+2FXOU4MeBJKJmPo2//+IaYRB3AfzhfeHPRPoYmjcU
 /rK6AcQZekKH1tayoc7buUtGimhtDhst9KvohiUoWsxOYew2qxZKBurKJ6n8guxtd/Gm
 jsCVWoymfh3+RcpdH9ybo64Lr5V3alaPCfxDi3BVTmwrfWi7toQhMnjWq8+0K0mYpOT7
 QP8kd9PMMb/Zff/N3U8eLFvWZnubKaM4LRKIdxFqb8WjXuX3eQxCGBPOPJFXS4scOKQ6
 TBfMIbhGnuIeNHt578xdco7ka9XxF/X+NEfLiGkbz1J6+Oa88foumPYueZhAR/jNPAxi
 cv1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XQtRtjHSNQiSv0g3mZwkcnE0Fkjc1fIWl4XCgS/r66c=;
 b=asCiyl6nHDpmcPpgnrVss3U5DTLdBUdeIl2jQiLvPE3nsjRDeyHXKueZJkHGKxTuvA
 NpyhKAc3qpoMDBopHW5aju8TcqSWEJX7jmJ63mFc0oIRl6HayOA4NSPnGoINiBI+aWEa
 +tgv9sccv6JKLPgYTpbz8Mp1/qxQrBAbjuQyTmKnU8gN9HOIvsmS/Jk1ZkZeMEiSSo/c
 uUzi5kI9dyHcKz/T2TVAAcmcS/zJCpGYs0I4riBWeCKSzvj+wCXJ1nN6i6Qv2D01673+
 gihOkAna5VDTk75LxyFpr0hSWrp2H/vLl/0C/T7vnsAbOHEJ/sbembdhpg/w6zQhezBj
 0WGQ==
X-Gm-Message-State: AOAM531uRdzHlqDRfjcj13uaRt/sTYxgbZLlFap5V+4kjHRJo04EBdm0
 FUOpWYD0MUi0W9QTGBtB6nsNsQ==
X-Google-Smtp-Source: ABdhPJzLqCAqD/VEfG70gkysoerYVRtzTxtVm9b+0uuTk5ona1L4qr25Ge+YWXB4ngJw2k5ewFF6kQ==
X-Received: by 2002:a1c:6187:: with SMTP id v129mr29087223wmb.35.1600683642386; 
 Mon, 21 Sep 2020 03:20:42 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.20.41
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:20:41 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 10/49] staging: media: zoran: convert dprintk info to
 pci_info
Date: Mon, 21 Sep 2020 10:19:45 +0000
Message-Id: <1600683624-5863-11-git-send-email-clabbe@baylibre.com>
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

This patch convert dprintk(info) to pci_info (or pci_dbg if the message
is not important).

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c   | 46 +++++++---------------
 drivers/staging/media/zoran/zoran_device.c | 27 ++++---------
 drivers/staging/media/zoran/zoran_driver.c | 34 ++++++----------
 3 files changed, 36 insertions(+), 71 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 26f58e687333..fd633265761c 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -887,9 +887,9 @@ static void test_interrupts(struct zoran *zr)
 	btwrite(0, ZR36057_ICR);
 	btwrite(0x78000000, ZR36057_ISR);
 	zr->testing = 0;
-	dprintk(5, KERN_INFO "%s: Testing interrupts...\n", ZR_DEVNAME(zr));
+	pci_info(zr->pci_dev, "Testing interrupts...\n");
 	if (timeout)
-		dprintk(1, ": time spent: %d\n", 1 * HZ - timeout);
+		pci_info(zr->pci_dev, ": time spent: %d\n", 1 * HZ - timeout);
 	if (zr36067_debug > 1)
 		print_interrupts(zr);
 	btwrite(icr, ZR36057_ICR);
@@ -899,10 +899,7 @@ static int zr36057_init(struct zoran *zr)
 {
 	int j, err;
 
-	dprintk(1,
-		KERN_INFO
-		"%s: %s - initializing card[%d], zr=%p\n",
-		ZR_DEVNAME(zr), __func__, zr->id, zr);
+	pci_info(zr->pci_dev, "initializing card[%d]\n", zr->id);
 
 	/* default setup of all parameters which will persist between opens */
 	zr->user = 0;
@@ -1134,18 +1131,12 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		goto zr_unreg;
 	zr->revision = zr->pci_dev->revision;
 
-	dprintk(1,
-		KERN_INFO
-		"%s: Zoran ZR360%c7 (rev %d), irq: %d, memory: 0x%08llx\n",
-		ZR_DEVNAME(zr), zr->revision < 2 ? '5' : '6', zr->revision,
-		zr->pci_dev->irq, (uint64_t)pci_resource_start(zr->pci_dev, 0));
-	if (zr->revision >= 2) {
-		dprintk(1,
-			KERN_INFO
-			"%s: Subsystem vendor=0x%04x id=0x%04x\n",
-			ZR_DEVNAME(zr), zr->pci_dev->subsystem_vendor,
-			zr->pci_dev->subsystem_device);
-	}
+	pci_info(zr->pci_dev, "Zoran ZR360%c7 (rev %d), irq: %d, memory: 0x%08llx\n",
+		 zr->revision < 2 ? '5' : '6', zr->revision,
+		 zr->pci_dev->irq, (uint64_t)pci_resource_start(zr->pci_dev, 0));
+	if (zr->revision >= 2)
+		pci_info(zr->pci_dev, "Subsystem vendor=0x%04x id=0x%04x\n",
+			 zr->pci_dev->subsystem_vendor, zr->pci_dev->subsystem_device);
 
 	/* Use auto-detected card type? */
 	if (card[nr] == -1) {
@@ -1208,14 +1199,13 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 			     &latency);
 	need_latency = zr->revision > 1 ? 32 : 48;
 	if (latency != need_latency) {
-		dprintk(2, KERN_INFO "%s: Changing PCI latency from %d to %d\n",
-			ZR_DEVNAME(zr), latency, need_latency);
+		pci_info(zr->pci_dev, "Changing PCI latency from %d to %d\n", latency, need_latency);
 		pci_write_config_byte(zr->pci_dev, PCI_LATENCY_TIMER, need_latency);
 	}
 
 	zr36057_restart(zr);
 	/* i2c */
-	dprintk(2, KERN_INFO "%s: Initializing i2c bus...\n", ZR_DEVNAME(zr));
+	pci_info(zr->pci_dev, "Initializing i2c bus...\n");
 
 	if (zoran_register_i2c(zr) < 0) {
 		pci_err(pdev, "%s - can't initialize i2c bus\n", __func__);
@@ -1229,7 +1219,7 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		zr->encoder = v4l2_i2c_new_subdev(&zr->v4l2_dev, &zr->i2c_adapter,
 						  zr->card.i2c_encoder, 0, zr->card.addrs_encoder);
 
-	dprintk(2, KERN_INFO "%s: Initializing videocodec bus...\n", ZR_DEVNAME(zr));
+	pci_info(zr->pci_dev, "Initializing videocodec bus...\n");
 
 	if (zr->card.video_codec) {
 		codec_name = codecid_to_modulename(zr->card.video_codec);
@@ -1285,9 +1275,7 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* take care of Natoma chipset and a revision 1 zr36057 */
 	if ((pci_pci_problems & PCIPCI_NATOMA) && zr->revision <= 1) {
 		zr->jpg_buffers.need_contiguous = 1;
-		dprintk(1, KERN_INFO
-			"%s: ZR36057/Natoma bug, max. buffer size is 128K\n",
-			ZR_DEVNAME(zr));
+		pci_info(zr->pci_dev, "ZR36057/Natoma bug, max. buffer size is 128K\n");
 	}
 
 	if (zr36057_init(zr) < 0)
@@ -1356,12 +1344,8 @@ static int __init zoran_init(void)
 	if (jpg_bufsize > (512 * 1024))
 		jpg_bufsize = 512 * 1024;
 	/* Use parameter for vidmem or try to find a video card */
-	if (vidmem) {
-		dprintk(1,
-			KERN_INFO
-			"%s: Using supplied video memory base address @ 0x%lx\n",
-			ZORAN_NAME, vidmem);
-	}
+	if (vidmem)
+		pr_info("%s: Using supplied video memory base address @ 0x%lx\n", ZORAN_NAME, vidmem);
 
 	/* some mainboards might not do PCI-PCI data transfer well */
 	if (pci_pci_problems & (PCIPCI_FAIL | PCIAGP_FAIL | PCIPCI_ALIMAGIK))
diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index a04fbae30745..1f625e1e8477 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -118,8 +118,7 @@ int post_office_wait(struct zoran *zr)
 	}
 	if ((por & ZR36057_POR_POTime) && !zr->card.gws_not_connected) {
 		/* In LML33/BUZ \GWS line is not connected, so it has always timeout set */
-		dprintk(1, KERN_INFO "%s: pop timeout %08x\n", ZR_DEVNAME(zr),
-			por);
+		pci_info(zr->pci_dev, "pop timeout %08x\n", por);
 		return -1;
 	}
 
@@ -218,16 +217,10 @@ void jpeg_codec_sleep(struct zoran *zr, int sleep)
 {
 	GPIO(zr, zr->card.gpio[ZR_GPIO_JPEG_SLEEP], !sleep);
 	if (!sleep) {
-		dprintk(3,
-			KERN_INFO
-			"%s: %s() - wake GPIO=0x%08x\n",
-			ZR_DEVNAME(zr), __func__, btread(ZR36057_GPPGCR1));
+		pci_dbg(zr->pci_dev, "%s() - wake GPIO=0x%08x\n", __func__, btread(ZR36057_GPPGCR1));
 		udelay(500);
 	} else {
-		dprintk(3,
-			KERN_INFO
-			"%s: %s() - sleep GPIO=0x%08x\n",
-			ZR_DEVNAME(zr), __func__, btread(ZR36057_GPPGCR1));
+		pci_dbg(zr->pci_dev, "%s() - sleep GPIO=0x%08x\n", __func__, btread(ZR36057_GPPGCR1));
 		udelay(2);
 	}
 }
@@ -309,8 +302,7 @@ static void zr36057_set_vfe(struct zoran *zr, int video_width, int video_height,
 	Wa = tvn->Wa;
 	Ha = tvn->Ha;
 
-	dprintk(2, KERN_INFO "%s: set_vfe() - width = %d, height = %d\n",
-		ZR_DEVNAME(zr), video_width, video_height);
+	pci_info(zr->pci_dev, "set_vfe() - width = %d, height = %d\n", video_width, video_height);
 
 	if (video_width < BUZ_MIN_WIDTH ||
 	    video_height < BUZ_MIN_HEIGHT ||
@@ -940,8 +932,7 @@ void zr36057_enable_jpg(struct zoran *zr, enum zoran_codec_mode mode)
 		zr36057_set_jpg(zr, mode);	// \P_Reset, ... Video param, FIFO
 
 		clear_interrupt_counters(zr);
-		dprintk(2, KERN_INFO "%s: enable_jpg(MOTION_COMPRESS)\n",
-			ZR_DEVNAME(zr));
+		pci_info(zr->pci_dev, "enable_jpg(MOTION_COMPRESS)\n");
 		break;
 	}
 
@@ -968,8 +959,7 @@ void zr36057_enable_jpg(struct zoran *zr, enum zoran_codec_mode mode)
 		zr36057_set_jpg(zr, mode);	// \P_Reset, ... Video param, FIFO
 
 		clear_interrupt_counters(zr);
-		dprintk(2, KERN_INFO "%s: enable_jpg(MOTION_DECOMPRESS)\n",
-			ZR_DEVNAME(zr));
+		pci_info(zr->pci_dev, "enable_jpg(MOTION_DECOMPRESS)\n");
 		break;
 
 	case BUZ_MODE_IDLE:
@@ -994,7 +984,7 @@ void zr36057_enable_jpg(struct zoran *zr, enum zoran_codec_mode mode)
 		decoder_call(zr, video, s_stream, 1);
 		encoder_call(zr, video, s_routing, 0, 0, 0);
 
-		dprintk(2, KERN_INFO "%s: enable_jpg(IDLE)\n", ZR_DEVNAME(zr));
+		pci_info(zr->pci_dev, "enable_jpg(IDLE)\n");
 		break;
 	}
 }
@@ -1112,8 +1102,7 @@ static void zoran_restart(struct zoran *zr)
 		jpeg_start(zr);
 
 		if (zr->num_errors <= 8)
-			dprintk(2, KERN_INFO "%s: Restart\n",
-				ZR_DEVNAME(zr));
+			pci_info(zr->pci_dev, "Restart\n");
 
 		zr->JPEG_missed = 0;
 		zr->JPEG_error = 2;
diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 3b061c3e4a82..02c1f69d073e 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -225,11 +225,8 @@ static int v4l_fbuffer_alloc(struct zoran_fh *fh)
 		for (off = 0; off < fh->buffers.buffer_size;
 		     off += PAGE_SIZE)
 			SetPageReserved(virt_to_page(mem + off));
-		dprintk(4,
-			KERN_INFO
-			"%s: %s - V4L frame %d mem %p (bus: 0x%llx)\n",
-			ZR_DEVNAME(zr), __func__, i, mem,
-			(unsigned long long)virt_to_bus(mem));
+		pci_info(zr->pci_dev, "%s - V4L frame %d mem %p (bus: 0x%llx)\n", __func__, i, mem,
+			 (unsigned long long)virt_to_bus(mem));
 	}
 
 	fh->buffers.allocated = 1;
@@ -244,7 +241,7 @@ static void v4l_fbuffer_free(struct zoran_fh *fh)
 	int i, off;
 	unsigned char *mem;
 
-	dprintk(4, KERN_INFO "%s: %s\n", ZR_DEVNAME(zr), __func__);
+	pci_dbg(zr->pci_dev, "%s\n", __func__);
 
 	for (i = 0; i < fh->buffers.num_buffers; i++) {
 		if (!fh->buffers.buffer[i].v4l.fbuffer)
@@ -820,8 +817,8 @@ static int zoran_open(struct file *file)
 	struct zoran_fh *fh;
 	int res, first_open = 0;
 
-	dprintk(2, KERN_INFO "%s: %s(%s, pid=[%d]), users(-)=%d\n",
-		ZR_DEVNAME(zr), __func__, current->comm, task_pid_nr(current), zr->user + 1);
+	pci_info(zr->pci_dev, "%s(%s, pid=[%d]), users(-)=%d\n", __func__, current->comm,
+		 task_pid_nr(current), zr->user + 1);
 
 	mutex_lock(&zr->lock);
 
@@ -876,8 +873,7 @@ static int zoran_open(struct file *file)
 fail_unlock:
 	mutex_unlock(&zr->lock);
 
-	dprintk(2, KERN_INFO "%s: open failed (%d), users(-)=%d\n",
-		ZR_DEVNAME(zr), res, zr->user);
+	pci_info(zr->pci_dev, "open failed (%d), users(-)=%d\n", res, zr->user);
 
 	return res;
 }
@@ -887,8 +883,8 @@ static int zoran_close(struct file *file)
 	struct zoran_fh *fh = file->private_data;
 	struct zoran *zr = fh->zr;
 
-	dprintk(2, KERN_INFO "%s: %s(%s, pid=[%d]), users(+)=%d\n",
-		ZR_DEVNAME(zr), __func__, current->comm, task_pid_nr(current), zr->user - 1);
+	pci_info(zr->pci_dev, "%s(%s, pid=[%d]), users(+)=%d\n", __func__, current->comm,
+		 task_pid_nr(current), zr->user - 1);
 
 	/* kernel locks (fs/device.c), so don't do that ourselves
 	 * (prevents deadlocks) */
@@ -933,7 +929,7 @@ static int zoran_close(struct file *file)
 	kfree(fh->overlay_mask);
 	kfree(fh);
 
-	dprintk(4, KERN_INFO "%s: %s done\n", ZR_DEVNAME(zr), __func__);
+	pci_dbg(zr->pci_dev, "%s done\n", __func__);
 
 	return 0;
 }
@@ -2381,8 +2377,7 @@ static void zoran_vm_close(struct vm_area_struct *vma)
 	struct zoran *zr = fh->zr;
 	int i;
 
-	dprintk(3, KERN_INFO "%s: %s - munmap(%s)\n", ZR_DEVNAME(zr),
-		__func__, mode_name(fh->map_mode));
+	pci_info(zr->pci_dev, "%s - munmap(%s)\n", ZR_DEVNAME(zr), mode_name(fh->map_mode));
 
 	for (i = 0; i < fh->buffers.num_buffers; i++) {
 		if (fh->buffers.buffer[i].map == map)
@@ -2396,8 +2391,7 @@ static void zoran_vm_close(struct vm_area_struct *vma)
 			return;
 	}
 
-	dprintk(3, KERN_INFO "%s: %s - free %s buffers\n", ZR_DEVNAME(zr),
-		__func__, mode_name(fh->map_mode));
+	pci_info(zr->pci_dev, "%s - free %s buffers\n", __func__, mode_name(fh->map_mode));
 
 	if (fh->map_mode == ZORAN_MAP_MODE_RAW) {
 		if (fh->buffers.active != ZORAN_FREE) {
@@ -2437,10 +2431,8 @@ static int zoran_mmap(struct file *file, struct vm_area_struct *vma)
 	struct zoran_mapping *map;
 	int res = 0;
 
-	dprintk(3,
-		KERN_INFO "%s: %s(%s) of 0x%08lx-0x%08lx (size=%lu)\n",
-		ZR_DEVNAME(zr), __func__,
-		mode_name(fh->map_mode), vma->vm_start, vma->vm_end, size);
+	pci_info(zr->pci_dev, "%s(%s) of 0x%08lx-0x%08lx (size=%lu)\n", __func__,
+		 mode_name(fh->map_mode), vma->vm_start, vma->vm_end, size);
 
 	if (!(vma->vm_flags & VM_SHARED) || !(vma->vm_flags & VM_READ) ||
 	    !(vma->vm_flags & VM_WRITE)) {
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
