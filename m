Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C922FE5FB
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Jan 2021 10:12:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 88F42871A2;
	Thu, 21 Jan 2021 09:12:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2MxobJ2CSJ6G; Thu, 21 Jan 2021 09:12:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7F09D87195;
	Thu, 21 Jan 2021 09:12:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6558B1BF3F4
 for <devel@linuxdriverproject.org>; Thu, 21 Jan 2021 09:12:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5AE4986406
 for <devel@linuxdriverproject.org>; Thu, 21 Jan 2021 09:12:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uWYIzWWMHtqz for <devel@linuxdriverproject.org>;
 Thu, 21 Jan 2021 09:12:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from out30-43.freemail.mail.aliyun.com
 (out30-43.freemail.mail.aliyun.com [115.124.30.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4998F86CB6
 for <devel@driverdev.osuosl.org>; Thu, 21 Jan 2021 09:12:09 +0000 (UTC)
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R591e4; CH=green; DM=||false|;
 DS=||; FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e04423;
 MF=abaci-bugfix@linux.alibaba.com; NM=1; PH=DS; RN=7; SR=0;
 TI=SMTPD_---0UMQ.y10_1611220314; 
Received: from
 j63c13417.sqa.eu95.tbsite.net(mailfrom:abaci-bugfix@linux.alibaba.com
 fp:SMTPD_---0UMQ.y10_1611220314) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 21 Jan 2021 17:12:06 +0800
From: Yang Li <abaci-bugfix@linux.alibaba.com>
To: mchehab@kernel.org
Subject: [PATCH 3/3] media: atomisp: remove redundant NULL check
Date: Thu, 21 Jan 2021 17:11:52 +0800
Message-Id: <1611220312-89384-3-git-send-email-abaci-bugfix@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1611220312-89384-1-git-send-email-abaci-bugfix@linux.alibaba.com>
References: <1611220312-89384-1-git-send-email-abaci-bugfix@linux.alibaba.com>
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
./drivers/staging/media/atomisp/pci/atomisp_cmd.c:4269:2-8: WARNING:
NULL check before some freeing functions is not needed.
./drivers/staging/media/atomisp/pci/atomisp_cmd.c:4626:2-8: WARNING:
NULL check before some freeing functions is not needed.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <abaci-bugfix@linux.alibaba.com>
---
 drivers/staging/media/atomisp/pci/atomisp_cmd.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index 592ea99..72a6cac 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -4265,8 +4265,7 @@ int atomisp_set_parameters(struct video_device *vdev,
 apply_parameter_failed:
 	if (css_param)
 		atomisp_free_css_parameters(css_param);
-	if (param)
-		kvfree(param);
+	kvfree(param);
 
 	return ret;
 }
@@ -4626,8 +4625,7 @@ int atomisp_fixed_pattern(struct atomisp_sub_device *asd, int flag,
 err:
 	if (ret && res)
 		ia_css_frame_free(res);
-	if (tmp_buf)
-		vfree(tmp_buf);
+	vfree(tmp_buf);
 	if (ret == 0)
 		*result = res;
 	return ret;
-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
