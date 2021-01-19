Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7610D2FB56E
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Jan 2021 11:44:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 430F386F21;
	Tue, 19 Jan 2021 10:44:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UFqL+FwaH26K; Tue, 19 Jan 2021 10:44:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C3C7386D73;
	Tue, 19 Jan 2021 10:44:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6F3D21BF27F
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 10:44:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6C2DA834E6
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 10:44:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qg5gpBz0NnSf for <devel@linuxdriverproject.org>;
 Tue, 19 Jan 2021 10:44:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 36F3086731
 for <devel@driverdev.osuosl.org>; Tue, 19 Jan 2021 10:44:47 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7DBC623133;
 Tue, 19 Jan 2021 10:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611053086;
 bh=rjcTlAC/ryp0e09HlnT0QF/xECvHei8ZjA0QvbaxLI4=;
 h=From:To:Cc:Subject:Date:From;
 b=u9NBfYuKtP60Phebz8NRNodkxGaG8wIyIW/E1TTdRqgB1Lr5jpbxY0THwAbeqvR1d
 amGecAkD0IvE5dxxaKW+JYh5XALCL13qLbzl1mMh+VaPNgxzoeip3aN1q8/lr9wUqr
 wyZf6hC3PtiJZgTUDWQRmMCP4KZI31ngcSevAwht9aDs1e4CkYQYilHiIwlpMnOG5y
 jEp7p8Iyp8zHfuayxfUtqB7Y+ghp7O7K8J/5wkdI5vL6nX1H5l9hw0FX4WYbfGRbt3
 2KcSU1587oBSi1B1WXMLIb/yKh7pBaYTkhaGzPBh2DfL8duXyaS3kVsJ6sFDJ61j8F
 kQzyJAqvEovrQ==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l1oVA-000u2D-2h; Tue, 19 Jan 2021 11:44:44 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 0/5] Promote Hikey 970 USB phy out of staging
Date: Tue, 19 Jan 2021 11:44:38 +0100
Message-Id: <cover.1611052729.git.mchehab+huawei@kernel.org>
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

Patches 1 to 4 contain the fixes from staging. Patch 5 moves the
driver from staging:

	$ git show 82ce73ac9a38 --summary
	...
	 rename drivers/staging/hikey9xx/phy-hi3670-usb3.yaml => Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml (100%)
	 rename drivers/{staging/hikey9xx => phy/hisilicon}/phy-hi3670-usb3.c (100%)

I opted to use --no-renames on this series in order to make easier to
review via e-mail, as the entire driver and DT bindings will be seen
at the last patch on this series.


v4:
- do additional changes at the hi3670_is_abbclk_seleted() function,
  fixing the typo on its name and reversing the bool return code;
- the yaml fix is now on a separate patch.

v3: 
- no changes on patches 1-2 nor at phy-hi3670-usb3.c;
- yaml renamed to: hisilicon,hi3670-usb3.yaml 
- Added a blank line after maintainers at hisilicon,hi3670-usb3.yaml 



Mauro Carvalho Chehab (5):
  staging: hikey9xx: phy-hi3670-usb3: use bitfield macros
  staging: hikey9xx: phy-hi3670-usb3: adjust retry logic
  staging: hikey9xx: phy-hi3670-usb3: hi3670_is_abbclk_seleted() returns
    bool
  staging: hikey9xx: phy-hi3670-usb3.yaml: add a blank line
  phy: phy-hi3670-usb3: move driver from staging into phy

 .../bindings/phy/hisilicon,hi3670-usb3.yaml   |  73 ++
 MAINTAINERS                                   |   9 +-
 drivers/phy/hisilicon/Kconfig                 |  10 +
 drivers/phy/hisilicon/Makefile                |   1 +
 drivers/phy/hisilicon/phy-hi3670-usb3.c       | 668 +++++++++++++++++
 drivers/staging/hikey9xx/Kconfig              |  11 -
 drivers/staging/hikey9xx/Makefile             |   2 -
 drivers/staging/hikey9xx/phy-hi3670-usb3.c    | 671 ------------------
 drivers/staging/hikey9xx/phy-hi3670-usb3.yaml |  72 --
 9 files changed, 760 insertions(+), 757 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,hi3670-usb3.yaml
 create mode 100644 drivers/phy/hisilicon/phy-hi3670-usb3.c
 delete mode 100644 drivers/staging/hikey9xx/phy-hi3670-usb3.c
 delete mode 100644 drivers/staging/hikey9xx/phy-hi3670-usb3.yaml

-- 
2.29.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
