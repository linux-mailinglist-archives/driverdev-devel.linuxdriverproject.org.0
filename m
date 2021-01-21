Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1002FE3AC
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Jan 2021 08:18:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C6D0B860FD;
	Thu, 21 Jan 2021 07:18:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SQoNGALReThM; Thu, 21 Jan 2021 07:18:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D2F74861BC;
	Thu, 21 Jan 2021 07:18:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 88F961C1127
 for <devel@linuxdriverproject.org>; Thu, 21 Jan 2021 07:18:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7E91720763
 for <devel@linuxdriverproject.org>; Thu, 21 Jan 2021 07:18:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wDXvlhHm20Ah for <devel@linuxdriverproject.org>;
 Thu, 21 Jan 2021 07:18:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 4850320791
 for <devel@driverdev.osuosl.org>; Thu, 21 Jan 2021 07:18:29 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4F02D239EB;
 Thu, 21 Jan 2021 07:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611213508;
 bh=BH323A96671wBxsWq5JSNzrGgyPy3nPY3HxuAVj+PcE=;
 h=From:To:Cc:Subject:Date:From;
 b=LQcSN3iS+RCjsfFHrcP6OvJVnUytFjJeop6yQ/3qGV6KN//xoOmtBHUP7+PcOop9I
 UZRQWm9GJgweHmyTB1xxTUHZ31/LDGrbVntvsTY5f9JmomuWuKOn53RcTV39an4SFC
 ubTEg+GWGsFcHTu8QvzawMI+/53xUrQS76LRjkItV3wYluNxGAfpLbBX/ND1h8hlgM
 qw09hc63LmJxDGJtGSUhmX6yyjZ3gVwa6y3CLnrgVM9uMYh0/fikqTH20P0M1jtSHR
 dDK0Cb07OmgbAmBuG7JFUbGKKTO1wlvmhuM4v8r+isRdDcgFR20Gs+SyyUA0onVdcL
 0MbYxU1WlNOtQ==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l2UEb-004Bru-9D; Thu, 21 Jan 2021 08:18:25 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v5 00/21] Move Hisilicon 6421v600 SPMI driver set out of
 staging
Date: Thu, 21 Jan 2021 08:18:02 +0100
Message-Id: <cover.1611212783.git.mchehab+huawei@kernel.org>
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
 Mayulong <mayulong1@huawei.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 YueHaibing <yuehaibing@huawei.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Wei Xu <xuwei5@hisilicon.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Mark/Lee,

This patch series finish addressing support for Hikey 970
SPMI controller, PMIC and regulators.

This version was generated with -M, in order to make easier
to merge upstream.  Also, rebased on the top of v5.10,
without any dependencies from the other patch series
I'm submitting for this board.

Yet,  patch 18 to 20 modifies drivers/staging/hikey9xx/Kconfig
and drivers/staging/hikey9xx/Makefile. So, trivial conflicts
will rise if they're applied via different trees, as they all
remove some lines from such files. 

Regards,
Mauro

v5:
- rebased to not depend on USB PHY patchset;
- removed an USB-specific DT binding;
- changed the subject of one of the patches;
- no driver nor DT contents were changed.

v4:
- use regmap for mfd and spmi drivers;
- a few minor cleanups at the mfd driver.

v3:
- fixed a bug with eco-mode at get_optimum_mode;
- changed the sleep logic when enabling/disabling a power line;
- additional cleanups, as requested by Mark.

v2:

- this driver's probe routine is very similar to the one at the non-SPMI
  variant of Hisilicon 6421;
- The register/voltage data were moved from DT into the driver itself;
- It doesn't have anymore any static data;
- All debug messages got removed;
- Addressed a few be32 warnings from sparse.

Mauro Carvalho Chehab (21):
  staging: hikey9xx: hisilicon,hisi-spmi-controller.yaml fix bindings
  staging: hikey9xx: hisilicon,hi6421-spmi-pmic.yaml: simplify props
  staging: hikey9xx: hisi-spmi-controller: clean sparse warnings
  staging: hikey9xx: hi6421v600-regulator: do some cleanups
  staging: hikey9xx: hi6421v600-regulator: move LDO config from DT
  staging: hikey9xx: hi6421v600-regulator: cleanup debug msgs
  staging: hikey9xx: hi6421v600-regulator: get rid of an static data
  staging: hikey9xx: hi6421v600-regulator: do some cleanups
  staging: hikey9xx: hi6421v600-regulator: update copyright
  staging: hikey9xx: hi6421v600-regulator: fix delay logic
  staging: hikey9xx: hi6421v600-regulator: cleanup comments
  staging: hikey9xx: hi6421v600-regulator: fix get_optimum_mode
  staging: hikey9xx: hisilicon,hi6421-spmi-pmic.yaml: cleanup a warning
  staging: hikey9xx: spmi driver: convert to regmap
  staging: hikey9xx: hi6421-spmi-pmic: update copyright
  staging: hikey9xx: hi6421-spmi-pmic: simplify includes
  staging: hikey9xx: hi6421v600-regulator: use some regmap helpers
  spmi: hisi-spmi-controller: move driver from staging
  mfd: hi6421-spmi-pmic: move driver from staging
  regulator: hi6421v600-regulator: move it from staging
  dts: hisilicon: add support for the PMIC found on Hikey 970

 .../mfd/hisilicon,hi6421-spmi-pmic.yaml       | 135 +++++
 .../spmi}/hisilicon,hisi-spmi-controller.yaml |  19 +-
 MAINTAINERS                                   |  15 +-
 .../boot/dts/hisilicon/hi3670-hikey970.dts    |  22 +-
 .../boot/dts/hisilicon/hikey970-pmic.dtsi     |  87 ++++
 drivers/mfd/Kconfig                           |  15 +
 drivers/mfd/Makefile                          |   1 +
 .../hikey9xx => mfd}/hi6421-spmi-pmic.c       | 147 ++----
 drivers/regulator/Kconfig                     |   8 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/hi6421v600-regulator.c      | 299 +++++++++++
 drivers/spmi/Kconfig                          |   9 +
 drivers/spmi/Makefile                         |   1 +
 .../hikey9xx => spmi}/hisi-spmi-controller.c  |   4 +-
 drivers/staging/Kconfig                       |   2 -
 drivers/staging/Makefile                      |   1 -
 drivers/staging/hikey9xx/Kconfig              |  37 --
 drivers/staging/hikey9xx/Makefile             |   4 -
 .../staging/hikey9xx/hi6421v600-regulator.c   | 478 ------------------
 .../hikey9xx/hisilicon,hi6421-spmi-pmic.yaml  | 159 ------
 include/linux/mfd/hi6421-spmi-pmic.h          |   8 +-
 21 files changed, 634 insertions(+), 818 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
 rename {drivers/staging/hikey9xx => Documentation/devicetree/bindings/spmi}/hisilicon,hisi-spmi-controller.yaml (84%)
 create mode 100644 arch/arm64/boot/dts/hisilicon/hikey970-pmic.dtsi
 rename drivers/{staging/hikey9xx => mfd}/hi6421-spmi-pmic.c (65%)
 create mode 100644 drivers/regulator/hi6421v600-regulator.c
 rename drivers/{staging/hikey9xx => spmi}/hisi-spmi-controller.c (99%)
 delete mode 100644 drivers/staging/hikey9xx/hi6421v600-regulator.c
 delete mode 100644 drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml

-- 
2.29.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
