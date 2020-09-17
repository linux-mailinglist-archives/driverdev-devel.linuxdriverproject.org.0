Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3022526D94F
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Sep 2020 12:42:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AF2D88788A;
	Thu, 17 Sep 2020 10:42:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wFM3YDrzlSZs; Thu, 17 Sep 2020 10:42:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3A1CA878A1;
	Thu, 17 Sep 2020 10:42:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 23C391BF387
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 10:42:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 170202038D
 for <devel@linuxdriverproject.org>; Thu, 17 Sep 2020 10:42:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tkuWCJXGdjsp for <devel@linuxdriverproject.org>;
 Thu, 17 Sep 2020 10:42:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id CBD3B2046D
 for <devel@driverdev.osuosl.org>; Thu, 17 Sep 2020 10:42:22 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5d2.dynamic.kabel-deutschland.de
 [95.90.213.210])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F366021974;
 Thu, 17 Sep 2020 10:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600339342;
 bh=9k9zMYoo7wLOALaUaUO6kuKmP2XcikxIb3HqIINf7VU=;
 h=From:To:Cc:Subject:Date:From;
 b=EPQGk1AIsg3Z+pONCVNoO3iIhe2T4DJKru8TzuTb3Co84VOHkjZEJXzucW8M+Mn9d
 U7ciA6959RmEk6fLE+x9AHEOlh7NFu32eO1smz8ctXlb8JCmP5hEjtF4ZeLTc8p+ej
 AfHtKHfAAm7e08Js6/NWjwlW2g5X+/zJsDSUcTrI=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kIrMp-005WZQ-J9; Thu, 17 Sep 2020 12:42:19 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: [PATCH v4 0/8] Add a staging driver for Hikey 970 PHY laywer
Date: Thu, 17 Sep 2020 12:42:04 +0200
Message-Id: <cover.1600338981.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, Manivannan Sadhasivam <mani@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 John Stultz <john.stultz@linaro.org>, mauro.chehab@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

This series add the phy layer needed for the USB stack to work
on Hikey 970. 

The main difference against v3 is that I'm sending this one via
staging.

In order for this phy to actually work properly, we still need to
apply one quirk patch at dwc3, which fixes some issues with
USB HID driver. 

I'm working with Felipe and Rob in order to add the quirk on
an approach that would be acceptable for both DT and dwc3
maintainers.

Due to that, I'm not sending the final patch that adds the
the needed dt bindings for this board. 

Thanks!
Mauro

Mauro Carvalho Chehab (6):
  staging: hikey9xx: add build for the Kirin 970 PHY driver
  staging: hikey9xx: phy-hi3670-usb3: use a consistent namespace
  staging: hikey9xx: phy-hi3670-usb3.txt: use a consistent namespace
  staging: hikey9xx: phy-hi3670-usb3: fix coding style
  staging: hikey9xx: phy-hi3670-usb3: change some DT properties
  staging: hikey9xx: convert phy-kirin970-usb3.txt to yaml

Yu Chen (2):
  staging: hikey9xx: add USB physical layer for Kirin 3670
  staging: hikey9xx: phy-hi3670-usb3: fix some issues at the init code

 drivers/staging/hikey9xx/Kconfig              |  11 +
 drivers/staging/hikey9xx/Makefile             |   2 +
 drivers/staging/hikey9xx/phy-hi3670-usb3.c    | 671 ++++++++++++++++++
 drivers/staging/hikey9xx/phy-hi3670-usb3.yaml |  72 ++
 4 files changed, 756 insertions(+)
 create mode 100644 drivers/staging/hikey9xx/phy-hi3670-usb3.c
 create mode 100644 drivers/staging/hikey9xx/phy-hi3670-usb3.yaml

-- 
2.26.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
