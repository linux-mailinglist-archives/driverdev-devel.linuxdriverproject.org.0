Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B70DD63AD5
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 20:22:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5BA6085E2B;
	Tue,  9 Jul 2019 18:22:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xrxTQDD4-oyg; Tue,  9 Jul 2019 18:22:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B0F3285E0B;
	Tue,  9 Jul 2019 18:22:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9B78D1BF4D8
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 18:22:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9845C87B69
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 18:22:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uzmJkmUU5f0Q for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 18:22:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B372187B5B
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 18:22:36 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id p10so9874889pgn.1
 for <devel@driverdev.osuosl.org>; Tue, 09 Jul 2019 11:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wVt7vDkLKBxK27+p+bMKsO9KCqlIXLjbeugPNWgziFQ=;
 b=f8WSDY7o/5sPMjIXJqEOMG6R9NQPlFfIniCi3M4OU4JyUaRcKrSjSLDpN6JPBC2cnA
 kJSvgBPi+eVx0kg3lZt9O9e9cFlV2MpRpodnNgKfzglo5Y6TBZZRQHdrOFgzlxCMkPNE
 2GAONwo0qe6lTbV0PJ9xunlxKR5oW4M6FLAZuMOf24gZczsg8RUw590RzMPDG5PqQLmL
 hj/OKmBiaTUesx65vBXtHTmOUwhnRtTSkb5BRpTlMR0e8CQ/iO7cUnVRJybD4VCk4q9S
 E05UkP77+ks8XGNxemJCApxcbSR2/wLACZ2cC8+/hPF5ckJIciLE44AbBMejhNEJBLcS
 +0Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wVt7vDkLKBxK27+p+bMKsO9KCqlIXLjbeugPNWgziFQ=;
 b=Ocq9izzZPKhuy9nl6/SUkYamX/DOZLnnRx4vCzLo9A2IaT8tK4Ys3qKBrT+sI+vyHX
 2zJBcHn/rJ2RG2tQhRxBqedfxi5mgdsYIVJN5NLwd1Jc51EPLGlMvYNb6sHMVcmvlYI3
 nXwKa3AB9YVrbwoAjUNNMj9/gN5eYZtlu9HR3Eh822inqTeeMGKnQ8SpC1vyS1exwyqf
 fcud4aqFCgpwOkkuznNca3ZPyvePUtrCXNOkctSDJ9a7q0cQBk3Ous3ndqEzf99SF+32
 kr7sudAALpNYptQJMCLfMe/MX3TkbryXwQuz97uAruqa4UOoHCFqGI2eqBeESfOia6ng
 9qFA==
X-Gm-Message-State: APjAAAUPba2nkRtXv9VO3Q2sw8FVWEKYL5pigypeGxClrZd449Lo0xUY
 L3rbkRrjKXiIlRN+p8WFpCU=
X-Google-Smtp-Source: APXvYqwEMfl0m9VybVQKwiwyMQTosG/2kwr2VYmQHLAmS8kh4n1FuA9braOlVCY4vKfWN5ENvvRehQ==
X-Received: by 2002:a17:90a:db52:: with SMTP id
 u18mr1557131pjx.107.1562696556390; 
 Tue, 09 Jul 2019 11:22:36 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:7001:2668:5400:1ff:fe62:2bbd])
 by smtp.gmail.com with ESMTPSA id m69sm21008639pga.11.2019.07.09.11.22.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 11:22:35 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list),
 linux-mips@vger.kernel.org (open list:MIPS),
 devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
Subject: [PATCH 3/5] dt: bindings: add mt7621-pll dt binding documentation
Date: Wed, 10 Jul 2019 02:20:16 +0800
Message-Id: <20190709182018.23193-4-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190709182018.23193-1-gch981213@gmail.com>
References: <20190709182018.23193-1-gch981213@gmail.com>
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
Cc: Mark Rutland <mark.rutland@arm.com>, Weijie Gao <hackpascal@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <sboyd@kernel.org>, James Hogan <jhogan@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Rob Herring <robh+dt@kernel.org>, John Crispin <john@phrozen.org>,
 NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit adds device tree binding documentation for MT7621
PLL controller.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 .../bindings/clock/mediatek,mt7621-pll.txt    | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.txt

diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.txt b/Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.txt
new file mode 100644
index 000000000000..05c15062cd20
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.txt
@@ -0,0 +1,19 @@
+Binding for Mediatek MT7621 PLL controller
+
+The PLL controller provides the 2 main clocks of the SoC: CPU and BUS.
+
+Required Properties:
+- compatible: has to be "mediatek,mt7621-pll"
+- #clock-cells: has to be one
+
+Optional properties:
+- clock-output-names: should be "cpu", "bus"
+
+Example:
+	pll {
+		compatible = "mediatek,mt7621-pll", "syscon";
+
+		#clock-cells = <1>;
+		clock-output-names = "cpu", "bus";
+	};
+
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
