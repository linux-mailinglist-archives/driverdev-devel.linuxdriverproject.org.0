Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A63E12FA17A
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Jan 2021 14:28:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 01C51859C1;
	Mon, 18 Jan 2021 13:28:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tZxJig7d0eHe; Mon, 18 Jan 2021 13:28:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6F1F78577A;
	Mon, 18 Jan 2021 13:28:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 697BC1BF962
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 13:28:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 64C6D86F58
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 13:28:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gRsDzuzM3fC7 for <devel@linuxdriverproject.org>;
 Mon, 18 Jan 2021 13:28:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B06B786ECC
 for <devel@driverdev.osuosl.org>; Mon, 18 Jan 2021 13:28:19 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 52E2622D3E;
 Mon, 18 Jan 2021 13:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610976499;
 bh=ER44iK7yD08nTVE0Gmc9J0iq1NcY3wonsHp6uZKbQG8=;
 h=From:To:Cc:Subject:Date:From;
 b=DYUg0oEuvGPRdLbKChKcbWun+yfepbQfHp5228jiVrb/6wdrBk8zNApGezf143EvL
 gRy/ANNBcS0zCTqtIQdZisweYUC3YnBK+z2L1VUMLrlgNpWmnK9tKuTy2VC4TjBs3P
 QPu/fZ8G7i4UMKdAjqp49HA+vkc6k9lfYRLYs50oTWu6kjOrmDz/T7wpcTnqkhvMJw
 CDDqluhSMY+ovBz2tzu9NMrrlNhvnolTGu+dBke8DdMOv7FpuLfpIf+Phu5+ryJCv7
 lZ+/sZ2oNaWTFTYKk5kOH8Pe9TnmnV+nCPw49IoFQvijj5Xt79pt7GfxGqPvHPoVAU
 lnT5IaUJ4IQsw==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l1UZs-000Vkc-9x; Mon, 18 Jan 2021 14:28:16 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 00/13] Move Hisilicon 6421v600 SPMI driver set out of
 staging
Date: Mon, 18 Jan 2021 14:28:01 +0100
Message-Id: <cover.1610975633.git.mchehab+huawei@kernel.org>
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
 Colin Ian King <colin.king@canonical.com>, Lee Jones <lee.jones@linaro.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Mark,

This patch series finish addressing support for Hikey 970
SPMI controller, PMIC and regulators.

I removed some unrelated DT patches from this series,
plus the Hikey 970 PHY USB3 code from it, in order to avoid
mixing different stuff on this series[1].

[1] Those unrelated patches were submitted last week on
separate series.

The entire patchset is on this branch:

	https://git.linuxtv.org/mchehab/experimental.git/log/?h=devel/destage-usb

In order to make easier for review, this series was generated
with --no-merges. So, you don't need to take a look at the
staging patches, as the entire code will be there on patches 9-11.

Patches 12 and 13 on this series will require that the other
patch series to get merged first. It probably makes sense to be
merged via DT tree. I opted to add them here just because,
on the last submission, you asked to see the DT patches. 

On this version 2, I addressed almost all issues you pointed during
your review:

- this driver's probe routine is very similar to the one at the non-SPMI
  variant of Hisilicon 6421;
- The register/voltage data were moved from DT into the driver itself;
- It doesn't have anymore any static data;
- All debug messages got removed;
- Addressed a few be32 warnings from sparse.

Regards,
Mauro

Mauro Carvalho Chehab (13):
  staging: hikey9xx: hisilicon,hisi-spmi-controller.yaml fix bindings
  staging: hikey9xx: hisi-spmi-controller: clean sparse warnings
  staging: hikey9xx: hi6421v600-regulator: do some cleanups
  staging: hikey9xx: hi6421v600-regulator: move LDO config from DT
  staging: hikey9xx: hi6421v600-regulator: cleanup debug msgs
  staging: hikey9xx: hisilicon,hi6421-spmi-pmic.yaml: simplify props
  staging: hikey970: get rid of an static data
  staging: hikey9xx: hi6421v600-regulator: do some cleanups
  spmi: hi6421-spmi-pmic: move driver from staging
  mfd: hi6421-spmi-pmic: move driver from staging
  regulator: hi6421v600-regulator: move it from staging
  dts: hisilicon: add support for USB3 on Hikey 970
  dts: hisilicon: add support for the PMIC found on Hikey 970

 .../mfd/hisilicon,hi6421-spmi-pmic.yaml       | 135 +++++
 .../spmi/hisilicon,hisi-spmi-controller.yaml  |  75 +++
 MAINTAINERS                                   |  15 +-
 .../boot/dts/hisilicon/hi3670-hikey970.dts    | 124 ++++-
 arch/arm64/boot/dts/hisilicon/hi3670.dtsi     |  58 +++
 .../boot/dts/hisilicon/hikey970-pmic.dtsi     |  87 ++++
 drivers/mfd/Kconfig                           |  15 +
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/hi6421-spmi-pmic.c                | 342 +++++++++++++
 drivers/regulator/Kconfig                     |   8 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/hi6421v600-regulator.c      | 347 +++++++++++++
 drivers/spmi/Kconfig                          |   9 +
 drivers/spmi/Makefile                         |   1 +
 drivers/spmi/hisi-spmi-controller.c           | 358 +++++++++++++
 drivers/staging/Kconfig                       |   2 -
 drivers/staging/Makefile                      |   1 -
 drivers/staging/hikey9xx/Kconfig              |  38 --
 drivers/staging/hikey9xx/Makefile             |   5 -
 drivers/staging/hikey9xx/TODO                 |   5 -
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c   | 342 -------------
 .../staging/hikey9xx/hi6421v600-regulator.c   | 478 ------------------
 .../staging/hikey9xx/hisi-spmi-controller.c   | 358 -------------
 .../hikey9xx/hisilicon,hi6421-spmi-pmic.yaml  | 159 ------
 .../hisilicon,hisi-spmi-controller.yaml       |  62 ---
 25 files changed, 1554 insertions(+), 1472 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
 create mode 100644 Documentation/devicetree/bindings/spmi/hisilicon,hisi-spmi-controller.yaml
 create mode 100644 arch/arm64/boot/dts/hisilicon/hikey970-pmic.dtsi
 create mode 100644 drivers/mfd/hi6421-spmi-pmic.c
 create mode 100644 drivers/regulator/hi6421v600-regulator.c
 create mode 100644 drivers/spmi/hisi-spmi-controller.c
 delete mode 100644 drivers/staging/hikey9xx/Kconfig
 delete mode 100644 drivers/staging/hikey9xx/Makefile
 delete mode 100644 drivers/staging/hikey9xx/TODO
 delete mode 100644 drivers/staging/hikey9xx/hi6421-spmi-pmic.c
 delete mode 100644 drivers/staging/hikey9xx/hi6421v600-regulator.c
 delete mode 100644 drivers/staging/hikey9xx/hisi-spmi-controller.c
 delete mode 100644 drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml
 delete mode 100644 drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller.yaml

-- 
2.29.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
