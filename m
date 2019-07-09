Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCF663AD7
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 20:22:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0726287B9B;
	Tue,  9 Jul 2019 18:22:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5PoF8atbMkeL; Tue,  9 Jul 2019 18:22:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 70C7E87B6A;
	Tue,  9 Jul 2019 18:22:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B4BB61BF4D8
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 18:22:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B1C9485E08
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 18:22:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id myG4EODUf28F for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 18:22:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6ED1D85E07
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 18:22:50 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id i2so10526507plt.1
 for <devel@driverdev.osuosl.org>; Tue, 09 Jul 2019 11:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=14941MCmJea/f9nxksHUctUhT5FKLU9Frn5jof0WtuE=;
 b=gW0wqqvyJ4Z2qq0g7t5KKKxsz5V/WKxx7dpvKM6qK/ERdWssQW4tFHYDQ+stV3w7P8
 9SYfO4PVdHXhPcWe8w+0ApFXRcmBuPs4s4qOv4HwtRYjC4sDt/3xbkW2xeROdxSDqVpp
 vZ4f9clunnn6X3lPL31hO3X8sBb9LJqInHb+xLBrM76SvI0jK5zmtU9s/T3D0JFqQN4a
 M5kRmuAai0rSsvSsFWqp2GveygZr6k9aydXQNKa+dwlyYBccPjmq2bPftzwbR7isMmKO
 7+eJtBiuOkhu7iPk3AShADa2bkFAFALllHAUF1Mug77rOFBCjQF0BaK2SGRYBCM2N+Uo
 3byQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=14941MCmJea/f9nxksHUctUhT5FKLU9Frn5jof0WtuE=;
 b=EhYSaO1N6y/aGqUajO1DF+c8AWGcYUeMbZZ94qDet8fVL/97CFD7N3Lwr8GHugAKAm
 CjOB81IoAEJxJRvPRavO5h1Vjp/6t2OKDTgGQbyu/SE9Ks8OQwS+fDPl71s3egNsgsEg
 8ZPP/G5gYXvVqPCrNI6ej19eMa24lYzkpsb9/deZkpdj1olhLPJsDhz8oFO/gcHsmH7G
 yQ2RBuT2cuL1It8GsXa0K8mauvJm//vBBXzlxerAz7lUor9czLRV+nNZWQM1vDrznKDo
 NrMFdorhkcMq1Ol9gsTdY/zRZO/C3uS8pG2M9IjCoyUVYz4f/lgk2P237cw3uegi+QOr
 vTzA==
X-Gm-Message-State: APjAAAWFgmGRsC94Dsms0jEw6PYEz/nNOcDArhBXs41SNiezvGvR9nuY
 EOWaBX5jZ3g6K2A2lqtzlpM=
X-Google-Smtp-Source: APXvYqzKj+Fqdp7qcv2pHkOixbAbKJ1ai7LV4ypDO5bRjcwYN89jpWEd4xaWf7wm4WdR3kzF7gzuWQ==
X-Received: by 2002:a17:902:a40c:: with SMTP id
 p12mr33838928plq.146.1562696570189; 
 Tue, 09 Jul 2019 11:22:50 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:7001:2668:5400:1ff:fe62:2bbd])
 by smtp.gmail.com with ESMTPSA id m69sm21008639pga.11.2019.07.09.11.22.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 11:22:49 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list),
 linux-mips@vger.kernel.org (open list:MIPS),
 devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
Subject: [PATCH 5/5] staging: mt7621-dts: fix register range of memc node in
 mt7621.dtsi
Date: Wed, 10 Jul 2019 02:20:18 +0800
Message-Id: <20190709182018.23193-6-gch981213@gmail.com>
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
 NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The memc node from mt7621.dtsi has incorrect register resource.
Fix it according to the programming guide.

Signed-off-by: Weijie Gao <hackpascal@gmail.com>
Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 drivers/staging/mt7621-dts/mt7621.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index 12717f570ceb..ac9189276590 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -138,7 +138,7 @@
 
 		memc: memc@5000 {
 			compatible = "mtk,mt7621-memc";
-			reg = <0x300 0x100>;
+			reg = <0x5000 0x1000>;
 		};
 
 		cpc: cpc@1fbf0000 {
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
