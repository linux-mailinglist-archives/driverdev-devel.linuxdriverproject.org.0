Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFCD2F67BA
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 Jan 2021 18:35:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 64A0387402;
	Thu, 14 Jan 2021 17:35:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KQkh8xcPGYKk; Thu, 14 Jan 2021 17:35:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B1761873DA;
	Thu, 14 Jan 2021 17:35:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 04DF31BF9C1
 for <devel@linuxdriverproject.org>; Thu, 14 Jan 2021 17:35:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 01D2286A9E
 for <devel@linuxdriverproject.org>; Thu, 14 Jan 2021 17:35:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DJh2l-T-QOka for <devel@linuxdriverproject.org>;
 Thu, 14 Jan 2021 17:35:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6BC3F86A9D
 for <devel@driverdev.osuosl.org>; Thu, 14 Jan 2021 17:35:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0964D23B40;
 Thu, 14 Jan 2021 17:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610645748;
 bh=SJ+Kx1oHPeloSq393jp+F5VoiD47GhOjY7z0REOmWa4=;
 h=From:To:Cc:Subject:Date:From;
 b=n5S3nxUwMeDXNo08BPrAnbBwUqwobPon4gfUoRurFSjFV2B6t0Nm0Jqb+8zOjnjSG
 8K3kAVkLr+06MF5HCBcGvs18cPZx1WGzm7ZF0eECF28YRz2KA5Apez37nx0slSdksL
 uEMJBi+mB12vx7WxxvE0gQm/hOKv7dmUC0mNvtraq4wMPpa00kTpGwaOH0LmCYtG0H
 Lo/sfUIfoD+vT1KoL0FhQiqXppa/D783co3IMefVrL1hbzvY5fgGwXPP79T9yOdCpR
 QxenEQX+at+AVrVjFVPqpEvK3Ff5YZMGjcxzMMz9zTz2XGNmHfKvAsH0gibd6D96Ld
 XL4Q0+//hMVgw==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l06XB-00FQtr-F7; Thu, 14 Jan 2021 18:35:45 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v2 0/4] Promote Hikey 970 USB phy out of staging
Date: Thu, 14 Jan 2021 18:35:40 +0100
Message-Id: <cover.1610645385.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Yu Chen <chenyu56@huawei.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Vinod,

This series contain just the PHY patch I sent in Nov, 30 from this series:      

        Move Hikey 970 USB support out of staging and add DT

The 3 initial patches address the issues you pointed during your
review:

patch 1 change the logic to use GENMASK and FIELD_GET/FIELD_PREP macros.
It also places all hexadecimal values in lowercase;

patch 2 add a delay inside the retry logic;

patch 3 changes a function to return a boolean.

The 4th patch is actually identical to the patch I sent previously:
it just moves the driver to drivers/phy:
 rename {drivers/staging/hikey9xx => Documentation/devicetree/bindings/phy}/phy-hi3670-usb3.yaml (100%)
 rename drivers/{staging/hikey9xx => phy/hisilicon}/phy-hi3670-usb3.c (100%)

Yet, in order to make this series easier to review, I'm submitting it with
--no-merges. This way, you can check the  driver as a hole while reviewing
the last patch.

Mauro Carvalho Chehab (4):
  staging: hikey9xx: phy-hi3670-usb3.c: use bitfield macros
  staging: hikey9xx: phy-hi3670-usb3.c: adjust retry logic
  staging: hikey9xx: phy-hi3670-usb3.c: hi3670_is_abbclk_seleted()
    returns bool
  phy: phy-hi3670-usb3: move driver from staging into phy

 .../bindings/phy/phy-hi3670-usb3.yaml         |  72 ++
 MAINTAINERS                                   |   9 +-
 drivers/phy/hisilicon/Kconfig                 |  10 +
 drivers/phy/hisilicon/Makefile                |   1 +
 drivers/phy/hisilicon/phy-hi3670-usb3.c       | 668 +++++++++++++++++
 drivers/staging/hikey9xx/Kconfig              |  11 -
 drivers/staging/hikey9xx/Makefile             |   2 -
 drivers/staging/hikey9xx/phy-hi3670-usb3.c    | 671 ------------------
 drivers/staging/hikey9xx/phy-hi3670-usb3.yaml |  72 --
 9 files changed, 759 insertions(+), 757 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/phy-hi3670-usb3.yaml
 create mode 100644 drivers/phy/hisilicon/phy-hi3670-usb3.c
 delete mode 100644 drivers/staging/hikey9xx/phy-hi3670-usb3.c
 delete mode 100644 drivers/staging/hikey9xx/phy-hi3670-usb3.yaml

-- 
2.29.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
