Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B66D2A64A6
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 13:50:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 076D086BDC;
	Wed,  4 Nov 2020 12:50:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R2XF8Axtylox; Wed,  4 Nov 2020 12:50:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A3C0786A6A;
	Wed,  4 Nov 2020 12:50:50 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8445E1BF5B3
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 12:50:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 814D78587E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 12:50:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GnwRCG7V4X5p
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 12:50:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C49B78563A
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 12:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1604494246; x=1636030246;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=si5PIcTFi4biz3e5RNErM/nH2EiNCu3A2XIAPx6UZE4=;
 b=UXgLGiowTmuavo+bSVM7WEwmrYZBuJjNz1y02PtSs1YBf+wypkD+rUlj
 GzjD4cXBgdLZDKh8FrfufRWlIEN5cU9/IxbzjWvhuII8BvwcB2ZPgYAvb
 JGTcvldS0vtq9C1v4u7YrBeN9zCFCwDoEpre1hz+OwMPoBydlasKFHS5w
 BAQ6CCsAz28Jkngim0vBMJBB5eOpljmk1WJ8nNHx2JSVKIrqSIXRvEt28
 iyARpew4dCLXv+1gkTQ8nSNBzCmbWEtCUc9+P8aFmYZpD0AWlX2q7fcra
 pacYZrJ4pyq1oT6g+7+0ATw2TNtsLE7MLuZ3RaSAXAGqMA/Z++czSJJR4 A==;
IronPort-SDR: LmJlgdIpZVW+1hs6l1qhFTRjahiEkEXnxMeRMpBdTJcRrkjTU9PlsP5+THq90lHQoUItfgYb3N
 UcBi7AzthSyMPA2nB7dYPYAAZMQu/ova64umTPdQpvhZeCo3U8DsM0jzN00dqa9OJzJbMeVHYa
 SkwXPVQ9K2kStIgjCRy4ZtZI86WclWRIp2J1Goz0j12EKihmHjEYrNqUx9NjnIXGk85cMLs7/k
 SE4miY0TFWNukB6lzBjNugEwdzwXaFcynCbbR4UAVfZArud1hr5hKu4BM1peA8exigHmGeluje
 ZHs=
X-IronPort-AV: E=Sophos;i="5.77,450,1596524400"; d="scan'208";a="92449904"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Nov 2020 05:50:46 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 4 Nov 2020 05:50:45 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Wed, 4 Nov 2020 05:50:44 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v2] drivers: staging: most: use swabXX functions of kernel
Date: Wed, 4 Nov 2020 13:50:42 +0100
Message-ID: <1604494242-3414-1-git-send-email-christian.gromm@microchip.com>
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
 driverdev-devel@linuxdriverproject.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch makes use of the swab16() and swab32() functions available
in the kernel instead of using own implementations.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
v2: added 'Reported-by:' tag

 drivers/staging/most/sound/sound.c | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 8a449ab..3a1a590 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -72,22 +72,12 @@ static struct list_head adpt_list;
 		       SNDRV_PCM_INFO_INTERLEAVED | \
 		       SNDRV_PCM_INFO_BLOCK_TRANSFER)
 
-#define swap16(val) ( \
-	(((u16)(val) << 8) & (u16)0xFF00) | \
-	(((u16)(val) >> 8) & (u16)0x00FF))
-
-#define swap32(val) ( \
-	(((u32)(val) << 24) & (u32)0xFF000000) | \
-	(((u32)(val) <<  8) & (u32)0x00FF0000) | \
-	(((u32)(val) >>  8) & (u32)0x0000FF00) | \
-	(((u32)(val) >> 24) & (u32)0x000000FF))
-
 static void swap_copy16(u16 *dest, const u16 *source, unsigned int bytes)
 {
 	unsigned int i = 0;
 
 	while (i < (bytes / 2)) {
-		dest[i] = swap16(source[i]);
+		dest[i] = swab16(source[i]);
 		i++;
 	}
 }
@@ -109,7 +99,7 @@ static void swap_copy32(u32 *dest, const u32 *source, unsigned int bytes)
 	unsigned int i = 0;
 
 	while (i < bytes / 4) {
-		dest[i] = swap32(source[i]);
+		dest[i] = swab32(source[i]);
 		i++;
 	}
 }
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
