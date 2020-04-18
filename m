Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D10C1AEC78
	for <lists+driverdev-devel@lfdr.de>; Sat, 18 Apr 2020 14:38:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 16C962047E;
	Sat, 18 Apr 2020 12:38:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SvQ0KA1TL9cq; Sat, 18 Apr 2020 12:38:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B31AF2276C;
	Sat, 18 Apr 2020 12:38:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 378E11BF5AD
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 12:37:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 33715877A0
 for <devel@linuxdriverproject.org>; Sat, 18 Apr 2020 12:37:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VZ6dhmXxIYEa for <devel@linuxdriverproject.org>;
 Sat, 18 Apr 2020 12:37:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5E8B38734E
 for <devel@driverdev.osuosl.org>; Sat, 18 Apr 2020 12:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587213462;
 bh=Nv/90+/Hq71cvdxi2hkZt7Oq59PfL7K9OjVLWz8Wb6E=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=c0tHAiCYl/tAzAdx48pC2y1yZ4u2SvgR4Tsr3H/pljz9Gd99YeEAWj3m/LnYMEZh2
 JOzbjayfeGV385oIotZzyS9KRLyVBFHmerQcugmi2hEVZdzTds4u5jCsPB4KbWWs2v
 r9kOGq5caQpFiM+jis1avBQ8ck719E6OMPXOajJg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx005 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MwQT9-1j9Lpw3ZUD-00sMNp; Sat, 18 Apr 2020 14:37:42 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/2] staging: vt6656: Fix functions' documentation
Date: Sat, 18 Apr 2020 14:36:59 +0200
Message-Id: <20200418123659.4475-3-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200418123659.4475-1-oscar.carter@gmx.com>
References: <20200418123659.4475-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:mB4zQowuyWmvxC+Wq3YX8wOLaAnyQfTLIS2TSz5ejVjujx6ZJLE
 xqpP/0pUOoraAPpxY6+2CDpZGFhMVBgztmBjBkHUxEkR4+z0nmiH14CQvU7/eASxuZM6Utb
 hYRj1a3Knfbk5+b5zvT+4Y9HopDYe/1EgArk/r6O3AUSUPie/RdzUv1wvc3FtNlPk7Z6D2R
 6YStcaMFYWEsBzgttydIg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:FBoiNOo5RIs=:E0OZgooBgRiI56cRGMzDMI
 m/s+rexf43ovAoikMZhz6uC8vTUhRdXUwUSwLHi1pFpAAX9iz2OAl1xKYUSXO4Iyycv8qH6LM
 VPGa9oyJYGYXKqVXAZ0wa58tPJJ9DDpH6i2Bado4Pz7/YJwIQWOB4XgucdXh1oYKMhX2CczSW
 cfaho26PIIWvXEUVTneMl0v3XrbLt91KpaULMt8ESmcGf2opAn5pgmXcYqZLT6gr6EMaMrhOH
 Yj/lc1KofAjVWz7BwK6uEdJ5IbscdvBuvAbyD3dpMAvWCh+6q80AYOmKM2XbiKuhEbwbNLAKN
 l9zBGDFqCxBhvr1e4NzhYg0cPrawiNKG6h+nx+UPgrHHG56PE06L09busfrS76MOZSOX5iUpZ
 MVQiQyYuiLDcx9sv4TXmEyV+1zD+UZZ+tGMEIeJ6aNruFyEXQU74A3BP/tibbk6zN/nuPiwxF
 oUa29HajsABuDbHIgcrHkCW8ssja+I7vSBifMKKIlTAP5zk1dddMu+ln65cYvsJjLrzZHNnk3
 9vXkYDxQRksyIJj4Uzpjd22WF3yONySzzltWzdrlVE7R029QikkgNr9E7fZE8vaXEB/vroMbR
 oPY+njzWHlqmyU9lW9iM8llxYbaCPDMBVlepBBUKvr5X7CmzIrtTkJ1Uqimtu4BkQasj/gyZn
 A7Png1B6HVCbCRRHLIXQxkMRG03XZmnSAj+pWqFJfjX0qcuBCbKkC7rF6OJ23//is8YEUQTXW
 dW0hkPRU8VT11PTBc29GCB05dxMpfscdey+NGYvQBPCZv5CZA5pyIPaKPnW16rZNASDXoGi2E
 XxIdgKbUse899pa1qcVvreEPY8lopeA/M6vYrLlAToalbdxtQxw/wgvg0TRAGeqx6cmmolf4L
 rbaisiVXUqsXkLYIecSrJvjoUFsjmR0jdElY92pBO8ncjYSYgvRiwvQACTAOSNbA6Su+r+CGC
 BaOfvXF0hhc79UYjD5jk9i3JfF7hBxArOgZNnIADx8XjZF0Ppsp0BgDnkyIsKRyMj/2S2nyD+
 HgJWaNLag2h8WbFauVA4JNFuH4vqTRfVDS3tFt5YpYWZLDwPNE8qwMsTIS1viWUnngp4Xpge0
 EIGoX48lfnsvawuXxb0B6qJfw2w5Wj7O3ZK81lOxw0HMrOvI0juc+Ny9+SZkx1KuXUha3B+va
 rCnJseMpxBoxnkp/otyYp23cmUvQhl1I30jZmzDuKTCaNeXerTdEsPBslOcGB0c4KnBzCF2+h
 V1Q8FO2DqI2dUKxQe
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

Replace the functions' documentation by the kernel-doc style fixing the
parameters and return value.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/card.c  | 101 +++++++++++----------------------
 drivers/staging/vt6656/mac.c   |  67 ++++++++--------------
 drivers/staging/vt6656/power.c |  12 ++--
 3 files changed, 61 insertions(+), 119 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 99ad56b7617d..51acf2212577 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -46,15 +46,12 @@ static const u16 cw_rxbcntsf_off[MAX_RATE] = {
 	192, 96, 34, 17, 34, 23, 17, 11, 8, 5, 4, 3
 };

-/*
- * Description: Set NIC media channel
+/**
+ * vnt_set_channel - Set NIC media channel.
+ * @priv: The adapter to be set.
+ * @connection_channel: The channel to be set.
  *
- * Parameters:
- *  In:
- *      pDevice             - The adapter to be set
- *      connection_channel  - Channel to be set
- *  Out:
- *      none
+ * Return: 0 if successful, or a negative error code on failure.
  */
 int vnt_set_channel(struct vnt_private *priv, u32 connection_channel)
 {
@@ -99,19 +96,13 @@ static const u8 vnt_rspinf_gb_table[] = {
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
+/**
+ * vnt_set_rspinf - Set RSPINF.
+ * @priv: The adapter to be set.
+ * @bb_type: The base band type.
  *
+ * Return: 0 if successful, or a negative error code on failure.
  */
-
 int vnt_set_rspinf(struct vnt_private *priv, u8 bb_type)
 {
 	const u8 *data;
@@ -145,17 +136,11 @@ int vnt_set_rspinf(struct vnt_private *priv, u8 bb_type)
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
+/**
+ * vnt_update_ifs - Update IFS.
+ * @priv: The adapter to be set.
  *
+ * Return: 0 if successful, or a negative error code on failure.
  */
 int vnt_update_ifs(struct vnt_private *priv)
 {
@@ -300,20 +285,14 @@ u64 vnt_get_tsf_offset(u8 rx_rate, u64 tsf1, u64 tsf2)
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
+/**
+ * vnt_adjust_tsf - Sync TSF counter to BSS. Get TSF offset and write to HW.
+ * @priv: The adapter to be set.
+ * @rx_rate: The Rx rate.
+ * @time_stamp: The Rx BCN's TSF.
+ * @local_tsf: The local TSF.
  *
+ * Return: 0 if successful, or a negative error code on failure.
  */
 int vnt_adjust_tsf(struct vnt_private *priv, u8 rx_rate,
 		   u64 time_stamp, u64 local_tsf)
@@ -408,19 +387,13 @@ u64 vnt_get_next_tbtt(u64 tsf, u16 beacon_interval)
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
+/**
+ * vnt_reset_next_tbtt - Set NIC TSF counter for first beacon time. Get
+ *			 NEXTTBTT from adjusted TSF and beacon interval.
+ * @priv: The adapter to be set.
+ * @beacon_interval: The beacon interval.
  *
+ * Return: 0 if successful, or a negative error code on failure.
  */
 int vnt_reset_next_tbtt(struct vnt_private *priv, u16 beacon_interval)
 {
@@ -444,20 +417,14 @@ int vnt_reset_next_tbtt(struct vnt_private *priv, u16 beacon_interval)
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
+/**
+ * vnt_update_next_tbtt - Sync NIC TSF counter for beacon time. Get NEXTTBTT
+ *			  and write to HW.
+ * @priv: The adapter to be set.
+ * @tsf: The current TSF counter.
+ * @beacon_interval: The beacon interval.
  *
+ * Return: 0 if successful, or a negative error code on failure.
  */
 int vnt_update_next_tbtt(struct vnt_private *priv, u64 tsf,
 			 u16 beacon_interval)
diff --git a/drivers/staging/vt6656/mac.c b/drivers/staging/vt6656/mac.c
index 639172fad0f3..c4b541178109 100644
--- a/drivers/staging/vt6656/mac.c
+++ b/drivers/staging/vt6656/mac.c
@@ -22,18 +22,12 @@
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
+/**
+ * vnt_mac_set_filter - Write MAC multicast address mask.
+ * @priv: The adapter to be set.
+ * @mc_filter: The mac filter.
  *
+ * Return: 0 if successful, or a negative error code on failure.
  */
 int vnt_mac_set_filter(struct vnt_private *priv, u64 mc_filter)
 {
@@ -44,16 +38,11 @@ int vnt_mac_set_filter(struct vnt_private *priv, u64 mc_filter)
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
+/**
+ * vnt_mac_shutdown - Shut down MAC.
+ * @priv: The adapter to be set.
  *
+ * Return: 0 if successful, or a negative error code on failure.
  */
 int vnt_mac_shutdown(struct vnt_private *priv)
 {
@@ -72,19 +61,12 @@ int vnt_mac_set_bb_type(struct vnt_private *priv, u8 type)
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
+/**
+ * vnt_mac_disable_keyentry - Disable the key entry by MISCFIFO.
+ * @priv: The adapter to be set.
+ * @entry_idx: The entry index.
  *
+ * Return: 0 if successful, or a negative error code on failure.
  */
 int vnt_mac_disable_keyentry(struct vnt_private *priv, u8 entry_idx)
 {
@@ -92,19 +74,16 @@ int vnt_mac_disable_keyentry(struct vnt_private *priv, u8 entry_idx)
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
+/**
+ * vnt_mac_set_keyentry - Set the key by MISCFIFO.
+ * @priv: The adapter to be set.
+ * @key_ctl: The key control.
+ * @entry_idx: The entry index.
+ * @key_idx: The key index.
+ * @addr: The ethernet address.
+ * @key: The key.
  *
+ * Return: 0 if successful, or a negative error code on failure.
  */
 int vnt_mac_set_keyentry(struct vnt_private *priv, u16 key_ctl, u32 entry_idx,
 			 u32 key_idx, u8 *addr, u8 *key)
diff --git a/drivers/staging/vt6656/power.c b/drivers/staging/vt6656/power.c
index 2d8d5a332a63..cca50c9f4087 100644
--- a/drivers/staging/vt6656/power.c
+++ b/drivers/staging/vt6656/power.c
@@ -77,16 +77,12 @@ void vnt_enable_power_saving(struct vnt_private *priv, u16 listen_interval)
 	dev_dbg(&priv->usb->dev,  "PS:Power Saving Mode Enable...\n");
 }

-/*
- *
- * Routine Description:
- * Disable hw power saving functions
- *
- * Return Value:
- *    None.
+/**
+ * vnt_disable_power_saving - Disable hw power saving functions.
+ * @priv: The adapter to be set.
  *
+ * Return: 0 if successful, or a negative error code on failure.
  */
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
