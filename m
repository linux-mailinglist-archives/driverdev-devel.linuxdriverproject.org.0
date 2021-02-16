Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 485AC31CB28
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 14:36:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B37C26F57B
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 13:36:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KQ4pYppCPkro for <lists+driverdev-devel@lfdr.de>;
	Tue, 16 Feb 2021 13:36:55 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id E61FD6F555; Tue, 16 Feb 2021 13:36:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C793F6F4A5;
	Tue, 16 Feb 2021 13:36:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CAB071BF34C
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 13:36:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C663E868AA
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 13:36:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6xScA8y0kosH for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 13:36:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C80538684E
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 13:36:22 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id n8so12996020wrm.10
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 05:36:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P2+9ZW2sRGm5fV3POd9uic+HKJNg6UuQ8+N4DBVvEOI=;
 b=HWGwatIq07hbW+612HXdGOayFHLa4+dDZmbtxGlTxFr6jylJun5MeTM0GYVLKNlRbf
 9tDGXoz6MxOpxl0lYEwDziLavZqBpWEWy2HJTgCVv5ZV4syYf3lR+E22kG5wik7mLKy1
 +Zs19Ex8gueXOuQHq98RoIIONFFzNkGJuubUDzBkT3gU8AbBWG+3KBq/Rde4qnGSos65
 zecY/t/hdgCguaAutO4oXuDLPL1/V02kPIV8l2QNOHvHfRHnks1FYyREADc3jJTeYZOi
 ppzrPu90eUxthkowwO17xqxz2HI1bjnY2aN/nOiN8ykr19baJnukP+hzmPkZONYwxfKk
 IClg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P2+9ZW2sRGm5fV3POd9uic+HKJNg6UuQ8+N4DBVvEOI=;
 b=QN2WDTENb1bl8V0vpm4C7/J/c7fJElRTR78y5JopM+tcbJ3ORWPOVa8eFj9RK/xpYN
 nRqE8pyHvCtjnhfMpspms8RnNYgxNA/zjAAWLffaYqavHE8u2exCl8UWrKK7y30N7YzN
 06dv3qkuHbb28bfVdkzdRT6ZGf1ZN2bWK5D7wb5hVzIQQ2gayAelqc7CWHIePYwh4mC2
 3AQG3k7VlDhl8HgywOzpkrgchU9lswlUuzLr8EfXdryvDEQsrQXYZWuu2uoqpjw1bRfm
 uVBz/eLlSNVnv5HX0IazXSDUCk/enXEq5HTq9ItiN9RvlV6r6EtVx846vC3grdVlZc/i
 nCUg==
X-Gm-Message-State: AOAM530lPImqB1vouBZQrP8kUGYdAavthf4cNp7gRmc8J2mC9ehuY2wX
 ItsunxGMqcO5tNXPyat+VDA=
X-Google-Smtp-Source: ABdhPJw2ZXHFEIaznBcIjuST4+li3pvgdRs6vwuEzrjnTjN+SA8U267FxiwV0OzQw05MRRTUS54IZg==
X-Received: by 2002:a5d:4d0b:: with SMTP id z11mr9192500wrt.359.1613482581393; 
 Tue, 16 Feb 2021 05:36:21 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id l7sm28032530wrn.11.2021.02.16.05.36.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Feb 2021 05:36:21 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v6 2/6] dt: bindings: add mt7621-clk device tree binding
 documentation
Date: Tue, 16 Feb 2021 14:36:13 +0100
Message-Id: <20210216133617.22333-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210216133617.22333-1-sergio.paracuellos@gmail.com>
References: <20210216133617.22333-1-sergio.paracuellos@gmail.com>
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
