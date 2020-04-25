Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADC8F1B86D2
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 15:43:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C13778825E;
	Sat, 25 Apr 2020 13:43:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lZT27cpm+2TI; Sat, 25 Apr 2020 13:43:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 32088875DA;
	Sat, 25 Apr 2020 13:43:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D27451BF30E
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 13:43:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CEFF585BB5
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 13:43:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fdeiRwqjiYgd for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 13:43:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 331B085B99
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 13:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587822218;
 bh=x8O70XQaSCW+c8VqVnixR5a/X1u5BURnrLA7uFFttdE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=f6jtbB+Uc4VFjdgoUbVwlb1/0B3hWoKhXsGRF/F64q4gLuIZMO77GlXVIv07ZBOUX
 kWAvMsLSFq5fNrIqzisAmZMCTTVOiwLoHhRAM3hwFbAWelCWQ+lk3o4a8U2rMd4jF9
 5bNie3KwIS5fkGDW6FlMOlhZme31xIvDVxczkdQU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx105 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1M26r3-1jUo402ssj-002VUf; Sat, 25 Apr 2020 15:43:37 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v4 2/2] staging: vt6656: Remove functions' documentation
Date: Sat, 25 Apr 2020 15:42:57 +0200
Message-Id: <20200425134257.4502-3-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200425134257.4502-1-oscar.carter@gmx.com>
References: <20200425134257.4502-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:k/1x0jL0VXrEUVQIpDV35NTfGtregwc5nb4Z8EUL/N0DVxqAO94
 rk0i/A47PjyGIBYZ0tq4Ra5OEjMjY+hEcIH+OfqcLCFIuxynDWTMfX5ZaTVZvTPBNi/YXxi
 ZA8eo+YKHRddS+1r38DuaezLW/dq0NCkgmZnwP216LQBY/GLo2nWm/AyJ5WwnFokJMlU5E1
 z5/4ZxBkA5UynE8HBpHPQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:RfsE30ElFig=:UOjEXlCIy9wrAqQDYlvweC
 GH4uxRVF+RUCxeTFQfyvEwE7KL5V46dVL0tAN6vokzmAAEd91H4cues605AZSptWuh3yJ1BWt
 MF/tTkTAYqnK3KZk2HjbYK6Cf/v6wkW2keo+O79XdGUwexDaLhH2Dwg8kfz5NLRXx6CAn3ruL
 OuC9HFs8BHUSOnSDtLKIt3SsnGUejvBqm1Vm/wHzmngDLkym5eJSWb5g/aZaEzEoe+qxHeJLU
 NGJRzGJGnlJCT9ucWYavV4GE1suo9f9RSmODQX1CqVtXt//O7tvfJqUBKTnU+l4L3ihi6oy6p
 BhE4dQ1tLQNlQJNvhCsYxVxbatZQvQTXj80hyKkrRL37hRaUkAR/g4ak8Lu8nFXUqTUD2JrcV
 liUcA7rwBDELSZ21kMqIifNOGKawyhC3Q5kXHJV0iwQH2eaUTR2/8EdUC+jPM49P2NS7f82nJ
 q4H06UPj9ddZK83HFyP+X4BOdpE/YGvg6aMobJ/FGoiljnS2lBuckFDmxBm91avDKCBqZ8JWy
 9cUCEvCPROJLX3NlXhcthfAENn2bTB1OUUE4/34DNc2FL88wieQnQkwgGwqebnsxV6eTHUAr/
 7coBWgSjxoJnF3id8xdctB8v1N93LMCELc0b1/6XjhPdfyLkYftfewnaHdzgfOCr5rO7Xyjw4
 BwmXO/9lIlZZxTmiUdkRHxtCFb0fQBBmeArts8S2H2OPH33iQSzeZMpcNrcLbEWvUoRZY08ev
 GV/mFS2PacYUgSbj3dTad9gB4Qf75o9kWCvTni6c0Tcg+11TMBCIIHHKbJ2gH9YUGyXqmk8PD
 /YBRuoUj+nJdRZkQ97dwRUzdfVEFptmWSmHaUn9fMBu8r70n5M1TbzaIUJpOf6hBk4Q2+3htA
 /xT7YnOruMFbeJYXUBi/DoHtZbWh8ia45epDR++5OV8QmpdDMGGbMsPYf+TVinz1OTrp+6Zdr
 7c7yi64CHx1swBarqTHXggITJfLncvxxCp7VEGWoQMhxZhnhAYSlFtP02MuDpv9mtWgpzw5dq
 sFVJRTbcPfbeMIBggRTuvRIC/IhnB0Fawj/RdLG+A2W5bO3jrh/HoUofOWnyMOXEoHJgLU2ll
 Dz/itAotnexsjaPfCUziC/TikVz7uv2vMY1lwv1na7SQ4c8gYA0vzDQvt3CZLcjuwHTC3z7F4
 RrMr8geGebYJvwGkC8Jy0Nk02Kra8xULCjC+1MAg5S7lLl0Oc5NLbpyrOQwrz9e16aVTd+3Im
 1SFZwAhE3eROs28e9
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
index 341796da2561..872717f9df49 100644
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
@@ -277,21 +242,6 @@ u64 vnt_get_tsf_offset(u8 rx_rate, u64 tsf1, u64 tsf2)
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
@@ -385,20 +335,6 @@ u64 vnt_get_next_tbtt(u64 tsf, u16 beacon_interval)
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
@@ -421,21 +357,6 @@ int vnt_reset_next_tbtt(struct vnt_private *priv, u16 beacon_interval)
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
