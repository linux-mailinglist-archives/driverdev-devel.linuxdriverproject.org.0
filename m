Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DF732FF4D
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Mar 2021 08:04:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 117AF43012;
	Sun,  7 Mar 2021 07:04:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0dg1HxerLG-t; Sun,  7 Mar 2021 07:04:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 53B9742FA6;
	Sun,  7 Mar 2021 07:04:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E1F6D1BF275
 for <devel@linuxdriverproject.org>; Sun,  7 Mar 2021 07:04:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D12E7605DC
 for <devel@linuxdriverproject.org>; Sun,  7 Mar 2021 07:04:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zJV1ca1XtSuI for <devel@linuxdriverproject.org>;
 Sun,  7 Mar 2021 07:04:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8A3BC605F9
 for <devel@driverdev.osuosl.org>; Sun,  7 Mar 2021 07:04:32 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id f12so7811652wrx.8
 for <devel@driverdev.osuosl.org>; Sat, 06 Mar 2021 23:04:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+4put77zvWkbAq7p9W7RkFBT+N9LdQEWztn2bykM+dQ=;
 b=j0zWpsa/gayzQcRkqn1TPbYerYny+Qaq2VBhPEsUdG6qG9WgmeFw+7BOF8VysbRacY
 lwObp4O0qamLO6g7qQL4qV7YVm2AOjefupQo/5vNxp29lg8oT/9t5IewZcTRZgHSfWh+
 GKjPPBRAeHB0iGzXlUUOE2bBbtd4+unecFBSUqJUih1Dq5ey4feOCOlwETRQ7a2RxFYC
 KU1uqR56BQtxLjzjf3fxh+Fq1yHjTiPY5/gNyf3feMouq42kZFxJB3638k4iq0xim6zR
 +oPr321O41jU8mGHFETTX543z+Fh7MAENfAbc00p4HeZriKMXAnekYSWmPIVARu/G+Pk
 F3SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+4put77zvWkbAq7p9W7RkFBT+N9LdQEWztn2bykM+dQ=;
 b=m8pwOJQFkjTXV9nv3+5oKoAnSM0NraLAHNDNuJGbN2jfuA1wfck44rn5/vKZPLrpm2
 DAlrSys0pNG2nB/vEq3nLLe5ilk5d6HXN1oJrw0FexlY4xitYo4FDnz4h5m/gdbds3xL
 D/ImgvryfEaTbfW8EAKMVD/RVTKcIGTghero38HY5am+tEdYlJBD8aQ7XUT9/nNkMyhV
 cxuOaeVR43hWjuEpdtDNYNIezA7lOrpy8KhkXHQhyDuYPesYe7poDLX+cr7A5UPTiKsa
 Kqer4XJAzghiqydEJlSXWKM2lssg/kjs7JVg67IBtyN7Q2pd4XcvdyVIv+L14V8crrET
 KJPg==
X-Gm-Message-State: AOAM5309bLedhbVeLP4/IW9iQqhRyZTohQAjnJDByK3LGI8u5CFa9Kdd
 TrSrkYSPGEbpJ/JDDA4Nlbg=
X-Google-Smtp-Source: ABdhPJx5anhLHtuwZJ35GutGutDkvSApUcSdd+GOoolyFWaE52xNkXpmslTdGPbaj8STtRoE+IpWHg==
X-Received: by 2002:adf:e603:: with SMTP id p3mr17312337wrm.360.1615100670672; 
 Sat, 06 Mar 2021 23:04:30 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id j9sm12162533wmi.24.2021.03.06.23.04.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 06 Mar 2021 23:04:30 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v10 2/6] dt: bindings: add mt7621-sysc device tree binding
 documentation
Date: Sun,  7 Mar 2021 08:04:22 +0100
Message-Id: <20210307070426.15933-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210307070426.15933-1-sergio.paracuellos@gmail.com>
References: <20210307070426.15933-1-sergio.paracuellos@gmail.com>
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
 .../bindings/clock/mediatek,mt7621-sysc.yaml  | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-sysc.yaml

diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7621-sysc.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt7621-sysc.yaml
new file mode 100644
index 000000000000..ef2d71b23ba0
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
