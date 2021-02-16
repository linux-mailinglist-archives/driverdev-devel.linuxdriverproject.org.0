Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0D931CB24
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 14:36:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3CC1186947;
	Tue, 16 Feb 2021 13:36:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qfP1hHLb+-7V; Tue, 16 Feb 2021 13:36:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C013E86C0A;
	Tue, 16 Feb 2021 13:36:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C01D91BF34C
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 13:36:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BA311868AA
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 13:36:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id txugAfNt8VRs for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 13:36:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CEA638684E
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 13:36:21 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id v14so13022155wro.7
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 05:36:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0Ub3gKGJwLJRaryXIKn0038/d6bzjLaWe3sRPb09LY0=;
 b=sesjORb50GMvDvoSkJLcf7QPM1HrUkK/0b1vu6Pn999cVgoqbf8e5/KSIiYW60FNIG
 PuqrZap8lfh9ib85fH/TFbT0JIS14PTa0Nt2L0XxFhAheHygGoass+1ZBRJ1aQUift2a
 N3wqREMcFF3YJEnoZUmLOfE9lRtlwYgbd+JxfLUsD4Ka6a6XdvkISDGGCtpNMpQRNkcx
 G14pyMh1majLNxO9uCWLWzg1j0j5gityJKWbAg610eXy/wuJT5ZUNbAaR4ZrlmfHAhOa
 EZOU/1aEBNSE7ryv7O0bMrxas8BvvIVvK7zRtLtwvJGbE8AxLC/9lzW9k/BjKME9oLdX
 7MSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0Ub3gKGJwLJRaryXIKn0038/d6bzjLaWe3sRPb09LY0=;
 b=DgVO3jJ3Jga4qrlrcU8tr7fUB856cNhSczNBTHHhFe/nQqAEjXhacI8JYk/z2UupEo
 fh8dfCs1ryJquc3Kd1FKZBVVW/+BbHt+u8llg05iDe6adI8imc1DrEfRneD8c5RSeeg1
 C926vIjbjgiRMXitcPAgM6WJ7GfKf7pdvgarUOFvtVnf8ONlt9N9zgWot+AA+Dk8TNqF
 LVQvQ8XxhoU30JWtiGLnDgG3GXCRij4PS3Zqr/ZxBQa93iMEvMeTh+r+6dQdt//UiIxH
 mRDSAP7nSySURwIzJPgkQVfk/IU97aSCWXQbiTsHv02cjR5+09D8ANFXpAiQJutuDqX3
 Up5A==
X-Gm-Message-State: AOAM533kWYo7b/1EuRxGWtfjxT92zZfCkttXS4qO8Fp4UfOkmRLG/qh6
 oYlAddUUFenaV730dB6PSx4=
X-Google-Smtp-Source: ABdhPJzWPijBYbjHa9q5bZqsUPMJLas6xb5T5yZwRg2HOG+l6D3/tcT97MjWQF6Ultrc/ZcNkLfqsQ==
X-Received: by 2002:adf:e5d1:: with SMTP id a17mr24393774wrn.260.1613482580464; 
 Tue, 16 Feb 2021 05:36:20 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id l7sm28032530wrn.11.2021.02.16.05.36.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Feb 2021 05:36:20 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v6 1/6] dt-bindings: clock: add dt binding header for mt7621
 clocks
Date: Tue, 16 Feb 2021 14:36:12 +0100
Message-Id: <20210216133617.22333-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210216133617.22333-1-sergio.paracuellos@gmail.com>
References: <20210216133617.22333-1-sergio.paracuellos@gmail.com>
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
