Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9A73038F1
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 Jan 2021 10:26:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8165387049;
	Tue, 26 Jan 2021 09:25:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AB68JMANEj2a; Tue, 26 Jan 2021 09:25:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EB4D787034;
	Tue, 26 Jan 2021 09:25:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AB7B41BF294
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 09:25:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 92318203E3
 for <devel@linuxdriverproject.org>; Tue, 26 Jan 2021 09:25:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JrO1pPV33ymk for <devel@linuxdriverproject.org>;
 Tue, 26 Jan 2021 09:25:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from out30-56.freemail.mail.aliyun.com
 (out30-56.freemail.mail.aliyun.com [115.124.30.56])
 by silver.osuosl.org (Postfix) with ESMTPS id BFC762002C
 for <devel@driverdev.osuosl.org>; Tue, 26 Jan 2021 09:25:52 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R161e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e01424;
 MF=abaci-bugfix@linux.alibaba.com; NM=1; PH=DS; RN=7; SR=0;
 TI=SMTPD_---0UMxxyMj_1611653142; 
Received: from
 j63c13417.sqa.eu95.tbsite.net(mailfrom:abaci-bugfix@linux.alibaba.com
 fp:SMTPD_---0UMxxyMj_1611653142) by smtp.aliyun-inc.com(127.0.0.1);
 Tue, 26 Jan 2021 17:25:49 +0800
From: Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>
To: mchehab@kernel.org
Subject: [PATCH] media: atomisp: Simplify the calculation of variables
Date: Tue, 26 Jan 2021 17:25:40 +0800
Message-Id: <1611653140-76630-1-git-send-email-abaci-bugfix@linux.alibaba.com>
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
 linux-kernel@vger.kernel.org, Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>,
 sakari.ailus@linux.intel.com, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the following coccicheck warnings:

./drivers/staging/media/atomisp/pci/sh_css_params.c:4652:24-26: WARNING
!A || A && B is equivalent to !A || B.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Jiapeng Zhong <abaci-bugfix@linux.alibaba.com>
---
 drivers/staging/media/atomisp/pci/sh_css_params.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css_params.c b/drivers/staging/media/atomisp/pci/sh_css_params.c
index 24fc497..9eb02f4 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_params.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_params.c
@@ -4649,10 +4649,8 @@ struct ia_css_dvs_6axis_config *
 	params = stream->isp_params_configs;
 
 	/* Backward compatibility by default consider pipe as Video*/
-	if (!params || (params &&
-			!params->pipe_dvs_6axis_config[IA_CSS_PIPE_ID_VIDEO])) {
+	if (!params || !params->pipe_dvs_6axis_config[IA_CSS_PIPE_ID_VIDEO])
 		goto err;
-	}
 
 	dvs_config = kvcalloc(1, sizeof(struct ia_css_dvs_6axis_config),
 			      GFP_KERNEL);
-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
