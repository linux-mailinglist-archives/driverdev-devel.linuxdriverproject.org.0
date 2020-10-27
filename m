Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FC129C745
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Oct 2020 19:34:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 18CFF8698E;
	Tue, 27 Oct 2020 18:34:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4rnyyMAE18iE; Tue, 27 Oct 2020 18:34:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 218BE8695F;
	Tue, 27 Oct 2020 18:34:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C34951BF82D
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 18:34:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BF9E685FA2
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 18:34:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DTcZETgx43Sq for <devel@linuxdriverproject.org>;
 Tue, 27 Oct 2020 18:34:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 541C685F8C
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 18:34:32 +0000 (UTC)
IronPort-SDR: +iPQGj+29iOVGFVg7FRRIOxLRRUOzLv3O3UW/Rw1pH2ikgRBfuNn/nY+tmnQy5D7w29TBOXPmU
 RZAHq0oUiGZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="167359806"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="167359806"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 11:34:31 -0700
IronPort-SDR: vgtnt8CiSaTvsJIy8iJpInEC0MBPC17kzslofU29En0MGQrjsQHz+6gXAsq14pPU1tj+ka2qVl
 DNwSf3ISx5jQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="535909362"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga005.jf.intel.com with ESMTP; 27 Oct 2020 11:34:29 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 17CCA178; Tue, 27 Oct 2020 20:34:27 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Sven Van Asbroeck <TheSven73@gmail.com>, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S. Miller" <davem@davemloft.net>
Subject: [PATCH v2] staging: fieldbus: Use %pM format specifier for MAC
 addresses
Date: Tue, 27 Oct 2020 20:34:27 +0200
Message-Id: <20201027183427.25736-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.28.0
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
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Convert to %pM instead of using custom code.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
v2: dropped struct removal (Sven), rebased on top of v5.10-rc1
 drivers/staging/fieldbus/anybuss/hms-profinet.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/fieldbus/anybuss/hms-profinet.c b/drivers/staging/fieldbus/anybuss/hms-profinet.c
index 31c43a0a5776..eca7d97b8e85 100644
--- a/drivers/staging/fieldbus/anybuss/hms-profinet.c
+++ b/drivers/staging/fieldbus/anybuss/hms-profinet.c
@@ -66,10 +66,7 @@ static int profi_id_get(struct fieldbus_dev *fbdev, char *buf,
 			       sizeof(response));
 	if (ret < 0)
 		return ret;
-	return snprintf(buf, max_size, "%02X:%02X:%02X:%02X:%02X:%02X\n",
-		response.addr[0], response.addr[1],
-		response.addr[2], response.addr[3],
-		response.addr[4], response.addr[5]);
+	return snprintf(buf, max_size, "%pM\n", response.addr);
 }
 
 static bool profi_enable_get(struct fieldbus_dev *fbdev)
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
