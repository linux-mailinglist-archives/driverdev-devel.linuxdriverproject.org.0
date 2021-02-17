Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1559C31DB1B
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 15:08:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2E19385F83;
	Wed, 17 Feb 2021 14:08:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jtdM8_2bVM7Q; Wed, 17 Feb 2021 14:08:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1B62E844A8;
	Wed, 17 Feb 2021 14:08:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9EF6A1BF3A0
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 14:07:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9B78887239
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 14:07:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lxrej40+Nyjl for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 14:07:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BDE06871EA
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 14:07:57 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id n6so17506905wrv.8
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 06:07:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0Ub3gKGJwLJRaryXIKn0038/d6bzjLaWe3sRPb09LY0=;
 b=bfsR1UQ45DzRedXqdyErOY5l0kz93w2Om3KYDWLA+7hBAm/BvtApSCCbfGZ4eoZldl
 WFDgH7hRLCKNP6151f9xPeNJez59q6Q+z85IKHd0B9qMfHdfSqaod1tz98mjr+9z4Xw0
 TS7FElk8cO4xH0LCgqK0PuMJN7pk2/ICSwQlppVwNwFhgArAxoXqCNOfVl9RKlfAp00Y
 o8j/eit7ZTVjIv41d9cyhyaSkXOB1DcnsOpBZQxIs69t8fpKG2GAa/HO/pE2SPYEOlkH
 lacBrg9Z/6o/MBXYDXeTgnulwupPiJDehdNywlKUdRKGBGny3AoficIJKScXAYQaXFYk
 6GLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0Ub3gKGJwLJRaryXIKn0038/d6bzjLaWe3sRPb09LY0=;
 b=cEBDhQbgTLCbibey4gsGXvdoYp+lJeVxrjBppPhhRFsUHDOIj7PrdNpW+A9nKsblqY
 iVcIys1aRqIKVOhe48AnEruS7bhb6zWJ3gkA90rTwgj+UvyA7/IMNiTDi7Q2zHFs56RQ
 O0NSonvC8ZqDE/Ojw1U2D1hLlz42Dz2gczwJA9W/TtxZ3GoqA5+VEBDpJX++wATxfOmp
 cjiJpIS7lJ65Y0uBLnivlBZRRyn/o+j94qA8FyWqUUD5gGo0JypU9sbKWsJVKoN5n+bG
 iGLjYu0xzQXKDu8agas/9+6H0KcFuFwiUAgnLDMo4J6Lmj7uiPnJSVhBpGPQ/y1klrt2
 fCaQ==
X-Gm-Message-State: AOAM530CRhDEoOqPkl3ysYEr2F6kIt4KuPbWlna+ddX97gKsw8of8qbP
 y+IcPYKz4BF+CXx/Pal7C1RTkm8Jw2mCuA==
X-Google-Smtp-Source: ABdhPJzwskY/ZkRW4COY9lxOj5u8fY89zN0jlfjNItUZsDJ/5luMINpSfC3CAv/4kVgSJrtl3m3j7Q==
X-Received: by 2002:a5d:6b47:: with SMTP id x7mr29793510wrw.170.1613570876202; 
 Wed, 17 Feb 2021 06:07:56 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id n66sm3274099wmn.25.2021.02.17.06.07.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Feb 2021 06:07:55 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v8 1/6] dt-bindings: clock: add dt binding header for mt7621
 clocks
Date: Wed, 17 Feb 2021 15:07:47 +0100
Message-Id: <20210217140752.15712-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210217140752.15712-1-sergio.paracuellos@gmail.com>
References: <20210217140752.15712-1-sergio.paracuellos@gmail.com>
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
 tsbogend@alpha.franken.de, Rob Herring <robh@kernel.org>,
 gregkh@linuxfoundation.org, linux-mips@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, john@phrozen.org,
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
