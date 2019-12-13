Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB77C11E32D
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Dec 2019 13:06:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6A67D88549;
	Fri, 13 Dec 2019 12:06:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uwuxTBjqUcIz; Fri, 13 Dec 2019 12:06:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7041288518;
	Fri, 13 Dec 2019 12:05:59 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0466F1BF9C8
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E464887297
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tDwkY15EXDDi
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A051E872E8
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:12 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 6s+i8VLW/vtZJMzAMO6Fn7UkWCKvoqpMyZp03ju83qujz2ZnEQxHXxndKZA41HPtISHFC03qEh
 R6M/CGdHTILpuO6gPjascu+G7CZ8giNaAIrZPFDg4zNiGwHKEg8azGS6AmPC5VqzitQolR0gnY
 h7VyNrJBR80J5seJNKbA0JczbOkdw5axyFWj8rYFbgytHh+X/eeqJuykN00YyrqCCEXaCJ+nTX
 CxpduaifjlrbnqQvp/Q0ar+9707/zLxes3wQPiRCyOAKxni1fGaelvbn9aMLlXJz/3YGp60Aok
 0oc=
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="58898040"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Dec 2019 05:05:12 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Dec 2019 05:05:11 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 13 Dec 2019 05:05:11 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH RFC v2 5/9] staging: most: configfs: reduce array size
Date: Fri, 13 Dec 2019 13:04:18 +0100
Message-ID: <1576238662-16512-6-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576238662-16512-1-git-send-email-christian.gromm@microchip.com>
References: <1576238662-16512-1-git-send-email-christian.gromm@microchip.com>
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
Cc: Christian Gromm <christian.gromm@microchip.com>,
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch reduces the size of the arrays inside the mdev_link struct to
a reasonable value.

Reported-by: Joe Perches <joe@perches.com>
Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v2:
	This patch has been added to the series.

 drivers/staging/most/configfs.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/most/configfs.c b/drivers/staging/most/configfs.c
index 9fbcadf..9818f6c 100644
--- a/drivers/staging/most/configfs.c
+++ b/drivers/staging/most/configfs.c
@@ -12,6 +12,8 @@
 #include <linux/configfs.h>
 #include <most/most.h>
 
+#define MAX_STRING_SIZE 80
+
 struct mdev_link {
 	struct config_item item;
 	struct list_head list;
@@ -22,13 +24,13 @@ struct mdev_link {
 	u16 subbuffer_size;
 	u16 packets_per_xact;
 	u16 dbr_size;
-	char datatype[PAGE_SIZE];
-	char direction[PAGE_SIZE];
-	char name[PAGE_SIZE];
-	char device[PAGE_SIZE];
-	char channel[PAGE_SIZE];
-	char comp[PAGE_SIZE];
-	char comp_params[PAGE_SIZE];
+	char datatype[MAX_STRING_SIZE];
+	char direction[MAX_STRING_SIZE];
+	char name[MAX_STRING_SIZE];
+	char device[MAX_STRING_SIZE];
+	char channel[MAX_STRING_SIZE];
+	char comp[MAX_STRING_SIZE];
+	char comp_params[MAX_STRING_SIZE];
 };
 
 static struct list_head mdev_link_list;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
