Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCAE26E9EE
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Sep 2020 02:28:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B5258712C;
	Fri, 18 Sep 2020 00:28:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D3kUX_1TVfWA; Fri, 18 Sep 2020 00:28:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7BA3C870F7;
	Fri, 18 Sep 2020 00:28:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A56F41BF9B9
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 00:28:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9859D870F7
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 00:28:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GmEW5i6zl72d for <devel@linuxdriverproject.org>;
 Fri, 18 Sep 2020 00:28:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5084087065
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 00:28:14 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 56DC829C66E
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2] media: cedrus: Propagate OUTPUT resolution to CAPTURE
Date: Thu, 17 Sep 2020 20:27:51 -0400
Message-Id: <20200918002751.373984-1-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.26.2
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
Cc: Ondrej Jirman <megous@megous.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Ezequiel Garcia <ezequiel@collabora.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As per spec, the CAPTURE resolution should be automatically set based on
the OTUPUT resolution. This patch properly propagate width/height to the
capture when the OUTPUT format is set and override the user provided
width/height with configured OUTPUT resolution when the CAPTURE fmt is
updated.

This also prevents userspace from selecting a CAPTURE resolution that is
too small, avoiding kernel oops.

Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Tested-by: Ondrej Jirman <megous@megous.com>
---
 .../staging/media/sunxi/cedrus/cedrus_video.c | 29 +++++++++++++++++--
 1 file changed, 27 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 16d82309e7b6..667b86dde1ee 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -247,6 +247,8 @@ static int cedrus_try_fmt_vid_cap(struct file *file, void *priv,
 		return -EINVAL;
 
 	pix_fmt->pixelformat = fmt->pixelformat;
+	pix_fmt->width = ctx->src_fmt.width;
+	pix_fmt->height = ctx->src_fmt.height;
 	cedrus_prepare_format(pix_fmt);
 
 	return 0;
@@ -296,10 +298,30 @@ static int cedrus_s_fmt_vid_out(struct file *file, void *priv,
 {
 	struct cedrus_ctx *ctx = cedrus_file2ctx(file);
 	struct vb2_queue *vq;
+	struct vb2_queue *peer_vq;
 	int ret;
 
+	ret = cedrus_try_fmt_vid_out(file, priv, f);
+	if (ret)
+		return ret;
+
 	vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
-	if (vb2_is_busy(vq))
+	/*
+	 * In order to support dynamic resolution change,
+	 * the decoder admits a resolution change, as long
+	 * as the pixelformat remains. Can't be done if streaming.
+	 */
+	if (vb2_is_streaming(vq) || (vb2_is_busy(vq) &&
+	    f->fmt.pix.pixelformat != ctx->src_fmt.pixelformat))
+		return -EBUSY;
+	/*
+	 * Since format change on the OUTPUT queue will reset
+	 * the CAPTURE queue, we can't allow doing so
+	 * when the CAPTURE queue has buffers allocated.
+	 */
+	peer_vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx,
+				  V4L2_BUF_TYPE_VIDEO_CAPTURE);
+	if (vb2_is_busy(peer_vq))
 		return -EBUSY;
 
 	ret = cedrus_try_fmt_vid_out(file, priv, f);
@@ -319,11 +341,14 @@ static int cedrus_s_fmt_vid_out(struct file *file, void *priv,
 		break;
 	}
 
-	/* Propagate colorspace information to capture. */
+	/* Propagate format information to capture. */
 	ctx->dst_fmt.colorspace = f->fmt.pix.colorspace;
 	ctx->dst_fmt.xfer_func = f->fmt.pix.xfer_func;
 	ctx->dst_fmt.ycbcr_enc = f->fmt.pix.ycbcr_enc;
 	ctx->dst_fmt.quantization = f->fmt.pix.quantization;
+	ctx->dst_fmt.width = ctx->src_fmt.width;
+	ctx->dst_fmt.height = ctx->src_fmt.height;
+	cedrus_prepare_format(&ctx->dst_fmt);
 
 	return 0;
 }
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
