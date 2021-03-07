Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DAC932FF4F
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Mar 2021 08:05:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2BEB943089;
	Sun,  7 Mar 2021 07:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QZ9yc9toQC_X; Sun,  7 Mar 2021 07:05:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 55ECC43012;
	Sun,  7 Mar 2021 07:05:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 19BB81BF275
 for <devel@linuxdriverproject.org>; Sun,  7 Mar 2021 07:04:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 09B8D42FC9
 for <devel@linuxdriverproject.org>; Sun,  7 Mar 2021 07:04:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E6Nfm5r3cL0A for <devel@linuxdriverproject.org>;
 Sun,  7 Mar 2021 07:04:31 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 545C742FDD
 for <devel@driverdev.osuosl.org>; Sun,  7 Mar 2021 07:04:31 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 r15-20020a05600c35cfb029010e639ca09eso1854614wmq.1
 for <devel@driverdev.osuosl.org>; Sat, 06 Mar 2021 23:04:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0Ub3gKGJwLJRaryXIKn0038/d6bzjLaWe3sRPb09LY0=;
 b=AmB7IwiFXx0W13v8S9Z2zbPBM7+n887S+jm3NBBFN2lfZiaLPdECQRuUviS2w7wFOB
 lfnxNHM7crl+YYuytYu9kMdbYXk+/1hAfwuN0dyE6tDZxNf9qe+LvS6m8eSKMcF4aDlr
 WmlDmxGP9I/W75pwwP7GrLXpQAnA9YspWj1wYS9NKw/+TX0UCG/ypkjpoqEZtwAEu1PG
 m0voZoS6zB0Pm/VsKV07sIur4MOdVFTL3tNxttVZed2zdPgHHI1IVSvUa7bxDOSZNdU3
 GEr1sQfciYwpDA40lmawQ/Izsv57GkFB7jAQiz5bc/VVT0YB84/usK3zxDTRXtkuEccY
 DqPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0Ub3gKGJwLJRaryXIKn0038/d6bzjLaWe3sRPb09LY0=;
 b=ZcV/R7GBZUCWHcF+zDdNypd78fRH4BKeJJJlASX6nFMBWTc/oC6u4WQ+KGcrGTA9Es
 E9pbinHorSV34H3ubUoGb+P0qsIpkpX0Xj8nSvZ3ywxKO10A+7B7Kzy2odqRQtBqzSOX
 oTMc83GwEVfPWOjuZ8Alu2/fwyFLBHIhza7Os3MV3gNfjna1lFnyAbv1QiTP3FkBhSCL
 tmPmnVcc1akicqSg6U9NAUmh4qf8DQdE+UCEBTs2ig0Y60uxG6Bh4PbnzIfCPzR4oESJ
 SGUo/JlDV9zorBfrvzSQGN61feTgnSC9i01Nnzq3BoF6chdtpw8gq7zkArw3KCTP2i5L
 XRPg==
X-Gm-Message-State: AOAM533NT3NLNq2385oXiZmnTjhZWyCsWhwZrd4w8aFdHJDhqOIi2JWE
 hJ1e6fMnCpAyNS36QFS2Mok=
X-Google-Smtp-Source: ABdhPJyfKAoQsPOxQOdi2EBax2XgOCjp2YAIO/dGDM9G4jHSQUDuK5/fBT+8oLKopuFZb1bbS/3wAQ==
X-Received: by 2002:a7b:c0c4:: with SMTP id s4mr16866001wmh.9.1615100669632;
 Sat, 06 Mar 2021 23:04:29 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id j9sm12162533wmi.24.2021.03.06.23.04.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 06 Mar 2021 23:04:29 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v10 1/6] dt-bindings: clock: add dt binding header for mt7621
 clocks
Date: Sun,  7 Mar 2021 08:04:21 +0100
Message-Id: <20210307070426.15933-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210307070426.15933-1-sergio.paracuellos@gmail.com>
References: <20210307070426.15933-1-sergio.paracuellos@gmail.com>
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
