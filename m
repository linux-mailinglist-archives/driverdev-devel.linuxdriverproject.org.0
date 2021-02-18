Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE76331E6A1
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 08:07:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D39E687292;
	Thu, 18 Feb 2021 07:07:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i8PYRSI4LO0H; Thu, 18 Feb 2021 07:07:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 52ED786FAA;
	Thu, 18 Feb 2021 07:07:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9FCF81BF32C
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 07:07:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9CE5E8726A
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 07:07:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zuzAQ5k3RdOh for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 07:07:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 55B9686FAA
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 07:07:16 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id v62so1923964wmg.4
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 23:07:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P2+9ZW2sRGm5fV3POd9uic+HKJNg6UuQ8+N4DBVvEOI=;
 b=pkFzBtTeTnxQlITLuz6mnfQ27IxxK0qw5kMApVRb/TGKWFJ+wtMOjIfFV5YASwP3CC
 Qr16NOobBMkfjqDa8Fs/2+pHUaTiuFo/k1mZoCVqVKXqveE2VqSURpu8NqLXYzwFvZS/
 Q/h0tkpmjQw/8/9gYcDQd5Z7mlxUDrptS21c189m8NFA6OFnrXYsuc07NZqmsooup/PW
 5cmhL+G8emqi62qc2TzLZ7najYAkdNoO/l4eCLcEmOyiMnEP70fi7F+WXanoqVEnKER/
 pkbRjw54B6bCGuleqGtxgf0Zg/g57+Ub6ivUnbyDJhZWXy9wt/Hh7VOqHFidZYXnefJs
 wM+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P2+9ZW2sRGm5fV3POd9uic+HKJNg6UuQ8+N4DBVvEOI=;
 b=pKHGKxOyqw4PQlknEj/LNMRZgPIxwuc/4SRe6gEqv5RTzenXAWOxZR66b3ZZaCouoz
 ayQULcHgLTlpbn8R4ADqEPX5UpVoL/4QbxS8zqpGSh+SySQMkIvVxE8w7yPTi+cKa8I+
 4JAw2+GDYP/yqKZGHerSZ/HKhhnZEtucT2aB7PaWB+OsWguKJn6izOGLLglcsvlBXKrI
 6JEopV5FOQtgvW7Ok5Dkgi4MewQ/1dZuVaJ067B4DMqEdoYKJE01fZnQfMwYAz+As/cZ
 X1gYSWFUfrOu//fcUPnkvbALeetaPSNZEgdURx8+wsFOZ5F9E87deuJRoQCmT052cYrk
 aghw==
X-Gm-Message-State: AOAM530nTYFL9vWUXSlohWbj74zHxmPpBPAYpHn93eVL4r4+JgI8PSyL
 jE5X78h4ZM7OR+DRKSeH2to=
X-Google-Smtp-Source: ABdhPJyX9/ZBcd+qPkrTAr0ZIHxMg4zvfhUiOQOccVDIx2j1+SHz9XGGlPoCQKroXghKO7wSegNKvg==
X-Received: by 2002:a05:600c:4314:: with SMTP id
 p20mr2219604wme.52.1613632034683; 
 Wed, 17 Feb 2021 23:07:14 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id 4sm6136555wma.0.2021.02.17.23.07.13
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Feb 2021 23:07:14 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v9 2/6] dt: bindings: add mt7621-clk device tree binding
 documentation
Date: Thu, 18 Feb 2021 08:07:05 +0100
Message-Id: <20210218070709.11932-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210218070709.11932-1-sergio.paracuellos@gmail.com>
References: <20210218070709.11932-1-sergio.paracuellos@gmail.com>
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
 tsbogend@alpha.franken.de, gregkh@linuxfoundation.org,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 john@phrozen.org, neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adds device tree binding documentation for clocks in the
MT7621 SOC.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../bindings/clock/mediatek,mt7621-clk.yaml   | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml

diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
new file mode 100644
index 000000000000..842a0f2c9d40
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/mediatek,mt7621-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MT7621 Clock Device Tree Bindings
+
+maintainers:
+  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
+
+description: |
+  The MT7621 has a PLL controller from where the cpu clock is provided
+  as well as derived clocks for the bus and the peripherals. It also
+  can gate SoC device clocks.
+
+  Each clock is assigned an identifier and client nodes use this identifier
+  to specify the clock which they consume.
+
+  All these identifiers could be found in:
+  [1]: <include/dt-bindings/clock/mt7621-clk.h>.
+
+properties:
+  compatible:
+    const: mediatek,mt7621-clk
+
+  "#clock-cells":
+    description:
+      The first cell indicates the clock number, see [1] for available
+      clocks.
+    const: 1
+
+  ralink,sysctl:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      phandle of syscon used to control system registers
+
+  ralink,memctl:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      phandle of syscon used to control memory registers
+
+  clock-output-names:
+    maxItems: 8
+
+required:
+  - compatible
+  - '#clock-cells'
+  - ralink,sysctl
+  - ralink,memctl
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/mt7621-clk.h>
+
+    pll {
+      compatible = "mediatek,mt7621-clk";
+      #clock-cells = <1>;
+      ralink,sysctl = <&sysc>;
+      ralink,memctl = <&memc>;
+      clock-output-names = "xtal", "cpu", "bus",
+                           "50m", "125m", "150m",
+                           "250m", "270m";
+    };
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
