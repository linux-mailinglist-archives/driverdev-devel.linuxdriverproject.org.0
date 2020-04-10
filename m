Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3264B1A4465
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Apr 2020 11:18:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31E44844AB;
	Fri, 10 Apr 2020 09:18:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m5ZtydHHZCO0; Fri, 10 Apr 2020 09:18:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0612C848ED;
	Fri, 10 Apr 2020 09:18:50 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 33F4C1BF35E
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 09:18:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 30B458824B
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 09:18:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D0SHrIv8MYM8
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 09:18:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E6A68881D9
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 09:18:44 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id x4so1882505wmj.1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 02:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4QBHYdaBS/zCmNUeetxcK68TmanqEvxov8IzF/nOH2Y=;
 b=p/E0af2slS1/cYcgsjPwSlUXAkx1XR+SKtSZTFpuURtSEWHCzvpg/9ac+gpV5XkY5e
 tpy+u2Vox6XPyjbz5LtCaGgtQGCXY4NOAEba0gyRQBKoOwzX0xZ4YJbjNtjKzD+Ni8/0
 pv/cspNKwLfhhRbSfzfANrEicAKvVhfx+SmGbEe5WY06wfVW6/nH8jnQLs6ug60IQGoB
 D5ZIyB5DUdGgua9k4JgnG7wyGFvxx8/+2C5vP6bOGavBqHHuSjZfdZqmk061sLF19+br
 jrTiux4MzF3Qus1w7VBozBI6YyiYmmMeX1CJ9sSIJoudi5u8jrPJD2BnUAqvzShkZchj
 S4EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4QBHYdaBS/zCmNUeetxcK68TmanqEvxov8IzF/nOH2Y=;
 b=K52dp+BcVJCrHuN9rYk+pGRMc+aeklbCc0FwrxNAENuYM8EPGkat4yC1Jehr8tZnM7
 MSroOR+BBXyOwspMqmq3ldhEleJyJ5ALpqxWStF+1kk4OwlQqG/6SLSZdJakMLxywkIX
 Yip13Gz3y9aBlfEPtDA4CywgbFd/8NasosEZGXyi1c73mRbHpfvNpjct4Dw31GGOIwBo
 +SuaUGuqDvGd5ImVOLjS42lkfS1EBV+ggqDUNVX6jJIT/axlEoZZvOxP5rZ1usT1otzC
 jfUBarYWdJIqoeod2NoN5tJydxOtX/EpUDhwS5GglL2jYrmOzqz7KdqQ1EgTzFPm8hAK
 qn4g==
X-Gm-Message-State: AGi0PubHUeymFvdQazHsx7zrSUL2lFs6koEf3TM10AHt5omn3KLw9DN/
 Hf2S2qJxIOeb70+PEIdZql+3vG0Y
X-Google-Smtp-Source: APiQypLBAncxVk/Uq8YFXfVq408ALxCpVU5NkHby6EiWKsDaaEES7BeLeEgvkm5AHRRvZPcSnJng2w==
X-Received: by 2002:a1c:ded4:: with SMTP id v203mr4245359wmg.106.1586510320802; 
 Fri, 10 Apr 2020 02:18:40 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id p3sm2049066wrq.97.2020.04.10.02.18.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 Apr 2020 02:18:40 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: mt7621-pci-phy: dt: bindings: add mediatek,
 mt7621-pci-phy.yaml
Date: Fri, 10 Apr 2020 11:18:35 +0200
Message-Id: <20200410091836.13068-2-sergio.paracuellos@gmail.com>
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

Add bindings to describe Mediatek MT7621 PCIe PHY.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../mediatek,mt7621-pci-phy.yaml              | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)
 create mode 100644 drivers/staging/mt7621-pci-phy/mediatek,mt7621-pci-phy.yaml

diff --git a/drivers/staging/mt7621-pci-phy/mediatek,mt7621-pci-phy.yaml b/drivers/staging/mt7621-pci-phy/mediatek,mt7621-pci-phy.yaml
new file mode 100644
index 000000000000..cf32bbc45b5d
--- /dev/null
+++ b/drivers/staging/mt7621-pci-phy/mediatek,mt7621-pci-phy.yaml
@@ -0,0 +1,36 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/phy/mediatek,mt7621-pci-phy.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Mediatek Mt7621 PCIe PHY Device Tree Bindings
+
+maintainers:
+  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
+
+properties:
+  compatible:
+    const: mediatek,mt7621-pci-phy
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 1
+    description: selects if the phy is dual-ported
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    pcie0_phy: pcie-phy@1e149000 {
+      compatible = "mediatek,mt7621-pci-phy";
+      reg = <0x1e149000 0x0700>;
+      #phy-cells = <1>;
+    };
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
