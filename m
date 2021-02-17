Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B67D31DB1C
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 15:08:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A982887256;
	Wed, 17 Feb 2021 14:08:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1X7SmyOUsFJY; Wed, 17 Feb 2021 14:08:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 16A3E87215;
	Wed, 17 Feb 2021 14:08:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 868281BF3A0
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 14:08:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 83371844AF
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 14:08:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WHvC4ZjD0nU5 for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 14:07:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DE7EF844A8
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 14:07:58 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id g6so17510584wrs.11
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 06:07:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P2+9ZW2sRGm5fV3POd9uic+HKJNg6UuQ8+N4DBVvEOI=;
 b=VckTydYm9JcLdv75A42D6KuT3/8v+2AnWg7GP+tYf2th5v1hV8dLCj9KxCNOdLLEwT
 w71uhrYf42i3NV6cesonTpWrqSK9rSxcSj10USENOtnmxiHoxiEBa0XZqKBDLI9eRGrO
 1U/KyMnF6YiiZGk9ECMwCtoC+soxRd2wwG+eLWPfL/dXB4tvhz/r8PCNRehQVJkMiJTS
 4jztECEDe/M6mtFZpbaX6C1E993hBOqfZQ3rYeE2y2CV2FwIhZhzv7q+iATtmAyMtXTw
 83acPsSi7TzTKOzER/rsCm/z4Wr0mgW1pUoUlmIVrzdBpf11IQ6CPTVNcOyvX9OGj6dp
 W+Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P2+9ZW2sRGm5fV3POd9uic+HKJNg6UuQ8+N4DBVvEOI=;
 b=W8YD7IsZAIaSNiu0xl+fBPQ/6BSF3BgFbZqUdl/hCs0KVMy6OVAFZRz5N2crIxSgTu
 ryJLOC73UbNT7rrnfNJWpRN0mDF4GPfUrAmtgoT+aXY+S1kVhzGTPyDy4lso9natTSjM
 2zmBDdgzMNkQQmVqPgTHo6x/rHMAkqU8oWgFqG5iNwRrQyOw2W40OXksT/P8P1oTxwNi
 u25LVNrvp9C1bKI2wBgWN3lezdJuLisjgHA9gYntaXI2S+P4oSWS9p9i2T+h35XdgLm6
 tekpAhvjsPsSQOvjQpg5QLpah3KkQurG0hDa229VTQIktrB910Zsu8Mc+VnbvDSaDVnQ
 aTZQ==
X-Gm-Message-State: AOAM532ZbmwoF/nIktJnOkzFbcyu+3Gr8bkbcBzTE8e8kdPcFzM9IIfz
 DpeRWVMH7y6u9s/Zzkn74OQ=
X-Google-Smtp-Source: ABdhPJwIqCWTFCsWRjzWrd3XN57A6TZjgPOEFGdHZtCDDUSbV5Ditwo6DdDqdmIj+QkMfDXF3gtVwQ==
X-Received: by 2002:a05:6000:18a3:: with SMTP id
 b3mr29163985wri.373.1613570877488; 
 Wed, 17 Feb 2021 06:07:57 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id n66sm3274099wmn.25.2021.02.17.06.07.56
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Feb 2021 06:07:56 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v8 2/6] dt: bindings: add mt7621-clk device tree binding
 documentation
Date: Wed, 17 Feb 2021 15:07:48 +0100
Message-Id: <20210217140752.15712-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210217140752.15712-1-sergio.paracuellos@gmail.com>
References: <20210217140752.15712-1-sergio.paracuellos@gmail.com>
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
