Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F8D4A66D
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 18:16:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 53854204D2;
	Tue, 18 Jun 2019 16:16:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id niIko-lu0BXO; Tue, 18 Jun 2019 16:16:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B7364204D4;
	Tue, 18 Jun 2019 16:16:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 779E41BF83C
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 16:16:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1020F8637A
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 16:16:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CEyUa0r6SP2t for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 16:16:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A8548854C0
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 16:16:33 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id i21so164927ljj.3
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 09:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fiDbgWSuMaVMjc324RSS41lxTRe5uMme7Lnt8EdVzLs=;
 b=OqbFvTiP3qFRvTdrI+qWbkQB4HGZushXrOtI04RqNu3nkaUX/ziogPybWa/uaQ6jnx
 hzGLSK4FI809qkO3bu+Kl48b5Cupwda0ypWaGgmsBoSitfD0pKKe435TiaXsj5zxg14Y
 vAikyUoeop3BStqr4gB5HJ2MpYWZ3gYZuPF/66I3Fs1nsdR3EBqGxMmpqcDuXcRfjO+1
 b6TfFHqrmwBY5cnBh7xajMzhZ6/lsQ7vb8BiB4IbqsQAIF5yhabKLr6v/nPLfMZML80e
 hOI2nXeidbP+PiB+gZVk47PtuAEzSOMz4sk3to3btLHN+CEpbIlOzGMkctS7Umm79am0
 6DYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fiDbgWSuMaVMjc324RSS41lxTRe5uMme7Lnt8EdVzLs=;
 b=FYKLV35Y86b1cwAhl9KrWirfk8Yr9yk52YSqI8fut/2Sq7PIvI8qgBBuD3xp48IvJr
 vZ/L0+oCMacaLf0unCeklCAjLgGLKAkMGEn95OoZtKg00q3foTp6DNLgvsMHm4YogQQQ
 PhNx4Szs9hxuP/PU0dOv3Bqxl7cvqmbh12nPlPedyhnlLvT1dhGKPRfdklNxQtrxPG2A
 fN3V/ROJvCYdzgftH+2hHMHxqUINn4KLPGy/sxS/L/jRVUaK6Ethno/qqrdE2aMtFQk5
 uaRKbQdru/bl2XoZ8EGYj8jYx/Zyqw+COFfIsW3gcnIpNaMt7/YQTe/+RcLC/ehxFUDW
 D91A==
X-Gm-Message-State: APjAAAXoIWcSNGxMD+moJc5Fu1jUjpho3P8AF5/liFoqFxszDJfDhuBS
 Vs12bzGvH+kVcRkVRisH9Hw=
X-Google-Smtp-Source: APXvYqz1g5qDjpXCaRuXHc43SAtsUCYLwQipqckqG2izu5e3CqXn9H0HQ88Sl5Ka3eu0crkgsNXsAA==
X-Received: by 2002:a2e:9b48:: with SMTP id o8mr16355885ljj.122.1560874592102; 
 Tue, 18 Jun 2019 09:16:32 -0700 (PDT)
Received: from localhost.localdomain (ppp91-79-162-197.pppoe.mtu-net.ru.
 [91.79.162.197])
 by smtp.gmail.com with ESMTPSA id v15sm2273295lfd.53.2019.06.18.09.16.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 09:16:31 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2] media: dt: bindings: tegra-vde: Document new optional
 IOMMU property
Date: Tue, 18 Jun 2019 19:14:54 +0300
Message-Id: <20190618161458.20499-4-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190618161458.20499-1-digetx@gmail.com>
References: <20190618161458.20499-1-digetx@gmail.com>
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
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
