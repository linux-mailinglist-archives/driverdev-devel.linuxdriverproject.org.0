Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A5BCD319AB2
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 08:44:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2260E6F66F
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Feb 2021 07:44:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1U77qyiE28q6 for <lists+driverdev-devel@lfdr.de>;
	Fri, 12 Feb 2021 07:44:57 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 2DFB16F487; Fri, 12 Feb 2021 07:44:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DDC706F606;
	Fri, 12 Feb 2021 07:44:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 085231BF33F
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 07:43:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 02E3B6F6DE
 for <devel@linuxdriverproject.org>; Fri, 12 Feb 2021 07:43:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FlTJAn8R8WBe for <devel@linuxdriverproject.org>;
 Fri, 12 Feb 2021 07:43:52 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 4B7B76F6C6; Fri, 12 Feb 2021 07:43:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0EF256F6C6
 for <devel@driverdev.osuosl.org>; Fri, 12 Feb 2021 07:43:33 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id l12so6821658wry.2
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 23:43:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0Ub3gKGJwLJRaryXIKn0038/d6bzjLaWe3sRPb09LY0=;
 b=MK3huTXs0uxPIa/OMVE84EU1u+jNkHIlxmU3tdk8ODeSDUBYkzIPxLQvSmSP7WVPQC
 KRv+ExxAsO9HU4MB//fgGhU4TEIMBYnmEY38fLTicENstDJ9IqVoEokEaP0KhgjH2QOY
 jPEWu7kyFzLAUpzAO1T20skGuJJLh7axQUqsELS26AlmRhJfTNEiaCxu7NqsBU3R4gWT
 +EwSCenq5M+X2zj/NRP+e20nTEiGLOg6hY00aPl0e5o+bja2b1wexUyzUudE2z+WtPXU
 00FXOWrWn0/L1100XuY85EwrSQo8pToBNm+MzZQrgLaVkYYhEFirxMSJqWfmcNAhN1B4
 L5cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0Ub3gKGJwLJRaryXIKn0038/d6bzjLaWe3sRPb09LY0=;
 b=VMLYCEDLX7Nd+crsnGuIOunB8Zb4Z5TKRw01SfA3zafkhrbs/wwkisGxGRCf+DDQzG
 I7m7xtrJz6FaWzg2QrcSTMWgSX9Jm3k29O65D3idX5qpTBw5KFI5YHcqUObWzKFDqBD0
 ubLplMglCSZAyTtZfXRRJlHaBeK+ghLG+noIdQz2V3qRpFs0O47xWkDX/ntk0BbAH4i9
 3ObZJ9y0cEbAemTCeP/KRxJfrhJ9d5gYztB4rEcvP39iFrW0rYKVDZGS3Q6hu0XExP9V
 O60TMLulknxgghgc0WgmdbBN2oFhmZfSqQAQf6J2Dn2usQGPjlt3zVNx2UfOABINvgPf
 5cAQ==
X-Gm-Message-State: AOAM533+qUjMRkI6tUHxeDUMAhevmewQBfsU8cHYSquFe8l/7JFrszba
 FZzHtfB3qbup0TxmynCc890=
X-Google-Smtp-Source: ABdhPJwpkcYaVd8HPJLY2Re/cSyjzmo5DQRpKsRMWJddzwplZewGZPHU14Nq8WfaiQvervNBxgfuBQ==
X-Received: by 2002:adf:f009:: with SMTP id j9mr1832933wro.35.1613115812061;
 Thu, 11 Feb 2021 23:43:32 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id a17sm9663858wrx.63.2021.02.11.23.43.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Feb 2021 23:43:31 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [RESEND PATCH v5 1/6] dt-bindings: clock: add dt binding header for
 mt7621 clocks
Date: Fri, 12 Feb 2021 08:43:25 +0100
Message-Id: <20210212074330.4650-2-sergio.paracuellos@gmail.com>
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
 tsbogend@alpha.franken.de, Rob Herring <robh@kernel.org>,
 gregkh@linuxfoundation.org, linux-mips@vger.kernel.org, robh+dt@kernel.org,
 john@phrozen.org, linux-clk@vger.kernel.org
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
