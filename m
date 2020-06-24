Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6218B2076B0
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jun 2020 17:09:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 425F48846B;
	Wed, 24 Jun 2020 15:09:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZjQ+smlXKah1; Wed, 24 Jun 2020 15:09:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A94EE88383;
	Wed, 24 Jun 2020 15:09:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CC6A01BF369
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 15:09:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C985288383
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 15:09:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VAI8KHE+74Pz for <devel@linuxdriverproject.org>;
 Wed, 24 Jun 2020 15:09:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 051F688355
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 15:09:01 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id t9so1464365lfl.5
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 08:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KheAdp9M1dfbG4eEm8dhaFoYt33Uw8W6nHGfCYpBQ1U=;
 b=YMrvDWL/13Qtb/t3P8AqAn7YXh+E5039QwPNb0vmwIbDc+mVHxz7OIiIAMP+ST+S+v
 WEi9f/pouSHwNiVg9M9zSajFLSKXGJZ/v3hOEQwNFyhZ1dH1O9+KH3OKMptmoOtL6eed
 Q8L07crHA2zRVbxLHhAme3Ig61vVANQHgD9UfkdluZmOM2ZbWeohP1hinz8Foc2jrh69
 3ibyFDx5rnQIFxdyp3LYxg3rioriCS0sOxMI33kKetcMsKIxkrjyg7G1Z/3fZw/b0Mzb
 51L5Us03w/z7vBI1W+pWMTwAMt0Dt/uyBYNfXypX46LgBJHwGp2XbhhRrm1ML1ZH2A9c
 7d4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KheAdp9M1dfbG4eEm8dhaFoYt33Uw8W6nHGfCYpBQ1U=;
 b=FscnDoVq1V7nICzFp9V+6rNrNAlpFPgLHebZjm0bYyFLoaWs92UGMuxGOHxLTxCZ41
 Qx3qzmQWkMyfZDWLgLXKTHUmABztvXvVSVi6bn8M1c+PjZMv/M4x8WuXZWH6HptBSFtm
 40IHaS4B4YW6lV5ry6tvwhf/NvpB45gR1WxwFv0pPXER9gSA+LWzx51A/k+GpZsP1tzl
 rKquBu235kw2+5RsU7Xi+NIBg3O0iIY1Iu4w5pkuQNlHmSBdmeDdrBgYKj3A3YXy9iP0
 CMqmZhWDshZ2GxoETdeCpMsYsL2MgwiQDdqns9RFA8PVCR9/64J3qRoo32W7zX3qGahZ
 /3Ig==
X-Gm-Message-State: AOAM532CgbeYg8b+4q3P3vZ/XQwxqkF7lIN8vL0+SuSKLcZ+I+YYgVQl
 cT96iAep46+NkjGtVcSRDMo=
X-Google-Smtp-Source: ABdhPJyuihnjhleoFSkxrceYwKLcXKmloeag18MhVXjSAM33bpxBmEXnrnBvMHE+KbpSExRlAvz/bA==
X-Received: by 2002:ac2:4a83:: with SMTP id l3mr15608005lfp.92.1593011339237; 
 Wed, 24 Jun 2020 08:08:59 -0700 (PDT)
Received: from localhost.localdomain (79-139-237-54.dynamic.spd-mgts.ru.
 [79.139.237.54])
 by smtp.gmail.com with ESMTPSA id z1sm4182049lja.47.2020.06.24.08.08.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2020 08:08:58 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>
Subject: [PATCH v2 3/4] media: staging: tegra-vde: Turn ON power domain on
 shutdown
Date: Wed, 24 Jun 2020 18:08:46 +0300
Message-Id: <20200624150847.22672-4-digetx@gmail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200624150847.22672-1-digetx@gmail.com>
References: <20200624150847.22672-1-digetx@gmail.com>
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
Cc: linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On some devices bootloader isn't ready to a clamped VDE power, and thus,
machine hangs on a warm reboot (CPU reset). The VDE power partition is
turned ON by default on a cold boot, hence VDE driver should keep power
partition enabled on system's reboot too. This fixes hang on a warm reboot
on a Tegra20 Acer A500 device, which is handy if Embedded Controller
driver is unavailable, i.e. cold reboot can't be performed.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/staging/media/tegra-vde/vde.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/staging/media/tegra-vde/vde.c b/drivers/staging/media/tegra-vde/vde.c
index 85cbbc8f70d3..b64e35b86fb4 100644
--- a/drivers/staging/media/tegra-vde/vde.c
+++ b/drivers/staging/media/tegra-vde/vde.c
@@ -1085,9 +1085,17 @@ static int tegra_vde_remove(struct platform_device *pdev)
 	struct tegra_vde *vde = platform_get_drvdata(pdev);
 	struct device *dev = &pdev->dev;
 
+	pm_runtime_get_sync(dev);
 	pm_runtime_dont_use_autosuspend(dev);
 	pm_runtime_disable(dev);
 
+	/*
+	 * Balance RPM state, the VDE power domain is left ON and hardware
+	 * is clock-gated. It's safe to reboot machine now.
+	 */
+	pm_runtime_put_noidle(dev);
+	clk_disable_unprepare(vde->clk);
+
 	misc_deregister(&vde->miscdev);
 
 	tegra_vde_dmabuf_cache_unmap_all(vde);
@@ -1099,6 +1107,16 @@ static int tegra_vde_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static void tegra_vde_shutdown(struct platform_device *pdev)
+{
+	/*
+	 * On some devices bootloader isn't ready to a power-gated VDE on
+	 * a warm-reboot, machine will hang in that case.
+	 */
+	if (pm_runtime_status_suspended(&pdev->dev))
+		tegra_vde_runtime_resume(&pdev->dev);
+}
+
 static __maybe_unused int tegra_vde_pm_suspend(struct device *dev)
 {
 	struct tegra_vde *vde = dev_get_drvdata(dev);
@@ -1144,6 +1162,7 @@ MODULE_DEVICE_TABLE(of, tegra_vde_of_match);
 static struct platform_driver tegra_vde_driver = {
 	.probe		= tegra_vde_probe,
 	.remove		= tegra_vde_remove,
+	.shutdown	= tegra_vde_shutdown,
 	.driver		= {
 		.name		= "tegra-vde",
 		.of_match_table = tegra_vde_of_match,
-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
