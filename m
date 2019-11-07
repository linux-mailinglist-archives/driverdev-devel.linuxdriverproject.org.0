Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D6ED0F24D1
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Nov 2019 03:00:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 999D685BBD;
	Thu,  7 Nov 2019 02:00:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zBaifCyg-+t2; Thu,  7 Nov 2019 02:00:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4A7058587C;
	Thu,  7 Nov 2019 02:00:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 21F171BF470
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 02:00:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1AA068565B
 for <devel@linuxdriverproject.org>; Thu,  7 Nov 2019 02:00:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P2yVyDukbyZ6 for <devel@linuxdriverproject.org>;
 Thu,  7 Nov 2019 02:00:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 13260855CC
 for <devel@driverdev.osuosl.org>; Thu,  7 Nov 2019 02:00:23 +0000 (UTC)
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id D117335A3CCE2E0657A3;
 Thu,  7 Nov 2019 10:00:20 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.439.0; Thu, 7 Nov 2019 10:00:11 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: Hans de Goede <hdegoede@redhat.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Subject: [PATCH -next] staging: vboxsf: Remove unused including
 <linux/version.h>
Date: Thu, 7 Nov 2019 01:59:23 +0000
Message-ID: <20191107015923.100013-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
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
Cc: linux-fsdevel@vger.kernel.org, devel@driverdev.osuosl.org,
 kernel-janitors@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove including <linux/version.h> that don't need it.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/vboxsf/vfsmod.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/vboxsf/vfsmod.h b/drivers/staging/vboxsf/vfsmod.h
index de650d65fbe4..18f95b00fc33 100644
--- a/drivers/staging/vboxsf/vfsmod.h
+++ b/drivers/staging/vboxsf/vfsmod.h
@@ -10,7 +10,6 @@
 
 #include <linux/backing-dev.h>
 #include <linux/idr.h>
-#include <linux/version.h>
 #include "shfl_hostintf.h"
 
 #define DIR_BUFFER_SIZE SZ_16K



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
