Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A532BC051
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Nov 2020 16:50:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 50645868C0;
	Sat, 21 Nov 2020 15:50:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a4kI7JC3hNdh; Sat, 21 Nov 2020 15:50:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 59032868AB;
	Sat, 21 Nov 2020 15:50:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DF9FA1BF2F9
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 15:50:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D7BB986EBC
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 15:50:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wUTjN+OdN1m0 for <devel@linuxdriverproject.org>;
 Sat, 21 Nov 2020 15:50:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CEFB486EBB
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 15:50:42 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id l1so13958412wrb.9
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 07:50:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hFEWyS5RVPcGUpN9QStio+eEKKIHGhXUMH3chmxWTAI=;
 b=Lm0VT517zPj6Yim7Dyifi0idbHd/Q0+shr4EW29l0udSkUQ1mnrcqk6S6Eazm+BCi4
 jdVcj6DvjgxwfaZs63s8LHE3CUwsqR2Hn2dTadzpxKNrorycmERpxWOIVi4ZsKuo/f0m
 qCgYZQc9xehcD6OMVbo0PA94QYJa/gI3v8oRlQBB0pA5HKukMtlB2VZGCM5gVuUfpq1a
 rvw7GIBAbbtohgf7ubRiaSsIOKD8CY8k1G+yrzVUN4+Znuv58glKezt6ES3XS0++4avm
 E7IZIs1j9L6vVjpW1Lhu2ux7qG0wZvnOvlAiWmYydK1OuS/nKabSVBiODWUc6/RxfsMl
 q+DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hFEWyS5RVPcGUpN9QStio+eEKKIHGhXUMH3chmxWTAI=;
 b=oqBE3rHKDQCdvKyKtThGBiQy+eWnoQPd9hfTf6+fBk2QeXgS3+rUFXrbzJQkljJN60
 Zu8cB7VR0tXBly4bY86OjDQ9wEe+lNSW9UI3MI8xJCUN+/VWK8CcQ+Y1CDXrVaQegLKq
 ALU4fxCgm+phGYWRnpSWwUNSkLdZPLCejB/evFmiTMH76AiMQHP4RXWSU3NTF29AdnRC
 7Jzu6HOpFiy20nz9As5vVafkexGRBWJqNoH6IXITrewUfZwlK9pxt8bpYn56CYdvIlIv
 LlOFiy6MNYNiATwDLoBX86Zduroi8TNyMlZuSAjVIgMgIxwMxD8SSga4MA41lD2RP3rM
 gyow==
X-Gm-Message-State: AOAM531fvXAPqLJnTL4XSOPi6ntoGKqbV6WXMLat0IvT6kLBOdXGa5tL
 RqqADN1n+NrjdQArg5SgaTg=
X-Google-Smtp-Source: ABdhPJxNwrNKx7yiY521VRcz8tWddpSy577DrmPIkYw6rYHLVTiTjGvvmbL1d4+rJJhJizC1q+Z54Q==
X-Received: by 2002:a5d:42c9:: with SMTP id t9mr21194191wrr.13.1605973841433; 
 Sat, 21 Nov 2020 07:50:41 -0800 (PST)
Received: from localhost.localdomain
 (161.red-83-46-194.dynamicip.rima-tde.net. [83.46.194.161])
 by smtp.gmail.com with ESMTPSA id n128sm7959598wmb.46.2020.11.21.07.50.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 21 Nov 2020 07:50:40 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: vkoul@kernel.org
Subject: [PATCH v6 1/4] dt-bindings: phy: Add binding for Mediatek MT7621 PCIe
 PHY
Date: Sat, 21 Nov 2020 16:50:34 +0100
Message-Id: <20201121155037.21354-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201121155037.21354-1-sergio.paracuellos@gmail.com>
References: <20201121155037.21354-1-sergio.paracuellos@gmail.com>
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
index 000000000000..0ccaded3f245
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
