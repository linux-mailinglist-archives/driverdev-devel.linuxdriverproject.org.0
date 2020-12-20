Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7042DF4B4
	for <lists+driverdev-devel@lfdr.de>; Sun, 20 Dec 2020 10:37:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 057EF204A5;
	Sun, 20 Dec 2020 09:37:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cZAcN1WSsjA3; Sun, 20 Dec 2020 09:37:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9781720460;
	Sun, 20 Dec 2020 09:37:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6E4821BF2F3
 for <devel@linuxdriverproject.org>; Sun, 20 Dec 2020 09:37:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6143F86C39
 for <devel@linuxdriverproject.org>; Sun, 20 Dec 2020 09:37:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ieoaZ53P9KCt for <devel@linuxdriverproject.org>;
 Sun, 20 Dec 2020 09:37:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3A97A868B4
 for <devel@driverdev.osuosl.org>; Sun, 20 Dec 2020 09:37:31 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id w5so7629369wrm.11
 for <devel@driverdev.osuosl.org>; Sun, 20 Dec 2020 01:37:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X+SuGnfm8KuEL3MmKGWRH3pg5zw3d6V8+weRIPXIPeI=;
 b=LirrIytB7W7VNvHndDWY3cdEn44X+cqA2F68fSWKCMG3YY8oywv3mFOHfAeIXt/bPH
 XtJikm7rRFXUFPRfXv5Y0wkPygjS1696kEaUKQMKsMSI67ziZNpaf4JDFYWRMj9nTeG0
 aatWgDgZAxqsBdokpxcoOQAY4mA/cD2nhzpJTl1GX5Zs8kVNKVzff/hF2ioUGNyqLfmm
 rAPcYPu3+v8bfiZQuwAOGSR45GkJeIuyIjUIIa6STxn7+5u0ri/R8e30urwk5XqEM2Lz
 Qrp9MCEcsGilNtI+lnjZEMsR8wRi1JEYy0O0E56HCYHi9JFeYu917oE3sj9490Bec0hR
 bqkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X+SuGnfm8KuEL3MmKGWRH3pg5zw3d6V8+weRIPXIPeI=;
 b=QCwt2Aci5KBzydeRjWILIsn2w9k5ZVwJHm5v3DR9EDwzhRhoPfrhBFv4GCRZQ08BuR
 LyrVtC6nOlio4F9lDvP1AgAFauDmpHOpk4I5mz45BjaUdH5wZVBCtiWf8PKfSI/NpZDb
 qIPuN8O5h3TkX5+I147KAOw2SVH0IudHtsT1S/XLkS+jSlElNpit1yRySoe9xEwDKXc+
 lXCuSczwTK4rX0r0lZUAMwgTXy+c4Sr6hv2ofUePsfTLLLW4OddLQqeeJsylOXTXhFqS
 LeSslF07rAUhIZsEdix7JMIvbiHH2kcFm6oo17GSSxHQdtNjgvtd/GmZbw7QUhVXg2vy
 LOzQ==
X-Gm-Message-State: AOAM531HtYuU1aFL/xT4u4TiNT8Or84uDqNuuQBgeBqWwj0YWmUewKeq
 CV4FYYnmHmp/1kmATrqy5yE=
X-Google-Smtp-Source: ABdhPJzSbt6WFpS+wBWdUgM6Zb7Gd10SXsarCg2wrvoxnkbmTQME/IDWiuN5VbSiOB+QtO5kQv8wTA==
X-Received: by 2002:a5d:6206:: with SMTP id y6mr5582001wru.413.1608457049815; 
 Sun, 20 Dec 2020 01:37:29 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id o8sm21288819wrm.17.2020.12.20.01.37.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 20 Dec 2020 01:37:29 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v5 2/6] dt: bindings: add mt7621-clk device tree binding
 documentation
Date: Sun, 20 Dec 2020 10:37:20 +0100
Message-Id: <20201220093724.4906-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201220093724.4906-1-sergio.paracuellos@gmail.com>
References: <20201220093724.4906-1-sergio.paracuellos@gmail.com>
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
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, robh+dt@kernel.org,
 john@phrozen.org, neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adds device tree binding documentation for clocks in the
MT7621 SOC.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../bindings/clock/mediatek,mt7621-clk.yaml   | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml

diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
new file mode 100644
index 000000000000..f58d01bdc82c
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
@@ -0,0 +1,52 @@
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
+  clock-output-names:
+    maxItems: 8
+
+required:
+  - compatible
+  - '#clock-cells'
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
