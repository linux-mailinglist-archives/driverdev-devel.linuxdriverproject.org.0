Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5B66FBA6
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 10:54:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 97302203F8;
	Mon, 22 Jul 2019 08:54:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iuu3lMUY8vdL; Mon, 22 Jul 2019 08:54:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B73DB203A2;
	Mon, 22 Jul 2019 08:54:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B4E51BF34E
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 08:54:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 170E8840BF
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 08:54:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rNGVkbYmJPZF for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 08:54:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E96CF83FF4
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 08:54:33 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id x15so6999974pgg.8
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 01:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=biM0OSNS5ZGpRpAgnAVdTqKaXhBNpNIPHYCeUlAsDXo=;
 b=J3F1dnC/ZFg2XPia01dmjicHZLH6vHlWaKqphRc4EVU9k8NuQmdSQtNcFq3xlrCUKF
 90Lw6ZwJiMBNPbkAZjTSXDqkmdKC8Hf7hpYpUBTbWxuBIeqWzJcGy1IVr7woksYgOtp6
 zPw7KwySYfsNCVZ45yNTuAfY/EGdXoZam8Ke4ThTVVeDH/V8QAzr38y+MqFODoDhkLrU
 K7FLg9ySAvF9OHN72uKzG2mifcKYRCYLGKzDOerJKs9haMZEJqtrV0eJoHIJ0ulkx0kS
 C5d+TimIxfM9YwX8gHjjdbM3WNvfQYoNvJFtcoGxEKeYF9vjesSHqanWj2Ly5DlTo1hq
 BSUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=biM0OSNS5ZGpRpAgnAVdTqKaXhBNpNIPHYCeUlAsDXo=;
 b=pPaJNU4ki8v2NUvHJlSGX28hrXWUsPNLBr0AdLfYruxPPtKTKVVkDkGiolhhquGscp
 62/lqkC1gRVIkl+Oxxh2TwaYKzKpdL2pm8B66OtwxY2K9fI8amIYPZlnRYWDI2Z5WBT9
 Y6uXQDoAOjFioE4O+UsfPE9TW+9SZkgdaIIBc9mijI+9ezfKhJrESWjGjrkO/EuQY878
 0Ym7Uz08VRJZ0XpqaA0zvMO3AZgjkgTx7424P+BHPlQ7AGzHQXKqrrAgxQ8WyRAJaAti
 b7shJ/WImauErrxyOZMcTBngH5wEMQwXvJ9kM8Y5PrKG6LXqudm8zSZaVWTw5HijDkDX
 /QOA==
X-Gm-Message-State: APjAAAUzPCoVnIkSgq5gb41NJAx3DvZBKqkxgDrwwTpUXoynZpYD6FxT
 YS5m3IORW4lTsQAMeieaGxc=
X-Google-Smtp-Source: APXvYqw4NAMsN7QtS8azeL5m5K/spvFcnwQ2npwNGaA3WlUAzpUuuuj1y5plZArSatdp9cta3HhzbQ==
X-Received: by 2002:a63:eb56:: with SMTP id b22mr71136439pgk.355.1563785673534; 
 Mon, 22 Jul 2019 01:54:33 -0700 (PDT)
Received: from localhost.localdomain ([122.163.0.39])
 by smtp.gmail.com with ESMTPSA id v27sm52537557pgn.76.2019.07.22.01.54.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 01:54:33 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [PATCH RESEND] staging: media: davinci_vpfe: Replace function
 vpfe_isif_cleanup()
Date: Mon, 22 Jul 2019 14:24:20 +0530
Message-Id: <20190722085420.20294-1-nishkadg.linux@gmail.com>
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
Sorry, I think this may have gotten lost the last time I sent it?

 .../staging/media/davinci_vpfe/dm365_isif.c   | 21 +++++++------------
 1 file changed, 8 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_isif.c b/drivers/staging/media/davinci_vpfe/dm365_isif.c
index 05a997f7aa5d..632a51cf2e4a 100644
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
