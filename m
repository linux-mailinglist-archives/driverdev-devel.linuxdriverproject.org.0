Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B6A2AF669
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Nov 2020 17:30:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0E9088678A;
	Wed, 11 Nov 2020 16:30:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rYhXrFtogcWw; Wed, 11 Nov 2020 16:30:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 664FB86722;
	Wed, 11 Nov 2020 16:30:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6447A1BF29D
 for <devel@linuxdriverproject.org>; Wed, 11 Nov 2020 16:30:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5F8A58643F
 for <devel@linuxdriverproject.org>; Wed, 11 Nov 2020 16:30:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SSV4fPcjAE75 for <devel@linuxdriverproject.org>;
 Wed, 11 Nov 2020 16:30:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
 [209.85.221.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8F776866AB
 for <devel@driverdev.osuosl.org>; Wed, 11 Nov 2020 16:30:20 +0000 (UTC)
Received: by mail-wr1-f43.google.com with SMTP id b8so3140095wrn.0
 for <devel@driverdev.osuosl.org>; Wed, 11 Nov 2020 08:30:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=s54TsY1LaGkKl+iAkFm8rVjUJWbXIQClRD94uBdawis=;
 b=HrfamzINIDhydwxTILAVucMQTnrMpO95GK+SRfXRXl7RxY4tblv7s0KdRJ5f09CBZf
 vROi1bBPnGzDU8K95jh5ZwsHI0WtFw9S1RyWhe6z+bGeFe/w0TL29JtMu4eBb3c8vkZn
 YwVBVBbpcmeRgfPra0BM+uwuGFMGgrRdkwfiOdsCa6ZlQ+E4LQ32Kw/3yjbAkmS1b7N6
 3EhvJlbL2jlg4SkyeY0LRBHD1vKoP9K6DBSlulOSqaZ4HfNJ2FihwLLtHMzposNebmCk
 v5yP2/YDUNBG8Nn+kPiKFydTPLsZ6ncdPq+NeC6dQQ5WWeGDR/s7JLXtCf8+9LpsOGCY
 6QVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=s54TsY1LaGkKl+iAkFm8rVjUJWbXIQClRD94uBdawis=;
 b=obOxyxuFuPHFan/xO3WLtWMp2mpKRCjvRN+YSXU82EPADY6U60RUg4F3UEAyfzlNh3
 4NHdioOx71vYiR/iz+YYVNasSYYhXGHljBfFMvkGxlRwPnQ8Hfj6WvE06hNYt4hy1nWN
 i4c0CecYn8hBllZhRN8kC7VXzSWIf7mXpLkWKe1ryGhPvT+9p5VG8ZEYWj8Qz2w9H9kV
 DzwvkDPKuOko+RGlKo6CXJFZ9OyvuNsT6f/KEu+2RD/3RmJlkYbn6p+vU0gka/IH6yzS
 vpoVqZo3NW5awvESHKGdBnq4VZOBDB3Dfu3fxVj96hrf7Zy9ilHfFzWY5+ZaMH2w7Lab
 y/YQ==
X-Gm-Message-State: AOAM532KH0sVBWYzCYeQN9Ua9PZgay53okLcjkQXHOwWV5CU5lBHxgk+
 XoXhWLlw4pIYb04PAKK7ZRs=
X-Google-Smtp-Source: ABdhPJxEcRMWJCADMRQEBlXjs4QVD7mwmyZ3wUn94hAGyBlW/rEl7Ua/wu3z47I2GwcvL0pBVUkmDA==
X-Received: by 2002:adf:cd8d:: with SMTP id q13mr18630041wrj.61.1605112219106; 
 Wed, 11 Nov 2020 08:30:19 -0800 (PST)
Received: from localhost.localdomain
 (245.red-79-158-78.dynamicip.rima-tde.net. [79.158.78.245])
 by smtp.gmail.com with ESMTPSA id w186sm3196753wmb.26.2020.11.11.08.30.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Nov 2020 08:30:18 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: mturquette@baylibre.com
Subject: [PATCH 2/7] dt: bindings: add mt7621-pll device tree binding
 documentation
Date: Wed, 11 Nov 2020 17:30:08 +0100
Message-Id: <20201111163013.29412-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201111163013.29412-1-sergio.paracuellos@gmail.com>
References: <20201111163013.29412-1-sergio.paracuellos@gmail.com>
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
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adds device tree binding documentation for PLL controller in
the MT7621 SOC.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../bindings/clock/mediatek,mt7621-pll.yaml   | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.yaml

diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.yaml
new file mode 100644
index 000000000000..ef58411065e4
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/mediatek,mt7621-pll.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MT7621 PLL Controller Device Tree Bindings
+
+maintainers:
+  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
+
+
+description: |
+  The PLL Controller provides the cpu clock as well as derived
+  clock for the bus and the peripherals.
+
+  Each clock is assigned an identifier and client nodes use this identifier
+  to specify the clock which they consume.
+
+  All these identifiers could be found in:
+  [1]: <include/dt-bindings/clock/mt7621-clk.h>.
+
+properties:
+  compatible:
+    const: mediatek,mt7621-pll
+
+  "#clock-cells":
+    description:
+      The first cell indicates the clock number, see [1] for available
+      clocks.
+    const: 1
+
+  clock-output-names:
+    maxItems: 3
+
+required:
+  - compatible
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
+      compatible = "mediatek,mt7621-pll";
+      #clock-cells = <1>;
+      clock-output-names = "cpu", "ahb", "apb";
+    };
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
