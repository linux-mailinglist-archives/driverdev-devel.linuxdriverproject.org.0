Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CB82213F
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 May 2019 04:31:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4CB658790F;
	Sat, 18 May 2019 02:31:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z-+uA34vmko2; Sat, 18 May 2019 02:31:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0E68B878FB;
	Sat, 18 May 2019 02:31:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4A43B1BF306
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 02:31:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 44D8586B02
 for <devel@linuxdriverproject.org>; Sat, 18 May 2019 02:31:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1FY9vpoLf16w for <devel@linuxdriverproject.org>;
 Sat, 18 May 2019 02:31:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7B8C286A51
 for <devel@driverdev.osuosl.org>; Sat, 18 May 2019 02:31:10 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id w25so5616519qkj.11
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 19:31:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=Aqqb8fq9rk5ariT5pZi1gMWAA/hlm63uYollEoNQ9/o=;
 b=NX2oIG20JAoVtNLysGBZjgsCPWyGlNz8/o0M4HyjPOaevISxddvGsVTvEBqlHvjEYA
 +R++OHTjqL5/hfHhbKUsvnY2VjnihuEscKAVmcGz1zv7sNFTecNnlY0lzObmPb/dU7Ss
 bpdoEBh7Qsq7JxPdm7mbtP1+X47V5ItemL7W35UMSqcuU2IfO6KZ1yPfSB2xfigQLglw
 iYxeweDBAx5e1ioXQKkY4tPe4HFh3uKzU/nKQfIry6RccfwwciNRIaOwwwQpbAP6PiDp
 DJrAZdzykHjhlWKCvhbDS/2pQsCo4btzHZkRmTmChzbdnkSBJT4gNgT04mmwlKcgmAHo
 FjqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Aqqb8fq9rk5ariT5pZi1gMWAA/hlm63uYollEoNQ9/o=;
 b=DdLNbs3yGJ9Q177WK/yTHeQvuAlTMhzThVNHDmp+N34jlRZjT5ntmPsGHRq9WsdMC6
 QXHNM2aSGaUlybYPmi0ctWc0kS6fmobJY1Tt9ucN5HZjr5enuX+lEt9R22Amm/xDx1op
 1sdtAjdYc2ZEbATGUwxT3k6BE2eozCr4hdMUj8XjXWG9hJrMJIbLctskCoBeY+fhpVip
 qjzOsYOoCt6EE9BUQmVkvJHycsh9a/AUq/rWxoSTjvu2qJ1IrNITnGYEiA+EsAwHmAIa
 oS9YZAn1jGGpzY2uTlpbbCWnTtpXY9sKSg3XLys922jzDSwnjvGPteaEoLlwZV75Lzls
 Af4A==
X-Gm-Message-State: APjAAAUbF7mhlMtLFVrWYQUpsFI//2KIPRiavobS5Ta0QYS8ogjFkJU7
 RB0+10RvVNa++QTwo5QWnm8=
X-Google-Smtp-Source: APXvYqx3Iadqq+BaRi9/tEvUBSeA6oMnA55YundP+V9Ug7zdXmHaIWVKYWoBjhUnN4ooMr5uP8eeng==
X-Received: by 2002:a37:680c:: with SMTP id d12mr47915959qkc.202.1558146669664; 
 Fri, 17 May 2019 19:31:09 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.dc.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id n66sm5210322qke.6.2019.05.17.19.31.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 19:31:09 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: gneukum1@gmail.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] staging: kpc2000: kpc_i2c: prevent memory leak in probe()
 error case
Date: Sat, 18 May 2019 02:29:58 +0000
Message-Id: <ff94cd3b0d13c2785bc4d2cc7ac6d63f11691fd1.1558146549.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1558146549.git.gneukum1@gmail.com>
References: <cover.1558146549.git.gneukum1@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The probe() function performs a kzalloc to dynamically allocate memory
at runtime. If the allocation succeeds, yet invoking the function
i2c_add_adapter fails, the dynamically allocated memory is never freed.
Change the allocation to use the managed allocation API instead and
remove the manual freeing of the memory in the remove() function.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc_i2c/i2c_driver.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c b/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
index 6cb63d20b00f..9b9de81c8548 100644
--- a/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
+++ b/drivers/staging/kpc2000/kpc_i2c/i2c_driver.c
@@ -628,7 +628,7 @@ int pi2c_probe(struct platform_device *pldev)
 
 	dev_dbg(&pldev->dev, "pi2c_probe(pldev = %p '%s')\n", pldev, pldev->name);
 
-	priv = kzalloc(sizeof(struct i2c_device), GFP_KERNEL);
+	priv = devm_kzalloc(&pldev->dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv) {
 		return -ENOMEM;
 	}
@@ -685,10 +685,6 @@ int pi2c_remove(struct platform_device *pldev)
 	//pci_set_drvdata(dev, NULL);
 
 	//cdev_del(&lddev->cdev);
-	if(lddev != 0) {
-		kfree(lddev);
-		pldev->dev.platform_data = 0;
-	}
 
 	return 0;
 }
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
