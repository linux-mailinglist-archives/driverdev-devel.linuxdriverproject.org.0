Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4673972472
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2019 04:24:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B8F99864A0;
	Wed, 24 Jul 2019 02:24:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CUWoB4z7sUxS; Wed, 24 Jul 2019 02:24:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5CD8E81AEE;
	Wed, 24 Jul 2019 02:24:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4D1371BF3BA
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 02:24:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 46CDC85CD8
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 02:24:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gVKXiMc3xmxx for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2019 02:24:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E899C85D40
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 02:24:18 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id 4so14363966pld.10
 for <devel@driverdev.osuosl.org>; Tue, 23 Jul 2019 19:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZnbumCREj6sZK3wsFFVAfbJwjr1IchFH+4M4kBo6km8=;
 b=g3Nes+Y9kIKm0x4z3mRtQqmfZa4BMECs4BxTq6WGlCxFGhlbYPtwIP+Uq1iQBA6y9H
 Jvvap5cSjhxQI+xsu5KrRaiotz+CEaY4X7cSogiuiHVVn0AGazbVqrZoom+vLiqCqd71
 hPNlWaUDrJkRpe4ITTufGsWZSBr2THIX3ecUVm7FvfGvERvTG6FLS80rNQ4qNKYJg1ir
 fsJ4/Gj5fOz91y8trrvrHuaRMX+q59sKT6yOUykTkfuAJMmQrqfJ7HwLw0rKEUKo8Hb8
 ko/tdMsdF0h5bHPW1Vfr/ATrzx/OKyCE3Kp6VGXnvaldFnwv0y0jP8rqQVWLnqSjGOdf
 EzNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZnbumCREj6sZK3wsFFVAfbJwjr1IchFH+4M4kBo6km8=;
 b=jxgYgKSwYBHrTbr9qdQCeO2xYYwKs3zNnzvLnGeyuvC4QkPd1klAHj34F0wh3S+j9i
 LdMQ52cONqen+nnbUFKsrD65mOq2uwNvzbzFCapoPQ2SYZ2EMQgCKriQv2cUBypm3r7u
 QQvyaXBKSLOUbWRKmfaWxPSnDyyyHChuodCcpDIx++2TaV7K9ozH1TJsXg6+/x5nrZAl
 bYcrCvlJbxqol+et/rcPOUx3LsrRp40L9br7gH1O0cyEu3LbHz4ewT0iYPePupR4tpEj
 ax5CXHEWZbjPBQkxWbZOu81y6W30ae2bDzv6M/AKdKxfiu5KTArS4La1E25v51QG/cnF
 xFMw==
X-Gm-Message-State: APjAAAUDRayJ8UFCnxQJ2hkPeUlgeLvC/Qxu3/hdA6y/pmibW69JKygU
 eVvIlfVmE9LcWYFnpNngATo=
X-Google-Smtp-Source: APXvYqyPIf+xjqNW9Oiwp312pSP+M75l49IWHS96NTEDKDy6wqOdQnNpLhmQiqtfoskbTvOJ2ajxUg==
X-Received: by 2002:a17:902:2865:: with SMTP id
 e92mr44040013plb.264.1563935058635; 
 Tue, 23 Jul 2019 19:24:18 -0700 (PDT)
Received: from guoguo-omen-lan.lan ([107.151.139.128])
 by smtp.gmail.com with ESMTPSA id s185sm63468029pgs.67.2019.07.23.19.24.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 19:24:18 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list),
 linux-mips@vger.kernel.org (open list:MIPS),
 devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
Subject: [PATCH v2 1/6] dt-bindings: clock: add dt binding header for
 mt7621-pll
Date: Wed, 24 Jul 2019 10:23:05 +0800
Message-Id: <20190724022310.28010-2-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190724022310.28010-1-gch981213@gmail.com>
References: <20190724022310.28010-1-gch981213@gmail.com>
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
Change since v1:
Change commit title prefix.

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
