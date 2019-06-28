Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD34598E4
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 12:59:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BAA148817F;
	Fri, 28 Jun 2019 10:59:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bZjv9ft7W6A9; Fri, 28 Jun 2019 10:59:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1BF1C881A0;
	Fri, 28 Jun 2019 10:59:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B8F271BF407
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 10:58:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B532F877B1
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 10:58:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0IGs3WX2Caa0 for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 10:58:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E655487D3D
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 10:58:57 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id z75so2436590pgz.5
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 03:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0zNlUhNl/3f3YrCWT6qy14H/qTn5T677Rk8KPiRloYI=;
 b=ZZhe2/fp1WipQmtF0TaHLHdCMEID9UPNDRKk6VsH22LsW6PebSe+xweV8lMcorxWdM
 FT3uP1f97ELz1gT5omNATHaFiXBFZeVZtXbpxkG5pJOaOEg1bwCywsZdyY6EVIePfp4G
 rd5GSchomRGLu1xhQyMWsCnzntAOjM3/DUZo7oBNyj8tqnefJ4J4/nj0K61mM6AKrESI
 kLjJpwUPLsgRVaNsOh4uigZ5E68IG2mT8XpNcS+iZXLkyfTJODJHp/o4XgkTxqN13j5e
 XU0O9o+YxQW/jxIZEV1Coe7ToDIVUuLVe8YzXanftyWwX0yTFUKJBfVqKmoLf/kk9Wk6
 bSiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0zNlUhNl/3f3YrCWT6qy14H/qTn5T677Rk8KPiRloYI=;
 b=ftix7S6c/pH7zc4VJVbBcUdi8Ty/Phc5O2Wl0LfOLhphs42DLw3YOVqS6nosxG8t/D
 qwywtbeyL7nJyMyP1ZknVTDY86EP1CzT4SqtTIf4Ci7Es3kZyuVnb09E+dW0YNTP1oEq
 G6JaN7qaU5tlQPxCu/4J5xQnTdpVz4xl1DkbIfzPuq1CIBhWbpspGWMOVmoAXf2z6myy
 Q6d9fY6LlOu8WprGIufp8USBYwblapGcRPPohXiN9VbOJO2k6eUwkdJbEgr2iv9sxVXP
 tkRn4D3iABv2c6J0IvhjRgyFerbx1rKV1VyERfGk0J1kVemhsKM1ExIWkRa1/aI0AI8W
 9GDA==
X-Gm-Message-State: APjAAAXHC+03x12MjTwmG5J7cUEC+FAKrqlumA2+HJkizerneIKwe/eR
 jorTVELSBm9l0UVx58QYT0Q=
X-Google-Smtp-Source: APXvYqx8XKFnCraun3ebvgD6bZkra9gx++C6vzcmf/tvDILt7mbM+urqA8JwIzTkR5pfItswHXwQFw==
X-Received: by 2002:a63:f342:: with SMTP id t2mr8121228pgj.83.1561719537528;
 Fri, 28 Jun 2019 03:58:57 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id j14sm1908043pfe.10.2019.06.28.03.58.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 03:58:57 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 04/10] staging: rtl8723bs: hal: Remove function
 PHY_CalculateBitShift()
Date: Fri, 28 Jun 2019 16:28:29 +0530
Message-Id: <20190628105835.6931-4-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190628105835.6931-1-nishkadg.linux@gmail.com>
References: <20190628105835.6931-1-nishkadg.linux@gmail.com>
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

Remove unused function PHY_CalculateBitShift.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_phy.c | 24 ------------------------
 1 file changed, 24 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_phy.c b/drivers/staging/rtl8723bs/hal/hal_phy.c
index 56ac9aa8a98c..24a9d8f783f0 100644
--- a/drivers/staging/rtl8723bs/hal/hal_phy.c
+++ b/drivers/staging/rtl8723bs/hal/hal_phy.c
@@ -8,30 +8,6 @@
 
 #include <drv_types.h>
 
-/**
-* Function:	PHY_CalculateBitShift
-*
-* OverView:	Get shifted position of the BitMask
-*
-* Input:
-*		u32 	BitMask,
-*
-* Output:	none
-* Return:		u32 	Return the shift bit bit position of the mask
-*/
-u32 PHY_CalculateBitShift(u32 BitMask)
-{
-	u32 i;
-
-	for (i = 0; i <= 31; i++) {
-		if (((BitMask>>i) &  0x1) == 1)
-			break;
-	}
-
-	return i;
-}
-
-
 /*  */
 /*  ==> RF shadow Operation API Code Section!!! */
 /*  */
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
