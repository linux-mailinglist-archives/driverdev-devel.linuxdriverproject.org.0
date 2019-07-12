Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6E1667A6
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 09:18:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2D62B2277A;
	Fri, 12 Jul 2019 07:18:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8gjuRQ1wP6Pq; Fri, 12 Jul 2019 07:18:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D7D79227A0;
	Fri, 12 Jul 2019 07:18:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 74A221BF255
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 07:18:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7214987633
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 07:18:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lFx7PaQ+W3cP for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 07:18:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DD35D8761F
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 07:18:28 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id b7so4338913pls.6
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 00:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KzwaQQVskTwVBQnB7bAhdbeFkyhIQAr3AnenIF10VWA=;
 b=SBuqBz9zh4i1N5rhJbZcGLmtZLsBAwAKy61gSM04bnifwTLRdThh6U+xTcMsLuu/GH
 cOCLM/E5wLfzj89IcU1cCesumEBPQ3lwSP332WxcHLN+Gl1sHI53INjV245toVNTQJQZ
 x9P6Np8BTHxe/7iA9IA1/WklEbkyATCHrPrR46tGHLI94YXT1Q/PJJnaEIiZHjRUF+cR
 D77KK4jxu8zhi5c/ZAjM86pbbhvd7lHKBxXFLJ3ujS26pMDAeoClHGt5efOYb5/VaqtU
 mHuFFIhJwQ7z1CoHfVlu7Fe2U8fX7OngLF2hmwoJOSQJPoqFFYiKlOWkJviqzVo6edRC
 d3rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KzwaQQVskTwVBQnB7bAhdbeFkyhIQAr3AnenIF10VWA=;
 b=BAUwCbgGTtbwMP1oT2PZB4sOXesm4jsv3SpjVTuF8uGqjSVahKB6MF9qUAzUU7D2de
 tVSZ7fits5OuXBM0dP2j3Jb2t2pQOBvIZ5H2XVoC2iQsP6FdCy2yup3q+FGoTNfOHVzk
 p6n6o5kPTcS1OAagJ5SGRou7v3K8NmHjln+FI/IXlfhtNhpohmAF5vLZMIhQQLsm0yur
 9XSjdFkvLXb4KpoH5c33h6GFhfxXcC7nl1qoaZOvhk3/ndADuPadhRPps4zCpZGK/oJI
 b0U3xaicvbopOtlLvEcZX5bXztCzr9d+tNbLoiLbXl7yb3Wj16Tlf7H93ecxGXI8AIV5
 qhjQ==
X-Gm-Message-State: APjAAAWLaglkv3ben7z0nURWSstLZk5z7pirzary3vQqgERSGXaIl5ik
 hj13Namjwo/LF6aMXikSUkw=
X-Google-Smtp-Source: APXvYqyXQ7MDrfTdTUkTCudVJ1hKPUxEE8oXkUyP63o3nbFEmAAVLEmgr5jXnQk7SiPWhSUXVfJPDQ==
X-Received: by 2002:a17:902:2ac7:: with SMTP id
 j65mr9744459plb.242.1562915908659; 
 Fri, 12 Jul 2019 00:18:28 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id b126sm14019422pfa.126.2019.07.12.00.18.26
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 12 Jul 2019 00:18:28 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 8/8] staging: rtl8188eu: Replace function
 rtl88eu_phy_rf_config()
Date: Fri, 12 Jul 2019 12:47:45 +0530
Message-Id: <20190712071746.2474-8-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190712071746.2474-1-nishkadg.linux@gmail.com>
References: <20190712071746.2474-1-nishkadg.linux@gmail.com>
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

Remove function rtl88eu_phy_rf_config as all it does is call
rtl88e_phy_rf6052_config.
Rename rtl88e_phy_rf6052_config to rtl88eu_phy_rf_config and change its
type from static to non-static to maintain compatibility with call
sites.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/rf_cfg.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rf_cfg.c b/drivers/staging/rtl8188eu/hal/rf_cfg.c
index 89ee74e795f8..739e62dc60e3 100644
--- a/drivers/staging/rtl8188eu/hal/rf_cfg.c
+++ b/drivers/staging/rtl8188eu/hal/rf_cfg.c
@@ -218,7 +218,7 @@ static bool rtl88e_phy_config_rf_with_headerfile(struct adapter *adapt)
 	return true;
 }
 
-static bool rtl88e_phy_rf6052_config(struct adapter *adapt)
+bool rtl88eu_phy_rf_config(struct adapter *adapt)
 {
 	struct hal_data_8188e *hal_data = adapt->HalData;
 	u32 u4val = 0;
@@ -246,8 +246,3 @@ static bool rtl88e_phy_rf6052_config(struct adapter *adapt)
 
 	return rtstatus;
 }
-
-bool rtl88eu_phy_rf_config(struct adapter *adapt)
-{
-	return rtl88e_phy_rf6052_config(adapt);
-}
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
