Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B536411FA54
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Dec 2019 19:09:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 460A7204B9;
	Sun, 15 Dec 2019 18:09:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EQunDY38BaGb; Sun, 15 Dec 2019 18:09:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F10C8204CB;
	Sun, 15 Dec 2019 18:09:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9B5CD1BF954
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 18:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2876920336
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 18:09:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CzoJpN2LgKDH for <devel@linuxdriverproject.org>;
 Sun, 15 Dec 2019 18:09:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 212DD20035
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 18:09:32 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id z17so4192868ljk.13
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 10:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9WCN+aSziwo6IVDHqcjdnKmAeOBt5CXMdSt189Rd6D8=;
 b=NvU27+/6GH5ISbMewOWteUW7hrpRQQAtdsOXkYGPdRcJMzfVUfEw5Qvv4pSR8Nfens
 pcYlNC6VHGDqlKTHper6l7cssY+stCu7cP+6HXIKzX3K3AyWjX1ru/O7D/eI0AhqMkcw
 Fsv60r6PHl8eMZ3opyM5/N5tJmPT43FM8PrwaaX0gMLmY6g4beVJ/3OKzw3LUSQlwg+S
 N0s01A4KYBa+ePvLpnxALuQgXXPY7EPo9aOEcGGU0EL0n9ip9loTzK2rin6bwyPJqBkB
 gVYqHltoi4Y8yEQCiWfe2Wt0gMc1g9VYGVVmXCreKSvrsnW9E7Aq3kCqi6bwr1Uo5+ro
 UdeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9WCN+aSziwo6IVDHqcjdnKmAeOBt5CXMdSt189Rd6D8=;
 b=AZFySen42wAn+wxKdxfQ+fckx0Lzq3XzVDRAnWhYVYbgPtD1smLm02rjZX0HqvuwAP
 HLDNqmEX2bt946/gfqmLjZcHeYcdhCoJ/sw2dlkptojCPG0nsSwEKm7UIjtYhJ4AoaYF
 I2I60vVrdG1VxIXzspc8csHSBEYFuqDgUGLnjjQpogbjnISLnEOVI6fqHwULyfUwu3IW
 LNzfDGPaTNeemcMnpVDpCRLJK/hwpTF7W57TFGR694kA8C5zg1Bd8bKtTZFJMsPCExSF
 SgVTW+65FVrDVEFNErcYOEeuLSMC3uX5qIPkW0qBm9v2NrJgXSqAEFjRFniWDvd1DRTE
 /VGg==
X-Gm-Message-State: APjAAAUIxzjTmysMi9LYxjPKE/oi2/dEgVjzAeIINij0tqnRf8DuYs8l
 wOnb2kdblEDS5Q73ROsm068=
X-Google-Smtp-Source: APXvYqwu7LBPUs+T1isRG4okSZnxU/3EOajXzKbM3dRn/PXp35FxayqGrK4SC7zwbFLNd/fYA2W4Og==
X-Received: by 2002:a2e:3c1a:: with SMTP id j26mr16715116lja.79.1576433370285; 
 Sun, 15 Dec 2019 10:09:30 -0800 (PST)
Received: from localhost.localdomain (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.gmail.com with ESMTPSA id t27sm8871875ljd.26.2019.12.15.10.09.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2019 10:09:29 -0800 (PST)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>
Subject: [PATCH v1 3/3] media: staging: tegra-vde: Use __maybe_unused
 attribute instead of ifdef
Date: Sun, 15 Dec 2019 21:07:52 +0300
Message-Id: <20191215180752.5408-4-digetx@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191215180752.5408-1-digetx@gmail.com>
References: <20191215180752.5408-1-digetx@gmail.com>
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

Replace #ifdef with __maybe_unused attribute just to keep code cleaner a
tad.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/staging/media/tegra-vde/vde.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/tegra-vde/vde.c b/drivers/staging/media/tegra-vde/vde.c
index 3466daddf663..e18fd48981da 100644
--- a/drivers/staging/media/tegra-vde/vde.c
+++ b/drivers/staging/media/tegra-vde/vde.c
@@ -1150,8 +1150,7 @@ static int tegra_vde_remove(struct platform_device *pdev)
 	return 0;
 }
 
-#ifdef CONFIG_PM_SLEEP
-static int tegra_vde_pm_suspend(struct device *dev)
+static __maybe_unused int tegra_vde_pm_suspend(struct device *dev)
 {
 	struct tegra_vde *vde = dev_get_drvdata(dev);
 	int err;
@@ -1165,7 +1164,7 @@ static int tegra_vde_pm_suspend(struct device *dev)
 	return 0;
 }
 
-static int tegra_vde_pm_resume(struct device *dev)
+static __maybe_unused int tegra_vde_pm_resume(struct device *dev)
 {
 	struct tegra_vde *vde = dev_get_drvdata(dev);
 	int err;
@@ -1178,7 +1177,6 @@ static int tegra_vde_pm_resume(struct device *dev)
 
 	return 0;
 }
-#endif
 
 static const struct dev_pm_ops tegra_vde_pm_ops = {
 	SET_RUNTIME_PM_OPS(tegra_vde_runtime_suspend,
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
