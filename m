Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C522DF4B8
	for <lists+driverdev-devel@lfdr.de>; Sun, 20 Dec 2020 10:37:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A4DAE20478;
	Sun, 20 Dec 2020 09:37:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u19JJF4MkKkL; Sun, 20 Dec 2020 09:37:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1FA9A2047F;
	Sun, 20 Dec 2020 09:37:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 866271BF958
 for <devel@linuxdriverproject.org>; Sun, 20 Dec 2020 09:37:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8331186F78
 for <devel@linuxdriverproject.org>; Sun, 20 Dec 2020 09:37:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KcXtY6F0qU+3 for <devel@linuxdriverproject.org>;
 Sun, 20 Dec 2020 09:37:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 286F486F77
 for <devel@driverdev.osuosl.org>; Sun, 20 Dec 2020 09:37:30 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id q18so7671603wrn.1
 for <devel@driverdev.osuosl.org>; Sun, 20 Dec 2020 01:37:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0Ub3gKGJwLJRaryXIKn0038/d6bzjLaWe3sRPb09LY0=;
 b=VfMBy8EPG6RvxCBAgnCZOkK2qcvr5RE7DBjohJgy11br2mAxsIyJaVtF3e1UMn3r4s
 QjPqLqDXX/d3ESZBlGAS97d/GkwTOEkXKIQfe8m7FXPKn3cALGdrGNN6lw4avRWS90h6
 NNuEbKfJdPgbxBQ+9s053yhsFTvXwOxNVRoBXLvPyS9XP7o7Nk3mEciO1LfcMFmWJv/D
 k9QjGKqKNS/nVoij9Y65hyU3FvU9EhIumqkMTSzfZbCJhpgdJEiqi/fy9BKJoRS5Csv7
 pyQh1hnBUX7UxfNxw5I+JeMnNmQEvj4Bun933Wg0S78FoU+VppwwBr1zPfk8r1YuBwHv
 5jNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0Ub3gKGJwLJRaryXIKn0038/d6bzjLaWe3sRPb09LY0=;
 b=B+COYsAyIiwCPmX5Q1aN1AYmTLPh17zOlMagzUUTORgCry7gkG8hV7V0hdfHnt2a+4
 +chsDSf5uJPgKVJS4MZqnURDWzL2rmLUSFPcZXPgJA6cnr9xgqITlJFCcokPcxRjexpP
 qygh+/UT7YIZ+WR7k6DTuZJHhq9nKDeITGaVxaRFwxOcZ5W/WzUjW18QbHOFUUvzC+kV
 ToRC3mWdQFbjs1P5MqyVS0JBln2Ds0oRNYfYopZt9m4SfCjPAznJ31pSFH60ddM6LQep
 KaG23lHhdS1Z0iU+L9xHvDtn9EfZILu4SQ16E+7TpU1r0dJgNmXqFYSEDvrqddeSYMeu
 sBsA==
X-Gm-Message-State: AOAM530UFObdc1QsF/QRtrYZZ4oG3yX/WRUZeG1UfVpHyc4rbhTdQmHp
 rKg9oZQzb6SwsGXAJpbLd6c=
X-Google-Smtp-Source: ABdhPJxo7whrIhIY3LnX3OTkJw2kWi+TmCCzk4Nvbg8t4Sfv7m6plhdXmqv2bz9TMXL6snvzGyiYAg==
X-Received: by 2002:a5d:68c9:: with SMTP id p9mr12848401wrw.139.1608457048501; 
 Sun, 20 Dec 2020 01:37:28 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id o8sm21288819wrm.17.2020.12.20.01.37.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 20 Dec 2020 01:37:27 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v5 1/6] dt-bindings: clock: add dt binding header for mt7621
 clocks
Date: Sun, 20 Dec 2020 10:37:19 +0100
Message-Id: <20201220093724.4906-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201220093724.4906-1-sergio.paracuellos@gmail.com>
References: <20201220093724.4906-1-sergio.paracuellos@gmail.com>
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
 Rob Herring <robh@kernel.org>, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
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
