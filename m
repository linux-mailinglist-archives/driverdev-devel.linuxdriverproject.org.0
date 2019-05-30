Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBC8303FA
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 23:15:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 561B0877BA;
	Thu, 30 May 2019 21:15:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lfJSMwgQKHox; Thu, 30 May 2019 21:15:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 46C2F86E49;
	Thu, 30 May 2019 21:15:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B97171BF867
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:15:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B6F44203C7
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:15:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7O70eXJYkqpe for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 21:15:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs23.siol.net [185.57.226.214])
 by silver.osuosl.org (Postfix) with ESMTPS id DB675203C4
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 21:15:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 1B9BF52286B;
 Thu, 30 May 2019 23:15:45 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id uezCuMHm-0Ve; Thu, 30 May 2019 23:15:44 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id C27FC5227EC;
 Thu, 30 May 2019 23:15:44 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-52-202.static.triera.net
 [86.58.52.202]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 7E01D5228C1;
 Thu, 30 May 2019 23:15:42 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: paul.kocialkowski@bootlin.com,
	maxime.ripard@bootlin.com
Subject: [PATCH 6/7] media: cedrus: Add infra for extra buffers connected to
 capture buffers
Date: Thu, 30 May 2019 23:15:15 +0200
Message-Id: <20190530211516.1891-7-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190530211516.1891-1-jernej.skrabec@siol.net>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

H264 and HEVC engines need additional buffers for each capture buffer.
H264 engine has this currently solved by allocating fixed size pool,
which is not ideal. Most of the time pool size is much bigger than it
needs to be.

Ideally, extra buffer should be allocated at buffer initialization, but
that's not efficient. It's size in H264 depends on flags set in SPS, but
that information is not available in buffer init callback.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus.h   |  4 ++++
 .../staging/media/sunxi/cedrus/cedrus_video.c | 19 +++++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
index d8e6777e5e27..16c1bdfd243a 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
@@ -81,6 +81,10 @@ struct cedrus_run {
 struct cedrus_buffer {
 	struct v4l2_m2m_buffer          m2m_buf;
 
+	void		*extra_buf;
+	dma_addr_t	extra_buf_dma;
+	ssize_t		extra_buf_size;
+
 	union {
 		struct {
 			unsigned int			position;
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 681dfe3367a6..d756e0e69634 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -411,6 +411,24 @@ static void cedrus_queue_cleanup(struct vb2_queue *vq, u32 state)
 	}
 }
 
+static void cedrus_buf_cleanup(struct vb2_buffer *vb)
+{
+	struct vb2_queue *vq = vb->vb2_queue;
+
+	if (!V4L2_TYPE_IS_OUTPUT(vq->type)) {
+		struct cedrus_ctx *ctx = vb2_get_drv_priv(vq);
+		struct cedrus_buffer *cedrus_buf;
+
+		cedrus_buf = vb2_to_cedrus_buffer(vq->bufs[vb->index]);
+
+		if (cedrus_buf->extra_buf_size)
+			dma_free_coherent(ctx->dev->dev,
+					  cedrus_buf->extra_buf_size,
+					  cedrus_buf->extra_buf,
+					  cedrus_buf->extra_buf_dma);
+	}
+}
+
 static int cedrus_buf_out_validate(struct vb2_buffer *vb)
 {
 	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
@@ -497,6 +515,7 @@ static void cedrus_buf_request_complete(struct vb2_buffer *vb)
 static struct vb2_ops cedrus_qops = {
 	.queue_setup		= cedrus_queue_setup,
 	.buf_prepare		= cedrus_buf_prepare,
+	.buf_cleanup		= cedrus_buf_cleanup,
 	.buf_queue		= cedrus_buf_queue,
 	.buf_out_validate	= cedrus_buf_out_validate,
 	.buf_request_complete	= cedrus_buf_request_complete,
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
