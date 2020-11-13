Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D102B17D0
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Nov 2020 10:11:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 11B9F2E20D;
	Fri, 13 Nov 2020 09:11:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qCAFd5e2GsUt; Fri, 13 Nov 2020 09:10:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AE8012E1BA;
	Fri, 13 Nov 2020 09:10:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 110921BF9BD
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 09:10:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0D7DB878BE
 for <devel@linuxdriverproject.org>; Fri, 13 Nov 2020 09:10:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YnwCMUVj+uji for <devel@linuxdriverproject.org>;
 Fri, 13 Nov 2020 09:10:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 341AA878BB
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 09:10:52 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id c17so8887958wrc.11
 for <devel@driverdev.osuosl.org>; Fri, 13 Nov 2020 01:10:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H75jGjzD/BZomDbFJbk8FfNvVtCaaCciMBYbMeB6+AM=;
 b=M5EgVrIV0AtpMQUCMFE8iqlyuYOI2V3oJtEIqtc5v4k6iD5bnd3ooimKCdZXGrpjDd
 8fmSF934NVnpLLz0QfzBf5uEKZgWO4rG7jMaMZ5JtKKiPeJ+mJBgiBuXzRSR/4YK8Sl6
 Uuv5OrDXL138pEJ7BgsQvBcW/7676VnlWEFvdV9pfHQ6BwQ+RUOBOXFlnupkmUr7LOUx
 ZYdHnSa26O0SxZPsh/U7T12FlNKoqMFWahuigVhht+oxM0eIuMGn730LcQ1b0g3umcGp
 IUk1JeSFH87E6PZ9DZ0cS90vV8rkGdkld1QUmIZqWFsuaCpM2TKy+hgtma0yioeQ4qHS
 jwog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H75jGjzD/BZomDbFJbk8FfNvVtCaaCciMBYbMeB6+AM=;
 b=razs5P/aS3m0nAQ9hn5oEzjdppP4G3zVQjGcY91SuKJcicsGSUaHR49EoNNxQkluvS
 S7hZ+GALH1R0XrvQ46uYwS6tybsRsyEZFQkUrpsxkRUIc+nqoY+PV9LBzpsrpIbpnwXK
 34utvZ/aVn1y5FkG9Sgt0HV3s1k/IJ4fHaNMaE1Q+XsNFXSZZtdd2JuCrJRKZE48a+yT
 L4iv69/h/GMOlVwLDKZIl4LYLYFMK+t4iRJ4yjvObbcb+VP7jBCcom0oDqZLhu8JL5oa
 2rAcbe1YERks2k056beMv57eSCv1eLLNdmU3LvkiGGpkzJouGRHJtBnyIiPWQw4YUHq6
 OjoQ==
X-Gm-Message-State: AOAM5332U+iw43Lao1o0i7w5yq6Z1Dtqevno3sI/6dpU+0nASK28I9Q5
 pBnOsapKSQijkDxB4N9yFms=
X-Google-Smtp-Source: ABdhPJxdfCnZLQCbochfqxLFDHosrnI4gSXq/GQfmyTVKbbvgXqIA2GE1NbqqXwhShWwx75pAZhXTg==
X-Received: by 2002:adf:f2d2:: with SMTP id d18mr2249428wrp.302.1605258650682; 
 Fri, 13 Nov 2020 01:10:50 -0800 (PST)
Received: from localhost.localdomain
 (245.red-79-158-78.dynamicip.rima-tde.net. [79.158.78.245])
 by smtp.gmail.com with ESMTPSA id 15sm9266183wmg.1.2020.11.13.01.10.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Nov 2020 01:10:50 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: mturquette@baylibre.com
Subject: [PATCH v2 1/5] dt-bindings: clock: add dt binding header for mt7621
 clocks
Date: Fri, 13 Nov 2020 10:10:42 +0100
Message-Id: <20201113091046.30964-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201113091046.30964-1-sergio.paracuellos@gmail.com>
References: <20201113091046.30964-1-sergio.paracuellos@gmail.com>
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
