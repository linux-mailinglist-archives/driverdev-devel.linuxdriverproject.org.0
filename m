Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF06D4A66A
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 18:16:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E393C85EA5;
	Tue, 18 Jun 2019 16:16:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZjgE+qp1JpQy; Tue, 18 Jun 2019 16:16:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5D089852CB;
	Tue, 18 Jun 2019 16:16:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 89ED71BF83C
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 16:16:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8686E204CC
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 16:16:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bv-dEqytnLVK for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 16:16:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 872C2204C8
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 16:16:30 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id 131so153627ljf.4
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 09:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=d8ND7EMqaMTRopWlb9o22BJGzZDsnY6w/hHhefd0ijU=;
 b=ct1sAJ72OfB3a7/VItKwWaSDmJQErSldkaPh8Hg2zwhb8dkdhBO5l07HrG1HPzr2Cq
 BX8/hcHEi2jUxzEJODMJlesBskFGwyntCcRmWSczwh6xGsPgzAyCUFU3T1ebFaJ3u0vo
 r3LmRCsAr1Aw+S8iXpRppPZo+pFNLxa3QsfZDFri5Sf54zrxIgLFWGpfPbMW4XQ5tnfZ
 RdKXQc2j3dX3p/G17K0qbRg/so9Uh9IoY80w0UjAK+pOTTKvJPSq5GwqSzDWZfPbC2Dl
 2QgF8Oxi9A6EjHtGuiAIiULB+VTVINjT3tHmjF5xCi5PZ3vvGPp5+Gsd34vHF1EONBZS
 4HHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=d8ND7EMqaMTRopWlb9o22BJGzZDsnY6w/hHhefd0ijU=;
 b=luuDT4CxjKL5Avo7Qy+/WCgbUi76481iJy0+cg9ksxu8D1w3b+HDYHceE33Z9Kwr8O
 H9Eg2R/A05eo8kvpvUhkhdpeK02npp9jlKAh1juPxalZiVfWV6gMNg7L5CjHiHMiJlQL
 gjMA2XLLKJi2tgAFXJOTLjsgIRe2FN9WlbYKwwbH2bIMoLZtT5C+RluugU6lvGq5k/c9
 HDhM5V60A3k4GqZSmBu9/YKhrAQgODVueIW0K1H+vbzACXL40Gyh5QxH5JohVJWWFqZM
 A5E7loToYeOL3uEL/3ptOiiR2Q8Q2NzRRR7J+XnEx5pqBs1lSLsh4bHKghuqIAbtyGu4
 9+Sw==
X-Gm-Message-State: APjAAAUPZGw0QpLoUWn2z1tnfcpbwFewg6E3ijMsnEACyGghGdQiFRoX
 /0oDKj9gXvKy+AdzDWZaOn4=
X-Google-Smtp-Source: APXvYqzQZqoqlL5858/34W8b9dFe+28g3zDpsZLYQzftoSykaQpl1uH4YqhI48VZjTWooCY0JCYU+A==
X-Received: by 2002:a2e:868e:: with SMTP id l14mr22398515lji.16.1560874588806; 
 Tue, 18 Jun 2019 09:16:28 -0700 (PDT)
Received: from localhost.localdomain (ppp91-79-162-197.pppoe.mtu-net.ru.
 [91.79.162.197])
 by smtp.gmail.com with ESMTPSA id v15sm2273295lfd.53.2019.06.18.09.16.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 09:16:27 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 0/4] NVIDIA Tegra Video Decoder driver improvements
Date: Tue, 18 Jun 2019 19:14:51 +0300
Message-Id: <20190618161458.20499-1-digetx@gmail.com>
X-Mailer: git-send-email 2.22.0
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

Changelog:

v2: - Fixed use-after-free bug and uninitialized-variable warning that
      were reported by smatch and pointed out by Hans Verkuil in the
      review comment to v1.

    - Fixed build failure when CONFIG_ARM_DMA_USE_IOMMU=y and tested this
      case properly (multi-platform kernel config).

    - Made some extra minor changes, prettifying code a tad more.

Dmitry Osipenko (4):
  staging: media: tegra-vde: Remove BIT() macro from UAPI header
  staging: media: tegra-vde: Manually pack UAPI structures
  staging: media: tegra-vde: Add IOMMU support
  staging: media: tegra-vde: Defer dmabuf's unmapping

 drivers/staging/media/tegra-vde/Kconfig       |   1 +
 drivers/staging/media/tegra-vde/Makefile      |   1 +
 .../staging/media/tegra-vde/dmabuf-cache.c    | 226 ++++++++++++++++++
 drivers/staging/media/tegra-vde/iommu.c       | 149 ++++++++++++
 drivers/staging/media/tegra-vde/trace.h       |   2 +
 drivers/staging/media/tegra-vde/uapi.h        |  48 ++--
 .../media/tegra-vde/{tegra-vde.c => vde.c}    | 212 ++++++----------
 drivers/staging/media/tegra-vde/vde.h         | 105 ++++++++
 8 files changed, 581 insertions(+), 163 deletions(-)
 create mode 100644 drivers/staging/media/tegra-vde/dmabuf-cache.c
 create mode 100644 drivers/staging/media/tegra-vde/iommu.c
 rename drivers/staging/media/tegra-vde/{tegra-vde.c => vde.c} (88%)
 create mode 100644 drivers/staging/media/tegra-vde/vde.h

-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
