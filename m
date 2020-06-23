Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC364205582
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Jun 2020 17:07:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 16F6688EE9;
	Tue, 23 Jun 2020 15:07:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f1st5TgKTqQU; Tue, 23 Jun 2020 15:07:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4117088EBB;
	Tue, 23 Jun 2020 15:07:46 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 438121BF3ED
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4057588E4E
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8Az6NDkOSy21
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F26B988280
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 23 Jun 2020 15:07:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592924862; x=1624460862;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=A9mZ5as9dfLi7G9P4TKKSuHiJVe1VR6N0+BRbhPT0t0=;
 b=d8O5XRVNuGUtvFnkphPeUys41ZHD55aNkFkUXUs359jTGhCUko1Ga31K
 FgsBeKnJN4UyTq6Exmg5+3q8Qq7d99eEO0L2Ysi6rQ6fjFUP8rAReJcgR
 vsIbogLAEpH66rGrwx1CwlnlumAmOUvDJyrr8cQGYH68abxJqxIKEb/jZ
 /H8hOwsfFUZgM37xsgPwICHg3Q0NdFP55ijNwo2okPg2z43cLW2mwyDbN
 6l3cty8GhuLZM3Y2hnC3s7c58NxCMkCnmqrNpchWC8+l2+cnDybaKMyby
 9MBXxUt//Idn8kDHHDVAfno6J0XFOodkkYrLbAVP+zJ27fAQ32F7lVAcU A==;
IronPort-SDR: T0mSFFDy1SskWyHRbmLNmbJKPxHGzXP/HGAl6Fa4dcHPUPDcqONXaArt7zwMjw8qgAKJoIm2rM
 FCXrPgFUSmtlEcjB4sriIEYLbUUENmq4Ih+vtRUhCTQ+aGXJ08gOlUCBQJe9mRcnGNV1Ef/9PS
 td046BJhHKb/vwl8J2IEtTbtdTduhMagJEyj+p8H+InDb3x+Csx9JXZKVcU6GLwYojXe79kUnK
 fXcttuZSWanWAXWRsX37N9O591z4eNWK4/HR1RO4+EAfDJtPj5MMcmJ8gq/7Fn05MldbenGCHR
 2fk=
X-IronPort-AV: E=Sophos;i="5.75,271,1589266800"; d="scan'208";a="16763287"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jun 2020 08:07:41 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 23 Jun 2020 08:07:29 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 23 Jun 2020 08:07:39 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 2/5] staging: most: sound: fix error path
Date: Tue, 23 Jun 2020 17:07:32 +0200
Message-ID: <1592924855-25569-3-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592924855-25569-1-git-send-email-christian.gromm@microchip.com>
References: <1592924855-25569-1-git-send-email-christian.gromm@microchip.com>
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

Return error and exit the function in case registering the component
with the core is failing.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/sound/sound.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index e6396d1..80a8feb 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -742,8 +742,10 @@ static int __init audio_init(void)
 	INIT_LIST_HEAD(&adpt_list);
 
 	ret = most_register_component(&comp);
-	if (ret)
+	if (ret) {
 		pr_err("Failed to register %s\n", comp.name);
+		return ret;
+	}
 	ret = most_register_configfs_subsys(&comp);
 	if (ret) {
 		pr_err("Failed to register %s configfs subsys\n", comp.name);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
