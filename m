Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E98CC245D74
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:11:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7E3B187D9F;
	Mon, 17 Aug 2020 07:11:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KyFGqm+ESf8Q; Mon, 17 Aug 2020 07:11:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 840A087CB8;
	Mon, 17 Aug 2020 07:11:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D5B411BF471
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D30452046B
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7zSPYTJWltQs for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 2322620444
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AED44207FB;
 Mon, 17 Aug 2020 07:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597648276;
 bh=kXMV8wukE99rUYUOv+jkANRPnJMhnnypd20U67KLfaM=;
 h=From:To:Cc:Subject:Date:From;
 b=jOAsnPYqqJ4qtBSn87nrOrPbEigb7xFFYFG8QCQ4rp/xTsR2UPFbZGd19UWPCV/vV
 HcskDkPpEiYRvvhpHxz6Q5a1MCnRJNmboj2KF+K7HaLxiqH9IiwAsDEMLnMBPaHjUY
 uYUGXE4Uls0X5F2zdmeiuWsXFDR57VpXqfnWmLIQ=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZIY-00BdjC-MB; Mon, 17 Aug 2020 09:11:14 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 00/44] SPMI patches needed by Hikey 970
Date: Mon, 17 Aug 2020 09:10:19 +0200
Message-Id: <cover.1597647359.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-arm-msm@vger.kernel.org, linuxarm@huawei.com,
 Wei Xu <xuwei5@hisilicon.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 mauro.chehab@huawei.com, Lee Jones <lee.jones@linaro.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

This patch series is part of a work I'm doing in order to be able to support
a HiKey 970 board that I recently got on my hands.

Regards,
Mauro.

v1:
   submitted to drivers/{mfd,spmi,regulator}

v2:
  - submitted via staging, mainly to preserve original
    authorship and his SoB;
  - as requested on previous review, patches were split per
    target subsystem.

v3:
  - Some coding style changes, due to reviews from Joe Perches

Patches were tested on a Hikey 970 board.

Mauro Carvalho Chehab (41):
  staging: spmi: hisi-spmi-controller: coding style fixup
  staging: spmi: hisi-spmi-controller: fix it to probe successfully
  staging: spmi: hisi-spmi-controller: fix a typo
  staging: spmi: hisi-spmi-controller: adjust whitespaces at defines
  staging: spmi: hisi-spmi-controller: use le32 macros where needed
  staging: spmi: hisi-spmi-controller: add debug when values are
    read/write
  staging: spmi: hisi-spmi-controller: fix the dev_foo() logic
  staging: spmi: hisi-spmi-controller: add it to the building system
  staging: spmi: hisi-spmi-controller: do some code cleanups
  staging: mfd: hi6421-spmi-pmic: get rid of unused code
  staging: mfd: hi6421-spmi-pmic: deal with non-static functions
  staging: mfd: hi6421-spmi-pmic: get rid of the static vars
  staging: mfd: hi6421-spmi-pmic: cleanup hi6421-spmi-pmic.h header
  staging: mfd: hi6421-spmi-pmic: change the binding logic
  staging: mfd: hi6421-spmi-pmic: get rid of unused OF properties
  staging: mfd: hi6421-spmi-pmic: cleanup OF properties
  staging: mfd: hi6421-spmi-pmic: change namespace on its functions
  staging: mfd: hi6421-spmi-pmic: fix some coding style issues
  staging: mfd: hi6421-spmi-pmic: add it to the building system
  staging: mfd: hi6421-spmi-pmic: cleanup the code
  staging: regulator: hi6421v600-regulator: get rid of unused code
  staging: regulator: hi6421v600-regulator: port it to upstream
  staging: regulator: hi6421v600-regulator: coding style fixups
  staging: regulator: hi6421v600-regulator: change the binding logic
  staging: regulator: hi6421v600-regulator: cleanup struct
    hisi_regulator
  staging: regulator: hi6421v600-regulator: cleanup debug messages
  staging: regulator: hi6421v600-regulator: use shorter names for OF
    properties
  staging: regulator: hi6421v600-regulator: better handle modes
  staging: regulator: hi6421v600-regulator: change namespace
  staging: regulator: hi6421v600-regulator: convert to use get/set
    voltage_sel
  staging: regulator: hi6421v600-regulator: don't use usleep_range for
    off_on_delay
  staging: regulator: hi6421v600-regulator: add a driver-specific debug
    macro
  staging: regulator: hi6421v600-regulator: initialize ramp_delay
  staging: regulator: hi6421v600-regulator: cleanup DT settings
  staging: regulator: hi6421v600-regulator: fix some coding style issues
  staging: regulator: hi6421v600-regulator: add it to the building
    system
  staging: regulator: hi6421v600-regulator: code cleanup
  staging: hikey9xx: add a TODO list
  MAINTAINERS: add an entry for HiSilicon 6421v600 drivers
  dt: document HiSilicon SPMI controller and mfd/regulator properties
  dt: hisilicon: add support for the PMIC found on Hikey 970

Mayulong (3):
  staging: spmi: add Hikey 970 SPMI controller driver
  staging: mfd: add a PMIC driver for HiSilicon 6421 SPMI version
  staging: regulator: add a regulator driver for HiSilicon 6421v600 SPMI
    PMIC

 .../mfd/hisilicon,hi6421-spmi-pmic.yaml       | 182 +++++++
 .../spmi/hisilicon,hisi-spmi-controller.yaml  |  54 ++
 MAINTAINERS                                   |   6 +
 .../boot/dts/hisilicon/hi3670-hikey970.dts    |  22 +-
 .../boot/dts/hisilicon/hikey970-pmic.dtsi     | 200 ++++++++
 drivers/staging/Kconfig                       |   2 +
 drivers/staging/Makefile                      |   1 +
 drivers/staging/hikey9xx/Kconfig              |  35 ++
 drivers/staging/hikey9xx/Makefile             |   5 +
 drivers/staging/hikey9xx/TODO                 |   5 +
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c   | 382 ++++++++++++++
 .../staging/hikey9xx/hi6421v600-regulator.c   | 479 ++++++++++++++++++
 .../staging/hikey9xx/hisi-spmi-controller.c   | 356 +++++++++++++
 include/linux/mfd/hi6421-spmi-pmic.h          |  68 +++
 14 files changed, 1778 insertions(+), 19 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
 create mode 100644 Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml
 create mode 100644 arch/arm64/boot/dts/hisilicon/hikey970-pmic.dtsi
 create mode 100644 drivers/staging/hikey9xx/Kconfig
 create mode 100644 drivers/staging/hikey9xx/Makefile
 create mode 100644 drivers/staging/hikey9xx/TODO
 create mode 100644 drivers/staging/hikey9xx/hi6421-spmi-pmic.c
 create mode 100644 drivers/staging/hikey9xx/hi6421v600-regulator.c
 create mode 100644 drivers/staging/hikey9xx/hisi-spmi-controller.c
 create mode 100644 include/linux/mfd/hi6421-spmi-pmic.h

-- 
2.26.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
