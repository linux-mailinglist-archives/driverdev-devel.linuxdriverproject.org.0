Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7F42D2508
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 08:55:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 16C5B273EB;
	Tue,  8 Dec 2020 07:55:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X48XfBQRkwwf; Tue,  8 Dec 2020 07:55:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B209120445;
	Tue,  8 Dec 2020 07:55:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 43CA31BF3F2
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 07:55:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 325DF20444
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 07:55:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sv02KFncsKlJ for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 07:55:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by silver.osuosl.org (Postfix) with ESMTPS id 10C23203B1
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 07:55:30 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id 91so11325628wrj.7
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 23:55:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iZBg6NYc1fDrXniV/VR86/1qE8M8HyWt002YbvqPFwA=;
 b=NR05I4W5IgbtZCAnyadH1WNM+a0Jdb5V5V1FIjmJJVoOHLm//pyynVhvfizCaUPjK0
 tCCeaCiEB8i4eIUV6SVZmOKVMrxsmKwVxJkQtD+BRWEzlbBs9SxGtvZm8eUJyAysMV41
 HeMuYpg3tCm4k1SBKEtaUVJXOeCrxQ4BXnnG5lMBXYD9W2udo3cYB773g4zsHj/IsTC3
 EwkVLp1wF32XosN1nqJLnIZGCf4czVFzPJkI420+bvjBCEOJwlHC/G7urFnxQz71BT9r
 GcECxPo0Uedxz6v1MNZz9/ZKylnMwfhLpD4oc4W7C3slmjdmZ93weTNTt3ylpw/IRd2c
 Ughw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iZBg6NYc1fDrXniV/VR86/1qE8M8HyWt002YbvqPFwA=;
 b=rF74GqIvc3oIeBcEqy6YaryQfH/naxRtSRsCBO9KVCHS2A/xxOom142sIErqZ2ZPQk
 +koJD/f7+IwFntfekRxJ6gPEH78A54DBE1MCv8rGlNnO2ZNlmqUm4gqEWFGY4WCna+wc
 BI0l/CWQJSR+75v/1Rqi3vca0ohuyWALBXJSSeBBR6piENN+tHVXVC5HXZkvVHV/diJG
 dwXosjan+jAEc6075BtzUb8V05pcOXNZlOPYjEChZWeM6ZqI8D7MlbD1H9uxKaRx8y2t
 J/ZPCL9PhCFOmlJqnMYkkJJl4W+0XxFDUmqdcskL1nGEU1eBMBKA5K8MW9YTaRA0g/Mi
 OY2Q==
X-Gm-Message-State: AOAM532wvCYmboF1rHlRhmmRk+Zqk6XZXBdP2UNcbc46yolWvewQxti3
 Tth3lr5/SYdphxuQxHlFeZs=
X-Google-Smtp-Source: ABdhPJxxbsnv9uCrap7/LBgI68S6qea6ttTGtNj92JTHuHMUhjs2jiRWobIn4D8wOMzmenDEgBrc5w==
X-Received: by 2002:a5d:610d:: with SMTP id v13mr23845962wrt.425.1607414128460; 
 Mon, 07 Dec 2020 23:55:28 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id h184sm1620735wmh.23.2020.12.07.23.55.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 07 Dec 2020 23:55:27 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH v2 1/2] dt-bindings: pinctrl: rt2880: add binding document
Date: Tue,  8 Dec 2020 08:55:22 +0100
Message-Id: <20201208075523.7060-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201208075523.7060-1-sergio.paracuellos@gmail.com>
References: <20201208075523.7060-1-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org, yanaijie@huawei.com,
 gregkh@linuxfoundation.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The commit adds rt2880 compatible node in binding document.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../pinctrl/ralink,rt2880-pinmux.yaml         | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinmux.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinmux.yaml b/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinmux.yaml
new file mode 100644
index 000000000000..7dea3e26d99e
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinmux.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/ralink,rt2880-pinmux.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Ralink rt2880 pinmux controller
+
+maintainers:
+  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
+
+description:
+  The rt2880 pinmux can only set the muxing of pin groups. muxing indiviual pins
+  is not supported. There is no pinconf support.
+
+properties:
+  compatible:
+    enum:
+      - ralink,rt2880-pinmux
+
+  pinctrl-0:
+    description:
+      A phandle to the node containing the subnodes containing default
+      configurations. This is for pinctrl hogs.
+
+  pinctrl-names:
+    description:
+      A pinctrl state named "default" can be defined.
+    const: default
+
+required:
+  - compatible
+
+patternProperties:
+  '[a-z0-9_-]+':
+    if:
+      type: object
+      description: node for pinctrl.
+      $ref: "pinmux-node.yaml"
+    then:
+      properties:
+        groups:
+          description: Name of the pin group to use for the functions.
+          enum: [i2c, spi, uart1, uart2, uart3, rgmii1, rgmii2, mdio,
+                 pcie, sdhci]
+        function:
+          description: The mux function to select
+          enum: [gpio, i2c, spi, uart1, uart2, uart3, rgmii1, rgmii2,
+                 mdio, nand1, nand2, sdhci]
+
+additionalProperties: false
+
+examples:
+  # Pinmux controller node
+  - |
+    pinctrl {
+      compatible = "ralink,rt2880-pinmux";
+      pinctrl-names = "default";
+      pinctrl-0 = <&state_default>;
+
+      state_default: pinctrl0 {
+      };
+
+      i2c_pins: i2c0 {
+        i2c0 {
+          groups = "i2c";
+          function = "i2c";
+        };
+      };
+    };
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
