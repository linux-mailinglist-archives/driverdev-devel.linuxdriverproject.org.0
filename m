Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 321AD319AAB
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 08:43:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 21E9C87597;
	Fri, 12 Feb 2021 07:43:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iZj5+FE7D0Xy; Fri, 12 Feb 2021 07:43:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7C0F587557;
	Fri, 12 Feb 2021 07:43:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5EFB11BF33F
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 07:43:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5BBDB87046
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 07:43:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bVfV88prttDL for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 07:43:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BE94286CA1
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 07:43:34 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id o24so8215414wmh.5
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 23:43:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X+SuGnfm8KuEL3MmKGWRH3pg5zw3d6V8+weRIPXIPeI=;
 b=uIQglflg121e6PdeRtfgLPiqrAb7Uieak7T8qRRD/+vi4ksCAinkIyfj/St8EmCYiF
 6ZTBLqIOLUDpq9I9aLiVKS+srscu19Q+WAdh8ZD8qvv1Js4awW2iRImvvhbZeTlMQyL9
 6puQgNcWzLZziHGtioTm2/eXcLmu/TX7v4GkcqsmZletCUJmYApSOleMD0Cvs9BzL42K
 9Lvuxz0QhSAZ6XWAvFHXsMz9UeeOps7Ka+92EiuhDyhfr77ZEIvR+l1D4UxopY8XM0j1
 V/2L44bt9iUYHoZ+Ubu8FlinVac1zkESSD/rmiRp6qI4fzBHnn1YI0LMlXTsI5DGXqyE
 Mvgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X+SuGnfm8KuEL3MmKGWRH3pg5zw3d6V8+weRIPXIPeI=;
 b=b/h/sbt/6RbbQz7bly6CWpBItNoA3rq67BX3tWlTwOtDCtUAN6eUiQuiIGKy22rOKE
 nuyvzan4KFn+7WPo21cEIHBbkksaXJ7mW0xi+hLtAQuVeJDn2v+Q4wL09CjTidgSNnNW
 NksT4FObusYjFraj4pfPqnwqhWkZ8pUT6UlpEukHGwWEaXWx8DdRhjJbNxa5vtJpwEoX
 DiE6tFBbPHixkTRAsaxKto4QHVikwvq5pYVAt2h2M5av4sU6WeMUnmm7feEMqZm+4k1B
 kNysKKxGKtAGlzu6/ZG57OscqTs4K32+T+MmZyzT6FY7dCKWdvW/XixUmKKJxnHQLt07
 oaXg==
X-Gm-Message-State: AOAM532yBGj8dhUbNRKr+Lor8vDPdHb2/gOwKPwax/zLYFvmA2a9k2NR
 R76VyKF4svCGq3CH43wciao=
X-Google-Smtp-Source: ABdhPJzVXfqQtkFhOhfy2TcSkMB4/6oofQEtIj4afNLjM0Gw5y8H4WXCoBrN4JqYF24BjmgmvmDsJA==
X-Received: by 2002:a7b:cd07:: with SMTP id f7mr1452370wmj.126.1613115813011; 
 Thu, 11 Feb 2021 23:43:33 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id a17sm9663858wrx.63.2021.02.11.23.43.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Feb 2021 23:43:32 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [RESEND PATCH v5 2/6] dt: bindings: add mt7621-clk device tree
 binding documentation
Date: Fri, 12 Feb 2021 08:43:26 +0100
Message-Id: <20210212074330.4650-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210212074330.4650-1-sergio.paracuellos@gmail.com>
References: <20210212074330.4650-1-sergio.paracuellos@gmail.com>
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
 linux-mips@vger.kernel.org, robh+dt@kernel.org, john@phrozen.org,
 linux-clk@vger.kernel.org
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
