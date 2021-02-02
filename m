Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A573D30BD42
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Feb 2021 12:38:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5052F86224;
	Tue,  2 Feb 2021 11:38:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kFgXrqM0tR8E; Tue,  2 Feb 2021 11:38:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DDA5486290;
	Tue,  2 Feb 2021 11:38:22 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 488571BF865
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 11:38:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3AFE32046B
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 11:38:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B3HUaX9yBQEf
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 11:38:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.154.123])
 by silver.osuosl.org (Postfix) with ESMTPS id 3A91C20016
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  2 Feb 2021 11:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1612265898; x=1643801898;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=NrgiiISsPvBR2hrJHAqYHO0HCv/dQEMttC7SvzR27js=;
 b=tI7v7lq5g0Ah2Tw1nikkLRpAeCUTLyVYbm9gKkGzX6f9MvE3adT3e1AO
 P4/TlCXCO+CFzpHlIrdC07cndUX2RlJj/5nTUZX6UI8ZDOALW7iJ1hR6c
 SMp/mAaaucaelikuxwcqjKG21PvaOe+LkTnd2yPhstBsp903O4NIrLi14
 P2G9bmMSJubewbGU41El2oSalj6sKxSMJTyMD5fLORuyoEm4GST9hFnu5
 9QMpJb4gS34SqMLk2AFTeX6PPFBPulGYDf9nIc0rX08MMYzUEY4SGcY8G
 NcR4ja2P7+kN2MEgchvdoWeg0P3riZWvlBFkXykt3k947p4Dzbd5ox2bt w==;
IronPort-SDR: CdB7OTZwvlvLvbKQKvq0v591Zcq1f6kX8KEGGAJTS/p0p6aGcApEhJBA7ys2YHw3hX4MwZp4Hm
 Wk+3WL7AhtI8dmZjHJrwUqv4ulG0ogQNo1EdJhzKQfqCRUl8Cv/eq8eAW20wkPZGw3Q27EMCC4
 jDywdrvmlifZ/u0z3B5PRpKj1H/SJdEipSZaD2F5q4/JWXoF164qYRm+ZoRfj3kcNQrw4UuyL/
 mrCs0SyJM9jBj5VsFU/9UYFvtClfg2Q/j2z81kEJO4B+/SVRcKNbgPnW+NqZWj+vRXSRDxvIMF
 xXw=
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="42602537"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Feb 2021 04:38:17 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 2 Feb 2021 04:38:17 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 2 Feb 2021 04:38:16 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] staging: most: sound: use non-safe list iteration
Date: Tue, 2 Feb 2021 12:38:10 +0100
Message-ID: <1612265890-18246-3-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1612265890-18246-1-git-send-email-christian.gromm@microchip.com>
References: <1612265890-18246-1-git-send-email-christian.gromm@microchip.com>
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

This patch replaces the safe list iteration function with the
non-safe one, as no list element is being deleted.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/most/sound/sound.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 953a4fe..9e23b11 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -160,9 +160,9 @@ static struct channel *get_channel(struct most_interface *iface,
 				   int channel_id)
 {
 	struct sound_adapter *adpt = iface->priv;
-	struct channel *channel, *tmp;
+	struct channel *channel;
 
-	list_for_each_entry_safe(channel, tmp, &adpt->dev_list, list) {
+	list_for_each_entry(channel, &adpt->dev_list, list) {
 		if ((channel->iface == iface) && (channel->id == channel_id))
 			return channel;
 	}
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
