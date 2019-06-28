Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2D35A1A5
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 19:01:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 178338829F;
	Fri, 28 Jun 2019 17:01:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SEqW+CaOUC0h; Fri, 28 Jun 2019 17:01:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7488688287;
	Fri, 28 Jun 2019 17:01:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 99C9F1BF36D
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 17:01:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9743684368
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 17:01:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8r-BQPOwPDaZ for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 17:01:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 12C01834E6
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 17:01:40 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id 196so2851826pgc.6
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 10:01:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=df6t7IoIMcwVexqcsaR7ueHFxAdzOzWUJRRIycElmx8=;
 b=D/72Rf6KevRHPN2ptbZR7J4YKRjC07H5K4UDWhJaxed6ogy+KoiL58qjg3tZnE53+j
 fYkO+MpQqlXf2QC1ws++TMyNPguIWX9YMJjEd59y+AiBKEiPMNRYY6VvQEdIYZJ9+dIS
 0AoUIdZUFxkq6bqShoPoAdAryydnSnwODWIovI/6hVRFTugpvEjgFhjRRPfMPwv97nvB
 wiFkVYqgG6mCGMWvB/K8U90Sl3zZxIHsEH54Fg5gDNwDk9WEcdXa59++9lZhnnCupOSt
 +dCk1uTXBPzDyqGOeZHX/dj4loK62HOhn6CJ2QPNGc8WS0qT76D0tg0NELShUCx3/TrY
 GwHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=df6t7IoIMcwVexqcsaR7ueHFxAdzOzWUJRRIycElmx8=;
 b=uauShrrGP+TrUmasgA+DxrgEGUYVFrHWGtUUPQHnKKlQBRLO1ITs7iFqTrQcBfrnd2
 okpqfAcG9kla+5y2dhcNjWsPGBj6J7yw3YNjtWxSKwzTiMBZ0Ofw/G/YUr3UdEgDTFRP
 FKXCQWZTK+F/YzjalOqQkkOeKxS9cxJbtwJRieXEo7eEg2ZsEC7yvHLZ4lYH0yuKL9pK
 i7gA+QS3rp8G/OlpekCwIeW9ImEMx0Rc3fPaCX6038VoWTMn+HXCtXRwDvGIS7xng4sW
 HJlmsgDErmweZO72KTNWMJ8i87PBsEb7X6uupXhZ7np9ZVjzfl0lAuwK6IW7wA+7dYj5
 iu5g==
X-Gm-Message-State: APjAAAUz6t1wNSHWseg6U91qgskpNtTkkzX+4ZhLY16BahjQ7MN9+/5b
 BtOa7ntSCbdD5EleDcOajnZ+d/8H0+0/aA==
X-Google-Smtp-Source: APXvYqyTKUen5VttrfF33n85deip8smc4yS8+LU5LmmQHCNoBo+5tNFH6Qk/uEvJLfC5daBtukoEZg==
X-Received: by 2002:a63:dc11:: with SMTP id s17mr10462017pgg.47.1561741299635; 
 Fri, 28 Jun 2019 10:01:39 -0700 (PDT)
Received: from localhost.localdomain ([183.83.73.90])
 by smtp.gmail.com with ESMTPSA id 30sm2971033pjk.17.2019.06.28.10.01.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 10:01:39 -0700 (PDT)
From: Harsh Jain <harshjain32@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, harshjain32@gmail.com,
 harshjain.prof@gmail.com
Subject: [PATCH 2/2] staging:kpc2000:Fix integer as null pointer warning
Date: Fri, 28 Jun 2019 22:30:46 +0530
Message-Id: <20190628170046.3219-3-harshjain32@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190628170046.3219-2-harshjain32@gmail.com>
References: <20190628170046.3219-1-harshjain32@gmail.com>
 <20190628170046.3219-2-harshjain32@gmail.com>
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: root <harshjain32@gmail.com>

It fixes "Using plain integer as NULL pointer"
sparse warning.

Signed-off-by: Harsh Jain <harshjain32@gmail.com>
---
 drivers/staging/kpc2000/kpc_i2c/i2c_driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c b/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
index 204f33d0dc69..155da641e3a2 100644
--- a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
+++ b/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
@@ -679,9 +679,9 @@ static int pi2c_remove(struct platform_device *pldev)
     //pci_set_drvdata(dev, NULL);
     
     //cdev_del(&lddev->cdev);
-    if(lddev != 0) {
+    if(lddev != NULL) {
         kfree(lddev);
-        pldev->dev.platform_data = 0;
+        pldev->dev.platform_data = NULL;
     }
     
     return 0;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
