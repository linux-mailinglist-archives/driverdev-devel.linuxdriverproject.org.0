Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3057B31E6A3
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 08:07:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 326968699C;
	Thu, 18 Feb 2021 07:07:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BmUePyp3YEj5; Thu, 18 Feb 2021 07:07:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6FD03867C5;
	Thu, 18 Feb 2021 07:07:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 844C71BF32C
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 07:07:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 808B660595
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 07:07:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ol0TvwKoyZUS for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 07:07:16 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id C7C7F605BE; Thu, 18 Feb 2021 07:07:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 78B1D60595
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 07:07:15 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id a132so1892873wmc.0
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 23:07:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0Ub3gKGJwLJRaryXIKn0038/d6bzjLaWe3sRPb09LY0=;
 b=CTJiqVUX/SVQVf///f/zCWngeFKO6y6MyE88SNzV3igouS2HKHgFLEPLp6xTxQwea5
 lwMdfNP0ucxV/wHDeimsRT5Eah0DbyyAdaTmvI58i5JhZCW2g6UmzdoU3Dfjb/xf7pey
 FqM2OjF2HchiOVkhxQHySLsySNYc//1ISOrOBCmJLdBsuQaIuDJKp9CayCmu45/Mcx8N
 1v842AOZpO5T6dheLXEMLQPhu4GcGTRpbP5TNSM0z/Jv7jO4KmLThDQ/FhQjEGHTOfAQ
 tAq32//jTJhTZfOk9bcR+fNXdRc25c4LBzLtf6s14j0jCzS8lIz4aJyvKrv4uj/03Ran
 DruQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0Ub3gKGJwLJRaryXIKn0038/d6bzjLaWe3sRPb09LY0=;
 b=OWR2R8xHr+l+L1SnGrt5l0AhTUmFUxWK/Rm36kVK+4TXoIUvd3uJ3OHBd9B5DiVYHS
 zLptQlWxJAQ5IhoMBEVmFbippYZhPdMmdGcx8bTMU6mMCQq4CKL7HqLpVfeMt5rA3hnt
 GdOzIFCxy5vkCEj9xTSbdIbe2nk77BBPjQ1yDkRndUIIA9DHilKcLivl3zfVsXr56HCZ
 bFVo/qu33JEd/W/LcmVokzYGAwMnpIf3NKkMN13dTXCseDRcTeiXBDrLm6Qe6FfUjHe/
 d+rBE3m6mw2/lNwJebmIRWx+K7Ojd/Uh7Dv2DktxUDYX89TLTlDlWh++jy6FseRdkKsi
 CHAg==
X-Gm-Message-State: AOAM532gx0LP19JDN27JChBTOO0xo15wkdKnxoRWeoLmohJkDattNsDs
 BrUuVXBOCwRetPYEPnd3ZGM=
X-Google-Smtp-Source: ABdhPJy3yaYVnkGl32nNzN4hWUd+ug/uSReUGq084f57kInFgPxKqQmo5dNOxEvaiDjLj4pU8XCNTQ==
X-Received: by 2002:a7b:c007:: with SMTP id c7mr2218135wmb.59.1613632033642;
 Wed, 17 Feb 2021 23:07:13 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id 4sm6136555wma.0.2021.02.17.23.07.12
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Feb 2021 23:07:13 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v9 1/6] dt-bindings: clock: add dt binding header for mt7621
 clocks
Date: Thu, 18 Feb 2021 08:07:04 +0100
Message-Id: <20210218070709.11932-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210218070709.11932-1-sergio.paracuellos@gmail.com>
References: <20210218070709.11932-1-sergio.paracuellos@gmail.com>
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
