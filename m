Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A61B310832
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Feb 2021 10:46:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 52A6887337;
	Fri,  5 Feb 2021 09:46:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eyb55NprXUnz; Fri,  5 Feb 2021 09:46:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B812D87330;
	Fri,  5 Feb 2021 09:46:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C7F221BF383
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 09:46:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C54A187143
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 09:46:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8+ydbrcgbDzX for <devel@linuxdriverproject.org>;
 Fri,  5 Feb 2021 09:46:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 23B978712F
 for <devel@driverdev.osuosl.org>; Fri,  5 Feb 2021 09:46:51 +0000 (UTC)
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4DX9Wr181gz164x6;
 Fri,  5 Feb 2021 17:45:28 +0800 (CST)
Received: from localhost.localdomain (10.67.165.24) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.498.0; Fri, 5 Feb 2021 17:46:40 +0800
From: Yicong Yang <yangyicong@hisilicon.com>
To: <gregkh@linuxfoundation.org>, <jdelvare@suse.com>, <linux@roeck-us.net>,
 <giometti@enneenne.com>, <abbotti@mev.co.uk>, <hsweeten@visionengravers.com>, 
 <kw@linux.com>, <helgaas@kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-pm@vger.kernel.org>, <linux-hwmon@vger.kernel.org>,
 <devel@driverdev.osuosl.org>, <linux-kbuild@vger.kernel.org>,
 <masahiroy@kernel.org>, <michal.lkml@markovi.net>
Subject: [PATCH 4/4] staging: comedi: Use subdir-ccflags-* to inherit debug
 flag
Date: Fri, 5 Feb 2021 17:44:15 +0800
Message-ID: <1612518255-23052-5-git-send-email-yangyicong@hisilicon.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1612518255-23052-1-git-send-email-yangyicong@hisilicon.com>
References: <1612518255-23052-1-git-send-email-yangyicong@hisilicon.com>
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

From: Junhao He <hejunhao2@hisilicon.com>

Use subdir-ccflags-* instead of ccflags-* to inherit the debug
settings from Kconfig when traversing subdirectories.

Suggested-by: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Junhao He <hejunhao2@hisilicon.com>
Signed-off-by: Yicong Yang <yangyicong@hisilicon.com>
---
 drivers/staging/comedi/Makefile               | 2 +-
 drivers/staging/comedi/drivers/Makefile       | 1 -
 drivers/staging/comedi/drivers/tests/Makefile | 2 --
 drivers/staging/comedi/kcomedilib/Makefile    | 2 --
 4 files changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/staging/comedi/Makefile b/drivers/staging/comedi/Makefile
index 072ed83..f51cc14 100644
--- a/drivers/staging/comedi/Makefile
+++ b/drivers/staging/comedi/Makefile
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
-ccflags-$(CONFIG_COMEDI_DEBUG)		:= -DDEBUG
+subdir-ccflags-$(CONFIG_COMEDI_DEBUG)	:= -DDEBUG
 
 comedi-y				:= comedi_fops.o range.o drivers.o \
 					   comedi_buf.o
diff --git a/drivers/staging/comedi/drivers/Makefile b/drivers/staging/comedi/drivers/Makefile
index b24ac00..7cafc36 100644
--- a/drivers/staging/comedi/drivers/Makefile
+++ b/drivers/staging/comedi/drivers/Makefile
@@ -1,7 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 # Makefile for individual comedi drivers
 #
-ccflags-$(CONFIG_COMEDI_DEBUG)		:= -DDEBUG
 
 # Comedi "helper" modules
 obj-$(CONFIG_COMEDI_8254)		+= comedi_8254.o
diff --git a/drivers/staging/comedi/drivers/tests/Makefile b/drivers/staging/comedi/drivers/tests/Makefile
index b5d8e13..44ac13d 100644
--- a/drivers/staging/comedi/drivers/tests/Makefile
+++ b/drivers/staging/comedi/drivers/tests/Makefile
@@ -1,7 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 # Makefile for comedi drivers unit tests
 #
-ccflags-$(CONFIG_COMEDI_DEBUG)		:= -DDEBUG
-
 obj-$(CONFIG_COMEDI_TESTS)		+= example_test.o ni_routes_test.o
 CFLAGS_ni_routes_test.o			:= -DDEBUG
diff --git a/drivers/staging/comedi/kcomedilib/Makefile b/drivers/staging/comedi/kcomedilib/Makefile
index 8031142..9f20318 100644
--- a/drivers/staging/comedi/kcomedilib/Makefile
+++ b/drivers/staging/comedi/kcomedilib/Makefile
@@ -1,6 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
-ccflags-$(CONFIG_COMEDI_DEBUG)		:= -DDEBUG
-
 obj-$(CONFIG_COMEDI_KCOMEDILIB)	+= kcomedilib.o
 
 kcomedilib-objs := kcomedilib_main.o
-- 
2.8.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
