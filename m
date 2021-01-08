Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1BB2EEF5B
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Jan 2021 10:21:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4723A87318;
	Fri,  8 Jan 2021 09:21:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4I+IXDj3KJu3; Fri,  8 Jan 2021 09:21:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 972E787311;
	Fri,  8 Jan 2021 09:21:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE9201BF5A5
 for <devel@linuxdriverproject.org>; Fri,  8 Jan 2021 09:21:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BBC0986B7E
 for <devel@linuxdriverproject.org>; Fri,  8 Jan 2021 09:21:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VA2H0y8zMUXe for <devel@linuxdriverproject.org>;
 Fri,  8 Jan 2021 09:21:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F128286CF9
 for <devel@driverdev.osuosl.org>; Fri,  8 Jan 2021 09:21:04 +0000 (UTC)
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4DByHT2cqpzj5V8;
 Fri,  8 Jan 2021 17:20:05 +0800 (CST)
Received: from ubuntu.network (10.175.138.68) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.498.0; Fri, 8 Jan 2021 17:20:51 +0800
From: Zheng Yongjun <zhengyongjun3@huawei.com>
To: <mchehab@kernel.org>, <linux-media@vger.kernel.org>,
 <devel@driverdev.osuosl.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 -next] media: atomisp: convert comma to semicolon
Date: Fri, 8 Jan 2021 17:21:35 +0800
Message-ID: <20210108092135.18706-1-zhengyongjun3@huawei.com>
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

Replace a comma between expression statements by a semicolon.

Signed-off-by: Zheng Yongjun <zhengyongjun3@huawei.com>
---
 drivers/staging/media/atomisp/pci/sh_css_params.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css_params.c b/drivers/staging/media/atomisp/pci/sh_css_params.c
index 24fc497bd491..9fad28b97201 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_params.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_params.c
@@ -949,7 +949,7 @@ sh_css_set_black_frame(struct ia_css_stream *stream,
 
 	params = stream->isp_params_configs;
 	height = raw_black_frame->info.res.height;
-	width = raw_black_frame->info.padded_width,
+	width = raw_black_frame->info.padded_width;
 
 	ptr = raw_black_frame->data
 	+ raw_black_frame->planes.raw.offset;
@@ -1442,8 +1442,8 @@ static int sh_css_params_default_morph_table(
 
 	IA_CSS_ENTER_PRIVATE("");
 
-	step = (ISP_VEC_NELEMS / 16) * 128,
-	width = binary->morph_tbl_width,
+	step = (ISP_VEC_NELEMS / 16) * 128;
+	width = binary->morph_tbl_width;
 	height = binary->morph_tbl_height;
 
 	tab = ia_css_morph_table_allocate(width, height);
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
