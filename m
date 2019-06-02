Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 107C532513
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Jun 2019 23:44:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9AC6186225;
	Sun,  2 Jun 2019 21:44:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eGBD4VUpz2Wb; Sun,  2 Jun 2019 21:44:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 175DA85CC7;
	Sun,  2 Jun 2019 21:44:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C3C141BF4D5
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 21:44:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B5A53859AA
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 21:44:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id frdAWEnDLvfS for <devel@linuxdriverproject.org>;
 Sun,  2 Jun 2019 21:44:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C2AD58536C
 for <devel@driverdev.osuosl.org>; Sun,  2 Jun 2019 21:44:40 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id y198so1500906lfa.1
 for <devel@driverdev.osuosl.org>; Sun, 02 Jun 2019 14:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RAvWzRmI3ATy0YIjicB8IsfAo/qyadtg5+mzRUz93eI=;
 b=EagNt2hBDCd5AycfRYX3JxLV75oOBD0xhzNHS+0joAwPYhfHQfZlz1JeqVKtseGLQX
 v6MXzeiQgozkp0oPnfkyOsK0CwZlSuAV0z9UEmMDiH2QvTnfd8aqgD9PygNvxN10tSot
 ybJiyobwkhwR4aAug2uyfnMQcj2a0+gCUaJLmYPxqJFyzD4JiX3GxiG5CKpVvHWDbPC8
 XbJZdQOr08yy8dsglkctybiJEQcJtVAJoIZt8WqM2h1euvTbOX0annWjLQaL3cqaBxnB
 QdeO3mxDcz0cq9mVSTgbzDaNqjxhMwnqC3hXzdLwWWWiV+xKBjdIj4D4Apf3sHObNxRd
 +X5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RAvWzRmI3ATy0YIjicB8IsfAo/qyadtg5+mzRUz93eI=;
 b=jxb+4BH9fVxzn2g/unYpNN6y1vJhapwlLQAchjOQtlSlwnk0Lr3D0Hjb3dAhm8FIxq
 gjhLH+liazQSIHjDfQwmisrdv/ZoNA3LEAah6fZXS0jXiPqN2+9pT9EWDEn7TSHVQxmj
 41jC7drVO2wL4DWY63wR7iS7cldPsC++xwnTjLegSrQuGJZniXHrc8PxAw/cmApWxfY1
 JyTNrD9a+HAwD3UqmbS3yj5Lr4lYe8TA2QVAQJceprDOUajPQwSEWu4sQGWaBBTQmol8
 Qv7Tor/yokl9yoK0HZ0JW0Z6LRZlRAc4F+mOTvG3ppzDGGXaZmcAWaxH9Lrhgk7g/QYk
 WOYg==
X-Gm-Message-State: APjAAAXIOFGEJL9viJSevrx3dUdzsgEz0mBmPppiGlFS9/BZ1C1QpYjC
 UffHlr7buhQI/DaMppIkK+8=
X-Google-Smtp-Source: APXvYqwVURBfRmTEbtFUio49iwWSumnN/lwOcLQ3vllsTSPty3UieZP3qePS3npckEpNH7djaR4w7g==
X-Received: by 2002:ac2:5ec6:: with SMTP id d6mr12817520lfq.131.1559511879215; 
 Sun, 02 Jun 2019 14:44:39 -0700 (PDT)
Received: from localhost.localdomain ([94.29.35.141])
 by smtp.gmail.com with ESMTPSA id g22sm2803653lje.43.2019.06.02.14.44.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 14:44:38 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v1] ARM: tegra: Enable Tegra VDE driver in tegra_defconfig
Date: Mon,  3 Jun 2019 00:37:07 +0300
Message-Id: <20190602213712.26857-3-digetx@gmail.com>
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
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
