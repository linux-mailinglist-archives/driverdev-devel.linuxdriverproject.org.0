Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D2ED12EBE66
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Jan 2021 14:18:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6FE16230A4;
	Wed,  6 Jan 2021 13:18:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qy+pEmEmJY0n; Wed,  6 Jan 2021 13:18:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BFC5622FC6;
	Wed,  6 Jan 2021 13:18:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D03E61BF34B
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 13:18:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BC68D204C7
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 13:18:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nn39Eho9CpI2 for <devel@linuxdriverproject.org>;
 Wed,  6 Jan 2021 13:17:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga06-in.huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by silver.osuosl.org (Postfix) with ESMTPS id AB26C23077
 for <devel@driverdev.osuosl.org>; Wed,  6 Jan 2021 13:17:16 +0000 (UTC)
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.59])
 by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4D9qdB1wWkzhvnK;
 Wed,  6 Jan 2021 21:16:30 +0800 (CST)
Received: from ubuntu.network (10.175.138.68) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.498.0; Wed, 6 Jan 2021 21:17:08 +0800
From: Zheng Yongjun <zhengyongjun3@huawei.com>
To: <mchehab@kernel.org>, <linux-media@vger.kernel.org>,
 <devel@driverdev.osuosl.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH -next] media: atomisp: use resource_size
Date: Wed, 6 Jan 2021 21:17:37 +0800
Message-ID: <20210106131737.32571-1-zhengyongjun3@huawei.com>
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
Cc: gregkh@linuxfoundation.org, sakari.ailus@linux.intel.com, Zheng
 Yongjun <zhengyongjun3@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use resource_size rather than a verbose computation on
the end and start fields.

Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
---
 drivers/staging/media/atomisp/pci/sh_css_params.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css_params.c b/drivers/staging/media/atomisp/pci/sh_css_params.c
index 24fc497bd491..4a02948e5612 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_params.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_params.c
@@ -949,7 +949,7 @@ sh_css_set_black_frame(struct ia_css_stream *stream,
 
 	params = stream->isp_params_configs;
 	height = raw_black_frame->info.res.height;
-	width = raw_black_frame->info.padded_width,
+	width = raw_black_frame->info.padded_width;
 
 	ptr = raw_black_frame->data
 	+ raw_black_frame->planes.raw.offset;
@@ -1443,7 +1443,7 @@ static int sh_css_params_default_morph_table(
 	IA_CSS_ENTER_PRIVATE("");
 
 	step = (ISP_VEC_NELEMS / 16) * 128,
-	width = binary->morph_tbl_width,
+	width = binary->morph_tbl_width;
 	height = binary->morph_tbl_height;
 
 	tab = ia_css_morph_table_allocate(width, height);
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
