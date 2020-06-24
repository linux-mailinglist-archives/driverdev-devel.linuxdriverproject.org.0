Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA1A2076AF
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jun 2020 17:09:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4961C8614E;
	Wed, 24 Jun 2020 15:09:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pbGxQs-GDcTm; Wed, 24 Jun 2020 15:09:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A7DBC86081;
	Wed, 24 Jun 2020 15:09:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CF69A1BF369
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 15:08:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CC27188383
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 15:08:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IvDKFUQFMvXc for <devel@linuxdriverproject.org>;
 Wed, 24 Jun 2020 15:08:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0723088355
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 15:08:58 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id n23so2943048ljh.7
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 08:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OJu1Q0OHeIZeVEh+ckAdP5ZEp1YytGAeyJAi+Zqho8o=;
 b=TDWmm+sfBmEAHIhAD02JMvmJrggOBK77LVf6ttg1uMpkQdgH3FO0cT95zb8WwaQwTY
 x4wH+pcwf/tAQ0xOXg46gDjlozBqMfiBYY/iEnoMLwd4w6UJYHCr6z8eL1d9W+y6e85k
 5qg1ferl6r/GRDevW4sjloXzJI5ewMwM+QlytNusMfAIQB0CEdmYp0G7KOzSW5Ed0FXT
 IWW1Qwb5EDhWKq0M+ZTh9ppYeDK+xIyumu4u1GfUqXzvVtu+6xGAWEVvFZIiiHe2AyQ6
 FTX8AS2PiEMgI+c9BFDDXyeU/auyjMNU8oN2KqRZ6ihAGdiGrPZhYB7zPxxT+NBGpIum
 mQ6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OJu1Q0OHeIZeVEh+ckAdP5ZEp1YytGAeyJAi+Zqho8o=;
 b=kBCz4+tlpZEgh+l4hadPG+MKyWJRx4EPGqqU2ROMOK5+2rSKwe0uWXTm3TmYs+6zeU
 spvszTg1t3UsIsMgUBfWVUhAtGfJy5tt3s9eCyX0gQMp982l3lrfl400XUUzaWBkHrgI
 af6MN3hfh4caCQhAJiX6SetghzdTKmWdkowdXynuCtfjl+7+cdFgZTfgVAg41vYeaGV/
 EaQLNnndVmGcw5Il0pkgmOFjgHLgJ4BvZ4Tyqj3cx2h28IcI78VbY/IKD4sV2WcFj9Np
 S74afslyneLe6VADVjgm+ex3yc8IXZ7uNPuMNutkEk17fVY4SfqF5NrJffbktpsYlm3R
 o+UA==
X-Gm-Message-State: AOAM531yEFaH1Ytzm0FJv3Og6WBMbIH/zv0+6KKoHW/G2RRAqN78BzwL
 8NPfLLfoKbgHbq+ykaFI5u0=
X-Google-Smtp-Source: ABdhPJziT+8B80my7R9pbnPEEhLTjHgFhdsFgVB2yEpHxvGMDM9iqS0l4bcw31+Nyzs3kOiL43/4rg==
X-Received: by 2002:a2e:4b12:: with SMTP id y18mr12711346lja.117.1593011335949; 
 Wed, 24 Jun 2020 08:08:55 -0700 (PDT)
Received: from localhost.localdomain (79-139-237-54.dynamic.spd-mgts.ru.
 [79.139.237.54])
 by smtp.gmail.com with ESMTPSA id z1sm4182049lja.47.2020.06.24.08.08.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2020 08:08:55 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>
Subject: [PATCH v2 0/4] Tegra Video Decoder driver power management corrections
Date: Wed, 24 Jun 2020 18:08:43 +0300
Message-Id: <20200624150847.22672-1-digetx@gmail.com>
X-Mailer: git-send-email 2.26.0
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

Hello,

This small series addresses a Runtime PM issue that was discovered during
of Tegra VI driver reviewing by balancing RPM usage count on RPM resume
failure. Secondly it fixes reboot on some Tegra devices due to bootloader
expecting VDE power partition to be ON at the boot time, which wasn't
happening in case of a warm re-booting (i.e. by PMC resetting).

Changelog:

v2: - Extended the commit's message of the "Balance runtime PM use-count on
      resume failure" patch.

    - Re-send for 5.9 inclusion.

Dmitry Osipenko (4):
  media: staging: tegra-vde: Balance runtime PM use-count on resume
    failure
  media: staging: tegra-vde: Runtime PM is always available on Tegra
  media: staging: tegra-vde: Turn ON power domain on shutdown
  media: staging: tegra-vde: Power-cycle hardware on probe

 drivers/staging/media/tegra-vde/vde.c | 45 +++++++++++++++++----------
 1 file changed, 29 insertions(+), 16 deletions(-)

-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
