Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B371A4464
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Apr 2020 11:18:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7957B85810;
	Fri, 10 Apr 2020 09:18:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3gmIkOhhVRk0; Fri, 10 Apr 2020 09:18:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3291784D3B;
	Fri, 10 Apr 2020 09:18:47 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 298141BF35E
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 09:18:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2688786BF2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 09:18:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wwYI-1Q2hUEO
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 09:18:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C2A4D86BB9
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 09:18:43 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id z6so2087683wml.2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 02:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OdnQLTnOvB12M24Pr4c69P5R/lSQvyTtU4gEPmP1v0g=;
 b=sOcr3V3hRa3ETDqJ/pJcZqnqiBQPBUzk16i8VA/Z9iW9GSafzJLX/dRzjXeXBdKOvb
 Lrp4sLQ1o9EXPyuB4oC20qD7ReTACvc7f+kBqr7sx826+B6QnRQqUjCengxzQFUOm5wu
 /IH3v7c4TDWBGHDv6QHEK/FZameLJwYh4Y15EjHiR7l5vSZTH9yjcKFJG5DSkFUFCRRv
 4RsfEXthCzbVt3tJyAWjA0XSJ4vwJN5B5IyhHhZ13rsQhzQ5elS45cdUCLuEEbBU1YbC
 Uw6YF4IWOLzHqsZfFLrfP9OpUNJ78ZCAslrlLj9Em+6MMHJmWOoJhEQS1Ei8/Bpqs5ee
 b2Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OdnQLTnOvB12M24Pr4c69P5R/lSQvyTtU4gEPmP1v0g=;
 b=lgEYo+i9qmJVJMo1Lh/msy23WcTSnz2j8cBTrEhSpCxJcktpr85iFh4GdSqIL/z5Gr
 1KBs7XOXzK5cP5vQyg85IO+qzsLnWt1p7L057zlA8LOPosRZ+lgkWdSPDU51SUrJzGxd
 pQ6ZX+bsmU1gvH2UiOvgz2pA+n1DcjuZU9m6JF/v0fIblMff9ryCkjs2/nT79KKOxGTp
 Upp98m/3wWePpgretC5zJPNMVvQorKOAUAY/uR6NJJ58dY+/B9Cac2KfjNtbcd7kb86T
 FkicnXBTv6mivTm+7Dp6MqxOh6j00M1YmEBuIw+jiR1myOruibmY5XIfLPd4spzadztm
 nesQ==
X-Gm-Message-State: AGi0PuZqMklFHAidUTod7rBrLfKSDMaTH5xZ5eX6DZbeplL2GgpJTgJX
 SIggkTUYEoZ++4eFLDRvZwc=
X-Google-Smtp-Source: APiQypItdFvKeWN/l74OgaUoD5nI51kudUXUwdYn5L9X/nFHG2Fgv19A4Bm+FBGfKAbMvK4R4xjnjg==
X-Received: by 2002:a7b:c002:: with SMTP id c2mr4157673wmb.123.1586510322051; 
 Fri, 10 Apr 2020 02:18:42 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id p3sm2049066wrq.97.2020.04.10.02.18.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 Apr 2020 02:18:41 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: mt7621-pci-phy: dt: bindings: remove bindings
 txt file
Date: Fri, 10 Apr 2020 11:18:36 +0200
Message-Id: <20200410091836.13068-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200410091836.13068-1-sergio.paracuellos@gmail.com>
References: <20200410091836.13068-1-sergio.paracuellos@gmail.com>
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
Cc: neil@brown.name, devicetree@vger.kernel.org,
 driverdev-devel@linuxdriverproject.org, robh@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Yaml file for bindings has been properly added. Hence, remove
the old txt file.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../mediatek,mt7621-pci-phy.txt               | 28 -------------------
 1 file changed, 28 deletions(-)
 delete mode 100644 drivers/staging/mt7621-pci-phy/mediatek,mt7621-pci-phy.txt

diff --git a/drivers/staging/mt7621-pci-phy/mediatek,mt7621-pci-phy.txt b/drivers/staging/mt7621-pci-phy/mediatek,mt7621-pci-phy.txt
deleted file mode 100644
index a369d715378b..000000000000
--- a/drivers/staging/mt7621-pci-phy/mediatek,mt7621-pci-phy.txt
+++ /dev/null
@@ -1,28 +0,0 @@
-Mediatek Mt7621 PCIe PHY
-
-Required properties:
-- compatible: must be "mediatek,mt7621-pci-phy"
-- reg: base address and length of the PCIe PHY block
-- #phy-cells: must be <1> for pcie0_phy and for pcie1_phy.
-
-Example:
-	pcie0_phy: pcie-phy@1e149000 {
-		compatible = "mediatek,mt7621-pci-phy";
-		reg = <0x1e149000 0x0700>;
-		#phy-cells = <1>;
-	};
-
-	pcie1_phy: pcie-phy@1e14a000 {
-		compatible = "mediatek,mt7621-pci-phy";
-		reg = <0x1e14a000 0x0700>;
-		#phy-cells = <1>;
-	};
-
-	/* users of the PCIe phy */
-
-	pcie: pcie@1e140000 {
-		...
-		...
-		phys = <&pcie0_phy 0>, <&pcie0_phy 1>, <&pcie1_phy 0>;
-		phy-names = "pcie-phy0", "pcie-phy1", "pcie-phy2";
-	};
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
