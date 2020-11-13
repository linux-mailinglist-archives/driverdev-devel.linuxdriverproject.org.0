Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E7A2B17D2
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Nov 2020 10:11:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A5068740B;
	Fri, 13 Nov 2020 09:11:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id InN-WccLsx5t; Fri, 13 Nov 2020 09:10:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 702B387404;
	Fri, 13 Nov 2020 09:10:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B0BCD1BF9BD
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 09:10:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A4B748740D
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 09:10:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4nnafy6nBBkO for <devel@linuxdriverproject.org>;
 Fri, 13 Nov 2020 09:10:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 686D2873FE
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 09:10:53 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id 33so8919061wrl.7
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 01:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uXUhRC0bzFN/HRAL+GRqiPIYgHVbUUJIYHsBN5DjgE0=;
 b=p+wo7/Nh9m0XD80r2XzZFAO2DoBlDI3I3Gwa5Wa0yeFs/dYULZfgxHkx6cgHdxgI2+
 5Kr82F3xNySOQNZ8mKdMrXrEkjKrvsj7e0tXRB63cdKKLUi84f5rCmp0Y6h7TtrIwPT9
 77/hGyVSIeKTBqnfZ5ss6df4CgeksOHY661OwCO8+8+fMKHFRqbGCskSIe0f9CC8FlnF
 7h11lYiuhKZmV9VbaLu3IPCaVymRZijU6PVxd+Fqkat5bzZ6v4yHn3bBYmdPZysQJBjV
 PnVOX+35Y4aEUSynuQsu3/oxnUKkSAMM+G7k+8qu51loTdPFhqNkc5jVSSuXsTIquY7+
 9BKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uXUhRC0bzFN/HRAL+GRqiPIYgHVbUUJIYHsBN5DjgE0=;
 b=YiR81At0+q3sFHheuNFzLF7Z4KySDVX/f5VxEAYcnkYh48aft4HoNEEczVN9Zpn63A
 jg8ZTRL9zCdiTWqamEEuBJUE0UQEMjQD9KrHr8TUBagLgEkWL0eXdaKvpgR0SbCuGFze
 ELkwyhFN6qqUc9Pc7GAxiwX0EeIQB3+yATrQFIJA2vAsmE7pQ+XOFyB2n5pg0EK0FYV1
 Ly9a8WNg/mWWf5A9opVeDSeYFnc3WVwllf/wmZDJdOBoGTaUCT2gxpis3xrkjw4dZq2Q
 SFcxzMbYnmFxkf0sii0OLktr31cWTV6Tc4BZnvaWgoSHmJxQp7cfoIHJmtaW0KsdwSCx
 3Pag==
X-Gm-Message-State: AOAM532c29vQrI7IXuy6rBXEtCVuYI8EyzMShzdqjD3UEPFR7RKC4IM6
 QyCuOZY++vx3mv7nsduucWo=
X-Google-Smtp-Source: ABdhPJy78tIVcu9O8hPMJPNHMHhf81xjTO9shxwjozOIdS3Zfp89GDfAFI3eGuTojYv6UjeLyBwBbA==
X-Received: by 2002:adf:d4c6:: with SMTP id w6mr2226862wrk.71.1605258652025;
 Fri, 13 Nov 2020 01:10:52 -0800 (PST)
Received: from localhost.localdomain
 (245.red-79-158-78.dynamicip.rima-tde.net. [79.158.78.245])
 by smtp.gmail.com with ESMTPSA id 15sm9266183wmg.1.2020.11.13.01.10.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Nov 2020 01:10:51 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: mturquette@baylibre.com
Subject: [PATCH v2 2/5] dt: bindings: add mt7621-clk device tree binding
 documentation
Date: Fri, 13 Nov 2020 10:10:43 +0100
Message-Id: <20201113091046.30964-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201113091046.30964-1-sergio.paracuellos@gmail.com>
References: <20201113091046.30964-1-sergio.paracuellos@gmail.com>
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
+                           "225m", "250m";
+    };
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
