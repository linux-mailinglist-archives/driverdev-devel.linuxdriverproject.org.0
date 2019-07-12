Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27867667A5
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 09:18:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BF20422795;
	Fri, 12 Jul 2019 07:18:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o8APjgmtuANN; Fri, 12 Jul 2019 07:18:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 217BE2277A;
	Fri, 12 Jul 2019 07:18:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 563D21BF255
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 07:18:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4FAED882EB
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 07:18:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MNhsSEiLhlGO for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 07:18:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AE2BA882F2
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 07:18:24 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id w24so4349523plp.2
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 00:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2zdZVoW0ryakyem5Gpred12nnMGv7YzGjsPGRRI159o=;
 b=vCABDspXl1Ef/u9/7/LkNNdBkmi1IpXehdVxEGLqdWzubhl6owkRQeg4Klzq+RE77j
 1iattXMSgLxwn5so1V4Ku/xlMayIIGfzVcKXMVPVoIBTktimMJXAP0F/X9LRVh57RO4O
 l4SHWr6EjyFNxzAxgPYdexoKaV2RwMCJIJwIWmeyHcQHJhzV8nam25KXwcrzLbVN7+02
 pk9io6p0D7euHFviAJ9EoOsq29VsI6Jb1uCxCaZk+uBsXUJt0atF3SC21qCncL3o5fvl
 JwZYPNrB+430GNR5+bUXrJKQRXT6hOgoSpOjeuyzxFv8cdek0FvoZB8zuH6h1fA5EYQT
 VEnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2zdZVoW0ryakyem5Gpred12nnMGv7YzGjsPGRRI159o=;
 b=LSVcD2tAFnF3GXVK4edx3s/jXuCbhPeuzD7npXqIA4HVva7rSB2rDwdwT7FaiXsWtW
 3g0klqtc/KGowWyRsRZeQpwHi1/meYs5qs0DzNuQkkGNqoXQ8yf7vdYsKf85NaWrbxiJ
 Fh/wb64RK4rCQ+5H1pVV7IQMgIHm4fNSIIfb+lSKmE09CtHn8NLpD/nR2AIA/EvTyd1U
 WfOBwUVRh9Twp/yhdMVHVNsT2Sj7Xnh1zJTR/MQVozIYQVDX/Dy8g6ANzgb1uQAR63Gv
 uTcf4BCSjix4PhZiXjt9JI5JH6X8Mzb1StnMU+0Mcqm4PV2+Wu3VKDBOszarPoavvari
 9lHQ==
X-Gm-Message-State: APjAAAXucOKyUw9LaMxAF7HnhLbaF76i3KP3oEQMO6uSZzDC3OlXRW3U
 2S5e0MCVv8XsgCj9FAKN7pf24iau
X-Google-Smtp-Source: APXvYqwqZ9o+le/vwBugDjTP9I8ArO7qzMRYfomLbTvRNU5mJ1XK9EQOf++Qps464qKW/Ni/XP/W8Q==
X-Received: by 2002:a17:902:b48c:: with SMTP id
 y12mr9581586plr.202.1562915904431; 
 Fri, 12 Jul 2019 00:18:24 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id b126sm14019422pfa.126.2019.07.12.00.18.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 12 Jul 2019 00:18:24 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: larry.finger@lwfinger.net, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 7/8] staging: rtl8188eu: Replace function
 rtl88e_phy_rf6052_config()
Date: Fri, 12 Jul 2019 12:47:44 +0530
Message-Id: <20190712071746.2474-7-nishkadg.linux@gmail.com>
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

Remove function rtl88e_phy_rf6052_config as all it does is call
rf6052_conf_para.
Rename rf6052_conf_para to rtl88e_phy_rf6052_config to maintain
compatibility with call site.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/rf_cfg.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/rf_cfg.c b/drivers/staging/rtl8188eu/hal/rf_cfg.c
index 02aeb12c9870..89ee74e795f8 100644
--- a/drivers/staging/rtl8188eu/hal/rf_cfg.c
+++ b/drivers/staging/rtl8188eu/hal/rf_cfg.c
@@ -218,7 +218,7 @@ static bool rtl88e_phy_config_rf_with_headerfile(struct adapter *adapt)
 	return true;
 }
 
-static bool rf6052_conf_para(struct adapter *adapt)
+static bool rtl88e_phy_rf6052_config(struct adapter *adapt)
 {
 	struct hal_data_8188e *hal_data = adapt->HalData;
 	u32 u4val = 0;
@@ -247,11 +247,6 @@ static bool rf6052_conf_para(struct adapter *adapt)
 	return rtstatus;
 }
 
-static bool rtl88e_phy_rf6052_config(struct adapter *adapt)
-{
-	return rf6052_conf_para(adapt);
-}
-
 bool rtl88eu_phy_rf_config(struct adapter *adapt)
 {
 	return rtl88e_phy_rf6052_config(adapt);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
