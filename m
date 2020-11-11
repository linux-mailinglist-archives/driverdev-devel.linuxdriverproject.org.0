Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8194A2AF66A
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Nov 2020 17:30:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 38AD186752;
	Wed, 11 Nov 2020 16:30:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xf8jOPHjlX1y; Wed, 11 Nov 2020 16:30:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B8C4F867CF;
	Wed, 11 Nov 2020 16:30:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2437A1BF29D
 for <devel@linuxdriverproject.org>; Wed, 11 Nov 2020 16:30:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2004087402
 for <devel@linuxdriverproject.org>; Wed, 11 Nov 2020 16:30:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RBemnas9J5Rc for <devel@linuxdriverproject.org>;
 Wed, 11 Nov 2020 16:30:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2FBE387218
 for <devel@driverdev.osuosl.org>; Wed, 11 Nov 2020 16:30:22 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id a3so2871810wmb.5
 for <devel@driverdev.osuosl.org>; Wed, 11 Nov 2020 08:30:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=++PfnbZC3vsOjTMV4/QIsVDyqBcSjzMP5CR2moKEFno=;
 b=Pn3kYXiFRIsNDIc0VoRvWLQ213hh86evtZHmnOVhVlO7nm+VgjXp/5/s84XQYX1gjS
 YWjoheX+AzClRJFy0JKCxDOctMB6nJQg//fxWWowCETxgjTZyLvNJGcMTWgBUxjOWsmP
 yzSSK8n8wr2ybFbnFcTwdO6n9WVPi59BuoLiU4vstuopoQUhGELzxl+zdvUFe+ofobIJ
 5NYYUVPxk55kl2z1ecOyqOwbTB81tVE6PSMIRWafjdhOCfE4xDtAy73TXvlKY+ybp0k7
 7kT526hF5bNdxhbMVapHeRGAaDze8YoO1KUW1vaikc/AK5Uurcvh3fmE/x0nZVMEdQGi
 ddxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=++PfnbZC3vsOjTMV4/QIsVDyqBcSjzMP5CR2moKEFno=;
 b=jpUIL3U/e6KWr7etIuDr2uZPDLF5XKhc3POiheYWdTFBSvuNClxopnJScKlkzfcb7u
 y2hGDfl69+3JQnOh8M4XpCWV4p8uBr1wTUtybqqe8isepZDnS66cl2gTVDb7E0H9pDSa
 /87c52HZcPXDd8iBAc87wH4tozCWlCzEwZj0Fd0/+hMjfRVp0LDpfs3IzPg59dAJIG7w
 REwSxPl1UZ79Rg4EuMwEyNrIMGjWms1ly3hloMCCToAWvphdrWKBYLtFLYo36fJfjW0v
 ueb0q2mdvKMoNn2Tj01+euw57zx0GVbYf8YKJUEY6unqA9QdlzbBpNeSVUqmq4Kcpx7+
 j1Ng==
X-Gm-Message-State: AOAM530Jy3MNQ5ZQ7t0J+hdq35Kv+s+X4J3+xeSw5bEO6UCKRPh5FgD1
 iAfZaZyO5h+QTU0GfE6jseg=
X-Google-Smtp-Source: ABdhPJxRfdS1AHwmhYY7YyRU4ikpEOWoZLDu8QJOrgwRtShVfT2pkZcR2Cg4yJ5jy47XoPkgTYQvgA==
X-Received: by 2002:a1c:1982:: with SMTP id 124mr4970564wmz.74.1605112220494; 
 Wed, 11 Nov 2020 08:30:20 -0800 (PST)
Received: from localhost.localdomain
 (245.red-79-158-78.dynamicip.rima-tde.net. [79.158.78.245])
 by smtp.gmail.com with ESMTPSA id w186sm3196753wmb.26.2020.11.11.08.30.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Nov 2020 08:30:19 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: mturquette@baylibre.com
Subject: [PATCH 3/7] dt: bindings: add mt7621-clk device tree binding
 documentation
Date: Wed, 11 Nov 2020 17:30:09 +0100
Message-Id: <20201111163013.29412-4-sergio.paracuellos@gmail.com>
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

Adds device tree binding documentation for clock gates in the
MT7621 SOC.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../bindings/clock/mediatek,mt7621-clk.yaml   | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml

diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
new file mode 100644
index 000000000000..89886b066849
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/mediatek,mt7621-clk.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MT7621 Bus Gates Clock Device Tree Bindings
+
+maintainers:
+  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
+
+description: |
+  The MT7621 can gate SoC device clocks.
+
+  Each clock gate is assigned an identifier and client nodes use this identifier
+  to specify the clock gate which they consume.
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
+      The first cell indicates the clock gate number, see [1] for available
+      clocks.
+    const: 1
+
+  ralink,sysctl:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      phandle to the syscon which is in the same address area with syscon
+      device.
+
+required:
+  - compatible
+  - '#clock-cells'
+  - ralink,sysctl
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/mt7621-clk.h>
+
+    clkctrl {
+      compatible = "mediatek,mt7621-clk";
+      #clock-cells = <1>;
+      ralink,sysctl = <&sysc>;
+    };
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
