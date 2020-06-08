Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D30001F2256
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jun 2020 01:08:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5702A22193;
	Mon,  8 Jun 2020 23:08:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JPDmVjNjq3bp; Mon,  8 Jun 2020 23:08:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CF13C22624;
	Mon,  8 Jun 2020 23:08:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 91A841BF381
 for <devel@linuxdriverproject.org>; Mon,  8 Jun 2020 23:08:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8E7CF8625F
 for <devel@linuxdriverproject.org>; Mon,  8 Jun 2020 23:08:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nbDBEOHxZa-v for <devel@linuxdriverproject.org>;
 Mon,  8 Jun 2020 23:08:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D8A77860C6
 for <devel@driverdev.osuosl.org>; Mon,  8 Jun 2020 23:08:16 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ADFD720774;
 Mon,  8 Jun 2020 23:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657696;
 bh=7DFggtfaa27p7/NZef20x2yJCZHD8VK+NnqtcggjuAk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wJpeDJeqs1oyrCyu+OtANd99eAbpyp3QYTPTRpBQahsDENrUhC+7EtwjxJh/P1j6l
 DNY0n8qBv6ZWzvsDagNv7O1w511Gqb/BilIDF7KBJtap1c0tv3Bett/OaRon/4QUmf
 zBathXCbIShdWEqJti5OOf2B+OFkeqVu1xqasrD0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 096/274] media: staging/intel-ipu3: Implement lock
 for stream on/off operations
Date: Mon,  8 Jun 2020 19:03:09 -0400
Message-Id: <20200608230607.3361041-96-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
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
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Rajmohan Mani <rajmohan.mani@intel.com>, Bingbu Cao <bingbu.cao@intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Bingbu Cao <bingbu.cao@intel.com>

[ Upstream commit 33e3c349b2bf1235be458df09fb8d237141486c4 ]

Currently concurrent stream off operations on ImgU nodes are not
synchronized, leading to use-after-free bugs (as reported by KASAN).

[  250.090724] BUG: KASAN: use-after-free in
ipu3_dmamap_free+0xc5/0x116 [ipu3_imgu]
[  250.090726] Read of size 8 at addr ffff888127b29bc0 by task
yavta/18836
[  250.090731] Hardware name: HP Soraka/Soraka, BIOS
Google_Soraka.10431.17.0 03/22/2018
[  250.090732] Call Trace:
[  250.090735]  dump_stack+0x6a/0xb1
[  250.090739]  print_address_description+0x8e/0x279
[  250.090743]  ? ipu3_dmamap_free+0xc5/0x116 [ipu3_imgu]
[  250.090746]  kasan_report+0x260/0x28a
[  250.090750]  ipu3_dmamap_free+0xc5/0x116 [ipu3_imgu]
[  250.090754]  ipu3_css_pool_cleanup+0x24/0x37 [ipu3_imgu]
[  250.090759]  ipu3_css_pipeline_cleanup+0x61/0xb9 [ipu3_imgu]
[  250.090763]  ipu3_css_stop_streaming+0x1f2/0x321 [ipu3_imgu]
[  250.090768]  imgu_s_stream+0x94/0x443 [ipu3_imgu]
[  250.090772]  ? ipu3_vb2_buf_queue+0x280/0x280 [ipu3_imgu]
[  250.090775]  ? vb2_dma_sg_unmap_dmabuf+0x16/0x6f [videobuf2_dma_sg]
[  250.090778]  ? vb2_buffer_in_use+0x36/0x58 [videobuf2_common]
[  250.090782]  ipu3_vb2_stop_streaming+0xf9/0x135 [ipu3_imgu]

Implemented a lock to synchronize imgu stream on / off operations and
the modification of streaming flag (in struct imgu_device), to prevent
these issues.

Reported-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Suggested-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Rajmohan Mani <rajmohan.mani@intel.com>
Signed-off-by: Bingbu Cao <bingbu.cao@intel.com>
Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/media/ipu3/ipu3-v4l2.c | 10 ++++++++++
 drivers/staging/media/ipu3/ipu3.c      |  3 +++
 drivers/staging/media/ipu3/ipu3.h      |  4 ++++
 3 files changed, 17 insertions(+)

diff --git a/drivers/staging/media/ipu3/ipu3-v4l2.c b/drivers/staging/media/ipu3/ipu3-v4l2.c
index 09c8ede1457c..db8b5d13631a 100644
--- a/drivers/staging/media/ipu3/ipu3-v4l2.c
+++ b/drivers/staging/media/ipu3/ipu3-v4l2.c
@@ -367,8 +367,10 @@ static void imgu_vb2_buf_queue(struct vb2_buffer *vb)
 
 	vb2_set_plane_payload(vb, 0, need_bytes);
 
+	mutex_lock(&imgu->streaming_lock);
 	if (imgu->streaming)
 		imgu_queue_buffers(imgu, false, node->pipe);
+	mutex_unlock(&imgu->streaming_lock);
 
 	dev_dbg(&imgu->pci_dev->dev, "%s for pipe %u node %u", __func__,
 		node->pipe, node->id);
@@ -468,10 +470,13 @@ static int imgu_vb2_start_streaming(struct vb2_queue *vq, unsigned int count)
 	dev_dbg(dev, "%s node name %s pipe %u id %u", __func__,
 		node->name, node->pipe, node->id);
 
+	mutex_lock(&imgu->streaming_lock);
 	if (imgu->streaming) {
 		r = -EBUSY;
+		mutex_unlock(&imgu->streaming_lock);
 		goto fail_return_bufs;
 	}
+	mutex_unlock(&imgu->streaming_lock);
 
 	if (!node->enabled) {
 		dev_err(dev, "IMGU node is not enabled");
@@ -498,9 +503,11 @@ static int imgu_vb2_start_streaming(struct vb2_queue *vq, unsigned int count)
 
 	/* Start streaming of the whole pipeline now */
 	dev_dbg(dev, "IMGU streaming is ready to start");
+	mutex_lock(&imgu->streaming_lock);
 	r = imgu_s_stream(imgu, true);
 	if (!r)
 		imgu->streaming = true;
+	mutex_unlock(&imgu->streaming_lock);
 
 	return 0;
 
@@ -532,6 +539,7 @@ static void imgu_vb2_stop_streaming(struct vb2_queue *vq)
 		dev_err(&imgu->pci_dev->dev,
 			"failed to stop subdev streaming\n");
 
+	mutex_lock(&imgu->streaming_lock);
 	/* Was this the first node with streaming disabled? */
 	if (imgu->streaming && imgu_all_nodes_streaming(imgu, node)) {
 		/* Yes, really stop streaming now */
@@ -542,6 +550,8 @@ static void imgu_vb2_stop_streaming(struct vb2_queue *vq)
 	}
 
 	imgu_return_all_buffers(imgu, node, VB2_BUF_STATE_ERROR);
+	mutex_unlock(&imgu->streaming_lock);
+
 	media_pipeline_stop(&node->vdev.entity);
 }
 
diff --git a/drivers/staging/media/ipu3/ipu3.c b/drivers/staging/media/ipu3/ipu3.c
index 7a1d1881483b..ee1bba6bdcac 100644
--- a/drivers/staging/media/ipu3/ipu3.c
+++ b/drivers/staging/media/ipu3/ipu3.c
@@ -675,6 +675,7 @@ static int imgu_pci_probe(struct pci_dev *pci_dev,
 		return r;
 
 	mutex_init(&imgu->lock);
+	mutex_init(&imgu->streaming_lock);
 	atomic_set(&imgu->qbuf_barrier, 0);
 	init_waitqueue_head(&imgu->buf_drain_wq);
 
@@ -738,6 +739,7 @@ static int imgu_pci_probe(struct pci_dev *pci_dev,
 out_css_powerdown:
 	imgu_css_set_powerdown(&pci_dev->dev, imgu->base);
 out_mutex_destroy:
+	mutex_destroy(&imgu->streaming_lock);
 	mutex_destroy(&imgu->lock);
 
 	return r;
@@ -755,6 +757,7 @@ static void imgu_pci_remove(struct pci_dev *pci_dev)
 	imgu_css_set_powerdown(&pci_dev->dev, imgu->base);
 	imgu_dmamap_exit(imgu);
 	imgu_mmu_exit(imgu->mmu);
+	mutex_destroy(&imgu->streaming_lock);
 	mutex_destroy(&imgu->lock);
 }
 
diff --git a/drivers/staging/media/ipu3/ipu3.h b/drivers/staging/media/ipu3/ipu3.h
index 73b123b2b8a2..8cd6a0077d99 100644
--- a/drivers/staging/media/ipu3/ipu3.h
+++ b/drivers/staging/media/ipu3/ipu3.h
@@ -146,6 +146,10 @@ struct imgu_device {
 	 * vid_buf.list and css->queue
 	 */
 	struct mutex lock;
+
+	/* Lock to protect writes to streaming flag in this struct */
+	struct mutex streaming_lock;
+
 	/* Forbid streaming and buffer queuing during system suspend. */
 	atomic_t qbuf_barrier;
 	/* Indicate if system suspend take place while imgu is streaming. */
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
