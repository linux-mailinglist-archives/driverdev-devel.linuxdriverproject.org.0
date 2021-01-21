Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 721E62FE4F6
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Jan 2021 09:29:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4BADD86BB0;
	Thu, 21 Jan 2021 08:29:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gOuiICdFIWV1; Thu, 21 Jan 2021 08:29:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2BC2C86B72;
	Thu, 21 Jan 2021 08:29:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 74F7C1BF5DD
 for <devel@linuxdriverproject.org>; Thu, 21 Jan 2021 08:29:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 642F920396
 for <devel@linuxdriverproject.org>; Thu, 21 Jan 2021 08:29:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zXUrEKkXKIP6 for <devel@linuxdriverproject.org>;
 Thu, 21 Jan 2021 08:29:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from out30-57.freemail.mail.aliyun.com
 (out30-57.freemail.mail.aliyun.com [115.124.30.57])
 by silver.osuosl.org (Postfix) with ESMTPS id EEF442026D
 for <devel@driverdev.osuosl.org>; Thu, 21 Jan 2021 08:29:03 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R591e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=alimailimapcm10staff010182156082;
 MF=abaci-bugfix@linux.alibaba.com; NM=1; PH=DS; RN=7; SR=0;
 TI=SMTPD_---0UMPTmlJ_1611217732; 
Received: from
 j63c13417.sqa.eu95.tbsite.net(mailfrom:abaci-bugfix@linux.alibaba.com
 fp:SMTPD_---0UMPTmlJ_1611217732) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 21 Jan 2021 16:29:00 +0800
From: Yang Li <abaci-bugfix@linux.alibaba.com>
To: mchehab@kernel.org
Subject: [PATCH] media: atomisp: remove redundant NULL check
Date: Thu, 21 Jan 2021 16:28:51 +0800
Message-Id: <1611217731-56866-1-git-send-email-abaci-bugfix@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Yang Li <abaci-bugfix@linux.alibaba.com>,
 sakari.ailus@linux.intel.com, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix below warnings reported by coccicheck:
./drivers/staging/media/atomisp/pci/sh_css_params.c:1575:2-8: WARNING:
NULL check before some freeing functions is not needed.
./drivers/staging/media/atomisp/pci/sh_css_params.c:3006:2-8: WARNING:
NULL check before some freeing functions is not needed.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <abaci-bugfix@linux.alibaba.com>
---
 drivers/staging/media/atomisp/pci/sh_css_params.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css_params.c b/drivers/staging/media/atomisp/pci/sh_css_params.c
index 24fc497..569473b9 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_params.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_params.c
@@ -1575,8 +1575,7 @@ struct ia_css_isp_3a_statistics_map *
 	return me;
 
 err:
-	if (me)
-		kvfree(me);
+	kvfree(me);
 	return NULL;
 }
 
@@ -3006,8 +3005,7 @@ static void free_map(struct sh_css_ddr_address_map *map)
 	}
 
 	kvfree(params);
-	if (per_frame_params)
-		kvfree(per_frame_params);
+	kvfree(per_frame_params);
 	stream->isp_params_configs = NULL;
 	stream->per_frame_isp_params_configs = NULL;
 
-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
