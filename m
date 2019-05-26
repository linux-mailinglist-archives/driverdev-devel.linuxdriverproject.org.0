Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA3B2A782
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 May 2019 03:19:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9B0E78605E;
	Sun, 26 May 2019 01:19:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VcRP7V0Twyk1; Sun, 26 May 2019 01:19:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E83F886239;
	Sun, 26 May 2019 01:19:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C78A41BF5A6
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 01:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C488F86132
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 01:19:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IUxt4Gfri2CA for <devel@linuxdriverproject.org>;
 Sun, 26 May 2019 01:19:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f66.google.com (mail-ua1-f66.google.com
 [209.85.222.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 457A986100
 for <devel@driverdev.osuosl.org>; Sun, 26 May 2019 01:19:36 +0000 (UTC)
Received: by mail-ua1-f66.google.com with SMTP id r19so5156497uap.5
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 18:19:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=g9RckfaOyTf+xFTNPpwPEwsOHKNyfyEU38Mp+/sU6tA=;
 b=Bl5RYhYlgHEhSe+fBzBodm5gri9kU46xOgubbeARfaOCNWwXx2s4plzGJ9QIB4bX6l
 Xl1WsEcrCWXFebX6rOjCpQWq68SQPGD8yd0eV7YrwrwRfthm+qqJ+0sEVCoCpDa5pSl3
 Kl8FsX46jh2CycJjApTTqMSPPQ+X5ejSHE8XjjYGtDpKBOmGtim8wDGXZ0VxIZvZsSKP
 kzWmwcbvMmZv/iMHOmm3BDyWP77yvAMUra9onJSTNmj09wIZufJK7WU0xRTfYdpUhQVR
 q2x5ZfQfMM60zny5ZvtNqC/o1yyprl7Jmga07pmSK1ic/CmL1PIc+qtLMja849IJfj2D
 8J5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=g9RckfaOyTf+xFTNPpwPEwsOHKNyfyEU38Mp+/sU6tA=;
 b=fSxQaGqyD0cw4Tz9/YES87auGNUB9oOObEgspje1R/BYnH4oat0X5JeDT+jKe1/v4u
 4dq9B5Z49xbbjcRaq7gTiAXNdq3xVuIa4JdvMEbpNxwslQ/Jk3X6/IfUW2TQnU3MByfo
 s4A1YpzIWO33lV8OyNDuDPzo+O86ve/8vrpDfu1Q8fzuzu5N0dtVOuJofCVkgtK56dY5
 6Po5wOIVitH/Et4nOAydrv/4WtvEiDTo3ZYtW3WrhMQeTaOYffi+kxzj1NiIWFPjZnwy
 oJUPfU6KzvF86OXj6k4ZyM1uEgCspSXzKh75kE5jFTZslzfYiSSXHdmX49/o5z8uUf20
 FEuA==
X-Gm-Message-State: APjAAAXs1dj+0n5qFJqfcU3zDjKcRWK8k9mFzxgoG1Q+8RPW87MngIxu
 nQcyCX5Q7Mjh+CtrOhdnWX8=
X-Google-Smtp-Source: APXvYqznsTQ083SoPXMAQSzFkUgHLRBwZDotN+YfrQ5Yrk2chJVhMIt0WSVTLDIFdzCKIsWw+3172A==
X-Received: by 2002:ab0:3499:: with SMTP id c25mr12364917uar.56.1558833575389; 
 Sat, 25 May 2019 18:19:35 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id 9sm4593181vkk.43.2019.05.25.18.19.34
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 25 May 2019 18:19:34 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 5/8] staging: kpc2000: kpc_i2c: Use drvdata instead of
 platform_data
Date: Sun, 26 May 2019 01:18:31 +0000
Message-Id: <e0fff0beaa24a58eee777e7afca3d5be73359025.1558832514.git.gneukum1@gmail.com>
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

The kpc_i2c driver stashes private state data in the platform_data
member of its device structure. In general, the platform_data structure
is used for passing data to the driver during probe() rather than as a
storage area for runtime state data. Instead, use the drvdata member
for all state info meant to be accessible in driver callbacks.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index 1767f351a116..e4bbb91af972 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -589,7 +589,7 @@ static int pi2c_probe(struct platform_device *pldev)
 	res = platform_get_resource(pldev, IORESOURCE_MEM, 0);
 	priv->smba = (unsigned long)ioremap_nocache(res->start, resource_size(res));
 
-	pldev->dev.platform_data = priv;
+	platform_set_drvdata(pldev, priv);
 
 	priv->features |= FEATURE_IDF;
 	priv->features |= FEATURE_I2C_BLOCK_READ;
@@ -620,7 +620,7 @@ static int pi2c_remove(struct platform_device *pldev)
 {
 	struct i2c_device *lddev;
 
-	lddev = (struct i2c_device *)pldev->dev.platform_data;
+	lddev = (struct i2c_device *)platform_get_drvdata(pldev);
 
 	i2c_del_adapter(&lddev->adapter);
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
