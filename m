Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7973B2BC4C9
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Nov 2020 10:56:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A192C86BE1;
	Sun, 22 Nov 2020 09:56:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TO92jtdrREJp; Sun, 22 Nov 2020 09:56:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2F2D586B33;
	Sun, 22 Nov 2020 09:56:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A08481BF568
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 09:56:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9CC5685E93
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 09:56:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 862NQsxNqq2Q for <devel@linuxdriverproject.org>;
 Sun, 22 Nov 2020 09:56:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AE93185E09
 for <devel@driverdev.osuosl.org>; Sun, 22 Nov 2020 09:56:01 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id u12so15501823wrt.0
 for <devel@driverdev.osuosl.org>; Sun, 22 Nov 2020 01:56:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0Ub3gKGJwLJRaryXIKn0038/d6bzjLaWe3sRPb09LY0=;
 b=jBT0H1Dp2FdOl9/WZ1YWZ+a17R3h28nmfNH/n3MTXgBZvp0B0tFBVLrSX1eel3fws7
 zczlkEU8MXE3OlLatadk4ioBE2wyEB8xDJuj8AVal3kayTkAnFQnYB9f3jwp+COyd6N8
 PCVwR3PayXHMNyY/KZf5lkplIy2q3LQZxjQgRn2JE3ROeoTyc4yRuHDG5iyQavFoZAyx
 CM6aEhZf6GvySbBfVeqGxijjM/KP7ugxV7qF799TjmM0hrXZKuu5jr578iXyR430Smgw
 5adXJq28o3cBGvHc7sMflHk0dzLxBNPuK+4w5d+6yrgtpbVJNiAWWJLAJWMNcBchi+KZ
 6YAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0Ub3gKGJwLJRaryXIKn0038/d6bzjLaWe3sRPb09LY0=;
 b=mChNduEAybDHGMQxjVgmBbTLH8dY1Krii9dBNGY5qmuy8Xsc6ePfXeRvbL9ce+XxEf
 +dFyH3VK1k4df0rw1eli5QUKykqBz1XPXLN+1ryD2wP5csRL4uFALo3kANT4+5xxXKlf
 2cRMyVZlY3dsAbY/F/w2DchZEkMtQoTMdoA/YG3ww7LEKU7/lvqAzdBu+XWYG2IRPVBX
 jqGZzZfUQsvYW2jAHYY3RNJlC2ZAz5RpCtJyppUU6a4FqAl8gCJ9v/uYpC2QRC0/Fier
 80hvCG47tgxP+YNVLJq73aCT437CDah1PEM/5S1Zgi0Z+KJ/ibxjpdJs9eqe9NSveAsZ
 iGaA==
X-Gm-Message-State: AOAM530QamqYr65eCheQ2GIPdp/CnjcxFlmzVcFoed0DTrt0RlplJgGx
 yxdxh0fyGzJI7X8R8CxxUNc=
X-Google-Smtp-Source: ABdhPJwRL/xcxAwX7RQbo8ROZ7c59q0dn7A87ObIujR0wFzdpeevrwvC6al2Y2KMHD3wzntxlKexSw==
X-Received: by 2002:adf:f083:: with SMTP id n3mr25048052wro.391.1606038960179; 
 Sun, 22 Nov 2020 01:56:00 -0800 (PST)
Received: from localhost.localdomain (196.red-83-40-48.dynamicip.rima-tde.net.
 [83.40.48.196])
 by smtp.gmail.com with ESMTPSA id p21sm10593570wma.41.2020.11.22.01.55.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 22 Nov 2020 01:55:59 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: mturquette@baylibre.com
Subject: [PATCH v4 1/6] dt-bindings: clock: add dt binding header for mt7621
 clocks
Date: Sun, 22 Nov 2020 10:55:51 +0100
Message-Id: <20201122095556.21597-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201122095556.21597-1-sergio.paracuellos@gmail.com>
References: <20201122095556.21597-1-sergio.paracuellos@gmail.com>
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
Cc: hackpascal@gmail.com, devel@driverdev.osuosl.org, tsbogend@alpha.franken.de,
 Rob Herring <robh@kernel.org>, sboyd@kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, evicetree@vger.kernel.org,
 linux-mips@vger.kernel.org, robh+dt@kernel.org, john@phrozen.org,
 neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adds dt binding header for 'mediatek,mt7621-clk' clocks.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 include/dt-bindings/clock/mt7621-clk.h | 41 ++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100644 include/dt-bindings/clock/mt7621-clk.h

diff --git a/include/dt-bindings/clock/mt7621-clk.h b/include/dt-bindings/clock/mt7621-clk.h
new file mode 100644
index 000000000000..1422badcf9de
--- /dev/null
+++ b/include/dt-bindings/clock/mt7621-clk.h
@@ -0,0 +1,41 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Author: Sergio Paracuellos <sergio.paracuellos@gmail.com>
+ */
+
+#ifndef _DT_BINDINGS_CLK_MT7621_H
+#define _DT_BINDINGS_CLK_MT7621_H
+
+#define MT7621_CLK_XTAL		0
+#define MT7621_CLK_CPU		1
+#define MT7621_CLK_BUS		2
+#define MT7621_CLK_50M		3
+#define MT7621_CLK_125M		4
+#define MT7621_CLK_150M		5
+#define MT7621_CLK_250M		6
+#define MT7621_CLK_270M		7
+
+#define MT7621_CLK_HSDMA	8
+#define MT7621_CLK_FE		9
+#define MT7621_CLK_SP_DIVTX	10
+#define MT7621_CLK_TIMER	11
+#define MT7621_CLK_PCM		12
+#define MT7621_CLK_PIO		13
+#define MT7621_CLK_GDMA		14
+#define MT7621_CLK_NAND		15
+#define MT7621_CLK_I2C		16
+#define MT7621_CLK_I2S		17
+#define MT7621_CLK_SPI		18
+#define MT7621_CLK_UART1	19
+#define MT7621_CLK_UART2	20
+#define MT7621_CLK_UART3	21
+#define MT7621_CLK_ETH		22
+#define MT7621_CLK_PCIE0	23
+#define MT7621_CLK_PCIE1	24
+#define MT7621_CLK_PCIE2	25
+#define MT7621_CLK_CRYPTO	26
+#define MT7621_CLK_SHXC		27
+
+#define MT7621_CLK_MAX		28
+
+#endif /* _DT_BINDINGS_CLK_MT7621_H */
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
