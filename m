Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E59F90D3
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 14:41:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 636B587916;
	Tue, 12 Nov 2019 13:40:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hnOAuhsX5vz2; Tue, 12 Nov 2019 13:40:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9C32986E88;
	Tue, 12 Nov 2019 13:40:58 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8CECF1BF295
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 13:40:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7E01785CE2
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 13:40:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DoJdL-Cflx+G
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 13:40:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7FE4185CC7
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 13:40:55 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
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
IronPort-SDR: 7UHmR1iiB9beqOruZNVI+YtmpRu/rCGDF6RTFclVpCtki6a7oxUHUNfwt58NHOl+zfHOKJR2xn
 sxJE9OdWVFVcCV2VeDI+AqH/ps+N5A3u8TLo4m1UUn2ZlRto29zY7t/t9M1RVx8/CZf+kAObXb
 H12v0nDSbRjplHHgF0Bn9K4RvlxL4LUHkA5L2Ohj1XrqAYuHCi99LtvtsRC6QOFln0s7DAWPYN
 FQR5hnL6nBY4fqyQnXdKbU0NwyGf/rKkITsi68lf8mxBZmcmBUbJJAMJIKatwvMeGThpenl6jv
 irc=
X-IronPort-AV: E=Sophos;i="5.68,296,1569308400"; d="scan'208";a="55150289"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Nov 2019 06:40:41 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 12 Nov 2019 06:40:40 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 12 Nov 2019 06:40:38 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: most: core: add comments to mutex and spinlock
 definitions
Date: Tue, 12 Nov 2019 14:40:36 +0100
Message-ID: <1573566036-2279-1-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
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

This patch adds a comment to the start_mutex and fifo_lock fields of
the most_channel structure definition.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index f7d2c78..79e66eb 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -52,7 +52,7 @@ struct most_channel {
 	u16 channel_id;
 	char name[STRING_SIZE];
 	bool is_poisoned;
-	struct mutex start_mutex;
+	struct mutex start_mutex; /* channel activation synchronization */
 	struct mutex nq_mutex; /* nq thread synchronization */
 	int is_starving;
 	struct most_interface *iface;
@@ -60,7 +60,7 @@ struct most_channel {
 	bool keep_mbo;
 	bool enqueue_halt;
 	struct list_head fifo;
-	spinlock_t fifo_lock;
+	spinlock_t fifo_lock; /* fifo access synchronization */
 	struct list_head halt_fifo;
 	struct list_head list;
 	struct pipe pipe0;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
