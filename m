Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F09C81945EF
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Mar 2020 18:59:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D08708874C;
	Thu, 26 Mar 2020 17:59:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4vWRHA3HeK7m; Thu, 26 Mar 2020 17:59:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AE44788491;
	Thu, 26 Mar 2020 17:59:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 946D51BF20B
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 17:59:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 90E43873BF
 for <devel@linuxdriverproject.org>; Thu, 26 Mar 2020 17:59:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UBE61IiMz94W for <devel@linuxdriverproject.org>;
 Thu, 26 Mar 2020 17:59:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2394486BA7
 for <devel@driverdev.osuosl.org>; Thu, 26 Mar 2020 17:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1585245572;
 bh=cPjKmWw8meoxOOBomnUDNFhhyBAqdxH6BTS5Evx+ve4=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=Vud+dJP6a5kczEoNBwR36K2uBBL547TniEzDA6KoFmnCTKElpwKIZzQJEIC/csKKA
 vP/hiwYytKI5i2O0DCfvQwIiwCC0r9q/jcfuWGcsTnHVnetPxXryhMRdFD5Uyy22TU
 6exsUWs0c12KoJlIQJAEu4Yk6dwz6HAS0fAv21rc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MbRk3-1joeYH1qNl-00bsDl; Thu, 26 Mar 2020 18:59:32 +0100
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: vt6656: Use DIV_ROUND_UP macro instead of
 specific code
Date: Thu, 26 Mar 2020 18:59:02 +0100
Message-Id: <20200326175902.14467-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:ehfgG7X17anP/3NHQibLpL75ANGu1+tTH2VrJUp1HUmlV3TbA7X
 jap2Mw7ExHxp17/JrmAOjkt9LvHt2SIaItOGmWoWdT/9eKeIIIXZQmDTvZ3E1lNaLyCbHUH
 urVu6FaQO3wmKYM21G/vmlIDaXhmvmphuclgv7RSMSpbSnWBZ2QmaFp6k1VHZeRd3/GbEDy
 q2xJufiK2/BS7Fi/2falA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:InpDidYQ6xI=:f5Q64SxSbPBU35Js9Q2VsW
 or/nLYfU9MCQ5pPXEcynGskxs8BGznzoGlZ0BVjFGkEkmHuKg00RFXZ/dRNY/C0iLFCGrvN7s
 TNJKxnkbkzI+cB+5LM7s2XIigAbIohPuQDnvNkCCwsofneCGxpMPNo9AYQCUYgvZLbjnsmxMP
 ZIkw8hFm3mIIhIoigQEftwLMIZDQyj7UJqNSbBzzSjGrhfq9WRpM/F3oIFij646FvgzLQBsol
 JG5GmnpAjNtCjveYmyKk2pMJu+9ItCNsTqbFXXTHCYdHsgHf2c+g3mZzPYjZ+QQTRsx15Dzyl
 HSZMiijSOZy1FbykZwYxV81q8k7zqH28hq9vjZ89u73NNT6ADa6MwsRatSsU/ySUriqVA83Sh
 7YP7iZ9rXeEkqTP+AjI/lUGAeFqpHZ4V+wUQa8xcMCksvlYsD4n98D/O5ESI7/HVODg6FfA5z
 894W0w0DRBJo9iK+90qaYA2pxP4kK4VgBgp8eXiJNL8szH83X+Bt6ygWPWlZx7wEjnNP4m9C4
 4agHAZ95E4mYOeTpeSyEHqNLZADXkodsgGK0NICEGwgEeJrZLqeKjWk0/AnPJyHjPI6yp51Jt
 NgiOvSBnkre//kRXGgC4Vahqgu9L83qfoEUs2VfHOlI0aF/JZtA4mA0sP4apAKbF7RJe/lyva
 wFSx55N+WcVYXsmppADQKB/9/WZ+CfCd+FhsoB7Uq33Hu9MduTW9t7CLfxnCEQo78XpodG87G
 XJBVlW43wjf7h+0yZiGoO9ior5Ty8jyMTaXlJTuw9gnX0BKZtgWtY4qy93qspK2vCCN4ZKaia
 IzChEZXWuEwsQ+BZG5xRcJ0zkBTbAPRd3nWY6jRG5VFG5EZ9YyLfHagTrHOc+qHHz0LXeynzP
 R/ucGktKtvy+w1SISzN1Py9i9teyOWlFTGpmxLbWdcccEPg1LfS7ahvOfjf8gFhXazxUGX9N2
 JOc/XBR/jwub+H1XoMp3UKruTh+sBeJrz499T6/B+sqk0GRRvNapwNTxAo1+klmBaCU/nJOrE
 Zr50Z0RhKwYxyyGsnBwQLOX7MUpj9uwfwGaDqhLDa2ltyTM3c2caivGC/0vt5XETRJRnutWkz
 9hRfjSATCNWDVmfEklXGvQxHpK2fyXt5y0sfRut1hDGTLANTbfPELEY97cHdYJcQp99UBUhHR
 Ex8JzvuOkytssm0KCgqno0BCAGEAHu5D6Jasy/SpSXkxFMkqGCyYypFT5+RszSd1MpO7OEGKF
 i9SSFzBDMK4pxeeKF
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use DIV_ROUND_UP macro instead of specific code with the same purpose.
Also, remove the unused variables.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
Changelog v1 -> v2
- Rebase the original patch [1] against the staging-next branch of the greg's
  staging.git tree.

  [1] https://lore.kernel.org/lkml/20200322112342.9040-1-oscar.carter@gmx.com/

 drivers/staging/vt6656/baseband.c | 21 ++++-----------------
 1 file changed, 4 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index 0b5729abcbcd..a19a563d8bcc 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -23,6 +23,7 @@
  */

 #include <linux/bits.h>
+#include <linux/kernel.h>
 #include "mac.h"
 #include "baseband.h"
 #include "rf.h"
@@ -133,7 +134,6 @@ unsigned int vnt_get_frame_time(u8 preamble_type, u8 pkt_type,
 {
 	unsigned int frame_time;
 	unsigned int preamble;
-	unsigned int tmp;
 	unsigned int rate = 0;

 	if (tx_rate > RATE_54M)
@@ -147,20 +147,11 @@ unsigned int vnt_get_frame_time(u8 preamble_type, u8 pkt_type,
 		else
 			preamble = 192;

-		frame_time = (frame_length * 80) / rate;
-		tmp = (frame_time * rate) / 80;
-
-		if (frame_length != tmp)
-			frame_time++;
-
+		frame_time = DIV_ROUND_UP(frame_length * 80, rate);
 		return preamble + frame_time;
 	}
-	frame_time = (frame_length * 8 + 22) / rate;
-	tmp = ((frame_time * rate) - 22) / 8;
-
-	if (frame_length != tmp)
-		frame_time++;

+	frame_time = DIV_ROUND_UP(frame_length * 8 + 22, rate);
 	frame_time = frame_time * 4;

 	if (pkt_type != PK_TYPE_11A)
@@ -214,11 +205,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,

 		break;
 	case RATE_5M:
-		count = (bit_count * 10) / 55;
-		tmp = (count * 55) / 10;
-
-		if (tmp != bit_count)
-			count++;
+		count = DIV_ROUND_UP(bit_count * 10, 55);

 		if (preamble_type == 1)
 			phy->signal = 0x0a;
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
