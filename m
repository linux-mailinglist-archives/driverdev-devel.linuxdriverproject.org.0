Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1D32076B3
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jun 2020 17:09:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9787386EE8;
	Wed, 24 Jun 2020 15:09:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IqfoahPLlUFe; Wed, 24 Jun 2020 15:09:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3EDA586AB0;
	Wed, 24 Jun 2020 15:09:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 781A11BF369
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 15:09:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 75456860BE
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 15:09:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1gMdDFm1Wd9h for <devel@linuxdriverproject.org>;
 Wed, 24 Jun 2020 15:08:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1726585FE4
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 15:08:59 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id s9so2910034ljm.11
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 08:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n81a7xgicqVqpnshMV1Fym2lKSMaAj06qWLiaAZUAA8=;
 b=DaVK2w2zzhMR7dhzxorRAMiXFpOAQqUV3BgyeJk5BvrGgH4/6DEBA3VxQxEHsMmopB
 16gMgtDiFKxBRWtXnqDuRsAAXODJ1rftcFpKFv8E57JigQk64LxlGC7mC45qrncZ1PVK
 rjEabLm92zu/UhkkKPeFaoy6TdduiuiqkC5ym/8X1VCH1VDIWbSiNX/JAJBlWdhiJbjd
 FoLN7w6NDq01hRz3ahZGsOpqmvechMFisnPwzDwMIMt6UVryrcxeBHiGhlgz3xfehLF5
 mEAyDUxib+8AA/apNlZnWL46u8EKrEfTZTnRRSTunBM5M2PuqBHO34Cj1pbrSL3M0m3J
 8WdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n81a7xgicqVqpnshMV1Fym2lKSMaAj06qWLiaAZUAA8=;
 b=rSlc38NHupzGIiPJ5o9EaowSxW+4ur2g+8Skf2jSEw34Wa4FXPJFh+4IQETBhbpevJ
 y4zrY+yuEctGDv5qNpOFuk2gxfij2lyhXkoe56XAupg/qGuIugdYknJlvwwRWjKkwDhV
 cYA5kjqoM4hT8tVA7mL6KUlGQ16mG6iS7vJTfKVOwtVs+pYb3oYBvxX7XNIfL8yCAr/E
 bTnhFwPzXQQRhrDUXQoQHNSzUnpH/5/sgzwKX0SBXdzbcvDFTpchzPKghics5Dveg+sL
 gjfBxombktKhBrPPWlP6T5oVLP0sJqowkTDxBBJxrXcnh0A19dMuH4FKJJGpKpb12dUg
 vL2A==
X-Gm-Message-State: AOAM533SBETOrpDgw2bg9aClmho2PPE77JEi55d3b6zSevlPAF8G5Suz
 RchQAYFID0PEtgaK4pMXLTE=
X-Google-Smtp-Source: ABdhPJwWvevn5bWodaDDTeO6gegWo/JJY45ganJgJ5FSOkH7CGVN4WdL93vQRhvTexMjGq2XSmWDgw==
X-Received: by 2002:a05:651c:338:: with SMTP id
 b24mr13475658ljp.87.1593011337024; 
 Wed, 24 Jun 2020 08:08:57 -0700 (PDT)
Received: from localhost.localdomain (79-139-237-54.dynamic.spd-mgts.ru.
 [79.139.237.54])
 by smtp.gmail.com with ESMTPSA id z1sm4182049lja.47.2020.06.24.08.08.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2020 08:08:56 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>
Subject: [PATCH v2 1/4] media: staging: tegra-vde: Balance runtime PM
 use-count on resume failure
Date: Wed, 24 Jun 2020 18:08:44 +0300
Message-Id: <20200624150847.22672-2-digetx@gmail.com>
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

The RPM's use-count is getting incremented regardless of the
pm_runtime_get_sync() success or fail. It's up to a driver how to
handle the failed RPM. In the case of VDE driver, the RPM's use-count
should be restored if runtime-resume fails. Use pm_runtime_put_noidle(),
which is the most straight-forward variant to balance the RPM, confirmed
by Rafael J. Wysocki.

Link: https://lore.kernel.org/linux-i2c/CAJZ5v0i87NGcy9+kxubScdPDyByr8ypQWcGgBFn+V-wDd69BHQ@mail.gmail.com/
Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/staging/media/tegra-vde/vde.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/tegra-vde/vde.c b/drivers/staging/media/tegra-vde/vde.c
index d3e63512a765..803e5dda4bb5 100644
--- a/drivers/staging/media/tegra-vde/vde.c
+++ b/drivers/staging/media/tegra-vde/vde.c
@@ -776,8 +776,10 @@ static int tegra_vde_ioctl_decode_h264(struct tegra_vde *vde,
 		goto release_dpb_frames;
 
 	ret = pm_runtime_get_sync(dev);
-	if (ret < 0)
+	if (ret < 0) {
+		pm_runtime_put_noidle(dev);
 		goto unlock;
+	}
 
 	/*
 	 * We rely on the VDE registers reset value, otherwise VDE
-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
