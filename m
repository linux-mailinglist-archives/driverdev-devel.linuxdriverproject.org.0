Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F02B92A71FA
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 00:45:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AEDE885552;
	Wed,  4 Nov 2020 23:45:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ORBV5CH3qyB7; Wed,  4 Nov 2020 23:45:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8535D854AF;
	Wed,  4 Nov 2020 23:45:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 67B2A1BF2B7
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 630D02041E
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ncKSTbID6+3i for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 23:45:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 8C9042048E
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 23:45:14 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id f9so190272lfq.2
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 15:45:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4GdfWHUaJuS5SoIO3s3NHsXGshyNXM4oAFxRbthWkgE=;
 b=P4gTaLsCzg40YfN/+eDtmkytwvz3j6y/tLzbROBla8Lyn2uhMCZ9nQWk13kTV4Zk2I
 bnHXdTZ7JCgH2482+Bsq/SEutpf++F4rOA54+MOWEZoP1878JraQZGvFkgpKLj9EJ9oB
 Ur03LDACJy0Gk205Uogo9GuQ+XlgE8hF5XT1rgOzSpD2VK7CysF1SUQsEUWdgW7G/mUI
 rYhkJpYmOhvAYzocuXFm3t15Z32tacpF1m+u4i6DQO3oVETuAQznjAJx8HWU0saop/GI
 IZIcJRr08uQZnL9VfqjuEXvNgEuv/wV/5Cqn6nFXMW0PNPirIrgP8gZewdRK4OP6fS91
 JzkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4GdfWHUaJuS5SoIO3s3NHsXGshyNXM4oAFxRbthWkgE=;
 b=etJQbQ5vc5vLB/z7kKGyEDqkhLGEspb9bwaBNeeKcL+TnicFuIB1SIUbQw/lmPqGjL
 klxAuskRv+gthHXqfFqsAFKimkdXl/NpvFh+7l4k8r4ZPFm7W7pMI47+nVIYZ/wNAV02
 nIk83cIg9jJbsIwpyJSNsJbj+5wphMYEHAgn7ZdKe4fmxc36wuFCq/i6Ve+tO2kSc2D9
 8FKNJ3G70WcTJPqyVcemTQPwTPORsrdyPCy3VwPbpxK8JHyRD0aYR5MmfUHW13EbnOo2
 O+7Gax5QdMs5W8SyA+E70UjxU+0f7ueZKgaougJ1tPdWSd37ekeaeBPupCK9wysjVx4N
 kjIA==
X-Gm-Message-State: AOAM530b9foWx/VDCzvICVlw6UBvWqLm9l1gpOdHmGWHrY/1qGzLfDXQ
 yEHN4EIANGpTY9kZKPUXQgU=
X-Google-Smtp-Source: ABdhPJznyaKA15G7U7xNtBj9EgmdWFE2bHuNPgYQzw2meXnv4UjsY+M6043F6TKa+k1IIrlJjtZbHA==
X-Received: by 2002:ac2:562a:: with SMTP id b10mr47103lff.562.1604533512794;
 Wed, 04 Nov 2020 15:45:12 -0800 (PST)
Received: from localhost.localdomain (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.gmail.com with ESMTPSA id m6sm640725ljc.112.2020.11.04.15.45.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 15:45:12 -0800 (PST)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Alan Stern <stern@rowland.harvard.edu>, Peter Chen <Peter.Chen@nxp.com>,
 Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Peter Geis <pgwipeout@gmail.com>, Nicolas Chauvet <kwizart@gmail.com>
Subject: [PATCH v1 12/30] drm/tegra: gr2d: Correct swapped device-tree
 compatibles
Date: Thu,  5 Nov 2020 02:44:09 +0300
Message-Id: <20201104234427.26477-13-digetx@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201104234427.26477-1-digetx@gmail.com>
References: <20201104234427.26477-1-digetx@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The device-tree compatibles are swapped in the code, correct them.

Tested-by: Peter Geis <pgwipeout@gmail.com>
Tested-by: Nicolas Chauvet <kwizart@gmail.com>
Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/gpu/drm/tegra/gr2d.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/tegra/gr2d.c b/drivers/gpu/drm/tegra/gr2d.c
index 1a0d3ba6e525..f30aa86e4c9f 100644
--- a/drivers/gpu/drm/tegra/gr2d.c
+++ b/drivers/gpu/drm/tegra/gr2d.c
@@ -162,8 +162,8 @@ static const struct gr2d_soc tegra30_gr2d_soc = {
 };
 
 static const struct of_device_id gr2d_match[] = {
-	{ .compatible = "nvidia,tegra30-gr2d", .data = &tegra20_gr2d_soc },
-	{ .compatible = "nvidia,tegra20-gr2d", .data = &tegra30_gr2d_soc },
+	{ .compatible = "nvidia,tegra30-gr2d", .data = &tegra30_gr2d_soc },
+	{ .compatible = "nvidia,tegra20-gr2d", .data = &tegra20_gr2d_soc },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, gr2d_match);
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
