Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C672F7401
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Jan 2021 09:10:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F173387479;
	Fri, 15 Jan 2021 08:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oGk9hilIABzt; Fri, 15 Jan 2021 08:10:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6686B8744F;
	Fri, 15 Jan 2021 08:10:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 90C231BF9C2
 for <devel@linuxdriverproject.org>; Fri, 15 Jan 2021 08:10:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8ADF6203A9
 for <devel@linuxdriverproject.org>; Fri, 15 Jan 2021 08:10:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YIH0ACaskBV1 for <devel@linuxdriverproject.org>;
 Fri, 15 Jan 2021 08:10:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id EA9882038F
 for <devel@driverdev.osuosl.org>; Fri, 15 Jan 2021 08:10:07 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 65C1E2220B;
 Fri, 15 Jan 2021 08:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610698207;
 bh=Z9dS/80D2fD858tSFphEqa2lTdKTrmr1/55HyD81OWc=;
 h=From:To:Cc:Subject:Date:From;
 b=eXesUTbVzYxLZtqpJiYnWOnuPpmLllRVdiTHHx47tcv78kOhzQeutBhPW6i9uh+9q
 BbuvEokN3oP93Y+frTX0Z6lp87vvvtGyWuisL2WnOKZqBSGyua7bQdPlEKWldVfxkd
 1pp6gCkjP5dGIN0POp4G0kfpIh2pBpr8syjNC+xlPKy2aJOf6GtUNQPz8XQWqZ6hbG
 UvxSJx4HgyF40KlRKbBsFuFrmK/Gte8CrRQ5W0HN5iaMRNWkOUZ/QFb7dvXUr3Q8Q/
 EDq+h1qznfxJ4D5LBO9RKVo0DWV/deGurd0jnA0JWRmDca9jdWj3GsZ/T4xVi2A2cz
 NFKnelBbU2MmQ==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l0KBI-00FiGG-Tb; Fri, 15 Jan 2021 09:10:04 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 0/4] Promote Hikey 970 USB phy out of staging
Date: Fri, 15 Jan 2021 09:09:59 +0100
Message-Id: <cover.1610697726.git.mchehab+huawei@kernel.org>
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
 Alex Dewar <alex.dewar90@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Vinod/Rob,

This series moves  the Hikey 970 USB PHY driver out of staging.

The 3 initial patches address the issues pointed by Vinod:

patch 1 change the logic to use GENMASK and FIELD_GET/FIELD_PREP macros.
It also places all hexadecimal values in lowercase;

patch 2 add a delay inside the retry logic;

patch 3 changes a function to return a boolean.

The 4th patch is actually identical to the patch I sent previously:
it just moves the driver to drivers/phy and add a blank line at the
yaml driver:

 rename drivers/staging/hikey9xx/phy-hi3670-usb3.yaml => Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml (99%)
 rename drivers/{staging/hikey9xx => phy/hisilicon}/phy-hi3670-usb3.c (100%)

In order to make this series easier to review, I'm submitting it with
--no-merges. This way, you can check the  driver and DT bindings
as a hole while reviewing the last patch.

-

v3: 
- no changes on patches 1-2 nor at phy-hi3670-usb3.c;
- yaml renamed to: hisilicon,hi3670-usb3.yaml 
- Added a blank line after maintainers at hisilicon,hi3670-usb3.yaml 

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
