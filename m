Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69AC932511
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Jun 2019 23:44:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9FE4085A49;
	Sun,  2 Jun 2019 21:44:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DsTLRfvUrIbD; Sun,  2 Jun 2019 21:44:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 43C88858B6;
	Sun,  2 Jun 2019 21:44:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 39EB81BF4D5
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 21:44:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 370FF8515C
 for <devel@linuxdriverproject.org>; Sun,  2 Jun 2019 21:44:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w-nJ2WgGLg9A for <devel@linuxdriverproject.org>;
 Sun,  2 Jun 2019 21:44:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 544BC84FD2
 for <devel@driverdev.osuosl.org>; Sun,  2 Jun 2019 21:44:38 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id y198so1500875lfa.1
 for <devel@driverdev.osuosl.org>; Sun, 02 Jun 2019 14:44:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SBjg5eRa81EzQPPSxTQMKBg6nX0dKdVE0RBDky8GBmA=;
 b=YsDpK0enaC3AKpHJBpeWesF3I3XFx4UEa2ArMOUJ2gsU4VYeNUUuq4kR/nx155oPpP
 xl6GGEIP9QYoSDkJ5aAoJUMPa2/3s0W852J27jTTKA45mngN7mX8kMnfXIHTQxukywXz
 q7vYo5pRad4doGyTnwL4f7QLHY/pm2sRcSSA03cDGkvt94fRYjgUWlfCsj5CiHL4FfSS
 LRlmMRRq+MH5nc0Nua1SOa69PCFksPfDcwUv74z9l8SruttXz2bBmMhcpQHswHTTA4z0
 QgHoXCM5GYRgJrB6GtS2USoORtnW0OVNnzkTo3vEywkLWMLh3AdQyA3iQx2MIlgjw05P
 HZAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SBjg5eRa81EzQPPSxTQMKBg6nX0dKdVE0RBDky8GBmA=;
 b=PrRTW5FHB8Khzw/eLg/G7p03AiYVWQau46C3VTgvmM8w8uRRmjuuCJ3UbnGeX3EPxv
 2ugPiSCLB4G8lWzYB+oqrvwxMIhihaSTHgkglH64/r+QzB+34r3qfVgUhoQphgmLCn28
 um7vefV8PgY9J36IOnsP54mGr1symlBmTHhCBj74559SdBvVzXGj6CSjOg3a9dEVR2FL
 CIFsIC6IENozY+BTtEaHYYj2Yd8N0lzSn8sh8bnGMF6iA5H2CaITKEeywJ0Cuha2+YTn
 6UIdY5re3XjM/suzkFLxELv20yCWtswK2JMwyWezqeTWCe2AnvTi8mzz++TO3P37P0LB
 YRyQ==
X-Gm-Message-State: APjAAAX0Nx3AbOzqlQ3YuHVP9EWJByX1oDc7A+a+hprc1YEkq6hc0vhx
 IsZWb5mXQZJKgMUWW4YDuZ0=
X-Google-Smtp-Source: APXvYqzRFvCNnsb07UorKV39uaj4aB8VnwzziVDJkkHdhszJ9fxKQWmdYoy/eC6HvwChuiuiNPCnww==
X-Received: by 2002:a19:6a01:: with SMTP id u1mr10103527lfu.141.1559511876507; 
 Sun, 02 Jun 2019 14:44:36 -0700 (PDT)
Received: from localhost.localdomain ([94.29.35.141])
 by smtp.gmail.com with ESMTPSA id g22sm2803653lje.43.2019.06.02.14.44.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Jun 2019 14:44:35 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v1 0/4] NVIDIA Tegra Video Decoder driver improvements
Date: Mon,  3 Jun 2019 00:37:05 +0300
Message-Id: <20190602213712.26857-1-digetx@gmail.com>
X-Mailer: git-send-email 2.21.0
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

This series cleans up some of minor shortcomings that are caused by
checkpatch recommendations that are not very applicable for the driver.
Then IOMMU support is added to the driver and now it can handle sparse
memory buffers that GPU hands to VDE in a default kernel configuration
on Tegra30+.

Dmitry Osipenko (4):
  staging: media: tegra-vde: Remove BIT() macro from UAPI header
  staging: media: tegra-vde: Manually pack UAPI structures
  staging: media: tegra-vde: Add IOMMU support
  staging: media: tegra-vde: Defer dmabuf's unmapping

 drivers/staging/media/tegra-vde/Kconfig       |   1 +
 drivers/staging/media/tegra-vde/Makefile      |   1 +
 .../staging/media/tegra-vde/dmabuf-cache.c    | 223 ++++++++++++++++++
 drivers/staging/media/tegra-vde/iommu.c       | 146 ++++++++++++
 drivers/staging/media/tegra-vde/trace.h       |   1 +
 drivers/staging/media/tegra-vde/uapi.h        |  48 ++--
 .../media/tegra-vde/{tegra-vde.c => vde.c}    | 212 ++++++-----------
 drivers/staging/media/tegra-vde/vde.h         | 105 +++++++++
 8 files changed, 574 insertions(+), 163 deletions(-)
 create mode 100644 drivers/staging/media/tegra-vde/dmabuf-cache.c
 create mode 100644 drivers/staging/media/tegra-vde/iommu.c
 rename drivers/staging/media/tegra-vde/{tegra-vde.c => vde.c} (88%)
 create mode 100644 drivers/staging/media/tegra-vde/vde.h

-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
