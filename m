Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 269312A7205
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 00:45:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CD904857D0;
	Wed,  4 Nov 2020 23:45:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Bw19SZrPlHH; Wed,  4 Nov 2020 23:45:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 514D185722;
	Wed,  4 Nov 2020 23:45:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4C5011BF2B7
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 48B148551F
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:45:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WczXxWVU50Ke for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 23:45:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 78046854C2
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 23:45:28 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id d24so287128ljg.10
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 15:45:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=q04sc3lZzk/7Y2Vrk729DLPvzmihTnah64pqG8qeyNY=;
 b=TONR2+QYbapieLnDTf0Jk1QPqXZDWAjT9sIbfsQFU3S1ETVVTGWoJK1Ebv6MvCDAxu
 iFk8mmpyuk40cSTU2xGCAu0IvpyN9KggSBaUQ0HHUcphlkxTbwyPOPgcJyrtemqawCUZ
 IzkDtKXECzbZCA4IZob2ibn2+8dNPZTXjcCGMnrjW2yoErdNbjFSO1mXDS+eEXyo3O1Q
 MiuzyQ7fZ3tJFl2zUxr54tAVzMmTWH5TTg40i9bJj1HAViKxiTpO4EWYns9q1Jeg+pQs
 KLY3Dznjpa3LVkpFr2X2vcRQjrEZceJCA+H2N4jXkG7kOszuNZZdKNm3I1X6sEtQCAK/
 tPBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q04sc3lZzk/7Y2Vrk729DLPvzmihTnah64pqG8qeyNY=;
 b=FABAp1F9r4pTL7cc5CrmsO9MFUAVOjMfzydEIeSXhr/ipSJNDBbutumE+wuoLF2Dl+
 0EJns3V3VBuyjH+1yCZtvpWTO2/wRafTEdSBrZ2Q9E0n2LweOSdVMyt27VmqYsjIloYh
 12V/ECErvuZBQFteumWxrBIYLypPAiSGrfTN/mbxzESuZB4FG9IuhT4D2UmIAie8Y9mg
 d8HVNzTopsg2Mg2CNnU6ucXJPh+GhMzx/LXLRIQSOtdmV+urePpwCE2U6VHudjouyt9e
 R0ytwkKhUXK5MBPmUryvBKOPej2K0cLJFixCnrOrRHD1hZdG6idDxsJD/Q+3f9oPBR4M
 UeIw==
X-Gm-Message-State: AOAM533LPYBTScSJE73Ed5u8p1sMfoiTYZZaHLT9XjhcyV3abEoa9oO8
 /SlkSMAaZszocRnA5Su8sbc=
X-Google-Smtp-Source: ABdhPJy4JvIN2UzMvC1UGoXxnZuYWhG4YhonA0JFk9Z9oJ2zbTum5L2HXCOgLCmGf47Q0qaQDlrH3A==
X-Received: by 2002:a2e:a41b:: with SMTP id p27mr161088ljn.30.1604533526786;
 Wed, 04 Nov 2020 15:45:26 -0800 (PST)
Received: from localhost.localdomain (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.gmail.com with ESMTPSA id m6sm640725ljc.112.2020.11.04.15.45.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 15:45:26 -0800 (PST)
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
Subject: [PATCH v1 22/30] memory: tegra20-emc: Support Tegra SoC device state
 syncing
Date: Thu,  5 Nov 2020 02:44:19 +0300
Message-Id: <20201104234427.26477-23-digetx@gmail.com>
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

Sync driver state using the Tegra SoC device state syncing API, telling
to regulators voltage coupler that EMC state is ready for DVFS. This is
required for enabling system-wide DVFS on Tegra20.

Tested-by: Nicolas Chauvet <kwizart@gmail.com>
Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/memory/tegra/tegra20-emc.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/memory/tegra/tegra20-emc.c b/drivers/memory/tegra/tegra20-emc.c
index 9946b957bb01..b1b0a2439689 100644
--- a/drivers/memory/tegra/tegra20-emc.c
+++ b/drivers/memory/tegra/tegra20-emc.c
@@ -1129,6 +1129,12 @@ static int tegra_emc_probe(struct platform_device *pdev)
 	return err;
 }
 
+static void tegra_emc_sync_state(struct device *dev)
+{
+	tegra_soc_device_sync_state(dev);
+	icc_sync_state(dev);
+}
+
 static const struct of_device_id tegra_emc_of_match[] = {
 	{ .compatible = "nvidia,tegra20-emc", },
 	{},
@@ -1141,7 +1147,7 @@ static struct platform_driver tegra_emc_driver = {
 		.name = "tegra20-emc",
 		.of_match_table = tegra_emc_of_match,
 		.suppress_bind_attrs = true,
-		.sync_state = icc_sync_state,
+		.sync_state = tegra_emc_sync_state,
 	},
 };
 module_platform_driver(tegra_emc_driver);
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
