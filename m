Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6ABFC85C
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 Nov 2019 15:04:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AC1098955B;
	Thu, 14 Nov 2019 14:04:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fWAZt-9A8Uor; Thu, 14 Nov 2019 14:04:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 53A5889529;
	Thu, 14 Nov 2019 14:04:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D31F1BF284
 for <devel@linuxdriverproject.org>; Thu, 14 Nov 2019 14:04:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 26B5B89529
 for <devel@linuxdriverproject.org>; Thu, 14 Nov 2019 14:04:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wxEadMs5BSbt for <devel@linuxdriverproject.org>;
 Thu, 14 Nov 2019 14:04:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 03EB2894FF
 for <devel@driverdev.osuosl.org>; Thu, 14 Nov 2019 14:04:44 +0000 (UTC)
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 873AF8907A96FB076A9B;
 Thu, 14 Nov 2019 22:04:38 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Thu, 14 Nov 2019
 22:04:29 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <valdis.kletnieks@vt.edu>, <gregkh@linuxfoundation.org>
Subject: [PATCH -next] staging: exfat: remove two unused functions
Date: Thu, 14 Nov 2019 22:03:48 +0800
Message-ID: <20191114140348.46088-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix sparse warnings:

drivers/staging/exfat/exfat_core.c:2045:4: warning: symbol 'calc_checksum_1byte' was not declared. Should it be static?
drivers/staging/exfat/exfat_core.c:2080:5: warning: symbol 'calc_checksum_4byte' was not declared. Should it be static?

The two functions has no caller in tree, so remove it.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/exfat/exfat_core.c | 35 -----------------------------------
 1 file changed, 35 deletions(-)

diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
index 1638ed2..d2d3447 100644
--- a/drivers/staging/exfat/exfat_core.c
+++ b/drivers/staging/exfat/exfat_core.c
@@ -2042,17 +2042,6 @@ static s32 exfat_calc_num_entries(struct uni_name_t *p_uniname)
 	return (len - 1) / 15 + 3;
 }
 
-u8 calc_checksum_1byte(void *data, s32 len, u8 chksum)
-{
-	int i;
-	u8 *c = (u8 *)data;
-
-	for (i = 0; i < len; i++, c++)
-		chksum = (((chksum & 1) << 7) | ((chksum & 0xFE) >> 1)) + *c;
-
-	return chksum;
-}
-
 u16 calc_checksum_2byte(void *data, s32 len, u16 chksum, s32 type)
 {
 	int i;
@@ -2077,30 +2066,6 @@ u16 calc_checksum_2byte(void *data, s32 len, u16 chksum, s32 type)
 	return chksum;
 }
 
-u32 calc_checksum_4byte(void *data, s32 len, u32 chksum, s32 type)
-{
-	int i;
-	u8 *c = (u8 *)data;
-
-	switch (type) {
-	case CS_PBR_SECTOR:
-		for (i = 0; i < len; i++, c++) {
-			if ((i == 106) || (i == 107) || (i == 112))
-				continue;
-			chksum = (((chksum & 1) << 31) |
-				  ((chksum & 0xFFFFFFFE) >> 1)) + (u32)*c;
-		}
-		break;
-	default
-			:
-		for (i = 0; i < len; i++, c++)
-			chksum = (((chksum & 1) << 31) |
-				  ((chksum & 0xFFFFFFFE) >> 1)) + (u32)*c;
-	}
-
-	return chksum;
-}
-
 /*
  *  Name Resolution Functions
  */
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
