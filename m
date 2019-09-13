Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A0DB24D3
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Sep 2019 20:01:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9992287849;
	Fri, 13 Sep 2019 18:01:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 46q0CN3GfS8L; Fri, 13 Sep 2019 18:01:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A504787831;
	Fri, 13 Sep 2019 18:01:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ECC9D1BF293
 for <devel@linuxdriverproject.org>; Fri, 13 Sep 2019 18:01:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EA4F122F26
 for <devel@linuxdriverproject.org>; Fri, 13 Sep 2019 18:01:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1hdg+w2Jbrvv for <devel@linuxdriverproject.org>;
 Fri, 13 Sep 2019 18:01:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 247EA22EE7
 for <devel@driverdev.osuosl.org>; Fri, 13 Sep 2019 18:01:22 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id 4so13554832pld.10
 for <devel@driverdev.osuosl.org>; Fri, 13 Sep 2019 11:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=yRp17VHL9Iw3V7L86dFEL60zAQzxM59eLkOS1ka8OUo=;
 b=WkunicrWUTV/6ezpkYLi72womFBqyUtSNiGfKU7qaUglTqulyB4T0xF29J00OeOepH
 ua517Pkx+dOPttyVNrQywXbXqR6onzurg+kI0eMc4gMk6nHGLoOCdqn5Ei171K68WwCl
 VQ49ImcDVgpAmRnA+IL9imeOgC/yzIrqAyYFhOTfnb5zFC5hUQS7Qf4Pr3bGxM9ml08P
 W2nnQYCwb0Tc8nSt5RJaaoIgALOXlMSSmRQoTjXENAxvUrYNQzahDVDxQlwLpsXxIwWd
 IYfydfJnMR4J99esYI/vFzJkleQVBNhZMcQ+niEahdQi7y+qR8xeEhYrNrDvbzT6hPk3
 NLGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=yRp17VHL9Iw3V7L86dFEL60zAQzxM59eLkOS1ka8OUo=;
 b=QOoSY8LmpQdpxfzdciiSMGkMEm86PAbmaDdn4p+DRuqTh8YD7ePvgd0c29x3Hu61Ft
 tM3UiuxMjS7SMmhNpe09E8Ds8ySEEq8z3p0EQ/hAUOkKtkOggilQJ26OmIwqFHwtw+H6
 LIoQyJBMx3WbQ5vg43w3znudpHuJb+YQd/9C0qC7i3MC/xR+GZim38AqVq8iRvRPWpkC
 KxLZiswd6zT90JbmOiDmKVebcDlgiW+e+ebbiYZ2NmMrytYe2rbv+xND9PHXViT0gn/0
 ZWdUMawA95Ft53JBSbS1ldkUiAVVSCeO1yJwZh0hgbB8EpRCW8dOpy46+FXVPEFk+WSb
 I61Q==
X-Gm-Message-State: APjAAAU/65wjLHe+tEumieBMzivtRi14FzJbm4MgLbZiN+xrhypMf5Rd
 ZAK6i6iL4IqCUqxTtYO1JhQ=
X-Google-Smtp-Source: APXvYqxNGZvez57ZNGZo8QWwHjurY38PSWlkWHMakeJvyBf8wWzWXn0uJXTXnVmDnAlpmkUlZ2f+UA==
X-Received: by 2002:a17:902:467:: with SMTP id
 94mr49272770ple.208.1568397681759; 
 Fri, 13 Sep 2019 11:01:21 -0700 (PDT)
Received: from localhost.localdomain ([117.197.240.177])
 by smtp.gmail.com with ESMTPSA id d5sm39089205pfa.180.2019.09.13.11.01.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2019 11:01:21 -0700 (PDT)
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [RESEND PATCH] staging: rtl8192u: Fix indentation for cleaner code
Date: Fri, 13 Sep 2019 23:31:01 +0530
Message-Id: <20190913180101.14573-1-sylphrenadin@gmail.com>
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
