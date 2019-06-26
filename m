Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 00804564F0
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 10:55:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1BB5785FF3;
	Wed, 26 Jun 2019 08:55:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fty2s2AhEXvD; Wed, 26 Jun 2019 08:55:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A090F84D5E;
	Wed, 26 Jun 2019 08:55:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 62D141BF423
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 08:55:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5CF2B82358
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 08:55:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WeK37gXWDFgT for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 08:55:35 +0000 (UTC)
X-Greylist: delayed 00:08:32 by SQLgrey-1.7.6
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3CF868200D
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 08:55:35 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BA2F92B;
 Wed, 26 Jun 2019 01:47:02 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 092603F71E; Wed, 26 Jun 2019 01:47:01 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] drivers: s390/cio: Fix compilation warning about const
 qualifiers
Date: Wed, 26 Jun 2019 09:46:53 +0100
Message-Id: <1561538813-19807-1-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <20190626012218.GB24105@kroah.com>
References: <20190626012218.GB24105@kroah.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Update __ccwdev_check_busid() and __ccwgroupdev_check_busid() to use
"const" qualifiers to fix the compiler warning.

Reported-by: kbuild test robot <lkp@intel.com>
Cc: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/s390/cio/ccwgroup.c | 2 +-
 drivers/s390/cio/device.c   | 4 +---
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/s390/cio/ccwgroup.c b/drivers/s390/cio/ccwgroup.c
index ea176157..c522e93 100644
--- a/drivers/s390/cio/ccwgroup.c
+++ b/drivers/s390/cio/ccwgroup.c
@@ -610,7 +610,7 @@ EXPORT_SYMBOL(ccwgroup_driver_unregister);
 
 static int __ccwgroupdev_check_busid(struct device *dev, const void *id)
 {
-	char *bus_id = id;
+	const char *bus_id = id;
 
 	return (strcmp(bus_id, dev_name(dev)) == 0);
 }
diff --git a/drivers/s390/cio/device.c b/drivers/s390/cio/device.c
index f27536b..1132482 100644
--- a/drivers/s390/cio/device.c
+++ b/drivers/s390/cio/device.c
@@ -1655,9 +1655,7 @@ EXPORT_SYMBOL_GPL(ccw_device_force_console);
 static int
 __ccwdev_check_busid(struct device *dev, const void *id)
 {
-	char *bus_id;
-
-	bus_id = id;
+	const char *bus_id = id;
 
 	return (strcmp(bus_id, dev_name(dev)) == 0);
 }
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
