Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2985A248
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 19:28:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 969F886880;
	Fri, 28 Jun 2019 17:27:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xoe3APecEY2R; Fri, 28 Jun 2019 17:27:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 646CA86783;
	Fri, 28 Jun 2019 17:27:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 168221BF844
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 17:27:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0D9DE86E26
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 17:27:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XusPCHgD1Npm for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 17:27:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 87027811E7
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 17:27:55 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id i2so3612418plt.1
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 10:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references;
 bh=mLsHJ0i3ujM34GaeB9I76qtU6QknhGyjQmwjCGGHvKA=;
 b=DqFWfig9P23wc62pGuCwg0dPMtOsYiK0zWh3xIxvl5JzYBwvaQKkg9HU4XJE8efjSv
 RAPjqCv9RtEiWWBU54T7ZQjutf2/Vba2BKCaBGU6OVQG/Qox4QIh/+LNJmCWPmn7XU/Y
 P+DGF4KaRrLTioPue9TpH+SGQj5jyu2NrPKfLbFpMyeOYC4krOtjwaWsXe/vwp3mB6F6
 XsBoPEaaMUEadLLKpKTmMWwCPDAIQe5iCzmOR2HBfGxPrYpfvQq+LbkHqPNr6DwQR496
 2OKW/5fOvrR07JLR/HRzROi0gHV9XIZuMQtKN3euZvDHC6YTukkFq1F/HzqescBKHxXT
 hp5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references;
 bh=mLsHJ0i3ujM34GaeB9I76qtU6QknhGyjQmwjCGGHvKA=;
 b=Qz1o2nzfPVeCLpfcGuczzwGcAfTacUHJ6qi9wMYBRi2PsCxlTS09TvjhVKz1PZd+9U
 Md1verI9xQaOYSTGTUVca3va2p31HPXyP4O/xEGDE+CzTZbRuNe7Z2RHCR5H7v0PEtji
 YZWwsjSxiqNhEk6DklSaF4S0YLAPs04Zf3gFoTgYMltPm//GAZIr9ChjTCkhXiTjvY/x
 EKNruMNWVrZmWhf+5tgMHp1e452r3VKXaMxGvS+vrZSSSbjtzdUakMT/f7s5PmVJo98e
 fQ5OhzLfxJbriVzkMXuN17l4BUfAaow0IIb1uobdFQ4zMStg5xlxOBbmOws0n0JTrzok
 xhHg==
X-Gm-Message-State: APjAAAWKmlAywSYcokYHPU54Jy8K7dGl9fLCxBHHszrwrMFO5zpyIYoz
 6J0UEHquKeXR+KZKPIRTLoM=
X-Google-Smtp-Source: APXvYqxSGAg6EZj/7hBC8Rbh4U6d65ZcCkSc/ZB+HyhFuwaojEV5WfwsTnHiDyNXVEJfiPzSsXlb/w==
X-Received: by 2002:a17:902:bf08:: with SMTP id
 bi8mr13291525plb.189.1561742875096; 
 Fri, 28 Jun 2019 10:27:55 -0700 (PDT)
Received: from localhost.localdomain ([183.83.73.90])
 by smtp.gmail.com with ESMTPSA id k19sm2070490pgl.42.2019.06.28.10.27.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 28 Jun 2019 10:27:54 -0700 (PDT)
From: Harsh Jain <harshjain32@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, harshjain32@gmail.com,
 harshjain.prof@gmail.com
Subject: [PATCH 2/2] staging:kpc2000:Fix integer as null pointer warning
Date: Fri, 28 Jun 2019 22:57:24 +0530
Message-Id: <20190628172724.2689-3-harshjain32@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190628172724.2689-2-harshjain32@gmail.com>
References: <20190628172724.2689-1-harshjain32@gmail.com>
 <20190628172724.2689-2-harshjain32@gmail.com>
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
