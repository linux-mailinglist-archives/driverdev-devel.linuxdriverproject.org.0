Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4CB248873
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 16:59:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3D70B878C8;
	Tue, 18 Aug 2020 14:59:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ic07SwdyfuAH; Tue, 18 Aug 2020 14:59:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AFB5987852;
	Tue, 18 Aug 2020 14:59:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D5A841BF5EA
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:59:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D2EEC86E2C
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 14:59:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id taPGewxMZ7+K for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 14:59:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6289D877E1
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 14:59:05 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0E71C2083B;
 Tue, 18 Aug 2020 14:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597762745;
 bh=j3f7WJfp8SurLGvi2nn0r3BHGS0p/oeGbNNKAllTuzY=;
 h=From:To:Cc:Subject:Date:From;
 b=Vwfl1v+G1X9K1M69UD+cfTSCEQF79Q0U+2pl4ZJZ3Et2M9+qwmMHy6wxIk2dZC0WW
 JBZZ2ycyfF1DLX94PmN2EEurYyKgnAHjgly5XQxeVbN0Qu1sEKxa07dTltZH21cGfv
 Eyyppm78qNMlINE4pXEBcAHi0US/oGqAoQ27G3+c=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k834p-00EGAa-03; Tue, 18 Aug 2020 16:59:03 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 0/6] Do some cleanups at the HiSilicon 6421 regulator
Date: Tue, 18 Aug 2020 16:58:52 +0200
Message-Id: <cover.1597762400.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Rob Herring <robh@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, John Stultz <john.stultz@linaro.org>,
 mauro.chehab@huawei.com, Lee Jones <lee.jones@linaro.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

Patch 1 contains  a Kconfig fixup, addressing the problem you noticed
when building those drivers;

Patches 2 to 4 addresses some issues at the device tree,  pointed by
Rob's review.

Patch 5 adds the DT documentation. As requested, I moved those
also to the staging dir.

Patch 6 adds an entry at MAINTAINERS. I changed the ML to point
to the devel ML.

Thanks!
Mauro


Mauro Carvalho Chehab (6):
  staging: hikey9xx: fix Kconfig dependency chain
  staging: mfd: hi6421-spmi-pmic: get rid of interrupt properties
  staging: spmi: hisi-spmi-controller: change compatible string
  staging: mfd: hi6421-spmi-pmic: Simplify the compatible string
  dt: document HiSilicon SPMI controller and mfd/regulator properties
  MAINTAINERS: add an entry for HiSilicon 6421v600 drivers

 MAINTAINERS                                   |   6 +
 drivers/staging/hikey9xx/Kconfig              |   4 +-
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c   |  82 +++------
 .../staging/hikey9xx/hisi-spmi-controller.c   |   3 +-
 .../hikey9xx/hisilicon,hi6421-spmi-pmic.yaml  | 159 ++++++++++++++++++
 .../hisilicon,hisi-spmi-controller.yaml       |  62 +++++++
 include/linux/mfd/hi6421-spmi-pmic.h          |  15 --
 7 files changed, 253 insertions(+), 78 deletions(-)
 create mode 100644 drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml
 create mode 100644 drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller.yaml

-- 
2.26.2


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
