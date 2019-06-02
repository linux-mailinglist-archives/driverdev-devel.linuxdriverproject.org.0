Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6DE32512
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Jun 2019 23:44:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC99285B3C;
	Sun,  2 Jun 2019 21:44:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RTiOye57diCQ; Sun,  2 Jun 2019 21:44:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E7B9859CD;
	Sun,  2 Jun 2019 21:44:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9C5811BF4D5
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 21:44:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 986198598A
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 21:44:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PEojXIitmaLy for <devel@linuxdriverproject.org>;
 Sun,  2 Jun 2019 21:44:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D4BA68536C
 for <devel@driverdev.osuosl.org>; Sun,  2 Jun 2019 21:44:39 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id r15so11966956lfm.11
 for <devel@driverdev.osuosl.org>; Sun, 02 Jun 2019 14:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=v8z6rRyWnHKBHTgKVhKWAyQ8XR13rNpWMzD0eUYSFO0=;
 b=OiCbszUXlmN6Tzhfkv1LwVF4TPTvleSZ7mCi1x0wtGf1dtlipNsDfa/d+e9QrykZ9N
 EbF/ejBx8pnOX4KBCQx9LTlTAydPScDE/BgumKbk1MQOprn9D+Vi68Ab+ardIySV+UVr
 BjRR+s+vVfb6tzIlhxKO9v15ZtETWhSpL0KQ63+bvz3Ga3hutTBPcrM8IdW5nMZvnDgB
 +o6STAuD+ofam0vnf5Y0maIyX7DufRTl32/mXfHJJwSCO0CNJaj18RTPeuEIx8Y2UVc6
 OmBkylgIf8G3FP6LLTGtVR+MLjj+TCHRvC1DRLGkTOcuQ7bQ7aKs6908zUPZctpekNDo
 B7kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=v8z6rRyWnHKBHTgKVhKWAyQ8XR13rNpWMzD0eUYSFO0=;
 b=l0PUdZASPvOnVcBRUoO9jcl+S+vzg5elaLH2BvwBSe+WMhJCmuwPtEPpTb4M7LwV+6
 3dV5g5A8T6VX/x83fMDKh5Lr+R/J2MHhvTrWYxOPSDKvFPasa5+75WlOXdNzwjGN56El
 Fg3n35A8Pk25FT5Zq2A/rBdYte3KdPKfVmQJVvQA2T23WPzfXOyDi7DJFkct7Tpu6KNL
 HpqDZNm0vSGfuylNfy6O2kV9K5N/4A8DVolxT24R6QTLrAJv4LgJCCjU+u43m59XP1qA
 vMTlVtRnM51mS39tH9dYP9qIwd3vdDEr7nphqR2S0IV/5+q/DEVTtrwKs9e0lHW3cRKh
 wPvA==
X-Gm-Message-State: APjAAAVzaAwleFBvkzkqD/AK0/FeA5Rlrweqt39rLp80kdKct1r+zRiq
 wxdDMjVtnzWSjIuJsg6hRlA=
X-Google-Smtp-Source: APXvYqzyORzjm83J0I4MlzrRe1oyXZ2OeIj8QffTLOl0ldVu/NN8oUgdlQ840HpNzpsQXplba0WRaA==
X-Received: by 2002:ac2:43b7:: with SMTP id t23mr11501647lfl.110.1559511878164; 
 Sun, 02 Jun 2019 14:44:38 -0700 (PDT)
Received: from localhost.localdomain ([94.29.35.141])
 by smtp.gmail.com with ESMTPSA id g22sm2803653lje.43.2019.06.02.14.44.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 14:44:37 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v1] ARM: dts: tegra30: Connect SMMU with Video Decoder Engine
Date: Mon,  3 Jun 2019 00:37:06 +0300
Message-Id: <20190602213712.26857-2-digetx@gmail.com>
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

Enable IOMMU support for the video decoder.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 arch/arm/boot/dts/tegra30.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/tegra30.dtsi b/arch/arm/boot/dts/tegra30.dtsi
index 934caa83c8db..ce162125e7bf 100644
--- a/arch/arm/boot/dts/tegra30.dtsi
+++ b/arch/arm/boot/dts/tegra30.dtsi
@@ -424,6 +424,7 @@
 		clocks = <&tegra_car TEGRA30_CLK_VDE>;
 		reset-names = "vde", "mc";
 		resets = <&tegra_car 61>, <&mc TEGRA30_MC_RESET_VDE>;
+		iommus = <&mc TEGRA_SWGROUP_VDE>;
 	};
 
 	apbmisc@70000800 {
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
