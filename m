Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA404B343
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 09:45:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9A3D085CAA;
	Wed, 19 Jun 2019 07:45:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4wRYuHcTCmZV; Wed, 19 Jun 2019 07:45:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5BDEA84476;
	Wed, 19 Jun 2019 07:45:11 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E1071BF23C
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 07:45:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 992B48426E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 07:45:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A5cd7dhX4mfv
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 07:45:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 74FE4841E3
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 07:45:05 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id p11so2183406wre.7
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 00:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GKup8Rucy0uSd+bA7aAqZfYEgjdXCYpsDtgJ8rsYXiY=;
 b=Bpv4wFMS2dIv2nZuEwj3XUVttpC1bRtJIap3dG7zOYLCsI2yefTNnTu1KEVTMJZQ3U
 xebgvzre32CYf2XoXnEGAZNWyoPuqjWFT2+Ok2XF38Bjvo24RcFUkno9SVLxywbhjNGX
 liZJDgqZYb0YcgpgPcTwo2ZW0F7ZZpwbpb3n88Beafk9wakO+2sqCOIgPHvc4LOJB28x
 N0JgnQAZVuGg83wkMkqsyTICMzdasWrh/U8PViBWGXEok3L1Qh37d/9wxLYpGVWp/m19
 XB8sT9wryDYjG7JmnPIsHfxE3mHZdum3k9g25lp9w7gw4RNUkgA0ONJpG4W/9o+yax05
 qCpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GKup8Rucy0uSd+bA7aAqZfYEgjdXCYpsDtgJ8rsYXiY=;
 b=OQhLKI/OU5+2/5DxzQBg/R2MLHzHQEbcFCMKRzsKZcej3VfJIgDQ51yXq3DvuR7Pcp
 ZDfvi0sTjisQrL0N71FUpjTvkNE+U2XZ3ZjgqTJP/7/tFjuSJaYoudjpK452w/h/+U/k
 qT83H2JjGpeOPtlrYeuFXSDvl6wiKHGALtIIi3AJFCVS3bNLaJWb2FH5BhinZbt0n7od
 DWLZPYfd4qTM41b9odKwqLI21nUc7UpJ7buz1o/dC2RSmKyUXWWJBv0thwF5Rik2okSR
 mBeFBnodR+NWbJWslIGnx1+7qwJXExgHezQV5RztL5gNXBd2n0Pb0Yffo07LlYtZuwvd
 wfKg==
X-Gm-Message-State: APjAAAVnzf1sYrk2TyGUgTkGVn+6Ng4p0qUX6WHg6vUZhau6ZXYa5fXL
 dBtJHx5Jdq9cucgq0Lq7Piw=
X-Google-Smtp-Source: APXvYqySNZY/lFYiHBpw5vD8HBp9kkpm7Hz/hCo7YO4Amie3oWfVgT2ERj8M/iOONW90ja6ESBAwDQ==
X-Received: by 2002:a5d:6242:: with SMTP id m2mr42798195wrv.310.1560930304103; 
 Wed, 19 Jun 2019 00:45:04 -0700 (PDT)
Received: from localhost.localdomain (34.red-88-0-78.dynamicip.rima-tde.net.
 [88.0.78.34])
 by smtp.gmail.com with ESMTPSA id j7sm17925440wru.54.2019.06.19.00.45.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 19 Jun 2019 00:45:03 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/4] staging: mt7621-pci: dt-bindings: add perst-gpio to
 sample bindings
Date: Wed, 19 Jun 2019 09:44:58 +0200
Message-Id: <20190619074458.31112-5-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190619074458.31112-1-sergio.paracuellos@gmail.com>
References: <20190619074458.31112-1-sergio.paracuellos@gmail.com>
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org, gerg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Both driver and device tree have been updated to use GPIO perst.
Update bindings documentation also.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/mediatek,mt7621-pci.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/mt7621-pci/mediatek,mt7621-pci.txt b/drivers/staging/mt7621-pci/mediatek,mt7621-pci.txt
index 5a6ee4103cd5..604ec813bd45 100644
--- a/drivers/staging/mt7621-pci/mediatek,mt7621-pci.txt
+++ b/drivers/staging/mt7621-pci/mediatek,mt7621-pci.txt
@@ -6,6 +6,7 @@ Required properties:
 - reg: Base addresses and lengths of the PCIe subsys and root ports.
 - bus-range: Range of bus numbers associated with this controller.
 - #address-cells: Address representation for root ports (must be 3)
+- perst-gpio: PCIe reset signal line.
 - pinctrl-names : The pin control state names.
 - pinctrl-0: The "default" pinctrl state.
 - #size-cells: Size representation for root ports (must be 2)
@@ -48,6 +49,7 @@ Example for MT7621:
 		#address-cells = <3>;
 		#size-cells = <2>;
 
+		perst-gpio = <&gpio 19 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pcie_pins>;
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
