Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E60C714A61A
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 15:30:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E938A879CC;
	Mon, 27 Jan 2020 14:30:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LQ5cSjTZcbOQ; Mon, 27 Jan 2020 14:30:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 34F2787917;
	Mon, 27 Jan 2020 14:30:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C23681BF977
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 14:30:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BFC1384B46
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 14:30:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hDJCvCbgMiqD for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 14:30:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1FC0984B65
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 14:30:18 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 93186293985
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH 4/4] media: hantro: Write quantization table registers in
 increasing addresses order
Date: Mon, 27 Jan 2020 15:30:09 +0100
Message-Id: <20200127143009.15677-5-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200127143009.15677-1-andrzej.p@collabora.com>
References: <20200127143009.15677-1-andrzej.p@collabora.com>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, kernel@collabora.com,
 linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Luma and chroma qtables need to be written into two 16-register blocks,
each table consisting of 64 bytes total. The blocks are contiguous and
start at offset 0 for luma and at offset 0x40 for chroma.

The seemingly innocent optimization of writing the two blocks using one
loop causes side effects which result in improper values of quantization
tables being used by the hardware during encoding. Visually this results
in macroblocking artifacts around contrasting edges in encoded images. The
artifacts look like horizontally flipped shadows of the said edges.
Changing the write operations to non-relaxed variant doesn't help.

This patch removes this premature optimization and after this change the
macroblocking artifacts around contrasting edges are gone.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/staging/media/hantro/hantro_h1_jpeg_enc.c     | 6 ++++++
 drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c | 6 ++++++
 2 files changed, 12 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
index bd05aea1bd71..fb43ec770e9e 100644
--- a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
+++ b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
@@ -73,10 +73,16 @@ hantro_h1_jpeg_enc_set_qtable(struct hantro_dev *vpu,
 	luma_qtable_p = (__be32 *)luma_qtable;
 	chroma_qtable_p = (__be32 *)chroma_qtable;
 
+	/*
+	 * Quantization table registers must be written in contiguous blocks.
+	 * DO NOT collapse the below two "for" loops into one.
+	 */
 	for (i = 0; i < H1_JPEG_QUANT_TABLE_COUNT; i++) {
 		reg = get_unaligned_be32(&luma_qtable_p[i]);
 		vepu_write_relaxed(vpu, reg, H1_REG_JPEG_LUMA_QUAT(i));
+	}
 
+	for (i = 0; i < H1_JPEG_QUANT_TABLE_COUNT; i++) {
 		reg = get_unaligned_be32(&chroma_qtable_p[i]);
 		vepu_write_relaxed(vpu, reg, H1_REG_JPEG_CHROMA_QUAT(i));
 	}
diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c b/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
index a0cf34073235..f4dbffda0be7 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
+++ b/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
@@ -103,10 +103,16 @@ rk3399_vpu_jpeg_enc_set_qtable(struct hantro_dev *vpu,
 	luma_qtable_p = (__be32 *)luma_qtable;
 	chroma_qtable_p = (__be32 *)chroma_qtable;
 
+	/*
+	 * Quantization table registers must be written in contiguous blocks.
+	 * DO NOT collapse the below two "for" loops into one.
+	 */
 	for (i = 0; i < VEPU_JPEG_QUANT_TABLE_COUNT; i++) {
 		reg = get_unaligned_be32(&luma_qtable_p[i]);
 		vepu_write_relaxed(vpu, reg, VEPU_REG_JPEG_LUMA_QUAT(i));
+	}
 
+	for (i = 0; i < VEPU_JPEG_QUANT_TABLE_COUNT; i++) {
 		reg = get_unaligned_be32(&chroma_qtable_p[i]);
 		vepu_write_relaxed(vpu, reg, VEPU_REG_JPEG_CHROMA_QUAT(i));
 	}
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
