Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 676D02EBE62
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Jan 2021 14:18:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1191886A2E;
	Wed,  6 Jan 2021 13:18:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1IkZ8tInKPjG; Wed,  6 Jan 2021 13:18:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 34BDE8695A;
	Wed,  6 Jan 2021 13:18:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4BDE21BF34B
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 13:18:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3AEA5204C7
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 13:18:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x6iUO1qQ5pq1 for <devel@linuxdriverproject.org>;
 Wed,  6 Jan 2021 13:17:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id 14AC52309D
 for <devel@driverdev.osuosl.org>; Wed,  6 Jan 2021 13:17:49 +0000 (UTC)
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4D9qdH1hg7zl1rM;
 Wed,  6 Jan 2021 21:16:35 +0800 (CST)
Received: from ubuntu.network (10.175.138.68) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.498.0; Wed, 6 Jan 2021 21:17:37 +0800
From: Zheng Yongjun <zhengyongjun3@huawei.com>
To: <ezequiel@collabora.com>, <mchehab@kernel.org>,
 <linux-media@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <devel@driverdev.osuosl.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH -next] media: rkvdec: use resource_size
Date: Wed, 6 Jan 2021 21:18:20 +0800
Message-ID: <20210106131820.32706-1-zhengyongjun3@huawei.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-Originating-IP: [10.175.138.68]
X-CFilter-Loop: Reflected
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
Cc: gregkh@linuxfoundation.org, Zheng Yongjun <zhengyongjun3@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use resource_size rather than a verbose computation on
the end and start fields.

Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index d25c4a37e2af..66572066e7a0 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -130,7 +130,7 @@ static void rkvdec_reset_fmt(struct rkvdec_ctx *ctx, struct v4l2_format *f,
 	memset(f, 0, sizeof(*f));
 	f->fmt.pix_mp.pixelformat = fourcc;
 	f->fmt.pix_mp.field = V4L2_FIELD_NONE;
-	f->fmt.pix_mp.colorspace = V4L2_COLORSPACE_REC709,
+	f->fmt.pix_mp.colorspace = V4L2_COLORSPACE_REC709;
 	f->fmt.pix_mp.ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 	f->fmt.pix_mp.quantization = V4L2_QUANTIZATION_DEFAULT;
 	f->fmt.pix_mp.xfer_func = V4L2_XFER_FUNC_DEFAULT;
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
