Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D7A331E50
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 06:23:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 445694AA55;
	Tue,  9 Mar 2021 05:23:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id scpvm62pfZ90; Tue,  9 Mar 2021 05:23:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 073EB487EA;
	Tue,  9 Mar 2021 05:23:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D17911BF2FF
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 05:22:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CDFAE6F562
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 05:22:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id whgH3HRamduP for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 05:22:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C71796F500
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 05:22:33 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id w11so13808918wrr.10
 for <devel@driverdev.osuosl.org>; Mon, 08 Mar 2021 21:22:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mHNdz7wiYLAaKp9tiPgIXb93/c7+pySo7q7uYWDN7Ww=;
 b=glKHc/3GDe12dfQPlUheb+PEOpoI7QcdBK6XMSZU42PcAZrL0+1bs3TNe8seW7rUA5
 rLgu0zWk9bUTBF3oqEm/w766GdDiuTsEv0O8reRzONZkWM+Nd8OVk+RSah3nQetzF6oT
 kEFaXg3afvhijFo8JE0QTq62hiihcwA7L5WnHfPoIZFbM77+vlRj51phPOzUgvVQHXTh
 donntP5ERhXqcA7S9KVULsTENYC38+5GBozlcPvcE2lLtZZTOepY8HopqLaFixQOHzRj
 sGgoADyWo7n93S6EjzqkkbtaLhNGKRDX27kgvdb/d9cIxTmqjxFOZ+CMIKOoL5kNxtd0
 iEYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mHNdz7wiYLAaKp9tiPgIXb93/c7+pySo7q7uYWDN7Ww=;
 b=cvcYAR/9Uw0LRvFxpCJ4uOB5N/JPesfGOhwwBXBu2uLn4TGp6TDSCysExTgvrO5tTj
 PdDKd0ZG6mvhjoZXXy8/kZd7ISkJwKMVrcro9X+B/4VRR2fnuWzAQNInVQ1A3W1HBcXy
 e1z8+wRbDT/QqdYL55omEzkYreEMFeM3/EGmmrrhT/NHTqYKStw7Nkaffa9hmOUD0SPI
 pH6fPAPRzEzm3uUHf+9lURTvSG/0rZ5uQDpo0w7BvtlK2xstDhDCP+RkKfMuiA2u5c6B
 jH0kIS3ThCjiprTGZojKmwnMuPDxK4JvhkFWZ2Vre97arbSyEx0xQjikf12kxuw3EZgl
 HiQQ==
X-Gm-Message-State: AOAM5323h048TsQ8z06fEgC4Hhob8jufftUL7rD4MsrQBwCH06/W/D3f
 YMZ8O82LH/iRb1EdD+uwMCA=
X-Google-Smtp-Source: ABdhPJxE7fLtfygneQFdky3FAeBtoVDsuoNVTpIuTmTFAmGi7hT2E24WpclEXHSBS1C+V3RuZdyazg==
X-Received: by 2002:adf:f587:: with SMTP id f7mr26394681wro.147.1615267352124; 
 Mon, 08 Mar 2021 21:22:32 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id c11sm23450743wrm.67.2021.03.08.21.22.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Mar 2021 21:22:31 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v11 2/6] dt: bindings: add mt7621-sysc device tree binding
 documentation
Date: Tue,  9 Mar 2021 06:22:22 +0100
Message-Id: <20210309052226.29531-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210309052226.29531-1-sergio.paracuellos@gmail.com>
References: <20210309052226.29531-1-sergio.paracuellos@gmail.com>
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
 tsbogend@alpha.franken.de, Rob Herring <robh@kernel.org>,
 gregkh@linuxfoundation.org, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, john@phrozen.org,
 neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adds device tree binding documentation for clocks in the
MT7621 SOC.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../bindings/clock/mediatek,mt7621-sysc.yaml  | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-sysc.yaml

diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7621-sysc.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt7621-sysc.yaml
new file mode 100644
index 000000000000..915f84efd763
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/mediatek,mt7621-sysc.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/mediatek,mt7621-sysc.yaml#
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
+  The clocks are provided inside a system controller node.
+
+properties:
+  compatible:
+    items:
+      - const: mediatek,mt7621-sysc
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+  "#clock-cells":
+    description:
+      The first cell indicates the clock number, see [1] for available
+      clocks.
+    const: 1
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
+  - reg
+  - '#clock-cells'
+  - ralink,memctl
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/mt7621-clk.h>
+
+    sysc: sysc@0 {
+      compatible = "mediatek,mt7621-sysc", "syscon";
+      reg = <0x0 0x100>;
+      #clock-cells = <1>;
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
