Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9EC14A61E
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 15:30:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3EEEC8610F;
	Mon, 27 Jan 2020 14:30:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JxgOOqbv-1eR; Mon, 27 Jan 2020 14:30:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7B42684ECF;
	Mon, 27 Jan 2020 14:30:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 109671BF3C0
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 14:30:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0D7A320345
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 14:30:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0tUXeVZzd-Bh for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 14:30:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by silver.osuosl.org (Postfix) with ESMTPS id A8D2C20360
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 14:30:17 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 9ACF6293982
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH 1/4] media: hantro: Read be32 words starting at every fourth
 byte
Date: Mon, 27 Jan 2020 15:30:06 +0100
Message-Id: <20200127143009.15677-2-andrzej.p@collabora.com>
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

Since (luma/chroma)_qtable is an array of unsigned char, indexing it
returns consecutive byte locations, but we are supposed to read the arrays
in four-byte words. Consequently, we should be pointing
get_unaligned_be32() at consecutive word locations instead.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/staging/media/hantro/hantro_h1_jpeg_enc.c     | 9 +++++++--
 drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c | 9 +++++++--
 2 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
index 938b48d4d3d9..be787a045c7e 100644
--- a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
+++ b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
@@ -67,12 +67,17 @@ hantro_h1_jpeg_enc_set_qtable(struct hantro_dev *vpu,
 			      unsigned char *chroma_qtable)
 {
 	u32 reg, i;
+	__be32 *luma_qtable_p;
+	__be32 *chroma_qtable_p;
+
+	luma_qtable_p = (__be32 *)luma_qtable;
+	chroma_qtable_p = (__be32 *)chroma_qtable;
 
 	for (i = 0; i < H1_JPEG_QUANT_TABLE_COUNT; i++) {
-		reg = get_unaligned_be32(&luma_qtable[i]);
+		reg = get_unaligned_be32(&luma_qtable_p[i]);
 		vepu_write_relaxed(vpu, reg, H1_REG_JPEG_LUMA_QUAT(i));
 
-		reg = get_unaligned_be32(&chroma_qtable[i]);
+		reg = get_unaligned_be32(&chroma_qtable_p[i]);
 		vepu_write_relaxed(vpu, reg, H1_REG_JPEG_CHROMA_QUAT(i));
 	}
 }
diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c b/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
index 067892345b5d..bdb95652d6a8 100644
--- a/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
+++ b/drivers/staging/media/hantro/rk3399_vpu_hw_jpeg_enc.c
@@ -98,12 +98,17 @@ rk3399_vpu_jpeg_enc_set_qtable(struct hantro_dev *vpu,
 			       unsigned char *chroma_qtable)
 {
 	u32 reg, i;
+	__be32 *luma_qtable_p;
+	__be32 *chroma_qtable_p;
+
+	luma_qtable_p = (__be32 *)luma_qtable;
+	chroma_qtable_p = (__be32 *)chroma_qtable;
 
 	for (i = 0; i < VEPU_JPEG_QUANT_TABLE_COUNT; i++) {
-		reg = get_unaligned_be32(&luma_qtable[i]);
+		reg = get_unaligned_be32(&luma_qtable_p[i]);
 		vepu_write_relaxed(vpu, reg, VEPU_REG_JPEG_LUMA_QUAT(i));
 
-		reg = get_unaligned_be32(&chroma_qtable[i]);
+		reg = get_unaligned_be32(&chroma_qtable_p[i]);
 		vepu_write_relaxed(vpu, reg, VEPU_REG_JPEG_CHROMA_QUAT(i));
 	}
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
