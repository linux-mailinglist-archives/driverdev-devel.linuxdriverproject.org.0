Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C00EB2076B2
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jun 2020 17:09:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6C8358849C;
	Wed, 24 Jun 2020 15:09:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Am7hyFcRBWw; Wed, 24 Jun 2020 15:09:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5D0F988386;
	Wed, 24 Jun 2020 15:09:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3CB7C1BF369
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 15:09:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3222020409
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 15:09:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ash9emc2P2FI for <devel@linuxdriverproject.org>;
 Wed, 24 Jun 2020 15:09:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 4C045203F0
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 15:09:02 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id c21so1473146lfb.3
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 08:09:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MbEwAEDY+UIz4Bw5+QFZkmbm4gisWV5nZMVAP0V+gWg=;
 b=ulp/uL9mvSJ7SU6iy5vKC57v2/nHWbwvSeoz2IatRstoQAKNz9khO51LYV0etv/+Pt
 nOjON8gH8HePftUtiH/m1lbv6Ge7KCktGswiYuoR6BzRE/4aPtpbZ+G8AtBcnzezenRv
 E19kA4MYhMukJaDqwCySvCQtSIREF728qLuajUixXbhb8xBkfGnACnug5MRDiEDpkLvu
 ruAE3QYb7Hcp6hPuFK+NFirykJcmSZF1auuJnTTpeLMPyTnoHiQ5KbzSKM9ITmJi4eak
 ErFjnAFcranSp2YH9+o44LTTuGjTuoI7MB4F0YV1MiN25IhJqTh7fcK9HT7i497ahTcZ
 7aSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MbEwAEDY+UIz4Bw5+QFZkmbm4gisWV5nZMVAP0V+gWg=;
 b=bW6k3LBEjO/6pszRpznGZl+ssJs5WDFSeLrW27YPDLbWaODoQpSzfx5f9onl6TRTxQ
 1Aq1osANeQp8lsfBihm/YjXvzpSyMeeeNm0IaIt7g7cE1/SUXHxAho/BehLfLgeHEyNe
 YdOIOwMZNU99lZNqJoEpSzxMWAgH/rcCBILNpAyovpUdUG0rmsDvcfXiwrr2GcmD1HkT
 mhfLP6E4JSVk5CczzzJkkyna68fYYmG3FXvU1VlYW8ftWlxjnRWjX2iyW2gSDpVdWc+X
 7HpBLddMO7xyezQsvLj8NDpn55e+BiwKTIiU7GqdEW5vyQui+jfYfA1+jjwtZE6NQEOA
 Rx+A==
X-Gm-Message-State: AOAM532VUe9erS2b0NS4hotdrmzCPaH3PhKC9IojviVfNC4dxrr5+EoL
 /LRptQhIxZ32DJjlgBrnzcg=
X-Google-Smtp-Source: ABdhPJwBscUlFJUFnBG6HoRwUDBMUXuDryV4RkhTsFyJYaFEtrtjM23lOEY1nMU1CiXDl9wNs+qRrA==
X-Received: by 2002:ac2:5295:: with SMTP id q21mr15591045lfm.185.1593011340318; 
 Wed, 24 Jun 2020 08:09:00 -0700 (PDT)
Received: from localhost.localdomain (79-139-237-54.dynamic.spd-mgts.ru.
 [79.139.237.54])
 by smtp.gmail.com with ESMTPSA id z1sm4182049lja.47.2020.06.24.08.08.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2020 08:08:59 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>
Subject: [PATCH v2 4/4] media: staging: tegra-vde: Power-cycle hardware on
 probe
Date: Wed, 24 Jun 2020 18:08:47 +0300
Message-Id: <20200624150847.22672-5-digetx@gmail.com>
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

VDE partition is left turned ON after bootloader on most devices, hence
let's ensure that it's turned OFF in order to lower power leakage while
hardware is idling by turning it ON and OFF during of the driver's probe.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/staging/media/tegra-vde/vde.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/staging/media/tegra-vde/vde.c b/drivers/staging/media/tegra-vde/vde.c
index b64e35b86fb4..3be96c36bf43 100644
--- a/drivers/staging/media/tegra-vde/vde.c
+++ b/drivers/staging/media/tegra-vde/vde.c
@@ -1068,6 +1068,14 @@ static int tegra_vde_probe(struct platform_device *pdev)
 	pm_runtime_use_autosuspend(dev);
 	pm_runtime_set_autosuspend_delay(dev, 300);
 
+	/*
+	 * VDE partition may be left ON after bootloader, hence let's
+	 * power-cycle it in order to put hardware into a predictable lower
+	 * power state.
+	 */
+	pm_runtime_get_sync(dev);
+	pm_runtime_put(dev);
+
 	return 0;
 
 err_deinit_iommu:
-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
