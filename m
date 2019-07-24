Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF71072481
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2019 04:24:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DC64A20444;
	Wed, 24 Jul 2019 02:24:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PehMiBRK-Rmx; Wed, 24 Jul 2019 02:24:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3E85720512;
	Wed, 24 Jul 2019 02:24:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4085C1BF3BA
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 02:24:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3DC8F836F1
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 02:24:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id flkjKNf6Hatt for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2019 02:24:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D88B881CA3
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 02:24:33 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id f5so11541964pgu.5
 for <devel@driverdev.osuosl.org>; Tue, 23 Jul 2019 19:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ktwyRH04D76vd8HxrkIYTpUvu2EyjgpW6mXsZO8aRqs=;
 b=bXj86qDwVlxcmEZwkTYO1ID3R5d/RfMpUIEFYaqTHs+QcN7ueOzN6trv1JqWDZ+wdN
 BJzUyK9DQixKWxcXT+9wQoMP6w/mAl5I5mSh3YWlNzNM/MgP0C8s79Tua2vnO7rjDuwp
 zajOQtKUQJb3Q8OgsrO20+UYaQ39fat8dE5h0xQ5Y12Z9U+Exa2ahKbM1ZllnZIjTvO6
 cKJ8IorxZIdSa6SlK9R/v6tqCZ5MF5RvZ0Gqwrda88bG285jZE/JKf/awv2yv03M1PMo
 H6cHJP671chHA4R1eYcYAxa+EA9ipAXzFDkFYoXimnfNzo+hmmRXs3foDqGhjEvbFOAw
 H9ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ktwyRH04D76vd8HxrkIYTpUvu2EyjgpW6mXsZO8aRqs=;
 b=aAFLhfSAe8u3uFd7+4RzlrqubeQqF66mRHV5iwVyGCw969w0JvdgJGUqwkEHeXxscI
 BAA7nQ7REDXRUGcmsSugu0Py8GNAGjJCtCq4ZEae7b26GwrsSrVA0keAVWGajRfeZ0Xp
 YyCGAilNRJ6AUO+e5bLYu+Yv1z96J6lF1XHpgVzverPF56GBs1F9qc0c8+ClG+MHjk+g
 voQa2RVPfaSuniy8iU6dxsmcGVOOoTe/ZDrzi7SRDFmn7te89rUHQ5bLpzMK8kv9z0qh
 DVZQpTXFseFo+IdWkkf3FCrJwfk7ugo0jjsFXa7YVyB1+5l0ALeQsI42GmaHBLzOnQNt
 Ix9w==
X-Gm-Message-State: APjAAAWJDRrCDDynQlu5Gg6gyPEfTCaROM2bV1ApoLKvA4eL7tZCrTiY
 MI7/kLyXXPS159xupPr2pjQ=
X-Google-Smtp-Source: APXvYqxLSQOIANvqYjlgJb9DQr5bEktP8PDOAkWZF4jXqbyizFuCcfn+MRUYzoYSiBURF6hiZ0XUTw==
X-Received: by 2002:a17:90a:c391:: with SMTP id
 h17mr85850435pjt.131.1563935073533; 
 Tue, 23 Jul 2019 19:24:33 -0700 (PDT)
Received: from guoguo-omen-lan.lan ([107.151.139.128])
 by smtp.gmail.com with ESMTPSA id s185sm63468029pgs.67.2019.07.23.19.24.29
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 19:24:33 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list),
 linux-mips@vger.kernel.org (open list:MIPS),
 devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
Subject: [PATCH v2 4/6] dt: bindings: add mt7621-pll dt binding documentation
Date: Wed, 24 Jul 2019 10:23:08 +0800
Message-Id: <20190724022310.28010-5-gch981213@gmail.com>
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
 NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit adds device tree binding documentation for MT7621
PLL controller.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---

Change since v1:
drop useless syscon in compatible string

 .../bindings/clock/mediatek,mt7621-pll.txt     | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.txt

diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.txt b/Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.txt
new file mode 100644
index 000000000000..7dcfbd5283e3
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/mediatek,mt7621-pll.txt
@@ -0,0 +1,18 @@
+Binding for Mediatek MT7621 PLL controller
+
+The PLL controller provides the 2 main clocks of the SoC: CPU and BUS.
+
+Required Properties:
+- compatible: has to be "mediatek,mt7621-pll"
+- #clock-cells: has to be one
+
+Optional properties:
+- clock-output-names: should be "cpu", "bus"
+
+Example:
+	pll {
+		compatible = "mediatek,mt7621-pll";
+
+		#clock-cells = <1>;
+		clock-output-names = "cpu", "bus";
+	};
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
