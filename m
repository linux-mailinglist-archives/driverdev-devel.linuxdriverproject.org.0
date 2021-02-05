Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE189310834
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Feb 2021 10:47:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7814B2E117;
	Fri,  5 Feb 2021 09:47:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JT9W3pB2hbg1; Fri,  5 Feb 2021 09:47:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9028E203AC;
	Fri,  5 Feb 2021 09:47:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 00E351BF383
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 09:46:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F1735203AC
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 09:46:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zANUNhSifEyI for <devel@linuxdriverproject.org>;
 Fri,  5 Feb 2021 09:46:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id B84712E117
 for <devel@driverdev.osuosl.org>; Fri,  5 Feb 2021 09:46:54 +0000 (UTC)
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4DX9Wr253Mz164xC;
 Fri,  5 Feb 2021 17:45:28 +0800 (CST)
Received: from localhost.localdomain (10.67.165.24) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.498.0; Fri, 5 Feb 2021 17:46:38 +0800
From: Yicong Yang <yangyicong@hisilicon.com>
To: <gregkh@linuxfoundation.org>, <jdelvare@suse.com>, <linux@roeck-us.net>,
 <giometti@enneenne.com>, <abbotti@mev.co.uk>, <hsweeten@visionengravers.com>, 
 <kw@linux.com>, <helgaas@kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-pm@vger.kernel.org>, <linux-hwmon@vger.kernel.org>,
 <devel@driverdev.osuosl.org>, <linux-kbuild@vger.kernel.org>,
 <masahiroy@kernel.org>, <michal.lkml@markovi.net>
Subject: [PATCH 0/4] Use subdir-ccflags-* to inherit debug flag
Date: Fri, 5 Feb 2021 17:44:11 +0800
Message-ID: <1612518255-23052-1-git-send-email-yangyicong@hisilicon.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.67.165.24]
X-CFilter-Loop: Reflected
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
Cc: linuxarm@openeuler.org, prime.zeng@huawei.com, yangyicong@hisilicon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Few drivers use ccflags-* in their top directory to enable
-DDEBUG, but don't have config options to enable debug
in the sub-directories. They should want the subdirectories
inherit the debug flag from the top.

Use subdir-ccflags-* instead of ccflags-* to inherit the debug
settings from Kconfig when traversing subdirectories.

We primarily find this issue when debugging PCIe and other
drivers may also have this issues. Previous discussion can
be find at
https://lore.kernel.org/linux-pci/1612438215-33105-1-git-send-email-yangyicong@hisilicon.com/

Junhao He (4):
  driver core: Use subdir-ccflags-* to inherit debug flag
  hwmon: Use subdir-ccflags-* to inherit debug flag
  pps: Use subdir-ccflags-* to inherit debug flag
  staging: comedi: Use subdir-ccflags-* to inherit debug flag

 drivers/base/Makefile                         | 2 +-
 drivers/base/power/Makefile                   | 2 --
 drivers/hwmon/Makefile                        | 2 +-
 drivers/pps/Makefile                          | 2 +-
 drivers/staging/comedi/Makefile               | 2 +-
 drivers/staging/comedi/drivers/Makefile       | 1 -
 drivers/staging/comedi/drivers/tests/Makefile | 2 --
 drivers/staging/comedi/kcomedilib/Makefile    | 2 --
 8 files changed, 4 insertions(+), 11 deletions(-)

-- 
2.8.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
