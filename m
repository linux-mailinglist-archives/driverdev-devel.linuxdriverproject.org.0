Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF45314A61F
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 15:30:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6F92F879EF;
	Mon, 27 Jan 2020 14:30:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WkzZ2QDRTG5q; Mon, 27 Jan 2020 14:30:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BD84D8795A;
	Mon, 27 Jan 2020 14:30:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B10E31BF3C0
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 14:30:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A586884353
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 14:30:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7OhQOqbVZBt9 for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 14:30:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B824D848F5
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 14:30:17 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id E9B2B293983
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH 2/4] media: hantro: Use standard luma quantization table
Date: Mon, 27 Jan 2020 15:30:07 +0100
Message-Id: <20200127143009.15677-3-andrzej.p@collabora.com>
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

The table is actually different in the document than in this file, so align
this file with the document.

Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/staging/media/hantro/hantro_jpeg.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_jpeg.c b/drivers/staging/media/hantro/hantro_jpeg.c
index 125eb41f2ede..d3b381d00b23 100644
--- a/drivers/staging/media/hantro/hantro_jpeg.c
+++ b/drivers/staging/media/hantro/hantro_jpeg.c
@@ -23,17 +23,17 @@
 #define HUFF_CHROMA_AC_OFF	409
 
 /* Default tables from JPEG ITU-T.81
- * (ISO/IEC 10918-1) Annex K.3, I
+ * (ISO/IEC 10918-1) Annex K, tables K.1 and K.2
  */
 static const unsigned char luma_q_table[] = {
-	0x10, 0x0b, 0x0a, 0x10, 0x7c, 0x8c, 0x97, 0xa1,
-	0x0c, 0x0c, 0x0e, 0x13, 0x7e, 0x9e, 0xa0, 0x9b,
-	0x0e, 0x0d, 0x10, 0x18, 0x8c, 0x9d, 0xa9, 0x9c,
-	0x0e, 0x11, 0x16, 0x1d, 0x97, 0xbb, 0xb4, 0xa2,
-	0x12, 0x16, 0x25, 0x38, 0xa8, 0x6d, 0x67, 0xb1,
-	0x18, 0x23, 0x37, 0x40, 0xb5, 0x68, 0x71, 0xc0,
+	0x10, 0x0b, 0x0a, 0x10, 0x18, 0x28, 0x33, 0x3d,
+	0x0c, 0x0c, 0x0e, 0x13, 0x1a, 0x3a, 0x3c, 0x37,
+	0x0e, 0x0d, 0x10, 0x18, 0x28, 0x39, 0x45, 0x38,
+	0x0e, 0x11, 0x16, 0x1d, 0x33, 0x57, 0x50, 0x3e,
+	0x12, 0x16, 0x25, 0x38, 0x44, 0x6d, 0x67, 0x4d,
+	0x18, 0x23, 0x37, 0x40, 0x51, 0x68, 0x71, 0x5c,
 	0x31, 0x40, 0x4e, 0x57, 0x67, 0x79, 0x78, 0x65,
-	0x48, 0x5c, 0x5f, 0x62, 0x70, 0x64, 0x67, 0xc7,
+	0x48, 0x5c, 0x5f, 0x62, 0x70, 0x64, 0x67, 0x63
 };
 
 static const unsigned char chroma_q_table[] = {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
