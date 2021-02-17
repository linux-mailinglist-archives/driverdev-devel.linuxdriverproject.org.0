Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B576131D888
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 12:40:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D993E86D32;
	Wed, 17 Feb 2021 11:40:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NAHjh6N0fe+n; Wed, 17 Feb 2021 11:40:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A7E086D0C;
	Wed, 17 Feb 2021 11:40:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 60FC21BF4D8
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 11:40:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2AC836F559
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 11:40:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3pMqCFyKoQog for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 11:40:08 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 304F36F4D7; Wed, 17 Feb 2021 11:40:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
 [209.85.221.53])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A84A06F479
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 11:40:06 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id v15so17042621wrx.4
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 03:40:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0Ub3gKGJwLJRaryXIKn0038/d6bzjLaWe3sRPb09LY0=;
 b=DT5YyN1MOvKp2WuAgEYIlR4ajbLPAmzH8CueHGYC6nk8Xn8oz+MgtOH9LJI/Ptgo+a
 iv0wBtsjV/NINYVMTY0I2UZ6KaFbgb/kkpWwg50vfmNUbG0VXUAxpIDqwmGsf7uTT9MU
 dzzxwcaYJ8qRByQsqALtL9jP1ZidNrraUtKtDWaGZrBF0nh5Yg/efaebvZX8FH+3KlS4
 j1myj9gs82TAASf+YCECDYCpDjJhGsW9pu/TG9Uavm3dFEf1li6DNkjcGMiJPxYC/MEO
 fllzQFRsvy/3DjMnkvBgAaT876WxFRjk196510alcNpJV59Z690xDGW6id7tb72US0Oh
 FqFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0Ub3gKGJwLJRaryXIKn0038/d6bzjLaWe3sRPb09LY0=;
 b=FL6MlQ7ylUWo8lXjagS6t2Or51Dw0u8r9VEVibMwqsHCGUiV58o5NaWByLAshIsoq7
 XVK6Aii//I0lJKa8hSdmLjrnoUCu1oCQYzRN5GTSQdy0+covTFWksxCXrQwyo1USvTHK
 bJ6Nb0X6XH7tspXJDXb+B3zGSBFEP2alGJHzKUf2DxG4QZFddwyND6hwd/POn5bwwf0D
 AX+u5YtKI7tSCjcmrQs3U5FbWR0eeM/musxapS9sG7FH5EOO9FXQTamwgeHeTb0soFYB
 kSqqY8L230DY/0ErGzYH4sE7RPawhgCgCvc+pUiuhgNIt0qDneukLTQAQKSTkBQKIaOf
 ynAw==
X-Gm-Message-State: AOAM530WGFNZORAnDWx2Ll5BVh9LQR9SxoZNgbBa4SLhS0B5G88D7tY0
 y6zzVn6zVZp38yXs0hxWkZY=
X-Google-Smtp-Source: ABdhPJzduoPzl6qqnC0sKdwQMRl++JTO9gIqK1bXITzDft6XpAaJ5pRosTgHGQ+BZ2EeLgp5iZol+A==
X-Received: by 2002:adf:edc8:: with SMTP id v8mr28901840wro.330.1613562004775; 
 Wed, 17 Feb 2021 03:40:04 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id q140sm3600813wme.0.2021.02.17.03.40.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Feb 2021 03:40:04 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v7 1/6] dt-bindings: clock: add dt binding header for mt7621
 clocks
Date: Wed, 17 Feb 2021 12:39:55 +0100
Message-Id: <20210217114000.19571-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210217114000.19571-1-sergio.paracuellos@gmail.com>
References: <20210217114000.19571-1-sergio.paracuellos@gmail.com>
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
