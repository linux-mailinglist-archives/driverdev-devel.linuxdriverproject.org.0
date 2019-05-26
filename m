Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A182A785
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 May 2019 03:19:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1759B860E0;
	Sun, 26 May 2019 01:19:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dZQuhX86XUFL; Sun, 26 May 2019 01:19:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5C3DF861F9;
	Sun, 26 May 2019 01:19:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6E8B61BF5A6
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 01:19:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6702986044
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 01:19:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3nm8LTzxcHO1 for <devel@linuxdriverproject.org>;
 Sun, 26 May 2019 01:19:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f66.google.com (mail-ua1-f66.google.com
 [209.85.222.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3541C8626F
 for <devel@driverdev.osuosl.org>; Sun, 26 May 2019 01:19:39 +0000 (UTC)
Received: by mail-ua1-f66.google.com with SMTP id t18so5156088uar.4
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 18:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O4TY6lVCDE5e3lbqqtqZwzcYY0g62xMcUAnXDxRopto=;
 b=OK9zCXuqb2djYDyd6tLcFwsKQD41RcX7VBWl454bvT3DwmHQaWZXkPSYvQWivHUQ4J
 lKHW05tV/IHf2Wtdn6hSnUJb2WsteoUDePbISaDGPoOfPbYhnnZDxyFHFS1gK9b8K0ZA
 NqNIywDE5xkS4K9MNns18y5oWkQZvcA/ZATlu+31GbsqCy3JxOGPiVS/OOpS70yLIj1W
 KqlPFQ5I90ZUQBA7OY0fV6/YWoObZ0pJjxwaiYkeXXxT38YagZK1MLRPNDYCN+BDrMpv
 4R2eSVoTRh2mHl+jPeH0IGRkGx7EMLLLnvYcoMj78J64rXlo4Lne1lTWFXx3btdV6gOZ
 DXKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O4TY6lVCDE5e3lbqqtqZwzcYY0g62xMcUAnXDxRopto=;
 b=NAYcMQAUfCxfWJJJLnp8mwuO0iPEZPqQ+PnC34PKage4EmaxtVxafSVYhVsN3LQHAc
 NpZw3S2ZG/7YmQ0wlEr7pgPGOiHzupy8X3YIGYPt66SGXG6XBv55zAAgWW/HIzDB3mC3
 mUe/McGVaMXQZFBD2IoJ1qdzsc8itM+4uK1XdTFMwOorHOkPQLvidV9PNL2Emedtv5mG
 iqZElBwZbDzGGSIOJ09kGig6SnnSG8IsLmtP8xrSqv5aiypPvdEXQEla5PZgcGbt3dg8
 ZzR0wEoqd39QAPnqT8aw/fGvbIwc3F+Mqp2CC754G9xzGWzbK2WLrXDiCGXFmqv1zFxX
 N3Dw==
X-Gm-Message-State: APjAAAWQFldV2lX4/0w9o5W0VkrawTmBNBkUoB8Q7cDlIG1q43e5D/aV
 eMk3J/5Hrf/vRwgHCD7Xa+ydF/QYgXo=
X-Google-Smtp-Source: APXvYqyl1JiI0IAFoWqSmmtNqKCx8TUL6ac2FkOU5CYEe6YzGpCcERinHIWKjJwefADpXDDOc7U5Zg==
X-Received: by 2002:ab0:338e:: with SMTP id y14mr3818484uap.39.1558833578405; 
 Sat, 25 May 2019 18:19:38 -0700 (PDT)
Received: from arch-01.home (c-73-132-202-198.hsd1.md.comcast.net.
 [73.132.202.198])
 by smtp.gmail.com with ESMTPSA id 9sm4593181vkk.43.2019.05.25.18.19.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 25 May 2019 18:19:37 -0700 (PDT)
From: Geordan Neukum <gneukum1@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 8/8] staging: kpc2000: kpc_i2c: Use devm_* API to manage
 mapped I/O space
Date: Sun, 26 May 2019 01:18:34 +0000
Message-Id: <c0c8589d9daf1f11f35a41e24ba461b3ee569a5d.1558832515.git.gneukum1@gmail.com>
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

The kpc_i2c driver does not unmap its I/O space upon error cases in the
probe() function or upon remove(). Make the driver clean up after itself
more maintainably by using the managed resource API.

Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
---
 drivers/staging/kpc2000/kpc2000_i2c.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/kpc2000/kpc2000_i2c.c b/drivers/staging/kpc2000/kpc2000_i2c.c
index 51e91653e183..a434dd0b78c4 100644
--- a/drivers/staging/kpc2000/kpc2000_i2c.c
+++ b/drivers/staging/kpc2000/kpc2000_i2c.c
@@ -590,7 +590,9 @@ static int pi2c_probe(struct platform_device *pldev)
 	if (!res)
 		return -ENXIO;
 
-	priv->smba = (unsigned long)ioremap_nocache(res->start, resource_size(res));
+	priv->smba = (unsigned long)devm_ioremap_nocache(&pldev->dev,
+							 res->start,
+							 resource_size(res));
 	if (!priv->smba)
 		return -ENOMEM;
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
