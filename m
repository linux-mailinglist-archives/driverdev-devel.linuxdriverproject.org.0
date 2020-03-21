Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F44C18E194
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 14:36:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CBBB787D69;
	Sat, 21 Mar 2020 13:36:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jgwmO5SNDTvo; Sat, 21 Mar 2020 13:36:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A22C8878BA;
	Sat, 21 Mar 2020 13:36:37 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D7EEB1BF28C
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 13:36:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BA3C787CDE
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 13:36:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MnwkRW8Y4oO5
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 13:36:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4DC9087BB1
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 13:36:32 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id h9so10829604wrc.8
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 06:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7uKxohxhSke1okYIeMiLMpWw+u5bgyZrcsVtWcuWvIM=;
 b=oAs+IBRcetKuIZ5jboU5uBkh9dRk4jCbJ6Vv4SASIyiyNLmLYvIWNwNqkKXHb2u9de
 NUll9KPn9DEy1dBMYSpBO2n2GeA+jJX9Bcpjs5lmEoaT3wZPlrKRdmYt5Gj66vuGXXCC
 HvBjpz7ceB1BMNK+I2EJdybrhIQQ3yf13aFjxVMMHl+81YIcxpun1GZsg9fzvNzprRh/
 dirGYe4mOAmTCtHzzwuhAc/KvHj47IgEhaK7VmbrC8jth3kg+U/z2fiE5XrDO+SqEdCU
 ZwibsHp5k2DYoHi13MaOgoGBvRqjYlL9M4GSUd4+kB+HTL3OJujJRwY9NlmLXslh2inT
 muWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7uKxohxhSke1okYIeMiLMpWw+u5bgyZrcsVtWcuWvIM=;
 b=cAS38/QiBDfAmd1quxqwxDu3L5sgd/IZAUAwfh5jkl22Ums8GDnghr1ojvG8al9xNf
 Cy3Qtj3HibgA8Byjx9Pc9BX4vyf6F1xGTHesM0Ln+Obc/w4ixDgJy/2zamEAMtunGNKe
 1AJRzKW4XcJ3OqdNMsuRYqA13JYnmM2fkxtgEs+0XfmMcwQAtxfdj2JvvKUWmEMIune5
 yrS8sqSvvK55OyFSUHCwJWHTK9n0gUXQ+3o5xu2+U6jwcUGIWWKu+ggftvV8Jm2nAvyH
 gxcVC4I0KdHR5UdBwKBHiQ2hwY0Q9UNSyf3T2BucQplyp6wszVtnYVyCF+ZkJ8SSLutd
 88Og==
X-Gm-Message-State: ANhLgQ29stkRq4ANiecpr5wO2adbqsxiXhkHM7X1rjKYZZkfs9RGmeXV
 upOV3hgP6xsiLchz4GjBYcQ=
X-Google-Smtp-Source: ADFU+vscpI1CIikBABwVgUxK87qle1BZm9+eGKlKPBtf05qzZ0zrA0+UYABJw5magAXQWJFEkFeCrQ==
X-Received: by 2002:a5d:470b:: with SMTP id y11mr9321750wrq.282.1584797790858; 
 Sat, 21 Mar 2020 06:36:30 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id 195sm12676043wmb.8.2020.03.21.06.36.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 21 Mar 2020 06:36:30 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/4] staging: mt7621-pci-phy: re-do 'xtal_mode' detection
Date: Sat, 21 Mar 2020 14:36:24 +0100
Message-Id: <20200321133624.31388-4-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200321133624.31388-1-sergio.paracuellos@gmail.com>
References: <20200321133624.31388-1-sergio.paracuellos@gmail.com>
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Detection of the Xtal mode is using magic numbers that
can be avoided using properly some definitions and a more
accurate variable name from 'reg' into 'xtal_mode'. This
increase readability.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c b/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
index 8100d8286365..57743fd22be4 100644
--- a/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
+++ b/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
@@ -75,6 +75,9 @@
 
 #define RG_PE1_FRC_MSTCKDIV			BIT(5)
 
+#define XTAL_MODE_SEL_SHIFT			6
+#define XTAL_MODE_SEL_MASK			0x7
+
 #define MAX_PHYS	2
 
 /**
@@ -136,9 +139,11 @@ static void mt7621_bypass_pipe_rst(struct mt7621_pci_phy *phy)
 static void mt7621_set_phy_for_ssc(struct mt7621_pci_phy *phy)
 {
 	struct device *dev = phy->dev;
-	u32 reg = rt_sysc_r32(SYSC_REG_SYSTEM_CONFIG0);
+	u32 xtal_mode;
+
+	xtal_mode = (rt_sysc_r32(SYSC_REG_SYSTEM_CONFIG0)
+		     >> XTAL_MODE_SEL_SHIFT) & XTAL_MODE_SEL_MASK;
 
-	reg = (reg >> 6) & 0x7;
 	/* Set PCIe Port PHY to disable SSC */
 	/* Debug Xtal Type */
 	mt7621_phy_rmw(phy, RG_PE1_FRC_H_XTAL_REG,
@@ -154,13 +159,13 @@ static void mt7621_set_phy_for_ssc(struct mt7621_pci_phy *phy)
 			       RG_PE1_PHY_EN, RG_PE1_FRC_PHY_EN);
 	}
 
-	if (reg <= 5 && reg >= 3) { /* 40MHz Xtal */
+	if (xtal_mode <= 5 && xtal_mode >= 3) { /* 40MHz Xtal */
 		/* Set Pre-divider ratio (for host mode) */
 		mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG,
 			       RG_PE1_H_PLL_PREDIV,
 			       RG_PE1_H_PLL_PREDIV_VAL(0x01));
 		dev_info(dev, "Xtal is 40MHz\n");
-	} else if (reg >= 6) { /* 25MHz Xal */
+	} else if (xtal_mode >= 6) { /* 25MHz Xal */
 		mt7621_phy_rmw(phy, RG_PE1_H_PLL_REG,
 			       RG_PE1_H_PLL_PREDIV,
 			       RG_PE1_H_PLL_PREDIV_VAL(0x00));
@@ -206,7 +211,7 @@ static void mt7621_set_phy_for_ssc(struct mt7621_pci_phy *phy)
 	mt7621_phy_rmw(phy, RG_PE1_H_PLL_BR_REG,
 		       RG_PE1_H_PLL_BR, RG_PE1_H_PLL_BR_VAL(0x00));
 
-	if (reg <= 5 && reg >= 3) { /* 40MHz Xtal */
+	if (xtal_mode <= 5 && xtal_mode >= 3) { /* 40MHz Xtal */
 		/* set force mode enable of da_pe1_mstckdiv */
 		mt7621_phy_rmw(phy, RG_PE1_MSTCKDIV_REG,
 			       RG_PE1_MSTCKDIV | RG_PE1_FRC_MSTCKDIV,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
