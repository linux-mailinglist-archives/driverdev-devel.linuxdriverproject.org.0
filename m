Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 178BA18A1B3
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Mar 2020 18:41:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9205586D37;
	Wed, 18 Mar 2020 17:41:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JzWoMOKr_ue9; Wed, 18 Mar 2020 17:41:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD32386D2A;
	Wed, 18 Mar 2020 17:41:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 47FB71BF2F1
 for <devel@linuxdriverproject.org>; Wed, 18 Mar 2020 17:41:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 43904203CA
 for <devel@linuxdriverproject.org>; Wed, 18 Mar 2020 17:41:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2u2TQbXmrMU0 for <devel@linuxdriverproject.org>;
 Wed, 18 Mar 2020 17:41:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by silver.osuosl.org (Postfix) with ESMTPS id 9FF5A203C4
 for <devel@driverdev.osuosl.org>; Wed, 18 Mar 2020 17:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1584553260;
 bh=vCgXZ2I+Xf8X2pR7gWvHEO+dE4EhgtLquAj/ck7xEj8=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=Vnjc0av1x3dyOYUm1G/PujvpeZYIxuWq5g0K5EM1+bvDSRx97FEIyTPrlb0kwY3JO
 cyOwYS2kLNsdSTPnvvj0Ldm1s/Ax7tK7PnGiHOtTLL4ySA+d0Cfcb1U1wlkL7zYPCI
 oPqk0mkwTKn7k8JqhaVhg9Sp1qVCL9F9a7x+hb2A=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MgNh7-1jmYSq3rBv-00hyB0; Wed, 18 Mar 2020 18:41:00 +0100
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: vt6656: Use ARRAY_SIZE instead of hardcoded size
Date: Wed, 18 Mar 2020 18:40:15 +0100
Message-Id: <20200318174015.7515-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:3Kz+2ZK4OkT6fKoYDfLfppenzBOKnJHXnSZKnWuc2wQdKuuSwgZ
 LC7YodICd25iZrsFRfAefnR1nwcvgWMJRL83EWkr2AlFfxdcBUpBmw8z5LGAuKbTBxEekPu
 cuhwcore9TN9yZRzgKZ7KtzQZUw4u+RoQT3ufB5V4eLBa4yNXTAocMGTRtXWWfDV9oVqZzK
 A/6CatuXREpwgHSSz1LDA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:h0lERaXlW6w=:LJHAJpG0QQhm7qQW5MIU2W
 vQ+W+2gzCPTT5SB/X/gU88eOYBHO07m1KgH8hhpaIcBe08pYO7dRN6QZ5Hobu/RCR5GYZ01zR
 P6Tt6eY3CWToJgq1vZBKeHMHKVW1IRxUmKWkSTu1YHPZJ7HCilW7NJqEjSlfZds53dCHy38I1
 Ne9myH0rDQY/1FI/JPnlEIemlkIHYmzwxRhyhBWsevC/5f7YuilKg9DEq9su1JaRyzYPgUE0u
 zgHIW44TsadL3lkaFmcPgKhB32soxBDy7yXlsFiQfFC5PDxSsbCMwBy3FsbfVrTnsXweJO8tx
 BqlBfyssM5r3KUjfOTr9cNQ7EXwJueeRMY1DDCef7yeGV714dYtZ3Shr7S820t/ck6QHyRgZ4
 l9QAum7kjtV+PAuyH4/FQgPvwys2Fl53hkTfa9CESDTSUp1eqP6MEuuZMCbNvGLHOBlgZBxUu
 hZZlXa39A1B+hARBRxpdq9Hpi9Vkw6Xwkg+V7L2qmRnw7EOZkUUN4AxVMLoOZOJX8e8Bh1xph
 i9UXQYAGM0SNjZTgsqtWKA8vS1v+vXXAS0FyrYoySqQEBiGC4jg7GX0Gq1staQftKlaq65xUJ
 sTbkhDI4sCVjqLpSzEf2+orp8+pIruLsGNqzFzW10FfEu/5MUDLKsTCiEGm/KkrkUFWIPidhE
 ZW4z/+BuZGUxSEj13CziCEPo+Wc2kZD5jKQ/wv8WqArWQQwm7lAR+pfoVWhr9rGBdBRPdyDcL
 gE5dM5f/F1jP93kjzy0nkR7NkQeOcYGf0D5bCOY81TsEPc/LehHZk4naBBT22Wq27xsJvcvtE
 qBZp98MdjWZni8nL27ZUjhLFhk1TkeE4z/guwCT72ZG6GB0vLF8RvCJqLQyUYyGHSdTYX7Xck
 XbfdDwHyclf/mQ/6RbQsU/nLGFKWqeERX+oLJjoVj8afThI2IQpe3P6KjbeiFyh+/vtULz9Xc
 nEq/yAEretjrWwbR+dQf67pyKt/3vBjPJfoKCf+uIke5oRJiNcsDfKonGD7ljD5P+gyPG0dgf
 vk/7iOVxtQ0SFMfm/va+3yaaDiCzeuo/T8lpFf1Lqhpp3dCtGrtClt6sthR7g+/JqOUaKj52C
 XRpSKGnmDzGSVdczoroMl59+HLwAqj6FVgNlZaHyEwdJehnAPNZXpeG7ug8OofRoT/XTKcR3N
 SwourUVrIriE3hOPWuGfszqhl3KlzYykplK9UDG0VvAvQuSJsyT9NCOmW6NgUmiOduWI8zN1P
 HKfrbqiKZsYejCKP0
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
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org,
 Gabriela Bittencourt <gabrielabittencourt00@gmail.com>,
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use ARRAY_SIZE to replace the hardcoded size so we will never have a
mismatch.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
Changelog v1 -> v2
- Use ARRAY_SIZE(priv->cck_pwr_tbl) everywhere instead of introducing a new
  variable to hold its value.

 drivers/staging/vt6656/main_usb.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 5e48b3ddb94c..acfcc11c3b61 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -23,6 +23,7 @@

 #include <linux/etherdevice.h>
 #include <linux/file.h>
+#include <linux/kernel.h>
 #include "device.h"
 #include "card.h"
 #include "baseband.h"
@@ -145,7 +146,7 @@ static int vnt_init_registers(struct vnt_private *priv)

 	init_cmd->init_class = DEVICE_INIT_COLD;
 	init_cmd->exist_sw_net_addr = priv->exist_sw_net_addr;
-	for (ii = 0; ii < 6; ii++)
+	for (ii = 0; ii < ARRAY_SIZE(init_cmd->sw_net_addr); ii++)
 		init_cmd->sw_net_addr[ii] = priv->current_net_addr[ii];
 	init_cmd->short_retry_limit = priv->short_retry_limit;
 	init_cmd->long_retry_limit = priv->long_retry_limit;
@@ -184,7 +185,7 @@ static int vnt_init_registers(struct vnt_private *priv)
 	priv->cck_pwr = priv->eeprom[EEP_OFS_PWR_CCK];
 	priv->ofdm_pwr_g = priv->eeprom[EEP_OFS_PWR_OFDMG];
 	/* load power table */
-	for (ii = 0; ii < 14; ii++) {
+	for (ii = 0; ii < ARRAY_SIZE(priv->cck_pwr_tbl); ii++) {
 		priv->cck_pwr_tbl[ii] =
 			priv->eeprom[ii + EEP_OFS_CCK_PWR_TBL];
 		if (priv->cck_pwr_tbl[ii] == 0)
@@ -200,7 +201,7 @@ static int vnt_init_registers(struct vnt_private *priv)
 	 * original zonetype is USA, but custom zonetype is Europe,
 	 * then need to recover 12, 13, 14 channels with 11 channel
 	 */
-	for (ii = 11; ii < 14; ii++) {
+	for (ii = 11; ii < ARRAY_SIZE(priv->cck_pwr_tbl); ii++) {
 		priv->cck_pwr_tbl[ii] = priv->cck_pwr_tbl[10];
 		priv->ofdm_pwr_tbl[ii] = priv->ofdm_pwr_tbl[10];
 	}
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
