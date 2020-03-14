Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D9A185608
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Mar 2020 17:48:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9826687C89;
	Sat, 14 Mar 2020 16:48:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H7uJn4k3z-9Z; Sat, 14 Mar 2020 16:48:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3456387A24;
	Sat, 14 Mar 2020 16:48:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4BE841BF42E
 for <devel@linuxdriverproject.org>; Sat, 14 Mar 2020 16:48:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4479A27DC6
 for <devel@linuxdriverproject.org>; Sat, 14 Mar 2020 16:48:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bn5xvkvMqNc1 for <devel@linuxdriverproject.org>;
 Sat, 14 Mar 2020 16:48:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 88F0C2587B
 for <devel@driverdev.osuosl.org>; Sat, 14 Mar 2020 16:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1584204500;
 bh=V0rq/NHA00NI5YnNp0x0uYL1fI/UE5EKZlIF0XhdxTc=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=Tl6JyOy9PnWQt6pNUG3ocElgt9FO94bexMwx4hiNrTUOQQ83CcgqfPNPwjippwktq
 3+ODeLTsUUesZlq2EkDAQcAMV5MGBphyivWmOpVlGa1yAz9uKKU9H6JnP3D1Ynfvxu
 YQ8ZpQsXPczT7Rd+Ia4m+EBb1wZWokUS8Urbohr4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx104 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1MmULx-1jdSIk43NZ-00iWkv; Sat, 14 Mar 2020 17:48:20 +0100
From: Oscar Carter <oscar.carter@gmx.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Forest Bond <forest@alittletooquiet.net>
Subject: [PATCH] staging: vt6656: Use ARRAY_SIZE instead of hardcoded size
Date: Sat, 14 Mar 2020 17:47:54 +0100
Message-Id: <20200314164754.8531-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:VqoulxDnv12K6z91LHZ6YrGqLdCMqF0Pa57KICKH3pdWYb9OcmH
 n+5VUMqHAwm75wJO38WkU/60n0tF2eZLwYkBW1d6yEGF7T05XxDjhljoF+sP9aKvmX+fRaT
 Xh6y+PORdU4K3oA+v75KzDJLQLu8/+Y7io9eHAs0ytG9mIcivfooyZZpnptHw5zilPSPHAj
 3LGPGTQBflZSM8MAK/x9Q==
X-UI-Out-Filterresults: notjunk:1;V03:K0:nmiHKXiAsfs=:76KacINyKrVEAW6f0hRrrb
 ksy7ji3KybY+TzDcpmAzjuqaL/CB3Dy7POvPvfqNGI77Pp3XgFJlhK21Nc07/xZZaEq66VmFX
 +6VvkJVkksO6D5OirFBSvDlPvr5k3u0Tg8z6YNN02dsPQEmMBfizJDSOpDVj5jMI5GeQs/FI6
 dzMs3akdffz5tDUDTEe0ZylyMyJzgeSlutMOm5fIbNVps1EBqyQHYHHDS8bVxqr99Q5eV9pB5
 FTXk1Y9A8O2DUwCZOUrZ2+drvDy7c/+qDX7C0HoFpJnJeqKOpF2QcNFKHVJThMxvLgVwekbJB
 39CwZSN5CBGoYhn8+7IJjEiJqJveOYJIuEQskISW8FLaCjPS5QE7cFSJ5hT6dhLWfDgW7wNcj
 GcIbwdPoAOIQMmvWovdjUkxGtxrtDKhMg+1ld2mtFGg4w0k82vJ9qNywoxyyQDQCjzOJ3ZA8P
 Vvui9i3RuxKGbfBmrgEPLjVmWBhFV+RQZELWo5V/cr3wIunwGVSeMBe+I3YIyoLKWHWHHeq8c
 BrCBTl4w/4yCZ77nTB8oo4u91ayYlLNOs9xCx3pEFj7gEXk8achIUzyOJYAcp/jZ/eW97SxeX
 iuU8/Ub5mCNp173HQ0cEJU7pI4JWexj5JnBJ8wU2glD8GSOUiKSNMKJ6GlfbIenArrozn9WVU
 Dcq1eRlfWX54kGeheNCGmhQnCtIwhpbC+P32S/nUZaM/00ep3+D1uzqcD1A4lDm6SdPc2BPqS
 MZmVY41uSz52ggmp3ipfq2ZHrFeJHvPzHm56YzMz7j55McPGU6t/34j7gjfwu+f/9iUp1+MyQ
 P4QZLIPnCm4M9fUQRW28INs2KWuSz3OcXUHGGlzd+EuRZmBpYg/xUDv+coGrUxCzkXFWxH4Fe
 eyexbRFg1L4EtwVpk6G2x7NJr+QKJYvqdgH/JjdZFP3wgjFnfWqUJhHjzOZub7cM67g6zUOaY
 PXEu71l3h6Rg8o1au1InLE67YfB4wJGe6Zc25yIQ+S1m7abzsSJZxIFaVkUoZzMIKg/rh7d9G
 bnGgLYnQkO6GhT5HzEgjmdl6Wl5nFKlyaAq4SFq44VUxH/pkOf0FnNK/8LtuprwPnv6R9RMGO
 L+DL1pSLHNLsvWL3Pu+adtjPHuAt2bPKBE+v6sIwojmOjLLvZMnsxUx4KUxMKRe8wbXtgn6lf
 /GywaqFLAq3EDfOmd7fk+rf5YXXT7Lk2RguxZ1zs1IlPlASm2fAOgAWsyKPIE10YG5/lGzygu
 kOrQpSi5JEPcUWICU
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
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use ARRAY_SIZE to replace the hardcoded size so we will never have a
mismatch.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/main_usb.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 5e48b3ddb94c..4370941ffc04 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -23,6 +23,7 @@

 #include <linux/etherdevice.h>
 #include <linux/file.h>
+#include <linux/kernel.h>
 #include "device.h"
 #include "card.h"
 #include "baseband.h"
@@ -116,6 +117,7 @@ static int vnt_init_registers(struct vnt_private *priv)
 	int ii;
 	u8 tmp;
 	u8 calib_tx_iq = 0, calib_tx_dc = 0, calib_rx_iq = 0;
+	const int n_cck_pwr_tbl = ARRAY_SIZE(priv->cck_pwr_tbl);

 	dev_dbg(&priv->usb->dev, "---->INIbInitAdapter. [%d][%d]\n",
 		DEVICE_INIT_COLD, priv->packet_type);
@@ -145,7 +147,7 @@ static int vnt_init_registers(struct vnt_private *priv)

 	init_cmd->init_class = DEVICE_INIT_COLD;
 	init_cmd->exist_sw_net_addr = priv->exist_sw_net_addr;
-	for (ii = 0; ii < 6; ii++)
+	for (ii = 0; ii < ARRAY_SIZE(init_cmd->sw_net_addr); ii++)
 		init_cmd->sw_net_addr[ii] = priv->current_net_addr[ii];
 	init_cmd->short_retry_limit = priv->short_retry_limit;
 	init_cmd->long_retry_limit = priv->long_retry_limit;
@@ -184,7 +186,7 @@ static int vnt_init_registers(struct vnt_private *priv)
 	priv->cck_pwr = priv->eeprom[EEP_OFS_PWR_CCK];
 	priv->ofdm_pwr_g = priv->eeprom[EEP_OFS_PWR_OFDMG];
 	/* load power table */
-	for (ii = 0; ii < 14; ii++) {
+	for (ii = 0; ii < n_cck_pwr_tbl; ii++) {
 		priv->cck_pwr_tbl[ii] =
 			priv->eeprom[ii + EEP_OFS_CCK_PWR_TBL];
 		if (priv->cck_pwr_tbl[ii] == 0)
@@ -200,7 +202,7 @@ static int vnt_init_registers(struct vnt_private *priv)
 	 * original zonetype is USA, but custom zonetype is Europe,
 	 * then need to recover 12, 13, 14 channels with 11 channel
 	 */
-	for (ii = 11; ii < 14; ii++) {
+	for (ii = 11; ii < n_cck_pwr_tbl; ii++) {
 		priv->cck_pwr_tbl[ii] = priv->cck_pwr_tbl[10];
 		priv->ofdm_pwr_tbl[ii] = priv->ofdm_pwr_tbl[10];
 	}
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
