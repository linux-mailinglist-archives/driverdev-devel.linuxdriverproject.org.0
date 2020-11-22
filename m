Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF532BC4CC
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Nov 2020 10:56:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1434486B3B;
	Sun, 22 Nov 2020 09:56:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VKTUCI5dOWym; Sun, 22 Nov 2020 09:56:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 334FA86907;
	Sun, 22 Nov 2020 09:56:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 023F31BF568
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 09:56:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F15C686B33
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 09:56:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mWbQEjtbeKYh for <devel@linuxdriverproject.org>;
 Sun, 22 Nov 2020 09:56:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
 [209.85.221.41])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 01AF08687D
 for <devel@driverdev.osuosl.org>; Sun, 22 Nov 2020 09:56:02 +0000 (UTC)
Received: by mail-wr1-f41.google.com with SMTP id 23so15415314wrc.8
 for <devel@driverdev.osuosl.org>; Sun, 22 Nov 2020 01:56:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T+KDk+GBhmbsGEu60u7jvpaynFthMi6GIe7Bnot8k+o=;
 b=Uh+whNe3cPPIgIIpgy9BIHV68Nwaqi3YqAy+wWNN3dB7/Ol31eg5Nm0DXKa2zJflb8
 BT3nDDxSAtAoWV1Ana/QMeCYVyBcNdS1JH/lKGuRi63E22SJI0qkXzCvBTpwG9yRFJR8
 bQyscJkHZwHVUJVdmtOrtUD8J2S0rwJKTy20+YFXbnAeDcXlf9UKMLgax6T+i7nIVOdt
 iu3uEfpPWXlIbZAxxOgu12Fv8zuQxPC9931cVQNqvVTEwchIsALeeh2eFpfT0n9qXxn5
 CSBpEtKm1gBKAITztqMkfJksdVoJFNx80i7VBUo/F1CKNnmEkUIdqfs1RXTQ9uddNZTT
 QSNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T+KDk+GBhmbsGEu60u7jvpaynFthMi6GIe7Bnot8k+o=;
 b=aTwRT5cq1/nrB3/EXEKhfDebtKi5HrkUrmvMGsXLYSeFZ34XhEbVA3zalEzHu20tTM
 DNWVRvToAwXcw210t+mUpRfJi0/3B3PCxcTMIxNmeLP6BvvVOev3b4sJOjdmq3+OsvXg
 GIhsuUW2JJd/TUkhyS00hxUbOJQodGEC9Xu/ZwysnzUzgZbjQ9khOPSGc+7IBtClJOPr
 RcEhTuIQQd66hipfO7woXSWQsw3+YUar38NeaFPJWq1mvhcGum/L19mrjX99bJ1+bVmU
 5Qfmur40E7v8D88L2iHOZPOpWYOO4HgnWqd78eW4/HBtmEUtaagCc3A54NbG+fkVQOTJ
 +VYA==
X-Gm-Message-State: AOAM530+40K2qaZAfLHCWqQOCRoPpDosPOPIcfiAj1EpEpw5mKOMtTkC
 WlAF1YctT/8oY5ImNaUhj9Y=
X-Google-Smtp-Source: ABdhPJxJKmmkqIMRwUYglxlRGgGbnPcX99HF0yMNKqjzuc0XukFjSUbDrTc4gvqq7AbheWWoaAScow==
X-Received: by 2002:adf:eeca:: with SMTP id a10mr24027157wrp.186.1606038961510; 
 Sun, 22 Nov 2020 01:56:01 -0800 (PST)
Received: from localhost.localdomain (196.red-83-40-48.dynamicip.rima-tde.net.
 [83.40.48.196])
 by smtp.gmail.com with ESMTPSA id p21sm10593570wma.41.2020.11.22.01.56.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 22 Nov 2020 01:56:01 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: mturquette@baylibre.com
Subject: [PATCH v4 2/6] dt: bindings: add mt7621-clk device tree binding
 documentation
Date: Sun, 22 Nov 2020 10:55:52 +0100
Message-Id: <20201122095556.21597-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201122095556.21597-1-sergio.paracuellos@gmail.com>
References: <20201122095556.21597-1-sergio.paracuellos@gmail.com>
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
Cc: hackpascal@gmail.com, devel@driverdev.osuosl.org, tsbogend@alpha.franken.de,
 sboyd@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 evicetree@vger.kernel.org, linux-mips@vger.kernel.org, robh+dt@kernel.org,
 john@phrozen.org, neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adds device tree binding documentation for clocks in the
MT7621 SOC.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../bindings/clock/mediatek,mt7621-clk.yaml   | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml

diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
new file mode 100644
index 000000000000..6aca4c1a4a46
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
@@ -0,0 +1,67 @@
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
+  The mt7621 clock node should be the child of a syscon node with the
+  required property:
+
+  - compatible: Should be one of the following:
+                "mediatek,mt7621-sysc", "syscon"
+
+  Refer to the bindings described in
+  Documentation/devicetree/bindings/mfd/syscon.yaml
+
+properties:
+  compatible:
+    const: mediatek,mt7621-clk
+
+  "#clock-cells":
+    description:
+      The first cell indicates the clock gate number, see [1] for available
+      clocks.
+    const: 1
+
+  clock-output-names:
+    maxItems: 8
+
+required:
+  - compatible
+  - '#clock-cells'
+  - clock-output-names
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
+
+      pll {
+        compatible = "mediatek,mt7621-clk";
+        #clock-cells = <1>;
+        clock-output-names = "xtal", "cpu", "bus",
+                             "50m", "125m", "150m",
+                             "250m", "270m";
+      };
+    };
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
