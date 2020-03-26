Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 540B31942EE
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Mar 2020 16:21:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8FAD5888C7;
	Thu, 26 Mar 2020 15:21:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MEsZi8oYtwXB; Thu, 26 Mar 2020 15:21:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E826888865;
	Thu, 26 Mar 2020 15:21:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9198A1BF59B
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 15:21:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7E4D420446
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 15:21:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NXhBaqViGiby for <devel@linuxdriverproject.org>;
 Thu, 26 Mar 2020 15:21:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id BC0002042C
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 15:21:35 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad4d8.dynamic.kabel-deutschland.de
 [95.90.212.216])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 696AE2073E;
 Thu, 26 Mar 2020 15:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585236095;
 bh=IrNjZ3rpXCLq0ROmJORSHoP5KphKizMWinfQJm/QS74=;
 h=From:To:Cc:Subject:Date:From;
 b=TsSIrKgUvl6/Im0yJnwtI4fCtipN2ZVFHVOx3XkozrGfmUb9RYzZw6UG34hL/bT/u
 InVz3yx+C5ewSa2xKjm5A6yvcOr2iOruA9Byey6fhWgaUcfOR0Ac5JRyoU2AK2BrsW
 lRPeCScCOG95BVrxP21qaqMJTBuNM4v1B1S24QDI=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jHUK5-003dib-K9; Thu, 26 Mar 2020 16:21:33 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH 0/7] media Kconfig reorg - part 3
Date: Thu, 26 Mar 2020 16:21:25 +0100
Message-Id: <cover.1585235736.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

That's a third part of the patch series with improve the media Kconfig
settings.

The entire series is
at:

	https://git.linuxtv.org/mchehab/experimental.git/log/?h=media-kconfig

patch 1 addresses a report from Helen that an user might not notice
that drivers are filtered. So, it adds an explicit message warning
about that;

patch 2 marks PCI skeleton and dvb-dummy-fe as test drivers too;

patch 3-5 duplicates the dvb_dummy_fe driver into the ddbridge driver.
The ddbridge driver is unique: it has a PCI bridge with some slots for
frontends. When the slot is empty, it uses the dummy frontend. As we'll
be soon changing the dummy frontend to make it a virtual driver, and no
other real driver requires a dummy FE, place a simplified copy of it at
the ddbridge directory;

patch 6 fix several problems related to media test devices. Before
such patch, one would need to build a real driver in order to select
the needed cores for the test ones.

patch 7 adds some missing SPDX headers at the media build system.

Mauro Carvalho Chehab (7):
  media: Kconfig: warn if drivers are filtered
  media: Kconfig: mark other drivers as test drivers
  media: ddbridge: copy the dvb_dummy_fe driver to ddbridge
  media: ddbridge-dummy_fe: do some vars and function renames
  media: ddbridge: use the ddbridge's own dummy fe driver
  media: Kconfig: fix selection for test drivers
  media: add SPDX headers on Kconfig and Makefile files

 drivers/media/Kconfig                         |   7 +-
 drivers/media/dvb-frontends/Kconfig           |  15 +-
 drivers/media/mc/Kconfig                      |   2 +
 drivers/media/pci/Kconfig                     |   9 +-
 drivers/media/pci/ddbridge/Kconfig            |   1 -
 drivers/media/pci/ddbridge/Makefile           |   2 +-
 drivers/media/pci/ddbridge/ddbridge-core.c    |   4 +-
 .../media/pci/ddbridge/ddbridge-dummy-fe.c    | 153 ++++++++++++++++++
 .../media/pci/ddbridge/ddbridge-dummy-fe.h    |  16 ++
 drivers/media/platform/sunxi/Kconfig          |   2 +
 drivers/media/platform/sunxi/Makefile         |   2 +
 .../media/platform/sunxi/sun4i-csi/Kconfig    |   2 +
 .../media/platform/sunxi/sun4i-csi/Makefile   |   2 +
 drivers/media/test_drivers/Kconfig            |   2 +-
 drivers/staging/media/hantro/Makefile         |   2 +
 drivers/staging/media/rkisp1/Makefile         |   2 +
 16 files changed, 210 insertions(+), 13 deletions(-)
 create mode 100644 drivers/media/pci/ddbridge/ddbridge-dummy-fe.c
 create mode 100644 drivers/media/pci/ddbridge/ddbridge-dummy-fe.h

-- 
2.25.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
