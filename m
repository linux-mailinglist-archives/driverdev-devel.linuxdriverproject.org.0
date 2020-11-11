Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB6F2AF666
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Nov 2020 17:30:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E334F868DC;
	Wed, 11 Nov 2020 16:30:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A_2_cwnjvDlu; Wed, 11 Nov 2020 16:30:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A60678638E;
	Wed, 11 Nov 2020 16:30:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 648D11BF29D
 for <devel@linuxdriverproject.org>; Wed, 11 Nov 2020 16:30:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5D79E20525
 for <devel@linuxdriverproject.org>; Wed, 11 Nov 2020 16:30:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9GlP4zTHfRQk for <devel@linuxdriverproject.org>;
 Wed, 11 Nov 2020 16:30:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
 [209.85.128.51])
 by silver.osuosl.org (Postfix) with ESMTPS id 70AA920483
 for <devel@driverdev.osuosl.org>; Wed, 11 Nov 2020 16:30:19 +0000 (UTC)
Received: by mail-wm1-f51.google.com with SMTP id c9so2786436wml.5
 for <devel@driverdev.osuosl.org>; Wed, 11 Nov 2020 08:30:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B4Z4TGbujRr8lzA8mvSLe6pQfLuePfjA32xx1R5acwU=;
 b=TcGg7wZoHU3Mz7quoPpRmbrozU3kYjLYJ9tPVBCl/RJUKI9kZhR9/kL7Xau+5B1y6b
 FVEpa5PoQDOh55hABpqUCE0WVEcSCv1+dZzvYoRkYb5CcndMpJPrC4m2xzkwvOwsKPUV
 mhROj2Hwe3soJU5/lTiaqisvqXuH8zFaWZa+Ni17Ag80cg3iV9+fG0ZbFgYTcQvNC3DF
 TFJILtlF/AsyBSNeQQsAt7OWYsYWGXHUUEOwEG/TkvBrynPMq04C80f+D2Iwui/BhlTN
 2Bjq/xk91LCSHEcrA+JY2v9kfVD1sdpOSGAKvACFdRJuRz6MyPK3hhNrrT4LExn9aK3W
 BO3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B4Z4TGbujRr8lzA8mvSLe6pQfLuePfjA32xx1R5acwU=;
 b=tzXXvCmOXIqM2tAFfaZgeDvJjKPj/QWIn4hPU/Nycmx/dENqid5IubXdsmu5PhhalG
 JPNB++DlWAdQ2EZL0UHjgyH6FALKgpK2zvc9vLkjkilP2+XJGMzoWqXJI7hzH4DbTdbO
 E9uNzYBORiVBYV/jo1MtRDmLsXOiwPFnTGqFdCL0Dod81uVEx8VY++Zr/fYs5iWluh3l
 /oVhwPd0DEjOXAUkhCvgKkN3/YPvmiMgh2w4ilEqJD3DV8sUXUB3AgR6nka+z4dZ9uEy
 UgpMZwSZzkEb8L7P6DalRO6UdfyfWcaxlFXPbljoBnuU1j+PTOAWT1l8023ME1V0Prby
 cBxQ==
X-Gm-Message-State: AOAM531KHLaSYNyaoRdnaPFKL+iPdfgI0hQ0ripn8HLRQFJHA0Q/I5IX
 9VRbbVDjZdqWmSbKBcyWXbw=
X-Google-Smtp-Source: ABdhPJxYUhF2Px9RpGRLF5QdVMttBLrphbFvtCG8DbH3ut8bbRrCWzIayYGZZ9Qpq35eFuVtX2Vn4w==
X-Received: by 2002:a1c:9a12:: with SMTP id c18mr4962941wme.22.1605112217753; 
 Wed, 11 Nov 2020 08:30:17 -0800 (PST)
Received: from localhost.localdomain
 (245.red-79-158-78.dynamicip.rima-tde.net. [79.158.78.245])
 by smtp.gmail.com with ESMTPSA id w186sm3196753wmb.26.2020.11.11.08.30.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 11 Nov 2020 08:30:17 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: mturquette@baylibre.com
Subject: [PATCH 1/7] dt-bindings: clock: add dt binding header for mt7621
 clocks
Date: Wed, 11 Nov 2020 17:30:07 +0100
Message-Id: <20201111163013.29412-2-sergio.paracuellos@gmail.com>
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

Adds dt binding header for 'mediatek,mt7621-pll' PLL controller
and for 'mediatek,mt7621-clk' clock gates.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 include/dt-bindings/clock/mt7621-clk.h | 39 ++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 include/dt-bindings/clock/mt7621-clk.h

diff --git a/include/dt-bindings/clock/mt7621-clk.h b/include/dt-bindings/clock/mt7621-clk.h
new file mode 100644
index 000000000000..8fccfa514185
--- /dev/null
+++ b/include/dt-bindings/clock/mt7621-clk.h
@@ -0,0 +1,39 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Author: Sergio Paracuellos <sergio.paracuellos@gmail.com>
+ */
+
+#ifndef _DT_BINDINGS_CLK_MT7621_H
+#define _DT_BINDINGS_CLK_MT7621_H
+
+/* SYS CLOCKS */
+#define MT7621_CLK_CPU		0
+#define MT7621_CLK_AHB		1
+#define MT7621_CLK_APB		2
+#define MT7621_CLK_MAX		3
+
+/* CLOCK GATES */
+#define MT7621_CLK_HSDMA	0
+#define MT7621_CLK_FE		1
+#define MT7621_CLK_SP_DIVTX	2
+#define MT7621_CLK_TIMER	3
+#define MT7621_CLK_INT		4
+#define MT7621_CLK_MC		5
+#define MT7621_CLK_PCM		6
+#define MT7621_CLK_PIO		7
+#define MT7621_CLK_GDMA		8
+#define MT7621_CLK_NAND		9
+#define MT7621_CLK_I2C		10
+#define MT7621_CLK_I2S		11
+#define MT7621_CLK_SPI		12
+#define MT7621_CLK_UART1	13
+#define MT7621_CLK_UART2	14
+#define MT7621_CLK_UART3	15
+#define MT7621_CLK_ETH		16
+#define MT7621_CLK_PCIE0	17
+#define MT7621_CLK_PCIE1	18
+#define MT7621_CLK_PCIE2	19
+#define MT7621_CLK_CRYPTO	20
+#define MT7621_CLK_SHXC		21
+
+#endif /* _DT_BINDINGS_CLK_MT7621_H */
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
