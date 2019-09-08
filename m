Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A44EDACB73
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 10:03:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 47A7986FAD;
	Sun,  8 Sep 2019 08:03:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X1n04hhQUd2r; Sun,  8 Sep 2019 08:03:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9A05686DC6;
	Sun,  8 Sep 2019 08:03:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CD0051BF31C
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 08:03:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C930C86DC6
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 08:03:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GJT6oPeGG22w for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 08:03:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4CE0885C6F
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 08:03:45 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id p3so5942778pgb.9
 for <devel@driverdev.osuosl.org>; Sun, 08 Sep 2019 01:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=yRp17VHL9Iw3V7L86dFEL60zAQzxM59eLkOS1ka8OUo=;
 b=lOephNkTl/sSBsA9wjpLLKfNDL5l5cvNav+gymLVwtkXFKsRI5ixDBv9PvylMqns9m
 kO64Tzmb7Qchhhxeg8zaDHJm/H0juaFHxMPAh+DGNa3mmohpFnEuPJF0sv1j9DQoP0Fg
 Hkkysk9Wj/HLZjLqZGGXo98RQAb5UfAlRZqg2Ts0fJrtRM4BKTk3UI1A3dR5B00qc/4H
 LdsqZWfPrzZ1s4k77nwoAp2xeGQwBBJcdYFamWA3q5n6unrZiTSb95CZeyeK1jt66JPw
 KYUVK/UD07MMgNHi/ntIFqKW2qht/M0tOVnCX4cvg/6xekpnGpMZykmBgsCsm4Akrj9X
 pctA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=yRp17VHL9Iw3V7L86dFEL60zAQzxM59eLkOS1ka8OUo=;
 b=Hcc2rxyiqbK88IvaAkDP7EC107cWGZt7v4geHA+cbdJZO+QoQ2OGndrbdEFYoGKb6x
 GIRHQSH8fAR9UkNKFgsbS+ZC1Ehc5PsxyeHDjp85UiQOLevn23F5QacCkDfSmFW1FKhD
 bgFbo+49SiLglT7onQR6TUzOCWSYqoiCWH6sxAtL1sYlFsDQd4j5xKxHTODOovbvt6OK
 JgWccQhRMsxWEJBjHLWztEKCLs5ZXRJUsuo0WtHnu8M6r/YOGNEftHpj7rfmE01M0/J/
 PQVaN+r/LRd9VXH28PfwgL1DOifCzqnZdagvrAnavqvA9NAMSynI6d3ObwaZW6g5ozZ6
 ozkw==
X-Gm-Message-State: APjAAAUmkkeVUGdSX0FHf+vTePgN80P6G+i4kXx2Jd9ZztAfuSxNAp2G
 /APhx+oDHpTcbmZBQviW8Wc=
X-Google-Smtp-Source: APXvYqwqVOJBa7ZMccud8Y1+yY88sjMu3sPF06Lc8GAZDtFMjG4+150pD8AfEPY76F/5wXQwp+5Yeg==
X-Received: by 2002:a17:90a:3aa6:: with SMTP id
 b35mr19141022pjc.94.1567929824792; 
 Sun, 08 Sep 2019 01:03:44 -0700 (PDT)
Received: from localhost.localdomain ([2409:4062:219:e461:f9a3:a788:a344:9080])
 by smtp.gmail.com with ESMTPSA id m13sm10385662pgn.57.2019.09.08.01.03.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Sep 2019 01:03:44 -0700 (PDT)
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192u: Fix indentation for cleaner code
Date: Sun,  8 Sep 2019 13:33:18 +0530
Message-Id: <20190908080318.27838-1-sylphrenadin@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, dan.carpenter@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixes indentation for if condition in the file r8190_rtl8256.c for better readability as suggested by Dan Carpenter.

Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
 drivers/staging/rtl8192u/r8190_rtl8256.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
index b169460b9f26..63e0f7b1b852 100644
--- a/drivers/staging/rtl8192u/r8190_rtl8256.c
+++ b/drivers/staging/rtl8192u/r8190_rtl8256.c
@@ -43,8 +43,8 @@ void phy_set_rf8256_bandwidth(struct net_device *dev, enum ht_channel_width Band
 		switch (Bandwidth) {
 		case HT_CHANNEL_WIDTH_20:
 				if (priv->card_8192_version == VERSION_819XU_A ||
-					priv->card_8192_version ==
-					VERSION_819XU_B) { /* 8256 D-cut, E-cut, xiong: consider it later! */
+				    priv->card_8192_version == VERSION_819XU_B) {
+					/* 8256 D-cut, E-cut, xiong: consider it later! */
 					rtl8192_phy_SetRFReg(dev,
 						(enum rf90_radio_path_e)eRFPath,
 						0x0b, bMask12Bits, 0x100); /* phy para:1ba */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
