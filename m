Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D9A2A780
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 May 2019 03:19:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D717D86090;
	Sun, 26 May 2019 01:19:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 11LlrDRwd7uA; Sun, 26 May 2019 01:19:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 342AA85FD5;
	Sun, 26 May 2019 01:19:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8EE0B1BF5A6
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 01:19:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8C05885FE4
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 01:19:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sD71EY8hT6P5 for <devel@linuxdriverproject.org>;
 Sun, 26 May 2019 01:19:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vk1-f196.google.com (mail-vk1-f196.google.com
 [209.85.221.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 129F685FD5
 for <devel@driverdev.osuosl.org>; Sun, 26 May 2019 01:19:33 +0000 (UTC)
Received: by mail-vk1-f196.google.com with SMTP id x196so2918809vkd.9
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 18:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b3q0HmTjK6ahA4s0OOAEIvrRZJfHHkbeVitRycuPpus=;
 b=sSdwb2vE3hxe2KGfBBFZ8AADbiEMIieWjiMGJoQIHG7mJc52DHR1BpLurF+JqTIrUf
 wZqZjB/I2vn5m37cue9TMKXOA2Ib8QIw+/3Aw7Eq1ZoM+ddfBNIe7qOyWh1+DJ5yzdrs
 5fb5fYe9IU4Knh++Acd3RMCuK5sej+ASBGqhbNkjkAt4PyHIUOqOJJcJ/8rCL4tZNS9G
 NMQU7MfQgIbN4oOF5Go7hzISJDST2enu3rAB5NfrqckBtlBP1ok3wqk3FCwMYWncllU2
 ZdANDDC63FG+tf7X46ZUQPUSmyHL6t4kQGQ/qD1qfmrpIf0BwjhqdfFCSgfYjCJK4cha
 YBIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b3q0HmTjK6ahA4s0OOAEIvrRZJfHHkbeVitRycuPpus=;
 b=KSIZaJ86UkGmXpkZSNgy6TQC9p9WesCLczLGP17K7EmktNbAWaExysYONhhV6p3c/f
 TaMAXo4fPEPI+DOeFzrDmBdJleRNTqLkaOxoUESVSqoIKa4SEirXWe3n7qrq9GYJRoaQ
 i5s+f3Np+uS1J6cPFcxMGmug/VR9Xp6JUNQJReM6OH79wZzbIRumBkx3k1Vxhp+00UpC
 vjwE+VekVcZCECuR7mraNXQmXEJSzUybnwF6r4xxJC0jx6C9VFoCtgMOQTZTNlyZOLjM
 lq0JmEPdohSkJYTa5o+XnhOqhhMw2H8ReVvzykPw2GrzMFFVmH0D6yEz+aObOyHTyy3b
 nbIg==
X-Gm-Message-State: APjAAAWGSd2S5Wn7eX6fYv8nTDhzHTyfH7f3MQRnE/LC+F/5TSJ//RB2
 KzfaRVKToDXWAlOKxU+isY4=
X-Google-Smtp-Source: APXvYqzN5vYJxuBKMcm/frPuZsw9enO5mm/TxCLy6EWcMt96/+SBh6KPAmz8Es/yD0iHCVBYEYL4Jw==
X-Received: by 2002:a1f:2157:: with SMTP id h84mr12653417vkh.84.1558833572039; 
 Sat, 25 May 2019 18:19:32 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id 9sm4593181vkk.43.2019.05.25.18.19.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 25 May 2019 18:19:31 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/8] staging: kpc2000: kpc_i2c: Remove pldev from i2c_device
 structure
Date: Sun, 26 May 2019 01:18:28 +0000
Message-Id: <21d8e5c3902c12d71c251d14d5b8607b5e25cf4c.1558832514.git.gneukum1@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.1558832514.git.gneukum1@gmail.com>
References: <cover.1558832514.git.gneukum1@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Geordan Neukum <gneukum1@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The i2c_device structure contains a member used to stash a pointer to
a platform_device. The driver contains no cases of this member being
used after initialization. Remove the unnecessary struct member and
the initialization of this member in the sole instance where the
driver creates a variable of type: struct i2c_device.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index 2c272ad8eca6..b2a9cda05f1b 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -36,7 +36,6 @@ MODULE_SOFTDEP("pre: i2c-dev");
 struct i2c_device {
 	unsigned long           smba;
 	struct i2c_adapter      adapter;
-	struct platform_device *pldev;
 	unsigned int            features;
 };
 
@@ -595,7 +594,6 @@ static int pi2c_probe(struct platform_device *pldev)
 	res = platform_get_resource(pldev, IORESOURCE_MEM, 0);
 	priv->smba = (unsigned long)ioremap_nocache(res->start, resource_size(res));
 
-	priv->pldev = pldev;
 	pldev->dev.platform_data = priv;
 
 	priv->features |= FEATURE_IDF;
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
