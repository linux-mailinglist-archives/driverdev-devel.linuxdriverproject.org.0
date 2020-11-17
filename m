Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC072B5AC5
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Nov 2020 09:11:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9D62F85CB8;
	Tue, 17 Nov 2020 08:11:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LG4bDlurQSoE; Tue, 17 Nov 2020 08:11:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0852B85D2B;
	Tue, 17 Nov 2020 08:11:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B596F1BF340
 for <devel@linuxdriverproject.org>; Tue, 17 Nov 2020 08:11:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ACDA785C50
 for <devel@linuxdriverproject.org>; Tue, 17 Nov 2020 08:11:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A5e8mUWDnZnu for <devel@linuxdriverproject.org>;
 Tue, 17 Nov 2020 08:11:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from cmccmta2.chinamobile.com (cmccmta2.chinamobile.com
 [221.176.66.80])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1F44B85C3B
 for <devel@driverdev.osuosl.org>; Tue, 17 Nov 2020 08:11:43 +0000 (UTC)
Received: from spf.mail.chinamobile.com (unknown[172.16.121.17]) by
 rmmx-syy-dmz-app08-12008 (RichMail) with SMTP id 2ee85fb3859773e-9a4c5;
 Tue, 17 Nov 2020 16:11:03 +0800 (CST)
X-RM-TRANSID: 2ee85fb3859773e-9a4c5
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[10.42.68.12])
 by rmsmtp-syy-appsvr09-12009 (RichMail) with SMTP id 2ee95fb38595c5d-51dec;
 Tue, 17 Nov 2020 16:11:03 +0800 (CST)
X-RM-TRANSID: 2ee95fb38595c5d-51dec
From: Ding Xiang <dingxiang@cmss.chinamobile.com>
To: mchehab@kernel.org,
	sakari.ailus@linux.intel.com
Subject: [PATCH] media: atomisp: remove redundant NULL check of "params"
Date: Tue, 17 Nov 2020 16:10:58 +0800
Message-Id: <20201117081058.673291-1-dingxiang@cmss.chinamobile.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The check result of (!A || (A && B)) is equivalent to (!A || B),
so remove redundant NULL check of "params"

Signed-off-by: Ding Xiang <dingxiang@cmss.chinamobile.com>
---
 drivers/staging/media/atomisp/pci/sh_css_params.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css_params.c b/drivers/staging/media/atomisp/pci/sh_css_params.c
index 24fc497bd491..9eb02f463eba 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_params.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_params.c
@@ -4649,10 +4649,8 @@ ia_css_dvs2_6axis_config_allocate(const struct ia_css_stream *stream)
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
2.28.0



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
