Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1C5331E4B
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 06:22:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E727C4AD93;
	Tue,  9 Mar 2021 05:22:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rs1YjloSzUYG; Tue,  9 Mar 2021 05:22:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D7F40494C8;
	Tue,  9 Mar 2021 05:22:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 94BEF1BF2FF
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 05:22:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 82FEA6F562
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 05:22:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mUE8J5MFsPbv for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 05:22:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BCFA86F500
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 05:22:32 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id l12so13818578wry.2
 for <devel@driverdev.osuosl.org>; Mon, 08 Mar 2021 21:22:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0Ub3gKGJwLJRaryXIKn0038/d6bzjLaWe3sRPb09LY0=;
 b=PLyqykK7Dn0OcvqfVk5VE5h1Lk/B8yaynryioSFj0j+uk6FK4V2Foqpj3Irwld1qSg
 tVw+NLHgv49jyDDn86LlvEZCsQJO60Tapywa9q/w0mb3KR8sfbpbMkGAmUzzdotTotXx
 3mI0jb0iexKSVcB4Q05Ldee/ycEkmkodYJAzppvvy3Uau4WmSleRBSepPmo8cOldkjTH
 e2EH21N36PNptGp3jhCp9hBkbwv2Smw3BBM0AQgfxFQ1vYlDdcWb8jL+q0cjBqLdQOMO
 YBpk8OXXeKvnd9xSITXJvAmFQmjH4KGmNgmAcx/8cvRvMh44wlBLgpkVIMTiJyq+4RAI
 FDaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0Ub3gKGJwLJRaryXIKn0038/d6bzjLaWe3sRPb09LY0=;
 b=TSAVA5Lk7bPyzcRsD9e549bXwtmKeqYR+xdZCipiHLMP4MTfLQ0IDuS5+ymJA/VdEd
 PhJ1nqBep/OmzDxN2DWF3E0CnPF5bnmYserZjSKpqrc2gDNHqU7ndvlAUgT/O+m0a8ha
 oxVGLk7sJ5/BJ1nCJEXFgQaVuPpjnOI9leibx879JpcJs7BkGO7XbU3KzHefsORAQOGC
 OQKT7xqkBohYJyeFW+ltdEroy8pOa542SYTxOtupJgzCUKD9rqSqh3WHhkm89qfnc9o8
 VvErDBgrMY6nXm4IuOP8GBqlZQcEg7y0TOHYNI1CVtVAoMdM4ii+fP7yHIOsc77cEs/5
 V/hg==
X-Gm-Message-State: AOAM530SIt1G9xk/fUTHEDro2D+rbw9xucBIUM3nX5AwzACoysXCYw+T
 Vm/wlOwe7wvBFav7Yn9qx9k=
X-Google-Smtp-Source: ABdhPJyJNxoKChHWM4gK53Wgs1fLEE/9kkiXaRIQVh2FzKqcs/vkgQ2cY99FfoFY4H+gT8z6wg3A+Q==
X-Received: by 2002:a5d:4002:: with SMTP id n2mr16302844wrp.148.1615267350970; 
 Mon, 08 Mar 2021 21:22:30 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id c11sm23450743wrm.67.2021.03.08.21.22.29
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Mar 2021 21:22:30 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v11 1/6] dt-bindings: clock: add dt binding header for mt7621
 clocks
Date: Tue,  9 Mar 2021 06:22:21 +0100
Message-Id: <20210309052226.29531-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210309052226.29531-1-sergio.paracuellos@gmail.com>
References: <20210309052226.29531-1-sergio.paracuellos@gmail.com>
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
