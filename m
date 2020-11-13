Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFE62B1F06
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Nov 2020 16:46:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1639E2E250;
	Fri, 13 Nov 2020 15:46:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I+RJCeXmDX8H; Fri, 13 Nov 2020 15:46:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7577B2E254;
	Fri, 13 Nov 2020 15:46:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 73AC41BF299
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 15:46:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6FDE587470
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 15:46:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N_-eex3cDpIC for <devel@linuxdriverproject.org>;
 Fri, 13 Nov 2020 15:46:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C19F987402
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 15:46:42 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id p1so10374030wrf.12
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 07:46:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H75jGjzD/BZomDbFJbk8FfNvVtCaaCciMBYbMeB6+AM=;
 b=pIEp+e4qRW1bcXHLhMC4WLZxWBYDzi1kXNOvn6LdQANLChDlwkQ/LTmhDKJXlgQRzd
 maD18WBmu/megHU3egk9hRL/axFexdQgcVlX9rOqth+iM/PEEu1SYoRpkl5/Xb2gv+hc
 BlTgT44yyD3QFBG6YoYzXWJ7uO37ERgeDgyEdIlyZIgQZBrxGMNgKrjm9iQ+En/q59Fe
 v8VoDIuxQDQtW+69o7zoNjaLKR5bRAEQnGbBg8jIuQqhBmRNJ0VRwwWXTMQ8nGNblMmm
 CwtsljYHlmQ4BRTmfL/ZCXwfFPn5HQ2IxuWQh3biJ4HLqjLn07NW0vuX1MQHpV+FSuXw
 xTOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H75jGjzD/BZomDbFJbk8FfNvVtCaaCciMBYbMeB6+AM=;
 b=IElF+mF+SOlzBsL43lzVCVSMYVVLnXoQHNopjqwiG18sVZgqsnQYrMu1N+65/2Rdij
 VTc5fcqhhFda+RJh5P8MbbMWXja2p39uZlkAjNWiPc5DDSty4pPFC2Gw5WhA4dlSsf0e
 zKZNob/eLgg5SvVK0OvVF4cST7nDIS+a5us+ok3mnsgkSOZ65Sfmk3BuT+RDNKj5+Ruv
 T2h9/aKz1f1AqrNEtXwSe67SQ0CaA74N0WwAjhPeo7BIi13a2GcKF7etciFLsp44JCOq
 031u7zj55//NRfeHIFTCdPQluwBq/x6R7LTAv6K2dUNAdomkjWTCYQ3Tbr2sTKapr4W8
 cbnw==
X-Gm-Message-State: AOAM5325rMb2NMEeT9zZdSnlsZHdb+nayX6fRKl+X69KjvKTVLXloXUv
 dRTSRLqO/QFefxUGiftYKlI=
X-Google-Smtp-Source: ABdhPJz9kQiQQSKrVzFJVkJxDPfqcOwqABAvoja70EZ0kYZC/N8ZzSpXc+26M8unJdnQ8Af9+F5Ryw==
X-Received: by 2002:adf:9e48:: with SMTP id v8mr4529777wre.55.1605282396077;
 Fri, 13 Nov 2020 07:46:36 -0800 (PST)
Received: from localhost.localdomain
 (245.red-79-158-78.dynamicip.rima-tde.net. [79.158.78.245])
 by smtp.gmail.com with ESMTPSA id n15sm11727978wrq.48.2020.11.13.07.46.34
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Nov 2020 07:46:35 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: mturquette@baylibre.com
Subject: [PATCH v3 1/5] dt-bindings: clock: add dt binding header for mt7621
 clocks
Date: Fri, 13 Nov 2020 16:46:28 +0100
Message-Id: <20201113154632.24973-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201113154632.24973-1-sergio.paracuellos@gmail.com>
References: <20201113154632.24973-1-sergio.paracuellos@gmail.com>
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
 neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Adds dt binding header for 'mediatek,mt7621-clk' clocks.

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
