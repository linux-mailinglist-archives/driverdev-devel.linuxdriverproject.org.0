Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F7763ACA
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 20:22:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A51C85E2B;
	Tue,  9 Jul 2019 18:22:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mhl9MxuTGptP; Tue,  9 Jul 2019 18:22:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F188D85E1A;
	Tue,  9 Jul 2019 18:22:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 80E5B1BF4D8
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 18:22:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7B3CA22011
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 18:22:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Hauf4WC7-fR for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 18:22:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 7747922005
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 18:22:06 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id az7so3050902plb.5
 for <devel@driverdev.osuosl.org>; Tue, 09 Jul 2019 11:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ak4mzSvdCfIFRyuGPxe/qi9F59UZumKoJWlYz5x99d4=;
 b=bVwNMuizuvDgv2KPg7ltY+o20vUNid+RnTHfmiKZZUzNowuOpFARNPxvE8bNHXayHY
 pUv8u2BllrEXCroFgW5CoVNdW6JTSkpe5kVT/gwkRIJO6AERV6GL/PkBPVLYxe+TBkRq
 lsy2gWFnhr7DBvz/wipzWRwTDaZK3h5J0lFGxk04aORXv0kPqJvH8B+Mb7YpqhgF//pD
 0CcrRRapAI6CW31SBtaXEO1ZPDxrKuQvsioJhd4H9tRk4IG5lPeC98/VyRXbV9KBATHC
 WsIf3dGLhXEt7Pj4NEVy6pmLnmr9r7xkJfeYnguBH5nA/L9DGAMjztKPBxUSRIpjFKnW
 V+Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ak4mzSvdCfIFRyuGPxe/qi9F59UZumKoJWlYz5x99d4=;
 b=PNyKCVWicYUh08hSVKvR2A/xrnBZRFVOZXNgqB/0lT2DdLGy1w0I54XM0BE2a1/A0M
 FX8O7j2ikT3vUipMdUGX/8+qDOjrrc9ExSKXc35UUyRQGB83wHA6tnABfUAs9JmTsLXs
 UlafOSYlFgj2wqv8uwrRR96GPytb3Ks49kW7mbtV8Dv2ZXnE3GMgRbD/SbJjxwIEKg46
 rwWC3uPjxj0B8bIo5xB+ItmeTyMBQOXEFswChY9V8opwpI9qV7ck1dFzaGsIZsNZpTIJ
 zh9Q+byx5VyBlYL+3udIOxjQi8il6tOlPleQa8WO3JwWTOvaXoMzsY6Y9kj9gJ3RLQLo
 cDXQ==
X-Gm-Message-State: APjAAAV4faD7HWCMz8myeCfESRpiuAx/n8ZmgldPQw2v0cCJU22kKSud
 lYk/5CpwYm+oUP2twK7qmRI=
X-Google-Smtp-Source: APXvYqwFwa+aooo4ZK2UYKcp8xR3hrxBNFAO5s5Q79PSnO0tyhUxtWOG8e7TC/CKqZP+Y5yP4JlozQ==
X-Received: by 2002:a17:902:b702:: with SMTP id
 d2mr33420940pls.259.1562696526193; 
 Tue, 09 Jul 2019 11:22:06 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:7001:2668:5400:1ff:fe62:2bbd])
 by smtp.gmail.com with ESMTPSA id m69sm21008639pga.11.2019.07.09.11.21.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 11:22:05 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list),
 linux-mips@vger.kernel.org (open list:MIPS),
 devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
Subject: [PATCH 1/5] MIPS: ralink: add dt binding header for mt7621-pll
Date: Wed, 10 Jul 2019 02:20:14 +0800
Message-Id: <20190709182018.23193-2-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190709182018.23193-1-gch981213@gmail.com>
References: <20190709182018.23193-1-gch981213@gmail.com>
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
Cc: Mark Rutland <mark.rutland@arm.com>, Weijie Gao <hackpascal@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <sboyd@kernel.org>, James Hogan <jhogan@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Rob Herring <robh+dt@kernel.org>, John Crispin <john@phrozen.org>,
 NeilBrown <neil@brown.name>, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch adds dt binding header for mediatek,mt7621-pll

Signed-off-by: Weijie Gao <hackpascal@gmail.com>
Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 include/dt-bindings/clock/mt7621-clk.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 include/dt-bindings/clock/mt7621-clk.h

diff --git a/include/dt-bindings/clock/mt7621-clk.h b/include/dt-bindings/clock/mt7621-clk.h
new file mode 100644
index 000000000000..a29e14ee2efe
--- /dev/null
+++ b/include/dt-bindings/clock/mt7621-clk.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2018 Weijie Gao <hackpascal@gmail.com>
+ */
+
+#ifndef __DT_BINDINGS_MT7621_CLK_H
+#define __DT_BINDINGS_MT7621_CLK_H
+
+#define MT7621_CLK_CPU		0
+#define MT7621_CLK_BUS		1
+
+#define MT7621_CLK_MAX		2
+
+#endif /* __DT_BINDINGS_MT7621_CLK_H */
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
