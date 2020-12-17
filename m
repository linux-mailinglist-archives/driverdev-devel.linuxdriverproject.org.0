Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8198A2DD700
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:08:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1BD3087994;
	Thu, 17 Dec 2020 18:08:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xwY3T9o9LFP4; Thu, 17 Dec 2020 18:08:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4439F8798E;
	Thu, 17 Dec 2020 18:08:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9116B1BF9B6
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:08:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8D8538769D
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:08:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FJztwQCqgEPq for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:08:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CA46287A9E
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:08:06 +0000 (UTC)
Received: by mail-lf1-f53.google.com with SMTP id u18so59834639lfd.9
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:08:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wuUSQP0OtIE+mP7axrK+mquBQR4cpQ2zlYIqVpImR1U=;
 b=MZKp8LNgdIqZ2QOb3p3qyevaT+0a/84boORQxHR3hMaNXrSC3gadV90vMzkpXywlqO
 FckztaIM7VXhOnRqguINXOzS4tF2j9k6itr8yj4O2R9bvxTZ/5XixyVBxPEKIdnIzXxo
 K9gvy8DIjfa3cSxXV0BsPlII7FabiMWQBhxX1bphvlTMt5TlBRx/Lqpr0Dj3sXiRPgcU
 tPbBkxDFx22kc8Mr/3oOm9b66RzF8/Qd6eZel5uaevmeWnNeT6xQAp9AqNyvnwQYUoKA
 ikQV9S/5J0i2cxw4+ghP0Hu85LAVoVOVLj9Qy1KHWVmv6zagA/Zo/kAP7wNFjF7gI+2L
 n4nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wuUSQP0OtIE+mP7axrK+mquBQR4cpQ2zlYIqVpImR1U=;
 b=D2jm1FctfWoch9h9kgc/trtE3XX09v4p9kEoaymuPIVUNc6BR1Fx33wouhYLFVsK43
 gQEAdBaSIq7bwktUcib3h3sFHPrtxjTBAnZXNiw0tTU6L5Hy7+punP8w5ntC23widbtY
 wmpHC5XeCrqUyLoj+37ap6+Z6Czxs8X1jh+9R9GxHKJhwCh3WWmP4bCM9ODVBJDpB69j
 fhDhhE+dpGhIGpshLwCo4lwTXE2YC+Oar7UzKGeVAoWmqL2NYdXoID744WiunO8lEhqN
 8VnrXaDzJMza5nfocXQ5NvG52zECqcVl1l2pbTR6R9nh2fhEfLzTJw6ssl3FfO6i3Ohr
 l7xg==
X-Gm-Message-State: AOAM533kZDCQL2OMwyxogwNslyh6NCq2q32hZ1wp9059RJOXHsMbAnbT
 JTCgbwimOx1UFNZ3kiKIE5E=
X-Google-Smtp-Source: ABdhPJyVdNBSM8/uZCQbZq0gxNERLS7DuvcuHvgKRtpH+6ID2YxKj6LsqEKEpdk21M9tB3QssKnzhA==
X-Received: by 2002:a2e:b70f:: with SMTP id j15mr240665ljo.60.1608228485098;
 Thu, 17 Dec 2020 10:08:05 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.08.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:08:04 -0800 (PST)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Kevin Hilman <khilman@kernel.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Viresh Kumar <vireshk@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH v2 39/48] drm/tegra: vic: Stop channel before suspending
Date: Thu, 17 Dec 2020 21:06:29 +0300
Message-Id: <20201217180638.22748-40-digetx@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201217180638.22748-1-digetx@gmail.com>
References: <20201217180638.22748-1-digetx@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Host1x channel should be idling before hardware is turned off, hence
stop the channel in the suspend callback.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/gpu/drm/tegra/vic.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/gpu/drm/tegra/vic.c b/drivers/gpu/drm/tegra/vic.c
index ade56b860cf9..92d3d48c4277 100644
--- a/drivers/gpu/drm/tegra/vic.c
+++ b/drivers/gpu/drm/tegra/vic.c
@@ -510,8 +510,23 @@ static int vic_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static __maybe_unused int vic_suspend(struct device *dev)
+{
+	struct vic *vic = dev_get_drvdata(dev);
+	int err;
+
+	host1x_channel_stop(vic->channel);
+
+	err = pm_runtime_force_suspend(dev);
+	if (err < 0)
+		return err;
+
+	return 0;
+}
+
 static const struct dev_pm_ops vic_pm_ops = {
 	SET_RUNTIME_PM_OPS(vic_runtime_suspend, vic_runtime_resume, NULL)
+	SET_SYSTEM_SLEEP_PM_OPS(vic_suspend, pm_runtime_force_resume)
 };
 
 struct platform_driver tegra_vic_driver = {
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
