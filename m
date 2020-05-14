Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 264F11D3FA3
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 23:09:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CFB3287B4D;
	Thu, 14 May 2020 21:09:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id blKiLtNpEvol; Thu, 14 May 2020 21:09:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 52D798784E;
	Thu, 14 May 2020 21:09:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D2D2B1BF31A
 for <devel@linuxdriverproject.org>; Thu, 14 May 2020 21:09:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CFC9A87B48
 for <devel@linuxdriverproject.org>; Thu, 14 May 2020 21:09:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AnHcmzz7xm3l for <devel@linuxdriverproject.org>;
 Thu, 14 May 2020 21:09:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0FA3D87B34
 for <devel@driverdev.osuosl.org>; Thu, 14 May 2020 21:09:43 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id l19so5087256lje.10
 for <devel@driverdev.osuosl.org>; Thu, 14 May 2020 14:09:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MbEwAEDY+UIz4Bw5+QFZkmbm4gisWV5nZMVAP0V+gWg=;
 b=dfyS/sP46qW3uvPVJQkdARtLyOipAh/Fz8Npnv+Bs1bbVNFTnOZFrWXV9okA/ZiMbg
 CB0NH+AvHjZgfAHA+DTHZ0BwQkTg6A+t0+5r3K/drjuIC63WOkMo25JRUDiROIk+/tCQ
 D8Qh0g4fdkthrjZ420wJ2/dYoWexp+lVhcjSMLe0LSXzmoqf579SDJ+L/jdCGfwULGE0
 oH6EljARn+2wA3ooEGqHJt0oHllyQT7wfHRTYoCBMy+UmQ1+nkuSdRjkcsUsZZdoTsqX
 S8fLeSizceMcqArQRoQ+8xXHTgE6vIxqnxCkGgZqYxL/dBfDMrTZ7P8P1mlZ92E4UthP
 nqkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MbEwAEDY+UIz4Bw5+QFZkmbm4gisWV5nZMVAP0V+gWg=;
 b=DPi3PLW4JtBlEPgmqxC0szSz65C0eO5iJbDU1gJhLURMIa2xFVjuIZy7O/T/AmLZfq
 xbnV8/g3HwdUVjgESAex7HeC3KPqwFarqhzFrmezJ1na/qBGySFUbjm/xb25EF4lR0Gy
 nb5KB+bMRokoPgVsp66z9itrMZb4MUD1KOGzWAvh+WJf5ehnFwiGWbEGZNENVCSnZRcK
 LDx3j2/RdPD0DGg/haiwfVZcQQLCKohsjSjM799SzLvSpgnRjrh1+ln2NUQNgl1cbsYL
 p/DYdET6HIBFlso19kDjHMy09BHD+24vI3zMbxE0W/pV1Qm8L+qidNKib/yHmz5UdOJl
 cxGw==
X-Gm-Message-State: AOAM531eclxZNCkdwV5LBJ8yDzjJbDRznhMO1AWz9rW4kerOSsbaTFhY
 1NCMPF0tXhcrQLqOdM/HG/0=
X-Google-Smtp-Source: ABdhPJxPYojjqv+Q6EeNKYsxCP1N3bnO5bJhCCmwZemIP2H/4hZRmku6zi509u41Zy3B51R9aFzG2Q==
X-Received: by 2002:a2e:361a:: with SMTP id d26mr103704lja.171.1589490581256; 
 Thu, 14 May 2020 14:09:41 -0700 (PDT)
Received: from localhost.localdomain (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.gmail.com with ESMTPSA id g3sm45215ljk.27.2020.05.14.14.09.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 14:09:40 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Dan Carpenter <dan.carpenter@oracle.com>
Subject: [PATCH v1 4/4] media: staging: tegra-vde: Power-cycle hardware on
 probe
Date: Fri, 15 May 2020 00:08:47 +0300
Message-Id: <20200514210847.9269-5-digetx@gmail.com>
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
