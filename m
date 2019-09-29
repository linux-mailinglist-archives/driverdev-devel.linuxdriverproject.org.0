Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 88390C1942
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Sep 2019 22:01:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C80E8875AD;
	Sun, 29 Sep 2019 20:01:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Y32VlTt4zvN; Sun, 29 Sep 2019 20:01:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BEBB28634E;
	Sun, 29 Sep 2019 20:01:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9A4521BF389
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 20:01:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9482E86005
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 20:01:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3Txg5+w1O-Va for <devel@linuxdriverproject.org>;
 Sun, 29 Sep 2019 20:01:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs17.siol.net [185.57.226.208])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DED8787595
 for <devel@driverdev.osuosl.org>; Sun, 29 Sep 2019 20:01:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 113EC5226F2;
 Sun, 29 Sep 2019 22:01:00 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id fCy5jAs5IWsj; Sun, 29 Sep 2019 22:00:59 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 8A3685226EA;
 Sun, 29 Sep 2019 22:00:59 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 27537522639;
 Sun, 29 Sep 2019 22:00:57 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
 paul.kocialkowski@bootlin.com, mripard@kernel.org, pawel@osciak.com,
 m.szyprowski@samsung.com, kyungmin.park@samsung.com, tfiga@chromium.org,
 wens@csie.org
Subject: [PATCH v2 3/6] media: v4l2-mem2mem: add stateless_(try_)decoder_cmd
 ioctl helpers
Date: Sun, 29 Sep 2019 22:00:20 +0200
Message-Id: <20190929200023.215831-4-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190929200023.215831-1-jernej.skrabec@siol.net>
References: <20190929200023.215831-1-jernej.skrabec@siol.net>
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
Cc: devel@driverdev.osuosl.org, jernej.skrabec@siol.net, jonas@kwiboo.se,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 boris.brezillon@collabora.com, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

These helpers are used by stateless codecs when they support multiple
slices per frame and hold capture buffer flag is set. It's expected that
all such codecs will use this code.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/media/v4l2-core/v4l2-mem2mem.c | 35 ++++++++++++++++++++++++++
 include/media/v4l2-mem2mem.h           |  4 +++
 2 files changed, 39 insertions(+)

diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c b/drivers/media/v4l2-core/v4l2-mem2mem.c
index 19937dd3c6f6..2677a07e4c9b 100644
--- a/drivers/media/v4l2-core/v4l2-mem2mem.c
+++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
@@ -1154,6 +1154,41 @@ int v4l2_m2m_ioctl_try_decoder_cmd(struct file *file, void *fh,
 }
 EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_try_decoder_cmd);
 
+int v4l2_m2m_ioctl_stateless_try_decoder_cmd(struct file *file, void *fh,
+					     struct v4l2_decoder_cmd *dc)
+{
+	if (dc->cmd != V4L2_DEC_CMD_FLUSH)
+		return -EINVAL;
+
+	dc->flags = 0;
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_stateless_try_decoder_cmd);
+
+int v4l2_m2m_ioctl_stateless_decoder_cmd(struct file *file, void *priv,
+					 struct v4l2_decoder_cmd *dc)
+{
+	struct v4l2_fh *fh = file->private_data;
+	struct vb2_v4l2_buffer *out_vb, *cap_vb;
+	int ret;
+
+	ret = v4l2_m2m_ioctl_stateless_try_decoder_cmd(file, priv, dc);
+	if (ret < 0)
+		return ret;
+
+	out_vb = v4l2_m2m_last_src_buf(fh->m2m_ctx);
+	cap_vb = v4l2_m2m_last_dst_buf(fh->m2m_ctx);
+
+	if (out_vb)
+		out_vb->flags &= ~V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
+	else if (cap_vb && cap_vb->is_held)
+		v4l2_m2m_buf_done(cap_vb, VB2_BUF_STATE_DONE);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(v4l2_m2m_ioctl_stateless_decoder_cmd);
+
 /*
  * v4l2_file_operations helpers. It is assumed here same lock is used
  * for the output and the capture buffer queue.
diff --git a/include/media/v4l2-mem2mem.h b/include/media/v4l2-mem2mem.h
index c9fa96c8eed1..8ae2f56c7fa3 100644
--- a/include/media/v4l2-mem2mem.h
+++ b/include/media/v4l2-mem2mem.h
@@ -714,6 +714,10 @@ int v4l2_m2m_ioctl_try_encoder_cmd(struct file *file, void *fh,
 				   struct v4l2_encoder_cmd *ec);
 int v4l2_m2m_ioctl_try_decoder_cmd(struct file *file, void *fh,
 				   struct v4l2_decoder_cmd *dc);
+int v4l2_m2m_ioctl_stateless_try_decoder_cmd(struct file *file, void *fh,
+					     struct v4l2_decoder_cmd *dc);
+int v4l2_m2m_ioctl_stateless_decoder_cmd(struct file *file, void *priv,
+					 struct v4l2_decoder_cmd *dc);
 int v4l2_m2m_fop_mmap(struct file *file, struct vm_area_struct *vma);
 __poll_t v4l2_m2m_fop_poll(struct file *file, poll_table *wait);
 
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
