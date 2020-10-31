Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3A02A1753
	for <lists+driverdev-devel@lfdr.de>; Sat, 31 Oct 2020 13:23:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1FD3E2E0DE;
	Sat, 31 Oct 2020 12:23:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8UvxQEbVpZyR; Sat, 31 Oct 2020 12:22:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B943C2E0D9;
	Sat, 31 Oct 2020 12:22:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 894991BF23C
 for <devel@linuxdriverproject.org>; Sat, 31 Oct 2020 12:22:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 867DC871DE
 for <devel@linuxdriverproject.org>; Sat, 31 Oct 2020 12:22:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EgQOBmk_YrsR for <devel@linuxdriverproject.org>;
 Sat, 31 Oct 2020 12:22:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 38A3A871C8
 for <devel@driverdev.osuosl.org>; Sat, 31 Oct 2020 12:22:53 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id c9so3583149wml.5
 for <devel@driverdev.osuosl.org>; Sat, 31 Oct 2020 05:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yhiGf2+miDL4vNktmWcMghT5Zn6/WsNTcEagUPj9ukA=;
 b=DPU05UlkeVnaYEvcezqCmlKWmMXWj7B+uarOYkonB/olPXrQmDqo1rdQtjYhWhZ6nE
 iLuh7ZcgLE9feduuyHGZAP7hVGyn9AhsyswjNVSBFT0yunxBtXyURf1BvRju5iQ3XZV7
 wy1ROOealzgQIg89WIs8d8Oxdow77GY66QsAR8Qz9+Prng4sVflnQB7RM16670EtYElF
 AMtVinamX71sxg4NBUPky5PVwH7nbj85+8eORocgNGNwBI1JaeCsi5yWA9jLUzRmvp3f
 WI7AsrbRZSlQSRj3ulgrY8468Z3IBBXOTVYoD5oI9xeWMm8ZbzpRMTBokblg0IHsw/eR
 +hzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yhiGf2+miDL4vNktmWcMghT5Zn6/WsNTcEagUPj9ukA=;
 b=Rd+3BuTob/MHm1eT/mCTeviYgrXRDKHJ4lghp5ZKgYoq3a9u8yXhv+faz2QXntriCM
 dJ1D7CN/FOaLIV0blZ9CxAHyJ/Kc9x3vF1XtEo77YTXYfwl/uCih4ZtwQiVdavr0LR7B
 5xC9buT8UjOnAbZ+Fm2TdjZoB9WxIteMbKJM8NussewcIHZ/utc4309W+O2KsdziSKWY
 AV4+uUtC8GLVQcpQfnUKi53/LYFHmPHKvHIVnVZv5jkE9FXYJMzSlbC2T+DY30fuicii
 9fTFTfxRND8Ffk/b3UB50oBNHD6JtiJtHTBAOXxFWrhtUbqP6KVSCkMmMtP5ymEB/JVc
 Fzgw==
X-Gm-Message-State: AOAM533p9lY7ORj0/KlG1g+PKVhLvNoSkj60+WgE0gtbiur6q5eQk+6s
 NBEb2Xaj3OTXj+Y5MQo2n5U=
X-Google-Smtp-Source: ABdhPJwCK9AU259qx+jOqdgJDpZkMeJ9R/nKXD2Nqwm9eUkwVBlL51eCHfsb4JTsdHJmXbjGOrMPhQ==
X-Received: by 2002:a1c:b041:: with SMTP id z62mr8138377wme.183.1604146971792; 
 Sat, 31 Oct 2020 05:22:51 -0700 (PDT)
Received: from localhost.localdomain (14.red-83-46-194.dynamicip.rima-tde.net.
 [83.46.194.14])
 by smtp.gmail.com with ESMTPSA id f7sm15299199wrx.64.2020.10.31.05.22.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 31 Oct 2020 05:22:51 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: kishon@ti.com
Subject: [PATCH v4 3/4] MAINTAINERS: add MT7621 PHY PCI maintainer
Date: Sat, 31 Oct 2020 13:22:45 +0100
Message-Id: <20201031122246.16497-4-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201031122246.16497-1-sergio.paracuellos@gmail.com>
References: <20201031122246.16497-1-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 gregkh@linuxfoundation.org, vkoul@kernel.org, robh+dt@kernel.org,
 neil@brown.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adding myself as maintainer for mt7621 pci phy driver.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index aefbbecfb266..31f808e58e73 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11100,6 +11100,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/i2c/i2c-mt7621.txt
 F:	drivers/i2c/busses/i2c-mt7621.c
 
+MEDIATEK MT7621 PHY PCI DRIVER
+M:	Sergio Paracuellos <sergio.paracuellos@gmail.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
+F:	drivers/phy/ralink/phy-mt7621-pci.c
+
 MEDIATEK NAND CONTROLLER DRIVER
 L:	linux-mtd@lists.infradead.org
 S:	Orphan
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
