Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D77E4FD0C
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Jun 2019 19:08:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE4BD87347;
	Sun, 23 Jun 2019 17:08:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WVEMcvDEJ1p5; Sun, 23 Jun 2019 17:08:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B502687108;
	Sun, 23 Jun 2019 17:08:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6EB931BF47A
 for <devel@linuxdriverproject.org>; Sun, 23 Jun 2019 17:08:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 685C8203C4
 for <devel@linuxdriverproject.org>; Sun, 23 Jun 2019 17:08:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GnewZslnaeGm for <devel@linuxdriverproject.org>;
 Sun, 23 Jun 2019 17:08:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 8D1902000D
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 17:08:04 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id m29so12159102qtu.1
 for <devel@driverdev.osuosl.org>; Sun, 23 Jun 2019 10:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s6kjF5fXn7CUbLQsdln+pNA94ruY+IQSwhFY01H/Qs0=;
 b=PgdexjanEdOhiC1e7XrrB0kACIXlVM4YPZNLusSVxV8F7FdKSyoaeGZUuzGLwol3hv
 9jSCHyPbTgtJLupSe12qTtZLFZmYVv7WHAjSBbJwa9veh+3hSA4lOStXc1Vb6jTH6YE1
 8IM5XrdHWpbbFJqawEjt2uFSCHnBbJdM0bcsPyDxYrWhnwIIPdtMDW5DgCLV1bkovRw/
 ykU5WzMuEx+qSFwYP4ZLOqIAnYKQahoU2BxDPUot1kR+kBBlCe6c8vbLEJZlzqnUWBgC
 CzHa/NvuP+R9HF55wfCXXs/w5TCh8fCSk3TindbHsnkNEVMPKeC0aFoIlBeVr53EdvZi
 WPzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=s6kjF5fXn7CUbLQsdln+pNA94ruY+IQSwhFY01H/Qs0=;
 b=FVA08o2uvKkjvejCAWP+4sVU4Cjce60R25ntjR59/3hGPOYlzCqgXnzTWwFdPQYaux
 X/wce73Qs5DElzzXLSOwa6cQVnS7U/K7LtCCAFRQqpzRebGqie/eNIz8s/mF7alibNer
 KQPRaVUldVZLeK8FHKczyzGPko3uePQxnlxrvIIvZAKSCfBSV6rtnqqWiKZPjpjRRSET
 ld89ddE9ajEp6LY+P5pE0N8DvLXWfZV78IWwF1UJWOlxkudyIptWkLz4Lei0oGSNbDdv
 rjUhzEoP0D0X57bxr2D5jhd49+vCZrnsM7hrbpTpnOv1DsjhGAZWZyr0TtOoI1qej0BW
 5GdA==
X-Gm-Message-State: APjAAAVCqXGvo3ww70lPcG6Q+UN+YEwIZHek6vH4TCY/A7aMBNrHh1yo
 I73u6MpMchtqKbK63D0H6+o=
X-Google-Smtp-Source: APXvYqxzaFsjcPSti6Fji5wNYEaAxx/IvO8JkiRdoec5MecyPJfs37elqCcHrmJjE1ZnPjcyqooRuw==
X-Received: by 2002:ac8:2e14:: with SMTP id r20mr68598966qta.241.1561309683700; 
 Sun, 23 Jun 2019 10:08:03 -0700 (PDT)
Received: from localhost.localdomain (ppp91-79-162-197.pppoe.mtu-net.ru.
 [91.79.162.197])
 by smtp.gmail.com with ESMTPSA id o54sm5790756qtb.63.2019.06.23.10.08.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 23 Jun 2019 10:08:02 -0700 (PDT)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 0/4] NVIDIA Tegra Video Decoder driver improvements
Date: Sun, 23 Jun 2019 20:07:23 +0300
Message-Id: <20190623170730.5095-1-digetx@gmail.com>
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

v3: - Fixed memory leak on driver's module reload. For some reason I
      erroneously assumed that IOVA reservations are released on IOVA
      destruction themselves.

    - Corrected PFN's for the last-page's IOVA reservation. We want to
      reserve the last page, but a page before the last was reserved.

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
 drivers/staging/media/tegra-vde/iommu.c       | 157 ++++++++++++
 drivers/staging/media/tegra-vde/trace.h       |   2 +
 drivers/staging/media/tegra-vde/uapi.h        |  48 ++--
 .../media/tegra-vde/{tegra-vde.c => vde.c}    | 212 ++++++----------
 drivers/staging/media/tegra-vde/vde.h         | 107 +++++++++
 8 files changed, 591 insertions(+), 163 deletions(-)
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
