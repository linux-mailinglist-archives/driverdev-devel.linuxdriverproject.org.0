Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1E82D1952
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Dec 2020 20:21:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 090D987943;
	Mon,  7 Dec 2020 19:21:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rISorxWmZt6o; Mon,  7 Dec 2020 19:21:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9108987942;
	Mon,  7 Dec 2020 19:21:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5987F1BF3F2
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 19:21:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 564F38760F
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 19:21:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LtJfgpUOBW9P for <devel@linuxdriverproject.org>;
 Mon,  7 Dec 2020 19:21:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
 [209.85.128.44])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 84BA787574
 for <devel@driverdev.osuosl.org>; Mon,  7 Dec 2020 19:21:10 +0000 (UTC)
Received: by mail-wm1-f44.google.com with SMTP id g185so286023wmf.3
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 11:21:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zylEI6CcMfx3340XcVxqekMWc+x0EUU5Bcvj/U4ci3w=;
 b=su6qmX3rrtyjcmsNYMj+5csq2QZt7MIyCA6zPCI+CKsReebbaIGPeqoE9rAIeJyOZ2
 ETnRfgAZaLDKU35DSaJt5Rn9/5hdamHriSJ57x2rNcywDuTaKN/kYGuAHNyOalwBHmrj
 V95qbMZUY8he9OA49WZP2bgS+hWAKmBRdpOyuc9Tu6igRqW0YPMGhoN5YwlgTzre1mZk
 xU+zqCSi1b9+SftkMyUCl7AcrFni0C9Gq2jCnG3Y0kN+9SYI6GXyHYV6CrE4UGT8wqnM
 kyAJYJognS9wa7RSkfBnqORy+zwS6PchpoGLuZZuoz8sTkdZtIoBuJIe2WkjdvF7zTw2
 vUSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zylEI6CcMfx3340XcVxqekMWc+x0EUU5Bcvj/U4ci3w=;
 b=PJFmL6z6gZGU51pr4G0D8XcjC1t1zu6NpEa7ZRo/Iq1uk1y4Y/FOZj02w0r8WxbKrM
 sLd/cSRUGAOkCdpT3TDJ/TgV4gQWIpi6yzSznO4ljvCM54JYuhlYDUN4ICgwF6ZuhvGQ
 u8y0hYQuzha56WvneykCQ8dRPyvxJnJUA2w+kXMsYBUoAPitKFfqg3xMU/Y6aN/ywU1x
 8hKdFv9DP+XfAel5NQ1Ao3IhlYMwVejEnesMv8vm1eqdXQc9PMOfqto7R6dSTLtuBG9s
 ogwLLc7nQsT7nlayq0UmFw2RmXruH1LHq8soZ80ndejzMHZ9C7JrH3Eo9Wf2ENs1Q6n1
 ORAw==
X-Gm-Message-State: AOAM532RGL0BlxpSNXqQognFYqJMd+DZ98oBC6d3aZ0hEv2IR+u9A8pH
 45AqCs9IEn1Wojvcs/xcVa/euVWkyXY=
X-Google-Smtp-Source: ABdhPJyt0/Qconi9t/A+JJhuYY5aNpD+2nmst15ubn8hBqgWpjWaOuDHYE0U1Yy3ke0BFC1bTUJtdg==
X-Received: by 2002:a7b:cb93:: with SMTP id m19mr329188wmi.45.1607368869097;
 Mon, 07 Dec 2020 11:21:09 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id 20sm276978wmk.16.2020.12.07.11.21.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 07 Dec 2020 11:21:08 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH 1/3] dt-bindings: pinctrl: rt2880: add binding document
Date: Mon,  7 Dec 2020 20:21:02 +0100
Message-Id: <20201207192104.6046-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201207192104.6046-1-sergio.paracuellos@gmail.com>
References: <20201207192104.6046-1-sergio.paracuellos@gmail.com>
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
 .../pinctrl/ralink,rt2880-pinmux.yaml         | 82 +++++++++++++++++++
 1 file changed, 82 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinmux.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinmux.yaml b/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinmux.yaml
new file mode 100644
index 000000000000..d946219a115c
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinmux.yaml
@@ -0,0 +1,82 @@
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
+      configurations.
+
+  pinctrl-names:
+    description:
+      A pinctrl state named "default" must be defined.
+    const: default
+
+required:
+  - compatible
+  - pinctrl-names
+  - pinctrl-0
+
+patternProperties:
+  '^.*$':
+    if:
+      type: object
+      description: |
+        A pinctrl node should contain at least one subnodes representing the
+        pinctrl groups available on the machine.
+      $ref: "pinmux-node.yaml"
+      required:
+        - groups
+        - function
+      additionalProperties: false
+    then:
+      properties:
+        groups:
+          description:
+            Name of the pin group to use for the functions.
+          $ref: "/schemas/types.yaml#/definitions/string"
+          enum: [i2c, spi, uart1, uart2, uart3, rgmii1, rgmii2, mdio,
+                 pcie, sdhci]
+        function:
+          description:
+            The mux function to select
+          $ref: "/schemas/types.yaml#/definitions/string"
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
