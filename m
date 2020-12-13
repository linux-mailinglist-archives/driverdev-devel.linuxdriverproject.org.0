Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD35C2D8E94
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Dec 2020 17:17:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8FD6585E47;
	Sun, 13 Dec 2020 16:17:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t5TdQNStZBTc; Sun, 13 Dec 2020 16:17:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6590685D95;
	Sun, 13 Dec 2020 16:17:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DF6BA1BF3EA
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 16:17:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DAAFB86D93
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 16:17:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jb3-IaqSq4sg for <devel@linuxdriverproject.org>;
 Sun, 13 Dec 2020 16:17:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E2A4486D0F
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 16:17:26 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id g25so7607579wmh.1
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 08:17:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CeBzPvaH2BmMiS1XJWfNJWyku+o1XcRpDrN+C7/T/zw=;
 b=VAWweM3+ov0cPIIXWg4XQzEshPzG+LF65DgTY+5tiTgb6aI7RRJDBoGtJd7m+SX1f5
 YpbL8O2EhZ/o3FFobdfXZrxfo7Op/b1xHfFb88QWLAjT14SbqPyYDQOqXGLqcCYCmTjy
 0+tjSSSqXDH1P1A/5bCCccJPy3O3neWfUWqFZA4QDncGbNKN4UvzHVqb6fkPb6vkRHy7
 fjL/n/m9UXkS9lFTR/29Xg1R5snt3CwzHf8dXxzNdZ14WtiHDIhutCfUqtaNGg11kzPe
 QuUOxslf/b2sFHIDklWCrcNt7SMFIp7UWT4k98I+d4lAvWvyfHQohEMw5hZ8Sr1PMS67
 Rmmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CeBzPvaH2BmMiS1XJWfNJWyku+o1XcRpDrN+C7/T/zw=;
 b=blKjeP3DmFKhMDca8EXuWDBxfn0SY65ymxvIhbw3fv3CyNOFQKPEwpGLvwI/BaXKxY
 5PRV2wycLsPD7V4nUB3gVDG/Q7leeOuPrtGVs4qnsuHG2Gh4Y9EddC314dQNMrwM406/
 HfmPl/yj+QcyV4d3wAwSKVGaGYsIeRv4+EK3hJkuJg7i+OV8iPJZou+T693b5FCryiVh
 6+LMELti048hqqwXKryMAFZ11Ju8xvGkMQ4Qj+VjSus+GuQfWYq/R/YDfGtjGLt8OVRf
 bcuvf7QfR0Y9PFwaT0QfWP3Ozt5wRcRy+VZFE1ljsz//MVExT9Sjyz5DrfS/pf9ICflG
 2IJg==
X-Gm-Message-State: AOAM532EGUwcgUxsgrYji1hAiBqj4dFmx1M0mHVwVo9Ah5K6F0ogkjqX
 ygVw7kKltMH/mO58RJF5p7o=
X-Google-Smtp-Source: ABdhPJwCwhl2HdjA+r2aIj1VSzrGG67fSP+EeVqErQC4WLHJA2pMWwd/PpL1GDJybr0L+ekxtWaTTw==
X-Received: by 2002:a1c:8016:: with SMTP id b22mr23591015wmd.135.1607876245340; 
 Sun, 13 Dec 2020 08:17:25 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id 64sm27102073wmd.12.2020.12.13.08.17.24
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 13 Dec 2020 08:17:24 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH 1/8] dt-bindings: pinctrl: rt2880: properly redo bindings
Date: Sun, 13 Dec 2020 17:17:14 +0100
Message-Id: <20201213161721.6514-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201213161721.6514-1-sergio.paracuellos@gmail.com>
References: <20201213161721.6514-1-sergio.paracuellos@gmail.com>
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

When this bindings where applied there weren't already
reviewed and some old hacks was being used to properly
pass the schemas checks. This commits fix them up:
 - Instead of using 'if-then' clause use '-pins$'.
 - 'groups' and 'function' are included inside a new
   '^(.*-)?pinmux$' node.
 - compatible string is not an 'enum' but a 'const'.
 - 'pinctrl-0' and 'pinctrl-names' removed since they are
    used in consumer nodes.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../pinctrl/ralink,rt2880-pinmux.yaml         | 62 +++++++++----------
 1 file changed, 28 insertions(+), 34 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinmux.yaml b/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinmux.yaml
index 7dea3e26d99e..b32f2676cab5 100644
--- a/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinmux.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinmux.yaml
@@ -15,39 +15,38 @@ description:
 
 properties:
   compatible:
-    enum:
-      - ralink,rt2880-pinmux
+    const: ralink,rt2880-pinmux
 
-  pinctrl-0:
-    description:
-      A phandle to the node containing the subnodes containing default
-      configurations. This is for pinctrl hogs.
+patternProperties:
+  '-pins$':
+    type: object
+    patternProperties:
+      '^(.*-)?pinmux$':
+        type: object
+        description: node for pinctrl.
+        $ref: pinmux-node.yaml#
+
+        properties:
+          groups:
+            description: Name of the pin group to use for the functions.
+            enum: [i2c, spi, uart1, uart2, uart3, rgmii1, rgmii2, mdio,
+                   pcie, sdhci]
+          function:
+            description: The mux function to select
+            enum: [gpio, i2c, spi, uart1, uart2, uart3, rgmii1, rgmii2,
+                   mdio, nand1, nand2, sdhci]
+
+        required:
+          - groups
+          - function
+
+        additionalProperties: false
 
-  pinctrl-names:
-    description:
-      A pinctrl state named "default" can be defined.
-    const: default
+    additionalProperties: false
 
 required:
   - compatible
 
-patternProperties:
-  '[a-z0-9_-]+':
-    if:
-      type: object
-      description: node for pinctrl.
-      $ref: "pinmux-node.yaml"
-    then:
-      properties:
-        groups:
-          description: Name of the pin group to use for the functions.
-          enum: [i2c, spi, uart1, uart2, uart3, rgmii1, rgmii2, mdio,
-                 pcie, sdhci]
-        function:
-          description: The mux function to select
-          enum: [gpio, i2c, spi, uart1, uart2, uart3, rgmii1, rgmii2,
-                 mdio, nand1, nand2, sdhci]
-
 additionalProperties: false
 
 examples:
@@ -55,14 +54,9 @@ examples:
   - |
     pinctrl {
       compatible = "ralink,rt2880-pinmux";
-      pinctrl-names = "default";
-      pinctrl-0 = <&state_default>;
-
-      state_default: pinctrl0 {
-      };
 
-      i2c_pins: i2c0 {
-        i2c0 {
+      i2c_pins: i2c0-pins {
+        pinmux {
           groups = "i2c";
           function = "i2c";
         };
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
