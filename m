Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E34EF598E2
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jun 2019 12:59:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 61E3E881A4;
	Fri, 28 Jun 2019 10:58:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 55J6xEK0mjTn; Fri, 28 Jun 2019 10:58:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E1535877B1;
	Fri, 28 Jun 2019 10:58:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 30E3F1BF407
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 10:58:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2DF3485C00
 for <devel@linuxdriverproject.org>; Fri, 28 Jun 2019 10:58:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JUZkgAjVHkQr for <devel@linuxdriverproject.org>;
 Fri, 28 Jun 2019 10:58:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0C11B85BCA
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 10:58:54 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id s27so2439730pgl.2
 for <devel@driverdev.osuosl.org>; Fri, 28 Jun 2019 03:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9/H+ciLkY/UGHOLb0B7oZNKKQfODmyTJQg83m03X+Ho=;
 b=Y75mZvvUjnGsgk1speVkmyV8NKqow4gFlstpLQB3rwruxcwJ+bNwdq4Abff4yWRpGe
 NdyDhd/2mOidLGUMMVGlqTr7QntK936lec6SekwHlSSqPoxaVUnuvQxEZfK2o0gglkSO
 6eMfPSZL4IYxyd9VEvd6ufrW7t7bpdHUHUQAfSo5p3GEitydWLMwq/aJxn/w0+dzSDDj
 mh8Z0G9/yFJnYB9oABuRepN1XGjKRTU7a5U3Hi/u9oJW3R5Dv1caivsjUQYpVNLrcxxL
 IEJmaFrNjvTgOnFfdpqGfReBeWXGhE4go/oVTrA0svh8GFxoqUbJN1Vndyd9czLHcHl+
 Nzgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9/H+ciLkY/UGHOLb0B7oZNKKQfODmyTJQg83m03X+Ho=;
 b=qFMcVoWwk5BBCgI/kB3Y/TG5HlDcrrpEQMeyzES2QnNzUGW7fggsOXVXm4NzbzPZ83
 n4o/klWFz92IR8GqkALPvNfGiVcsUjGMZb4XhiohPH7+9tnVwQxbrH68vyayPsOMQBCJ
 V68PR6CcAzhkYhv20w8EVfxwsmcwP2u+/TWbNgm+5zMlO1sVJzeJnJ6GH0WA4tBnrPvh
 3fG/FvLCYDCCvC6MYdJWojIuFR5JyoaXsLp22Swo9s1EQbcLyphS0wjAhsT1For4QvRZ
 +IYFmrGwcyWyyupvkWZ33qXtTxRueN8LnUid3fPKbk1G0bWjBXu9tIHR6TQ3rHa6NRpc
 5DQQ==
X-Gm-Message-State: APjAAAUC9sQoK/72qwHsfHvApm4iBdFIE6aKKFKbyJIs2J/qAEj8ZlFX
 xHAhOdjJKaZOCcUfuO50+Zc=
X-Google-Smtp-Source: APXvYqzmUlpr4vxSzEe9Z8Wv3zZqiYeCLgXid3kJZ71Op9hs67nfyGIYyQPIL5abnck5d9/Waga2PQ==
X-Received: by 2002:a17:90a:37ac:: with SMTP id
 v41mr11875823pjb.6.1561719533645; 
 Fri, 28 Jun 2019 03:58:53 -0700 (PDT)
Received: from localhost.localdomain ([110.227.94.173])
 by smtp.gmail.com with ESMTPSA id j14sm1908043pfe.10.2019.06.28.03.58.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 03:58:53 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 02/10] staging: rtl8723bs: hal: Remove PHY_RFShadowRefresh()
Date: Fri, 28 Jun 2019 16:28:27 +0530
Message-Id: <20190628105835.6931-2-nishkadg.linux@gmail.com>
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

Remove unused function PHY_RFShadowRefresh.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/hal_phy.c | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/hal_phy.c b/drivers/staging/rtl8723bs/hal/hal_phy.c
index ebaefcaf5f2a..0d21e64b8f04 100644
--- a/drivers/staging/rtl8723bs/hal/hal_phy.c
+++ b/drivers/staging/rtl8723bs/hal/hal_phy.c
@@ -197,20 +197,3 @@ void PHY_RFShadowRecorverFlagSetAll(IN PADAPTER Adapter)
 	}
 
 }	/* PHY_RFShadowCompareFlagSetAll */
-
-void PHY_RFShadowRefresh(IN PADAPTER Adapter)
-{
-	u8 eRFPath = 0;
-	u32 Offset = 0, maxReg = GET_RF6052_REAL_MAX_REG(Adapter);
-
-	for (eRFPath = 0; eRFPath < RF6052_MAX_PATH; eRFPath++) {
-		for (Offset = 0; Offset < maxReg; Offset++) {
-			RF_Shadow[eRFPath][Offset].Value = 0;
-			RF_Shadow[eRFPath][Offset].Compare = false;
-			RF_Shadow[eRFPath][Offset].Recorver  = false;
-			RF_Shadow[eRFPath][Offset].ErrorOrNot = false;
-			RF_Shadow[eRFPath][Offset].Driver_Write = false;
-		}
-	}
-
-}	/* PHY_RFShadowRead */
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
