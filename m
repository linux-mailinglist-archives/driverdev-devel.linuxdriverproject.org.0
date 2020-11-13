Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AC02B1F1D
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Nov 2020 16:47:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 90D572E225;
	Fri, 13 Nov 2020 15:47:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FA1xwtGGJYuy; Fri, 13 Nov 2020 15:47:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8620B2E267;
	Fri, 13 Nov 2020 15:46:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5FE171BF299
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 15:46:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 59CF02E24C
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 15:46:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uOxrrWm1nYGm for <devel@linuxdriverproject.org>;
 Fri, 13 Nov 2020 15:46:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by silver.osuosl.org (Postfix) with ESMTPS id DA41A2E225
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 15:46:43 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id 33so10393223wrl.7
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 07:46:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=csOKEFHRH0Te1kmdg6xDndYUHjPk3Yh9dx8SurjnBm4=;
 b=qjFZ2qWsq3TDCG80bODVXHsLsdapYWYdOa27kANuwfxrqx+y/YNafv/kuXjDagc27d
 aoR3GHkdYVcLDHWM9bQxYNfA+7YrORRD3xF/qcO7vuCZpWYKQSEZ3MOrTnUkcg3EEki+
 tG5q1jM3E83ziR59nlFHtEJzYP6nwF9QuShcDGj1hDxQZZ927KfKQtI0a3aq3M5XYji/
 8tklpE53NP9DhQQNiPT/rVFy2P6aAMlLBwATNm0L0Hdpq9+OQiGFe660HW64PW0WZz4U
 KtGv/C5QTLjhZgHhvW5xwcpfh7+M4A02kGiydrx+cnwzxToJRzBDaYkyGrUotthniEgG
 lbuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=csOKEFHRH0Te1kmdg6xDndYUHjPk3Yh9dx8SurjnBm4=;
 b=DkThMDqUzWbhIjZ+/5EMUl4J2VaHwxO+Bl6PYRID+BIGDKk15itKkuMVlyQG1HRlik
 HUGHnWBJWEdfmOXsUnanjfCICLqktokrHPJNDjA8MyT9Omwq14+Cj1ZWWJOmEvwjb8ce
 1xIKfkdvu3kSqUp/r/5q012RC1GPU6QsJ56KsCegvWvSDOvr/lVFRhxtbPd9Ii6u6JMD
 wvKuPMIB+Dfk8bbqf1ItrDyPHWXmh44wE+SlQ5WR7cn95drDOmSTrx1olMWIOqpihFfg
 ETD74BZFnm2xSYbvitL6mSTVEGW6vNClUMuDsxs6X1X12B7kme1VVnj1Ylk8AEzuBoVZ
 u2IQ==
X-Gm-Message-State: AOAM5322uuFOQfWi/BdTILAJYXjaot6rfjg5jNRKA2Nw/1NgzqD8ZTdo
 U5gUTMUzNqSPD/wRgdP94lg=
X-Google-Smtp-Source: ABdhPJyiJkojSPKjNORRuSzMdBGQUNDMpsrcccgumSWq1oQPyDiW56jvQrBd6/H6JLeoI2wD4fudGg==
X-Received: by 2002:a5d:6689:: with SMTP id l9mr4078146wru.134.1605282397382; 
 Fri, 13 Nov 2020 07:46:37 -0800 (PST)
Received: from localhost.localdomain
 (245.red-79-158-78.dynamicip.rima-tde.net. [79.158.78.245])
 by smtp.gmail.com with ESMTPSA id n15sm11727978wrq.48.2020.11.13.07.46.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Nov 2020 07:46:36 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: mturquette@baylibre.com
Subject: [PATCH v3 2/5] dt: bindings: add mt7621-clk device tree binding
 documentation
Date: Fri, 13 Nov 2020 16:46:29 +0100
Message-Id: <20201113154632.24973-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201113154632.24973-1-sergio.paracuellos@gmail.com>
References: <20201113154632.24973-1-sergio.paracuellos@gmail.com>
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
Cc: hackpascal@gmail.com, devicetree@vger.kernel.org, tsbogend@alpha.franken.de,
 sboyd@kernel.org, gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, jiaxun.yang@flygoat.com,
 linux-mips@vger.kernel.org, robh+dt@kernel.org, john@phrozen.org,
 neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adds device tree binding documentation for clocks in the
MT7621 SOC.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../bindings/clock/mediatek,mt7621-clk.yaml   | 61 +++++++++++++++++++
 1 file changed, 61 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml

diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
new file mode 100644
index 000000000000..363bd9880e29
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
@@ -0,0 +1,61 @@
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
+  ralink,sysctl:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      phandle to the syscon which is in the same address area with syscon
+      device.
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
+  - ralink,sysctl
+  - '#clock-cells'
+  - clock-output-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/mt7621-clk.h>
+
+    pll {
+      compatible = "mediatek,mt7621-clk";
+      ralink,sysctl = <&sysc>;
+      #clock-cells = <1>;
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
