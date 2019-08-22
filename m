Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A14049A05B
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Aug 2019 21:45:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 518ED878F1;
	Thu, 22 Aug 2019 19:45:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BanFnhPxJ9jl; Thu, 22 Aug 2019 19:45:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 98CE48794F;
	Thu, 22 Aug 2019 19:45:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C171D1BF3B8
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 19:45:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BCD7486AB0
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 19:45:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 636VK9Pd46SC for <devel@linuxdriverproject.org>;
 Thu, 22 Aug 2019 19:45:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs2.siol.net [185.57.226.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3206F86B09
 for <devel@driverdev.osuosl.org>; Thu, 22 Aug 2019 19:45:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 4AD9E5249EB;
 Thu, 22 Aug 2019 21:45:29 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 42uRjQLJpET2; Thu, 22 Aug 2019 21:45:29 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id F1F6252481F;
 Thu, 22 Aug 2019 21:45:28 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 8A5B15249EF;
 Thu, 22 Aug 2019 21:45:26 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
 paul.kocialkowski@bootlin.com, mripard@kernel.org
Subject: [PATCH 8/8] media: cedrus: Add support for V4L2_DEC_CMD_FLUSH
Date: Thu, 22 Aug 2019 21:45:00 +0200
Message-Id: <20190822194500.2071-9-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190822194500.2071-1-jernej.skrabec@siol.net>
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
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
Cc: devel@driverdev.osuosl.org, jernej.skrabec@siol.net, pawel@osciak.com,
 acourbot@chromium.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 wens@csie.org, tfiga@chromium.org, kyungmin.park@samsung.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 ezequiel@collabora.com, linux-kernel@vger.kernel.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This command is useful for explicitly flushing last decoded frame.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 .../staging/media/sunxi/cedrus/cedrus_video.c | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 5153b2bba21e..9eae69d5741c 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -331,6 +331,37 @@ static int cedrus_s_fmt_vid_out(struct file *file, void *priv,
 	return 0;
 }
 
+static int cedrus_try_decoder_cmd(struct file *file, void *fh,
+				  struct v4l2_decoder_cmd *dc)
+{
+	if (dc->cmd != V4L2_DEC_CMD_FLUSH)
+		return -EINVAL;
+
+	return 0;
+}
+
+static int cedrus_decoder_cmd(struct file *file, void *fh,
+			      struct v4l2_decoder_cmd *dc)
+{
+	struct cedrus_ctx *ctx = cedrus_file2ctx(file);
+	struct vb2_v4l2_buffer *out_vb, *cap_vb;
+	int ret;
+
+	ret = cedrus_try_decoder_cmd(file, fh, dc);
+	if (ret < 0)
+		return ret;
+
+	out_vb = v4l2_m2m_last_src_buf(ctx->fh.m2m_ctx);
+	cap_vb = v4l2_m2m_last_dst_buf(ctx->fh.m2m_ctx);
+
+	if (out_vb)
+		out_vb->flags &= ~V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
+	else if (cap_vb && cap_vb->is_held)
+		v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);
+
+	return 0;
+}
+
 const struct v4l2_ioctl_ops cedrus_ioctl_ops = {
 	.vidioc_querycap		= cedrus_querycap,
 
@@ -355,6 +386,9 @@ const struct v4l2_ioctl_ops cedrus_ioctl_ops = {
 	.vidioc_streamon		= v4l2_m2m_ioctl_streamon,
 	.vidioc_streamoff		= v4l2_m2m_ioctl_streamoff,
 
+	.vidioc_try_decoder_cmd		= cedrus_try_decoder_cmd,
+	.vidioc_decoder_cmd		= cedrus_decoder_cmd,
+
 	.vidioc_subscribe_event		= v4l2_ctrl_subscribe_event,
 	.vidioc_unsubscribe_event	= v4l2_event_unsubscribe,
 };
-- 
2.22.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
