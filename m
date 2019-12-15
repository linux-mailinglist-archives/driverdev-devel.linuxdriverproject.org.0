Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CFC11FA59
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Dec 2019 19:10:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6C90687D33;
	Sun, 15 Dec 2019 18:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hks0+sQRaW46; Sun, 15 Dec 2019 18:10:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D9A0C87BF5;
	Sun, 15 Dec 2019 18:10:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1F8681BF59D
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 18:10:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1510A85F79
 for <devel@linuxdriverproject.org>; Sun, 15 Dec 2019 18:10:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s0Rs_yesw3K9 for <devel@linuxdriverproject.org>;
 Sun, 15 Dec 2019 18:09:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3E2EE857D5
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 18:09:31 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id c19so4204365lji.11
 for <devel@driverdev.osuosl.org>; Sun, 15 Dec 2019 10:09:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VmZvyuWnyMjyosw1/AewOLN2QYH7RAhMY4SlplBdnDg=;
 b=HFvqKztJi0rfRz/czGQzT3+JIaAebM6DOwS2JXt1X1H4Q2cn5kVkkMylVSd3gB2BUP
 nqFOSB/7qgNP5EDrQSb+Da99cxuh/WgBbgKPz9aF0d5RVQU3LrAQ9ZX5aZzkngxaR/g8
 MA1AlbC55gEFVk4zQye7K+QFCmT528fAsO3jDf1LxmSzQPys2NHsxt6f1J2sQEZSpv8A
 ypPgr6jYlFVPvnVorGLcln0EoOEUPGv60xRg+TidEwWyfGwdZW+MBwAQWJOqhjcdSsAq
 3lqlGy0JvZKqpchTurnZhYhXHzXOfEG6Yh1+9KGPLTb3NaGikdhefaaxFmv84X29Mffl
 ycXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VmZvyuWnyMjyosw1/AewOLN2QYH7RAhMY4SlplBdnDg=;
 b=DOh1PhaC9XHwfwozhVwChqow82Pc6SOccSKhB122gQOX+xobjljaHKxSCmkkhEOiKd
 wrr+uvDYxt04nSJqnt16N6u32/eKGCRujE61FtYWoeSzK+m03IUg9cg+ocCSot9e0jyH
 rxYMpPk53/EX0sNXV73bAbNJaXC8onyKhytSuuX4PBRv29lxpp8tki10L49IHWpp9wjD
 iNwp6yRc18lVEh2vQVpskgyLRQUT8utS8CSwsRd3a8OS+wDA/qKyft5s6QbxMOiOQ/N3
 p7td7jpinCaFswJdHuwNTX0YLazs4Bw6zfwnSZEI15owWJ8uKI8ATXgvomjX1hFNYkRZ
 hM1A==
X-Gm-Message-State: APjAAAUbb3p2dXZEy4flgZu4A16YiPQiNk14K2Il+wrLi+HeSpia6KJt
 eimDhFgprxXXwlA3A/S9Q6s=
X-Google-Smtp-Source: APXvYqysxGsK6/xpWY5BjP3RIq3vp7cdqPyr4DSYQnG/nA7yMy23kX+zxHuLmwh9De5Qpjc4z7HDHQ==
X-Received: by 2002:a2e:3e08:: with SMTP id l8mr17187483lja.236.1576433369351; 
 Sun, 15 Dec 2019 10:09:29 -0800 (PST)
Received: from localhost.localdomain (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.gmail.com with ESMTPSA id t27sm8871875ljd.26.2019.12.15.10.09.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2019 10:09:28 -0800 (PST)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>
Subject: [PATCH v1 2/3] media: staging: tegra-vde: Sort headers alphabetically
Date: Sun, 15 Dec 2019 21:07:51 +0300
Message-Id: <20191215180752.5408-3-digetx@gmail.com>
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

Keep the alphabetical order for consistency.

Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
---
 drivers/staging/media/tegra-vde/vde.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/tegra-vde/vde.h b/drivers/staging/media/tegra-vde/vde.h
index d369f1466bc7..5561291b0c88 100644
--- a/drivers/staging/media/tegra-vde/vde.h
+++ b/drivers/staging/media/tegra-vde/vde.h
@@ -10,11 +10,11 @@
 
 #include <linux/completion.h>
 #include <linux/dma-direction.h>
+#include <linux/iova.h>
 #include <linux/list.h>
 #include <linux/miscdevice.h>
 #include <linux/mutex.h>
 #include <linux/types.h>
-#include <linux/iova.h>
 
 struct clk;
 struct dma_buf;
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
