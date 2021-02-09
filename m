Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D11A314DE6
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Feb 2021 12:11:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB5B986F6A;
	Tue,  9 Feb 2021 11:11:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 20Gur6GlBf4c; Tue,  9 Feb 2021 11:11:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5165F86D7A;
	Tue,  9 Feb 2021 11:11:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 90B461BF847
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 11:11:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8C3EA86DDA
 for <devel@linuxdriverproject.org>; Tue,  9 Feb 2021 11:11:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YGbWUqM6FuDL for <devel@linuxdriverproject.org>;
 Tue,  9 Feb 2021 11:11:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga06-in.huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E003D86D48
 for <devel@driverdev.osuosl.org>; Tue,  9 Feb 2021 11:11:10 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4DZgCX59DdzjKJZ;
 Tue,  9 Feb 2021 19:10:00 +0800 (CST)
Received: from localhost.localdomain (10.67.165.24) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.498.0; Tue, 9 Feb 2021 19:10:58 +0800
From: Yicong Yang <yangyicong@hisilicon.com>
To: <gregkh@linuxfoundation.org>, <jdelvare@suse.com>, <linux@roeck-us.net>,
 <giometti@enneenne.com>, <abbotti@mev.co.uk>, <hsweeten@visionengravers.com>, 
 <kw@linux.com>, <helgaas@kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-pm@vger.kernel.org>, <linux-hwmon@vger.kernel.org>,
 <devel@driverdev.osuosl.org>, <linux-kbuild@vger.kernel.org>,
 <masahiroy@kernel.org>, <michal.lkml@markovi.net>
Subject: [PATCH v2 3/4] pps: Use subdir-ccflags-* to inherit debug flag
Date: Tue, 9 Feb 2021 19:08:18 +0800
Message-ID: <1612868899-9185-4-git-send-email-yangyicong@hisilicon.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1612868899-9185-1-git-send-email-yangyicong@hisilicon.com>
References: <1612868899-9185-1-git-send-email-yangyicong@hisilicon.com>
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

We use ccflags-$(CONFIG_PPS_DEBUG) for the debug
message in drivers/pps, but the DEBUG flag will not pass to
the subdirectory.

Considering CONFIG_HWMON_DEBUG_CHIP intends to turn on debug
recursively under driver/pps, so it will be clearer to use
subdir-ccflags-* instead of ccflags-* to inherit
the debug settings from Kconfig when traversing subdirectories.

Suggested-by: Bjorn Helgaas <bhelgaas@google.com>
Signed-off-by: Junhao He <hejunhao2@hisilicon.com>
Signed-off-by: Yicong Yang <yangyicong@hisilicon.com>
---
 drivers/pps/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pps/Makefile b/drivers/pps/Makefile
index ceaf65c..7a2d3f7 100644
--- a/drivers/pps/Makefile
+++ b/drivers/pps/Makefile
@@ -8,4 +8,4 @@ pps_core-$(CONFIG_NTP_PPS)	+= kc.o
 obj-$(CONFIG_PPS)		:= pps_core.o
 obj-y				+= clients/ generators/
 
-ccflags-$(CONFIG_PPS_DEBUG) := -DDEBUG
+subdir-ccflags-$(CONFIG_PPS_DEBUG) := -DDEBUG
-- 
2.8.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
