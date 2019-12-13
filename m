Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E00BB11E32A
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Dec 2019 13:05:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 46E3388B61;
	Fri, 13 Dec 2019 12:05:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cxFLdNSQfC5K; Fri, 13 Dec 2019 12:05:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6623788B9C;
	Fri, 13 Dec 2019 12:05:38 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5EFF81BF2AE
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 57F14203F3
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tDlvCQGbR7bM
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by silver.osuosl.org (Postfix) with ESMTPS id 9BD0625C00
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:10 +0000 (UTC)
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 4l6s3EDsIFYGxNZsCv1tBezl3KJJ6klfzOkl9pXdUL4xQ95zAIvK5FTOix38gteicI0F+288Vj
 ozn4WexuaVkhIyU55Kiv3YxiQHSWtlu/qM6GkqIdntWCzupMRPVPW1I5RFwuUfb8ZK7s0MU1Ad
 t3DWG/UNEzJB9j76oU+638aNTPmvfy/9iKppA1foWWl1l+ZrIDnEUASeUb0MB+/SFSGDs6R+1F
 JFsyUPVUsCvgBQKsrPRsbM/2K8Ez9cHOUELfkDH/f99iddgEpsMOZ2wFKvt+VCBGCuTRBu0cJl
 +Xw=
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="61628964"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Dec 2019 05:05:10 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Dec 2019 05:05:09 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 13 Dec 2019 05:05:08 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH RFC v2 3/9] staging: most: rename enum mbo_status_flags
Date: Fri, 13 Dec 2019 13:04:16 +0100
Message-ID: <1576238662-16512-4-git-send-email-christian.gromm@microchip.com>
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

The data structures of the most.h header file will be exposed
to the kernel once the file is moved out of the staging area.
This is why the name is prefixed with the string 'most'.

Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v2:
	This patch has been added to the series.

 drivers/staging/most/most.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/most/most.h b/drivers/staging/most/most.h
index fa6b29f..d93c6ce 100644
--- a/drivers/staging/most/most.h
+++ b/drivers/staging/most/most.h
@@ -47,7 +47,7 @@ enum most_channel_data_type {
 	MOST_CH_SYNC = 1 << 5,
 };
 
-enum mbo_status_flags {
+enum most_status_flags {
 	/* MBO was processed successfully (data was send or received )*/
 	MBO_SUCCESS = 0,
 	/* The MBO contains wrong or missing information.  */
@@ -184,7 +184,7 @@ struct mbo {
 	dma_addr_t bus_address;
 	u16 buffer_length;
 	u16 processed_length;
-	enum mbo_status_flags status;
+	enum most_status_flags status;
 	void (*complete)(struct mbo *mbo);
 };
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
