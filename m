Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F182A1752
	for <lists+driverdev-devel@lfdr.de>; Sat, 31 Oct 2020 13:23:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D9BE6877C8;
	Sat, 31 Oct 2020 12:22:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WU0gt3YyTbTN; Sat, 31 Oct 2020 12:22:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6A96C877B1;
	Sat, 31 Oct 2020 12:22:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2481E1BF23C
 for <devel@linuxdriverproject.org>; Sat, 31 Oct 2020 12:22:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 213F8871C8
 for <devel@linuxdriverproject.org>; Sat, 31 Oct 2020 12:22:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nXB0dtKecsZS for <devel@linuxdriverproject.org>;
 Sat, 31 Oct 2020 12:22:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F35C9871EC
 for <devel@driverdev.osuosl.org>; Sat, 31 Oct 2020 12:22:50 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id b8so9309137wrn.0
 for <devel@driverdev.osuosl.org>; Sat, 31 Oct 2020 05:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YMfchJ7P76DwH5DNS2F93sb17oYWRZh49eDAnHjA7P0=;
 b=ro87S9k9eMRXDQgBKqj0a3AblSSFWLO5FnmHyOLznhcZEJnR0avwL2vSoJF3PBmhxs
 udK6VZBR1nQb2efJQTQKrZvC+f33YKGHvpM21GPLbh0idoFI+G+H//B9OxJlSZHEM1pP
 FytrqOmvN6m77Vl+3zECS6Ng58fU397qNfWhTTmCL++jj0k+B6520ec021VmtjQFW5D2
 YK/mM3qU9vV0aP3OdhglPe3qsQykJnSzyh0iXBaezs9eEN+fye4YO1FJNjmoOVyFpjX+
 ELIq4MvWyt3zRjT4F5PHZBjr3nvWE/4D0mPdT4w7Aa1mCi9sG1hxN6qWrZn+d0+BkgYN
 qxQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YMfchJ7P76DwH5DNS2F93sb17oYWRZh49eDAnHjA7P0=;
 b=t32iUpZ4nnK1LO0MbZQQdteO8A/KPt+/sDmz+IGrIq7OM1x9kKFZtneo86v/QRU63k
 2WoK2NYaBhqVdJSCedO97P0lFvHrf4yNVZjM2Jt1mxtRfdW0HFYdAe3L0qIC2aIAjaek
 XvVXevQrhDyyCkfbxtALFog2fzPo7Kzuw+Cpn2RfXNdEY3b+1lCP0yU3WH4L1iM3eQp5
 o28CIXkQVG24jqCutHDqdZaK2qfEHUmZf8w9IVldIMSEvM2Y5UKy7BKh0QAU6T93F8mF
 B7820yU8w4pzjgd/41gR+O4TrfX37bqawo+Vgq5k7GTrbs+a+Mm0W632WRtH08lc7Ano
 svoQ==
X-Gm-Message-State: AOAM5302Fd/98/2KeORg8/6Nm8M88L3ttsUPbcUbBApakxZtoeUkO1vs
 hiNVaL4iWHdIf6otIyoUxpY=
X-Google-Smtp-Source: ABdhPJwSA/sCKlBvNf90LEyWl4oUlKPTQ6HqQbnbNrtDJifG3Y079c5h4DKPimnEDn9SbNu2b7YCLQ==
X-Received: by 2002:adf:e685:: with SMTP id r5mr9780483wrm.340.1604146969549; 
 Sat, 31 Oct 2020 05:22:49 -0700 (PDT)
Received: from localhost.localdomain (14.red-83-46-194.dynamicip.rima-tde.net.
 [83.46.194.14])
 by smtp.gmail.com with ESMTPSA id f7sm15299199wrx.64.2020.10.31.05.22.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 31 Oct 2020 05:22:49 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: kishon@ti.com
Subject: [PATCH v4 1/4] dt-bindings: phy: Add binding for Mediatek MT7621 PCIe
 PHY
Date: Sat, 31 Oct 2020 13:22:43 +0100
Message-Id: <20201031122246.16497-2-sergio.paracuellos@gmail.com>
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

Add bindings to describe Mediatek MT7621 PCIe PHY.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../bindings/phy/mediatek,mt7621-pci-phy.yaml | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
new file mode 100644
index 000000000000..cf32bbc45b5d
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
@@ -0,0 +1,36 @@
+# SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
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
