Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7F91AF975
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Apr 2020 12:49:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CA2CD20403;
	Sun, 19 Apr 2020 10:49:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yKpBie-5iFx6; Sun, 19 Apr 2020 10:49:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 85F23203FE;
	Sun, 19 Apr 2020 10:49:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 690731BF2B4
 for <devel@linuxdriverproject.org>; Sun, 19 Apr 2020 10:49:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 65905854DB
 for <devel@linuxdriverproject.org>; Sun, 19 Apr 2020 10:49:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wFesAuzkUTLf for <devel@linuxdriverproject.org>;
 Sun, 19 Apr 2020 10:49:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D54BA854D7
 for <devel@driverdev.osuosl.org>; Sun, 19 Apr 2020 10:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587293337;
 bh=oiCl10dnqu2MRDWuRbka7zAznUFMBfpARUEr8Zh5OrM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=eBCG9qhiZVS0SW64b4lbj8Cb6hV7Ph0D6L3NdZwROAGvf/IoQe23V6bv+TZIW6o5P
 HgemFtLoMr/Xy4VKX2RlRMSAvOip2NVaaDnvIr0X/a97e13M2LFgOxorCcmORFniRU
 QdoZkXluR+lcsSjNkEpZT4RDcANLQPAgbuBKt+Sw=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx005 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MiJZE-1im7mo3rzK-00fVF4; Sun, 19 Apr 2020 12:48:57 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 2/2] staging: vt6656: Remove functions' documentation
Date: Sun, 19 Apr 2020 12:48:21 +0200
Message-Id: <20200419104821.6127-3-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419104821.6127-1-oscar.carter@gmx.com>
References: <20200419104821.6127-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:bWw9GnsA25V31ydyY7KLlxyve8/+XHkoA3VqPgpjLU7q04809g+
 Xs4HSQNz/iCzsQfNAPMSIHGNC27N+BhchGwlTnyNa7+pl1YWcQzarqi+uemdE+mIaw2KPXF
 YRMHllo2lkaMoI9yy9gqA0M1XMY3eCx7NLu6pabDbyxGhPTt7nh/1Abx+wDmXCwGWPb1Ith
 qNmejkKcZXKB8p35LrW1A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:JQBLykTbI6Y=:+csqz4VZl25BH3d8eH5GRh
 v0zDtkp5hfOCtxvnntsnGDdLQlNedh5u6j3sBEAAWJFRgSGZ7PTv0Jesxjz3l3TnsqgKhPAtO
 kjmY47nDdYLnUf/CuZlmY/KCZM1VTSQWkIYFFin2ujpe1Nplm7qUTi/z9rFGLt/J3kfy0sIXH
 n3PKxhbodH1eg7Y9lcgILQVF0nTWwGbTcZLYEZjVR7uMwvnnYO1fgnd7TUiuw+/TomuWRIsSy
 ZOawqkvtiiJse3yfG9MLHPlWDS1JZBMckV9rUzUOE7CwJTdNmSws6lq862gu2yqRcbiTRlJR1
 fHTQyZ29izSh8Xky8eYBme+h4QiZeqknvngooGxPn6sKl/tvXKMIPtfHx8EGy0Wi6J9IKwmhs
 16FW9k94nOTPUCPV//puxInjwRzLeUYjV5xFKn4jXStg53JL/XzVJEfhC2Nn4NkeoGpsQyOwN
 mXNRtsnQE+0JpFw9gYJwMFc2kHRIcaBDSPpbBeadUfM60wOiKMWUSFtetKIIbZPH6hYHNzZE5
 W/n/mzbrlst+oG6X/+/8A7ch/ICN+bKuUYzJY+xCChhtO1aC7blrvTVfqGTmJHNE7j9dQS9A/
 EfXprGcryrp6qYiw7m3g6saR53KPRGOrMjbII9vKA0iaSTEfBLV1EIIo7x7PEqCTgihF1qaMe
 m1JcpUPrd2C0n5f1Pji0DCnXFwX0EgofDIHEsCGfxL/hS5Ns1niAQ1Z6fxk/PtMV1Kfj0Qww2
 DzoXcN6r80IxthSkNeb2cjDVDRgt4sF1GL/RDDCOxDf3yV5kN5d24Q1DDUMOhr6+c0RGT7E8S
 t9bO5Q8Pml9s9miPedgOdGwVZXDuJYX3TBZfbV2oH7Xfa5FGiia33CuxHsxMn++rQIOuhJR2r
 gTNQwAFG3AtvxugyosyORxttpFnwVb2oF66jLHAGDd90NBJ9zW4cDom2OlD8eIKAAHbWFjRYa
 OqFjDR6OC+qbALO31abQlHpC4rAN7sm2Ov/YDaK92DCt5Rr14JgyVk4VBD2+pdQCWjt53FEbt
 2AoYGHrrcrBYAQznwRMR8TjlV6U7jivPRB9CrqJnw6Uoz7bQgNR6pSFOp9749Fr4vudxfePAU
 /IK8/QsiAmfwBGn3WCDm8EbcFTpuAAwG7pjzCaDP2nJ/2OQT4lVNs+1CN3a71XWsfnT5Any4G
 lswzWRuvXSH+XxUM/+OwjMMPKeSf+av+ee93bDMZr59Jz1fGcm2t/SJ2ntSFptt12/1f1ETxQ
 Hucu857LsWEI4tr0V
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
 Malcolm Priestley <tvboxspy@gmail.com>,
 "John B. Wyatt IV" <jbwyatt4@gmail.com>, linux-kernel@vger.kernel.org,
 Stefano Brivio <sbrivio@redhat.com>, Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove the functions' documentation as the names of the functions are
clear enought. Also, the actual documentation it's not correct in all
cases.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/card.c  | 79 ----------------------------------
 drivers/staging/vt6656/mac.c   | 52 ----------------------
 drivers/staging/vt6656/power.c | 10 -----
 3 files changed, 141 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 99ad56b7617d..e5e44d0a07ff 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -46,16 +46,6 @@ static const u16 cw_rxbcntsf_off[MAX_RATE] = {
 	192, 96, 34, 17, 34, 23, 17, 11, 8, 5, 4, 3
 };

-/*
- * Description: Set NIC media channel
- *
- * Parameters:
- *  In:
- *      pDevice             - The adapter to be set
- *      connection_channel  - Channel to be set
- *  Out:
- *      none
- */
 int vnt_set_channel(struct vnt_private *priv, u32 connection_channel)
 {
 	int ret;
@@ -99,19 +89,6 @@ static const u8 vnt_rspinf_gb_table[] = {
 	0x0e, 0x8d, 0x0a, 0x88, 0x0a, 0x8c, 0x0a, 0x8c, 0x0a
 };

-/*
- * Description: Set RSPINF
- *
- * Parameters:
- *  In:
- *      pDevice             - The adapter to be set
- *  Out:
- *      none
- *
- * Return Value: None.
- *
- */
-
 int vnt_set_rspinf(struct vnt_private *priv, u8 bb_type)
 {
 	const u8 *data;
@@ -145,18 +122,6 @@ int vnt_set_rspinf(struct vnt_private *priv, u8 bb_type)
 			       MESSAGE_REQUEST_MACREG, len, data);
 }

-/*
- * Description: Update IFS
- *
- * Parameters:
- *  In:
- *	priv - The adapter to be set
- * Out:
- *	none
- *
- * Return Value: None.
- *
- */
 int vnt_update_ifs(struct vnt_private *priv)
 {
 	u8 max_min = 0;
@@ -300,21 +265,6 @@ u64 vnt_get_tsf_offset(u8 rx_rate, u64 tsf1, u64 tsf2)
 	return tsf1 - tsf2 - (u64)cw_rxbcntsf_off[rx_rate % MAX_RATE];
 }

-/*
- * Description: Sync. TSF counter to BSS
- *              Get TSF offset and write to HW
- *
- * Parameters:
- *  In:
- *      priv		- The adapter to be sync.
- *      time_stamp	- Rx BCN's TSF
- *      local_tsf	- Local TSF
- *  Out:
- *      none
- *
- * Return Value: none
- *
- */
 int vnt_adjust_tsf(struct vnt_private *priv, u8 rx_rate,
 		   u64 time_stamp, u64 local_tsf)
 {
@@ -408,20 +358,6 @@ u64 vnt_get_next_tbtt(u64 tsf, u16 beacon_interval)
 	return tsf;
 }

-/*
- * Description: Set NIC TSF counter for first Beacon time
- *              Get NEXTTBTT from adjusted TSF and Beacon Interval
- *
- * Parameters:
- *  In:
- *      dwIoBase        - IO Base
- *	beacon_interval - Beacon Interval
- *  Out:
- *      none
- *
- * Return Value: none
- *
- */
 int vnt_reset_next_tbtt(struct vnt_private *priv, u16 beacon_interval)
 {
 	u64 next_tbtt = 0;
@@ -444,21 +380,6 @@ int vnt_reset_next_tbtt(struct vnt_private *priv, u16 beacon_interval)
 			       MESSAGE_REQUEST_TBTT, 0, 8, data);
 }

-/*
- * Description: Sync NIC TSF counter for Beacon time
- *              Get NEXTTBTT and write to HW
- *
- * Parameters:
- *  In:
- *	priv		- The adapter to be set
- *      tsf		- Current TSF counter
- *      beacon_interval - Beacon Interval
- *  Out:
- *      none
- *
- * Return Value: none
- *
- */
 int vnt_update_next_tbtt(struct vnt_private *priv, u64 tsf,
 			 u16 beacon_interval)
 {
diff --git a/drivers/staging/vt6656/mac.c b/drivers/staging/vt6656/mac.c
index 639172fad0f3..da7067c34643 100644
--- a/drivers/staging/vt6656/mac.c
+++ b/drivers/staging/vt6656/mac.c
@@ -22,19 +22,6 @@
 #include "mac.h"
 #include "usbpipe.h"

-/*
- * Description:
- *      Write MAC Multicast Address Mask
- *
- * Parameters:
- *  In:
- *	mc_filter (mac filter)
- *  Out:
- *      none
- *
- * Return Value: none
- *
- */
 int vnt_mac_set_filter(struct vnt_private *priv, u64 mc_filter)
 {
 	__le64 le_mc = cpu_to_le64(mc_filter);
@@ -44,17 +31,6 @@ int vnt_mac_set_filter(struct vnt_private *priv, u64 mc_filter)
 			       (u8 *)&le_mc);
 }

-/*
- * Description:
- *      Shut Down MAC
- *
- * Parameters:
- *  In:
- *  Out:
- *      none
- *
- *
- */
 int vnt_mac_shutdown(struct vnt_private *priv)
 {
 	return vnt_control_out(priv, MESSAGE_TYPE_MACSHUTDOWN, 0, 0, 0, NULL);
@@ -72,40 +48,12 @@ int vnt_mac_set_bb_type(struct vnt_private *priv, u8 type)
 			       data);
 }

-/*
- * Description:
- *      Disable the Key Entry by MISCFIFO
- *
- * Parameters:
- *  In:
- *      dwIoBase        - Base Address for MAC
- *
- *  Out:
- *      none
- *
- * Return Value: none
- *
- */
 int vnt_mac_disable_keyentry(struct vnt_private *priv, u8 entry_idx)
 {
 	return vnt_control_out(priv, MESSAGE_TYPE_CLRKEYENTRY, 0, 0,
 			       sizeof(entry_idx), &entry_idx);
 }

-/*
- * Description:
- *      Set the Key by MISCFIFO
- *
- * Parameters:
- *  In:
- *      dwIoBase        - Base Address for MAC
- *
- *  Out:
- *      none
- *
- * Return Value: none
- *
- */
 int vnt_mac_set_keyentry(struct vnt_private *priv, u16 key_ctl, u32 entry_idx,
 			 u32 key_idx, u8 *addr, u8 *key)
 {
diff --git a/drivers/staging/vt6656/power.c b/drivers/staging/vt6656/power.c
index 2d8d5a332a63..d160a0773943 100644
--- a/drivers/staging/vt6656/power.c
+++ b/drivers/staging/vt6656/power.c
@@ -77,16 +77,6 @@ void vnt_enable_power_saving(struct vnt_private *priv, u16 listen_interval)
 	dev_dbg(&priv->usb->dev,  "PS:Power Saving Mode Enable...\n");
 }

-/*
- *
- * Routine Description:
- * Disable hw power saving functions
- *
- * Return Value:
- *    None.
- *
- */
-
 int vnt_disable_power_saving(struct vnt_private *priv)
 {
 	int ret;
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
