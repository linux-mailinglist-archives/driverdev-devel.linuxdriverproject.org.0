Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 841A531D88D
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 12:42:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2BD0C6F5A3
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 11:42:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DYR6wq41GuOv for <lists+driverdev-devel@lfdr.de>;
	Wed, 17 Feb 2021 11:42:03 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id D97D06F603; Wed, 17 Feb 2021 11:42:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E2FB76F4BB;
	Wed, 17 Feb 2021 11:40:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 939891BF4D8
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 11:40:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9053586CAC
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 11:40:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T1sF443bTOTj for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 11:40:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5D92886D01
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 11:40:07 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id r21so16989800wrr.9
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 03:40:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P2+9ZW2sRGm5fV3POd9uic+HKJNg6UuQ8+N4DBVvEOI=;
 b=Z4nUm3t3RKH1M16liPd8pxxnbr9w+hzq8lFpbtGdBH9BwqTH7blN+xQvoZlbePzgmi
 ewEZBWuw0PHDTWJtCjmLG8/JmSBRdUDSuxgrjIo5/GWjXKq4ySFO/Mg4rpdjV2P9DE4A
 sjcD3jpxrlBrzAv2OxsTYn+wrg6bU4SxcXbExtkrFi1sJ4QL+XHGsLk3+JyjJIjarj3a
 JZiWsK5O8lq1iro+XKcs3CWfa/7ZWX4kgCp5YA2v9u69UxTVSJ8JFs+Rg9oJYlPQjWX6
 OaQbioKYd5Vsw18TTXmgCwuBvYlWVA43hGBYftpxU3H/+xH0XiJNVJu1JO78itlOQ9Kz
 C5pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P2+9ZW2sRGm5fV3POd9uic+HKJNg6UuQ8+N4DBVvEOI=;
 b=lqsbI4BA5bs3+Kg9SLaU+P0fv2MHWNXaA1kNwlye0tzyuppv6JVKfK8fY4uMSgIR6A
 FLxlEZJOj8wgnHVLbFS6VHD1M/kJ4GPL1z/N9o4JFV4TXfP9+l+hyJ+gaQwQ9J3uDa1J
 B5iQHxzkQcvpovzJybMY/OwSA2hrcdk7McNReHtRiZVVN0PoU/jXTU++iND9LwEWSSkL
 LHolSBGs4R/YYpWVxeMLJgv5UQsbGfJIRzheiZynbGavj+j2cHBqFlQ9Ucwe4clO7o7w
 xmTzQieU+66ui9wcPe2G4RxApEh2qvGnNy2FVJHEOaKpPyh6wijixk/tytwxQxlkvLYr
 Revw==
X-Gm-Message-State: AOAM530YXoGXVkRuaFqbP0cWQWAlGibJpZO/d8WwDPLFG8RYdVP7SnQq
 BJeSx1+2XoRtRv8UBSqnblo=
X-Google-Smtp-Source: ABdhPJwguJLYBfn5zzQLtUWS1q02A4AdbZTRw5rmi4BN0o6C5hA/QYnlKo+zo+ZN5X4KHAxfax+Zaw==
X-Received: by 2002:a5d:6602:: with SMTP id n2mr28359513wru.150.1613562005813; 
 Wed, 17 Feb 2021 03:40:05 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id q140sm3600813wme.0.2021.02.17.03.40.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Feb 2021 03:40:05 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v7 2/6] dt: bindings: add mt7621-clk device tree binding
 documentation
Date: Wed, 17 Feb 2021 12:39:56 +0100
Message-Id: <20210217114000.19571-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210217114000.19571-1-sergio.paracuellos@gmail.com>
References: <20210217114000.19571-1-sergio.paracuellos@gmail.com>
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
