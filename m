Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 41185600DB
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Jul 2019 08:11:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BC498861C5;
	Fri,  5 Jul 2019 06:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mc_VO-ewVsdY; Fri,  5 Jul 2019 06:11:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7916485A6E;
	Fri,  5 Jul 2019 06:11:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4E98D1BF38B
 for <devel@linuxdriverproject.org>; Fri,  5 Jul 2019 06:11:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4A3F986ADD
 for <devel@linuxdriverproject.org>; Fri,  5 Jul 2019 06:11:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SnxCT9ebXelq for <devel@linuxdriverproject.org>;
 Fri,  5 Jul 2019 06:11:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8E56986DBD
 for <devel@driverdev.osuosl.org>; Fri,  5 Jul 2019 06:11:51 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id i18so3798039pgl.11
 for <devel@driverdev.osuosl.org>; Thu, 04 Jul 2019 23:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JKctE4K5sDxRFY6pqCAg221NxbFbk7BKe+3f3Vj/l/k=;
 b=oLbTZ3dYRw04OLOoT0B1eslDirWqkSdQwltiuleECgUie7W9XpHl//Uyr+2LhffQKA
 BLvwFStInVCYYNJgVCa24gsd7aUgr8AaSheoX7sJRMrNCqoWgmvwb6z49VjfighnrPW3
 8HUmPEywsg6bbXs8Dv8YXG6mfP01fPivj9Vdy6Wy+X3w0aoYJ00yF2Xow2IxoZGcTehm
 DpyInJ8dubeUygU5ZWjArMLgTZ6rmlPL6VNpT2Iu87s9FI5/lKcJvB9+zldr7vbh37Wf
 9EApvPoPPQ1qQo0t2UKwuAJU2UZZOZT/+zirv7AteJgiU3vQPSQNtm745vobWbe10zfn
 2SpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JKctE4K5sDxRFY6pqCAg221NxbFbk7BKe+3f3Vj/l/k=;
 b=XCTZm5Bo7HUg99dpvYKD78gQSm4408oiJE4qhZ0apc/MaGODtZH2pjEPkHSGIT+VWn
 hT+iB+wSlUe0KxYJ2/kJcJU0YCcJUQZuFWeNne3VKHtMsZ1MY8o287tOHZKP4xyFzqtN
 EnI4I6s0+M7bgiDZcsgUq47os5ISd1cwyJ+D9kwwOnicSIFg7wPGhpkVHq+rQzLRlURM
 K2NYLLv3mfqN7rV9UR7AGHHfOjwv9yLgZd5iod+GG8hwbd79J5if8V9LWM5++I6zxyMw
 rIbsfFfsh2RZnq3MI4c9jBK3gvcHy6O9gtBAfeBp+b7VqNDF4hn9m1tJ7IDSyAAjjSeZ
 07Vg==
X-Gm-Message-State: APjAAAWNkenbg9FjBpflpuAKt/j7r/EZue/11qkq++mAwxXMlH7W13kB
 fiI2GmWsBPwBjyAMvgydx+Y=
X-Google-Smtp-Source: APXvYqyjXWxWRbF+f1IiMf2HG1CrMv3CJOpcVh23+h/FcPYzswRd3WCeH3CaMUdSY38vaTAgjLo1Iw==
X-Received: by 2002:a17:90a:3086:: with SMTP id
 h6mr2816224pjb.14.1562307111068; 
 Thu, 04 Jul 2019 23:11:51 -0700 (PDT)
Received: from localhost.localdomain ([122.163.64.117])
 by smtp.gmail.com with ESMTPSA id p15sm12249707pjf.27.2019.07.04.23.11.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 04 Jul 2019 23:11:50 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [PATCH] staging: media: davinci_vpfe: Replace function
 vpfe_isif_cleanup()
Date: Fri,  5 Jul 2019 11:41:26 +0530
Message-Id: <20190705061126.23876-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Rename function isif_remove to vpfe_isif_cleanup, as
vpfe_isif_cleanup does nothing but call isif_remove.
Change type of new vpfe_isif_cleanup from static to non-static to match
the old function definition.
Remove the original vpfe_isif_cleanup.
Modify calls to isif_remove to vpfe_isif_cleanup.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 .../staging/media/davinci_vpfe/dm365_isif.c   | 21 +++++++------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
index 46fd8184fc77..c21106a5dc7b 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_isif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_isif.c
@@ -1932,8 +1932,13 @@ static const struct v4l2_ctrl_config vpfe_isif_gain_offset = {
 	.def = 0,
 };
 
-static void isif_remove(struct vpfe_isif_device *isif,
-			struct platform_device *pdev)
+/*
+ * vpfe_isif_cleanup - isif module cleanup
+ * @isif: pointer to isif subdevice
+ * @dev: pointer to platform device structure
+ */
+void vpfe_isif_cleanup(struct vpfe_isif_device *isif,
+		       struct platform_device *pdev)
 {
 	struct resource *res;
 	int i = 0;
@@ -2081,17 +2086,7 @@ int vpfe_isif_init(struct vpfe_isif_device *isif, struct platform_device *pdev)
 	return status;
 isif_fail:
 	v4l2_ctrl_handler_free(&isif->ctrls);
-	isif_remove(isif, pdev);
+	vpfe_isif_cleanup(isif, pdev);
 	return status;
 }
 
-/*
- * vpfe_isif_cleanup - isif module cleanup
- * @isif: pointer to isif subdevice
- * @dev: pointer to platform device structure
- */
-void
-vpfe_isif_cleanup(struct vpfe_isif_device *isif, struct platform_device *pdev)
-{
-	isif_remove(isif, pdev);
-}
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
