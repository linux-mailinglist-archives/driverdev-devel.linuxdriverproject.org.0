Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF24D31F739
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 11:18:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6B4E28748D;
	Fri, 19 Feb 2021 10:18:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JZndP0Ml0j3X; Fri, 19 Feb 2021 10:18:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BB76887477;
	Fri, 19 Feb 2021 10:18:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1D1FE1BF2CC
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 10:18:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0B29A605C9
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 10:18:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id chL8uzkHdx_G for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 10:18:20 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 1ABFB605F5; Fri, 19 Feb 2021 10:18:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
 [209.85.128.54])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 103DC605C9
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 10:18:17 +0000 (UTC)
Received: by mail-wm1-f54.google.com with SMTP id o15so6520996wmq.5
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 02:18:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xbN851RonAVLbAx/p1XGSAbi2fYwb/WrJuyOCajm1sU=;
 b=p5qd9GZIhN2zPT0F9JdpiWY1xZ7V9Ea/Fd7hG1x1nmz3iwZ/wIZqRHPybhRRp0CGlA
 1oy14c+QJktkyIJlwtiKrkxukvRh8+yYvCK+NK/R69IwFuRw6ue23mv6oB7y2Di8VQ93
 +Fx6/ODtHR2zo50X5MRC6hQcXBxuRj8edOVAju+wmCQOaT5xUG7qBotAJzhR4mzF9OAR
 sgKluyuSXjOJsviml0bt8/bvYLcbzVe2sjQH5+VSaykHSATRWFQREly2uMxainQytuuj
 7QslS/9xeqtE7F23k5EmR+Nf0BphXH8HuWBO9ENhU1gEBk11mG2E+s4W0m0o1I4g/MxE
 I7HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xbN851RonAVLbAx/p1XGSAbi2fYwb/WrJuyOCajm1sU=;
 b=NhyM67iAHq0d2tuqYYbnHKNhEl92u+RJpLjYMZlQhF038vuBgdRpRPDNxIkkCwKTMT
 MAqOAb8zAJTgahJfTVcXFuEbRbj3owwXiGs8v0itJODykBih19XxsvfuX/L/veZhKLPc
 b01xlg0XLdpyyLXSNfF1rLNEqOxPrAicnFM6xJUkrR4Y33+tKijRrsMS8/wqS7TgIZFG
 HT4s9G4nVXgh/oZuWRhP/7iQ65aBDfMtT+sqaU+S/A1lZxwx5BMUdznwNzdGrfcNWi9V
 GmCrK+SB0Rs+WnyMVwf/omW4q8Zo/GqCUoSBRTDgB/S+pLLkaIdRn7V9maUI9y2LL8ts
 wp4w==
X-Gm-Message-State: AOAM5324Bi5sQYtOn2NZ9zorYw+YY6w9TOmVoRfXEZis8eBBzFts2NMa
 P8or1W9A2Z7/jKdi0jx/mtA=
X-Google-Smtp-Source: ABdhPJw2XcoICr+A/+sSsYk6LBdKzw2bJJuuszozjsTFN15TKBsWcrqsfynXuySCT6XuG6osBakV5w==
X-Received: by 2002:a1c:730a:: with SMTP id d10mr7344060wmb.53.1613729896294; 
 Fri, 19 Feb 2021 02:18:16 -0800 (PST)
Received: from alaa ([197.57.169.127])
 by smtp.gmail.com with ESMTPSA id y62sm13661208wmy.9.2021.02.19.02.18.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Feb 2021 02:18:15 -0800 (PST)
From: Alaa Emad <alaaemadhossney.ae@gmail.com>
To: mchehab+huawei@kernel.org,
	gregkh@linuxfoundation.org
Subject: [PATCH] staging: hikey9xx: fix warning styling issues
Date: Fri, 19 Feb 2021 12:18:12 +0200
Message-Id: <20210219101812.3483-1-alaaemadhossney.ae@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Alaa Emad <alaaemadhossney.ae@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix "WARNING: please, no space before tabs" styling issue in
hi6421-spmi-pmic.c for lines 51,52,53 and 69.

Signed-off-by: Alaa Emad <alaaemadhossney.ae@gmail.com>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index 4ebcfea9f3bf..626140cb96f2 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -48,9 +48,9 @@ enum hi6421_spmi_pmic_irq_list {
 /*
  * The IRQs are mapped as:
  *
- * 	======================  =============   ============	=====
- *	IRQ			MASK REGISTER 	IRQ REGISTER	BIT
- * 	======================  =============   ============	=====
+ *	======================  =============   ============	=====
+ *	IRQ			MASK REGISTER	IRQ REGISTER	BIT
+ *	======================  =============   ============	=====
  *	OTMP			0x0202		0x212		bit 0
  *	VBUS_CONNECT		0x0202		0x212		bit 1
  *	VBUS_DISCONNECT		0x0202		0x212		bit 2
@@ -66,7 +66,7 @@ enum hi6421_spmi_pmic_irq_list {
  *	SIM0_HPD_F		0x0203		0x213		bit 3
  *	SIM1_HPD_R		0x0203		0x213		bit 4
  *	SIM1_HPD_F		0x0203		0x213		bit 5
- * 	======================  =============   ============	=====
+ *	======================  =============   ============	=====
  */
 #define SOC_PMIC_IRQ_MASK_0_ADDR	0x0202
 #define SOC_PMIC_IRQ0_ADDR		0x0212
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
