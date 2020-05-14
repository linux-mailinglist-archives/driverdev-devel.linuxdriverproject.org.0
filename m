Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B8C1D3FA4
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 23:09:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 28A992755A;
	Thu, 14 May 2020 21:09:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B6R5rgoYWpp8; Thu, 14 May 2020 21:09:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6A2A0273E6;
	Thu, 14 May 2020 21:09:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 546021BF31A
 for <devel@linuxdriverproject.org>; Thu, 14 May 2020 21:09:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 50DC72735A
 for <devel@linuxdriverproject.org>; Thu, 14 May 2020 21:09:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z+zvwjYnYG9H for <devel@linuxdriverproject.org>;
 Thu, 14 May 2020 21:09:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 46EF8273FA
 for <devel@driverdev.osuosl.org>; Thu, 14 May 2020 21:09:42 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id f18so5071166lja.13
 for <devel@driverdev.osuosl.org>; Thu, 14 May 2020 14:09:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KheAdp9M1dfbG4eEm8dhaFoYt33Uw8W6nHGfCYpBQ1U=;
 b=gLiR8Cd33hBDhgcqV4vb/slAGpWjDL9p3Rlr92Yqo+TGnWCFldIjfFWkxpfV3P7Uz+
 O1tJy7aA4cLjD+pLXjqLzcIiWL55PtMEubj46qyQlgxfEmTfanFYlsAQXieCN6D62rtg
 p19Q3gDAAaLIwyC8wHvfxQg0ud80YMVij3hzBMpp8ZjeNXWiTNHro+EYnIXpvFeVdF9H
 e8Lhq15JBDEU/8X5voT+kE+4CjzGmiZ5iFsoYd1uiQnf6+z4OsKXozVqNoYawaLqFgoO
 9lCosisXPV8c0ENv1qRoXOBQRAQ2JCzvUlwzys3KvJ2ehFAyDkQ+tPV5s2BmG9jzSYHx
 J+Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KheAdp9M1dfbG4eEm8dhaFoYt33Uw8W6nHGfCYpBQ1U=;
 b=Ki7o7KyjRjE0/e59fKw/ivYBGRlCfxVIvnbdj7uZhtRFpBz2+WYx1tm9/TaXbIQaX5
 KfyAKJtvY3Nd4Q7Zqdr1FSl0jMyfqhypGkPrcgqQKNLbQKKuSiJMFka4qocVyYYiQcg/
 Q2vrGSdDwjIYrlc0vQM6aEYWqUgdkCmgxJ3SRGuMap2R0JNkQDuvZB76NYupA5CT4hFJ
 upHlepf6dT2EcbebzO3Zpgq5Y1phK1v/04wvTuVAWN2AHd1GXXpmUCsF8y8CVIEuIyqh
 LyG/E4LiWR32mpJqjZwMy4z3lb0got4KsHh3VReKdey6+aL3Iiw7EtqWzWWkI1hwNumh
 bM3A==
X-Gm-Message-State: AOAM531jCvX/4kLB6cqLl82SRoT9qE3IXFexQQSBeT/33F7UUjsL3j0O
 ZZa0SF4sEPCWx8J+8Ua8408=
X-Google-Smtp-Source: ABdhPJw8fhDNpHCQC51ItCJfok/1aWb8KwJn6He0iS2C3z3YUOfwjJ+4h/7EGYjUKQFCuiWcV40bAA==
X-Received: by 2002:a2e:9bc3:: with SMTP id w3mr130955ljj.170.1589490580297;
 Thu, 14 May 2020 14:09:40 -0700 (PDT)
Received: from localhost.localdomain (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.gmail.com with ESMTPSA id g3sm45215ljk.27.2020.05.14.14.09.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 14:09:39 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: [PATCH v1 3/4] media: staging: tegra-vde: Turn ON power domain on
 shutdown
Date: Fri, 15 May 2020 00:08:46 +0300
Message-Id: <20200514210847.9269-4-digetx@gmail.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200514210847.9269-1-digetx@gmail.com>
References: <20200514210847.9269-1-digetx@gmail.com>
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
