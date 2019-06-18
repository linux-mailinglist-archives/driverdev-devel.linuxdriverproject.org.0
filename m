Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 708E24A66C
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 18:16:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0F95A864B2;
	Tue, 18 Jun 2019 16:16:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j-4eUXRbG6DC; Tue, 18 Jun 2019 16:16:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A2E5F84E68;
	Tue, 18 Jun 2019 16:16:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA0AF1BF83C
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 16:16:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C54F885142
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 16:16:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Df2AvPUWbev for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 16:16:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 08AC585091
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 16:16:33 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id y13so9737939lfh.9
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 09:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6bCoUgdAjlieVdbURwPlYalmssR6MihNiC0B3+iRako=;
 b=PVwfTRABktYrQbA1EEWkz8UDWUkcYXqwJga1n/jSb+4/WAf3CKHIRkXaapjBceHLDX
 WHW8JUggG3JkzoxjU/xg1TnACf4SQRFgTUzhtM1n/YkGcuCrGQhKlwRIMjNoFphkiI4+
 X8bizwvX99TJbRXQ6CTOs2b1NwUmp8PJRbLYae7KtOM7+nfnumzKlJBgazOw2SAG7AeP
 vv05qVHZeFiWy8abRcsTu/tPYiFqcn4pXdvj1Xc4ERSgAmZqw3I1qE4ZLI7rvpjDkZaq
 DS2OewG6fRMNrP/LosGNRXQf0QYyQrG4/mnQnIdsaVMwkbVYfpuIGU4eGBalQIBHkP1O
 3z/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6bCoUgdAjlieVdbURwPlYalmssR6MihNiC0B3+iRako=;
 b=P2+2C816Q94AdGXabc62D1KrZ18VcILdl/WRPAURtOQJ1222dr+qNR16jOF/Mf/CpI
 oDi3lb3Y8w7jfy0v9hkSHHK2AOwumG3okdsUkUkKGHo/VZPHdhtmpY7pKVxt6vLPOjvM
 6UmMKFv9S2hosJHzeAkRgkeelVdY6HIFx1GIUBVu0uYLWRX+CfJg7/jWrjJ0EuyNGO2U
 tPkiMlgSoyjzfdjcW9inQr5gEnHXDJcwiVCr9fzCxdj+mqvAnE0Fq730nY+IC0dumd8G
 S4hsbd7cC6AuZ5od3P75jRxb7q+YBRpHlHzyuyHVhnvaU/suXA3M19mVDLbhK10F212d
 q7PQ==
X-Gm-Message-State: APjAAAU2dlFG7TDC6mTKl+/YBjHsNftRk/GnTXCcmmBhxKR52rljr0ay
 G/6/DV0dP6gmog9rZYED4i8=
X-Google-Smtp-Source: APXvYqxdrOPiY8cM1U1jT9ylZcRc2fxV0JtT47I+Bw9ekNdiHVK2JQhCwg+fUJP7N9HF5oa+S4eUkQ==
X-Received: by 2002:a19:488e:: with SMTP id
 v136mr57485272lfa.192.1560874590847; 
 Tue, 18 Jun 2019 09:16:30 -0700 (PDT)
Received: from localhost.localdomain (ppp91-79-162-197.pppoe.mtu-net.ru.
 [91.79.162.197])
 by smtp.gmail.com with ESMTPSA id v15sm2273295lfd.53.2019.06.18.09.16.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 09:16:30 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2] ARM: tegra: Enable Tegra VDE driver in tegra_defconfig
Date: Tue, 18 Jun 2019 19:14:53 +0300
Message-Id: <20190618161458.20499-3-digetx@gmail.com>
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

The video decoder driver was tested by time and works absolutely fine.
The reason why it is in staging is because it doesn't provide common V4L
interface yet, this shouldn't stop driver enabling in the defconfig since
our userspace (libvdpau-tegra) provides combined acceleration of decoding
and displaying without use of V4L.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 arch/arm/configs/tegra_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/tegra_defconfig b/arch/arm/configs/tegra_defconfig
index 8f5c6a5b444c..a27592d3b1fa 100644
--- a/arch/arm/configs/tegra_defconfig
+++ b/arch/arm/configs/tegra_defconfig
@@ -250,6 +250,8 @@ CONFIG_KEYBOARD_NVEC=y
 CONFIG_SERIO_NVEC_PS2=y
 CONFIG_NVEC_POWER=y
 CONFIG_NVEC_PAZ00=y
+CONFIG_STAGING_MEDIA=y
+CONFIG_TEGRA_VDE=y
 CONFIG_TEGRA_IOMMU_GART=y
 CONFIG_TEGRA_IOMMU_SMMU=y
 CONFIG_ARCH_TEGRA_2x_SOC=y
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
