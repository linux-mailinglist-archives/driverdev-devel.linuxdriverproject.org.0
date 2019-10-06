Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A276DCD00F
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Oct 2019 11:26:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5FDFA874AB;
	Sun,  6 Oct 2019 09:26:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nKzwtP8XsSuF; Sun,  6 Oct 2019 09:26:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1070E86FBB;
	Sun,  6 Oct 2019 09:26:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A53C01BF366
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 09:26:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A075184FC9
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 09:26:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cfRrgnJO1rGX for <devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 09:26:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 71CAE84F61
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 09:26:01 +0000 (UTC)
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 1B2E56FFE9E82C81FE6C;
 Sun,  6 Oct 2019 17:25:59 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Sun, 6 Oct 2019
 17:25:51 +0800
From: zhengbin <zhengbin13@huawei.com>
To: <gregkh@linuxfoundation.org>, <hariprasad.kelam@gmail.com>,
 <nishkadg.linux@gmail.com>, <payal.s.kshirsagar.98@gmail.com>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH] staging: rtl8723bs: Remove set but not used variable 'oldcnt'
Date: Sun, 6 Oct 2019 17:33:02 +0800
Message-ID: <1570354382-86879-1-git-send-email-zhengbin13@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
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
Cc: zhengbin13@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes gcc '-Wunused-but-set-variable' warning:

drivers/staging/rtl8723bs/hal/sdio_ops.c: In function sdio_read_port:
drivers/staging/rtl8723bs/hal/sdio_ops.c:430:6: warning: variable oldcnt set but not used [-Wunused-but-set-variable]

It is not used since commit dedf215bd1c7 ("staging:
rtl8723bs: remove unused code")

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: zhengbin <zhengbin13@huawei.com>
---
 drivers/staging/rtl8723bs/hal/sdio_ops.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index 301d327..1267fe9 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -427,7 +427,6 @@ static u32 sdio_read_port(
 	struct adapter *adapter;
 	struct sdio_data *psdio;
 	struct hal_com_data *hal;
-	u32 oldcnt;
 	s32 err;


@@ -437,7 +436,6 @@ static u32 sdio_read_port(

 	HalSdioGetCmdAddr8723BSdio(adapter, addr, hal->SdioRxFIFOCnt++, &addr);

-	oldcnt = cnt;
 	if (cnt > psdio->block_transfer_len)
 		cnt = _RND(cnt, psdio->block_transfer_len);
 /* 	cnt = sdio_align_size(cnt); */
--
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
