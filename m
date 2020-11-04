Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FEE2A6494
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 13:42:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D6A3B87551;
	Wed,  4 Nov 2020 12:42:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YKozb9KpqoXj; Wed,  4 Nov 2020 12:42:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 416DB87509;
	Wed,  4 Nov 2020 12:42:48 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D79DE1BF5B3
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 12:42:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D241086AB6
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 12:42:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uKDPvqEWGft3
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 12:42:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0A61686A6A
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 12:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1604493766; x=1636029766;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=B3tpM90JUvUKdQx2PpJfoULT051Vtvuty+ZH6vW0ON0=;
 b=PA34/hZzNZwhHf176V25MMut0x+D0zkoeFd7JVb+g8YA8jNtjOikUcR2
 4aniiJCowmTCuKRiYKA4meLN4/pfJEpv5Bu+qziO/MS5JJqWQRWRgQUXG
 zT+zvhRDptdcdEED2UbN4wSxxmFSIE6fYZNj1gI7+v4Atgire1H7I+/2N
 7wI/oMrT2i6tV31KjFdFDigeJ768Eh/q/I7QaUuVb0cdb9MDf5R7GEQk6
 94I0KXmyB9UemQkySsexI0iw/ZLlsUICcr97lZH07V/iM432gOonwI/eZ
 pX/yscEtZERUSdwDSBSC4wVyhGxj9fZHeDFC/nRKc78gFS+f1Uw86D/iE g==;
IronPort-SDR: QF6UdjVKFuUcN43K4Aj5BcY6rOf42yEku4lm37GQNV6vvOexBth5pyM7POUUJP0jAzkSS3u1qe
 hSjvDKsucPRn+szwjgo8OZCNHlxiBFp+JU+GQdtc24AEqprINLoc359NbDjdrS+e2iiLwq7SDv
 kmsKMP9YfI6QZ/18NsX7EkK4lmGmmSNSEMPINiDakybBb/cPwV1E5B6ZuBiG//MF2ZwJudRidX
 LpZlqW88CxZ5+Hx1DEufjvcm7/aOFU1vdEs6s9ImhOxlvpXLZdDXKe9HSk8IVDyovZT6k53FEV
 35Q=
X-IronPort-AV: E=Sophos;i="5.77,450,1596524400"; d="scan'208";a="92448825"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 Nov 2020 05:42:45 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Wed, 4 Nov 2020 05:42:45 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Wed, 4 Nov 2020 05:42:44 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH] drivers: staging: most: use swabXX functions of kernel
Date: Wed, 4 Nov 2020 13:42:41 +0100
Message-ID: <1604493761-19144-1-git-send-email-christian.gromm@microchip.com>
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
---
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
