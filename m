Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C842B966B
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Nov 2020 16:43:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2A384273D3;
	Thu, 19 Nov 2020 15:43:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L195lqSbfuvn; Thu, 19 Nov 2020 15:43:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3A41E27366;
	Thu, 19 Nov 2020 15:43:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C0DD81BF21A
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 15:43:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BC4728441F
 for <devel@linuxdriverproject.org>; Thu, 19 Nov 2020 15:43:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZsCHOFUf4rW3 for <devel@linuxdriverproject.org>;
 Thu, 19 Nov 2020 15:43:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EE43486A54
 for <devel@driverdev.osuosl.org>; Thu, 19 Nov 2020 15:43:42 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id p1so6861904wrf.12
 for <devel@driverdev.osuosl.org>; Thu, 19 Nov 2020 07:43:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iULKoUBIR5d2U0BfaYo4iVlUh0dLV0ntO+8RNSncvCo=;
 b=G0wtP2V8M7tYSzNmumEeuwPiNMGINkNXZdIwlMrKdtCM082U2ZqmilBRGRExmfqc+Q
 QV69Q/+zCecC4U+UpUlnCfjNfm8XL6bfuxVYXSAI4srIDVZubmgBylCPW/3D+duIxhfF
 KtTpBC+w9ls4ORMhQy/BJAK8lHAYDXTGqlFpLX4w14KtskOV99Zpx/Q1zpuqyd+cAAkq
 vHOnzYPSg100pkhvDfanY5bWWPz1pIx6GCFLqvnPGX2qy7MflSJP7/WqpSSinGSb1p5n
 /6kPPpV3eBI+fhu2wb9D4PiQL0aguT37jHG/lSFSjqscRi7GOyPCEHcY5CbT97sLB1bI
 CWLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iULKoUBIR5d2U0BfaYo4iVlUh0dLV0ntO+8RNSncvCo=;
 b=hrtSqQpQgsqr3bBgfDoXvzNg4wWXDYXYFHEP3ErePO59x+6iGd6HqZbuBf/KXzumFK
 W19zjtVHVtyFtVMI1H4tXJhC8ZiD7s9/LniX/6sbkGyv1DyZlamaB8aZixd6uTqEx1tB
 3Jb+MozCeT8p+owOrgLbPx/6ctSHphF/vsR+53fRvrJV+eKXqMRLPbwt3QKEqG2cECTW
 nGiXGwsfBQxt9XrLTMujdlc6nr/YdAKp7Po9qpCz8T1c6ZqVGsi/BGoSFp/7Y8KhEsGI
 DgyFPlerHfVTdm6xHeLhKe78Lvsfx8H/3ayFzx1chhR3OW/km2w4GSqfbBfMp9WvivPz
 7iiQ==
X-Gm-Message-State: AOAM531cP3PGWzDq7kT0IywoNjS/yzT8hEB9KWO5/f/+j2l+djDPBcw0
 JsNfelmsXZ6Ndl/9sRBIVQI=
X-Google-Smtp-Source: ABdhPJy2zNZBjLmzfMIUoS3cRB5AW5P2DbKrJSnQWMtlb9ZCrBR6ldh0gqW6HRqpVbfeXke1b4vfWg==
X-Received: by 2002:adf:ea91:: with SMTP id s17mr10895240wrm.349.1605800621574; 
 Thu, 19 Nov 2020 07:43:41 -0800 (PST)
Received: from localhost.localdomain
 (234.red-79-158-79.dynamicip.rima-tde.net. [79.158.79.234])
 by smtp.gmail.com with ESMTPSA id w10sm181303wra.34.2020.11.19.07.43.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Nov 2020 07:43:41 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Subject: [PATCH v5 1/4] dt-bindings: phy: Add binding for Mediatek MT7621 PCIe
 PHY
Date: Thu, 19 Nov 2020 16:43:34 +0100
Message-Id: <20201119154337.9195-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201119154337.9195-1-sergio.paracuellos@gmail.com>
References: <20201119154337.9195-1-sergio.paracuellos@gmail.com>
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
 Rob Herring <robh@kernel.org>, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, kishon@ti.com, robh+dt@kernel.org,
 neil@brown.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add bindings to describe Mediatek MT7621 PCIe PHY.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
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
