Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0294932514
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Jun 2019 23:44:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EE5A2214EB;
	Sun,  2 Jun 2019 21:44:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cREbf9i1Yfx3; Sun,  2 Jun 2019 21:44:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 25A082079C;
	Sun,  2 Jun 2019 21:44:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B852D1BF4D5
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 21:44:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B50A52050E
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 21:44:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SrRKY4d9qr9T for <devel@linuxdriverproject.org>;
 Sun,  2 Jun 2019 21:44:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id B328C20502
 for <devel@driverdev.osuosl.org>; Sun,  2 Jun 2019 21:44:42 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id 131so1760877ljf.4
 for <devel@driverdev.osuosl.org>; Sun, 02 Jun 2019 14:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NPHUAZZIdahQ/rcokwzfDEN4AgIFxox/+5UQQJnBiAA=;
 b=DYQU0i5vx96+vx/RM/i5VKGnJ/ksBoBWuGULPg39/P89lS2avRvim/zuXoyzfjcwHm
 gzayjijDAuflnojX3XHUFmGKXeC64ZeLEpOMcsi81/tlzBXC6t/7KwxffWEaKFUOAMOn
 06PJmjgmugDftQCUflHvESEgQgTpfrrGdJB8ysTiDaasazSBKrvaDfmm339APW14TzmL
 BVYy7zwry5S631Ny51G+ZJzL2GAEXW8z2gpXWYsVsb6T7Wkvow+vUpEBWyTYQ2qRE1KQ
 a0IyqzGe/EA28qE6ADrtzFRBIEUar2AkFF9GCmDKvx9sJcR55I2XAY5YquzcsUiveB9z
 XnUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NPHUAZZIdahQ/rcokwzfDEN4AgIFxox/+5UQQJnBiAA=;
 b=NInIZ0KxGE2FnG+aQNicxXiTpGHaJOemgvueRYSTsXX2inIhh6GVmXa3ZTcCdGcixx
 3G+gdXwK7O+nJjP0xoCeRH9osi1qu8JzVYYWxxhrzoNj9yLXRxA7rHkjsoJZrmtoEXYU
 QrOQsDQneu7nBjYCtEdxv7HP4OITgulJ0apBApKQomTQGmsdaOi1YbcA3q4A225iW6pe
 Y88vdrMYoceSL0iBmAx7kBaoKK2OgEQiE8ZtzUd41/qZjuZMnBhY5Anw6gyubcaFky7e
 rgbcGZ4gxaCoCkw8pugh0gZlBAlA65LDRbdmtbuOhW+7RScFJL1Z0b4nteRgY+FeM+D0
 +7wA==
X-Gm-Message-State: APjAAAXC6tCzC5gY/0mR1eZ7Eerqtfwa1O15/LuaO/u1d2kKAjUdavUw
 DE7dKzqWRoLrn4HYBvBdk+c=
X-Google-Smtp-Source: APXvYqzBK6bljogfBYdpYcKn3VWUQ2+By56df1hY7cqOQLgGiV0o9yL26EPdnZBLerrtdds/a482TQ==
X-Received: by 2002:a2e:7216:: with SMTP id n22mr12360907ljc.42.1559511880831; 
 Sun, 02 Jun 2019 14:44:40 -0700 (PDT)
Received: from localhost.localdomain ([94.29.35.141])
 by smtp.gmail.com with ESMTPSA id g22sm2803653lje.43.2019.06.02.14.44.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 14:44:39 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v1] media: dt: bindings: tegra-vde: Document new optional
 IOMMU property
Date: Mon,  3 Jun 2019 00:37:08 +0300
Message-Id: <20190602213712.26857-4-digetx@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190602213712.26857-1-digetx@gmail.com>
References: <20190602213712.26857-1-digetx@gmail.com>
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

All NVIDIA Tegra SoC generations provide IOMMU support for the video
decoder engine. Document new optional device-tree property that connects
VDE with the IOMMU provider.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 Documentation/devicetree/bindings/media/nvidia,tegra-vde.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/nvidia,tegra-vde.txt b/Documentation/devicetree/bindings/media/nvidia,tegra-vde.txt
index 7302e949e662..602169b8aa19 100644
--- a/Documentation/devicetree/bindings/media/nvidia,tegra-vde.txt
+++ b/Documentation/devicetree/bindings/media/nvidia,tegra-vde.txt
@@ -35,6 +35,7 @@ Optional properties:
 - resets : Must contain an entry for each entry in reset-names.
 - reset-names : Must include the following entries:
   - mc
+- iommus: Must contain phandle to the IOMMU device node.
 
 Example:
 
@@ -59,4 +60,5 @@ video-codec@6001a000 {
 	clocks = <&tegra_car TEGRA20_CLK_VDE>;
 	reset-names = "vde", "mc";
 	resets = <&tegra_car 61>, <&mc TEGRA20_MC_RESET_VDE>;
+	iommus = <&mc TEGRA_SWGROUP_VDE>;
 };
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
