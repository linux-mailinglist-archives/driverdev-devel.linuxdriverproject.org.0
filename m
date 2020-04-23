Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BBA1B5F90
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Apr 2020 17:39:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 58A8420352;
	Thu, 23 Apr 2020 15:39:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hitYvZYWWNhu; Thu, 23 Apr 2020 15:39:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1B31C233B9;
	Thu, 23 Apr 2020 15:39:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E8D871BF3DB
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 15:39:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E5693885EC
 for <devel@linuxdriverproject.org>; Thu, 23 Apr 2020 15:39:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y66fz-D5hVUZ for <devel@linuxdriverproject.org>;
 Thu, 23 Apr 2020 15:39:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4C039885E2
 for <devel@driverdev.osuosl.org>; Thu, 23 Apr 2020 15:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587656354;
 bh=AnrOXTpXsfBgG++l8YlqTgHwAfmDn9tSuFzC+LRmxiA=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=KQiO+x5enh7v4JgcavZkzff4u1bf7ewLcsToRsjf7S2WJPUBM21UPzSNd/TSFYd9k
 ULKdKewsiwuTEMuERX//niqIu4jNxX2LY06vdpZgaHZN7A18r/vNKCEQbYbLg1q6fg
 I9myX7P+KYOvBrkLx5pYGXeoJJKgD7tRQvH4DppM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx005 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1M9Wys-1jX7aw2XRM-005cVE; Thu, 23 Apr 2020 17:39:14 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 2/2] staging: vt6656: Remove functions' documentation
Date: Thu, 23 Apr 2020 17:38:36 +0200
Message-Id: <20200423153836.5582-3-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200423153836.5582-1-oscar.carter@gmx.com>
References: <20200423153836.5582-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:6sKv60QHAf3LbU2MSaMTkLSVfIXF5/SOzoMo+QJ6n/IHyE0dUSk
 qzwguUyEpuZotUOSO31IF30z4NjWvUui8I28Ehh9kvcip4mSd6r0IpWBAV4zA1sMwISvu1m
 VLhq+RIuBwE06lZ81841MXVwzz6WRJtjCbjfaLalLverADEsryCg9rYzyfkoYFZXL4T7j/u
 yesT3gNc+5lw2jjOb4hZA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:LY3TKA0ZSDY=:RouImVkvsHs+B8J/YIPOho
 LxbKnsmm3LPQnIKONRzTUC34a1YDB4sN3DDdYWeFSdO3ZzM+5Ts26WoPoAxNmwl1nUeIJWwOq
 29jcBWwiE4/8YGvBRzPvDoOvMLHFSX6swQd6Ntyw63LY+zqY4Zx8DOkkx7zidO/kkGWtk7hkE
 dxpc22v1k7+A9SzbKHccIGR4rRhknbJtHwE8YLA6jhWyKueRffGwetsEk/ZSPCE5e3FSCFYkR
 rIWkvEHxhxY7pPmsFxpQJFL16uzvS58emXl5zXBRNXwzE3uFTG7iopr6p0VUeEVOKLFM0e4bN
 AXzpWRr9NwxHtsD3p+T0DGiQC6sg+Spmbu95nqxyAz+GvWcdZgFtSJFrpR55Se6TOJSeTCEbu
 ZaK/Wruca4NqxpVOaf1Ry/uI9JalaAQwvEGR4q7BRufex7D74I+ZlnnxJL5IdgkF73le0BWA0
 QeF9hqecaeewvSdd8QfxezTbK235zSIQIbot+K1qlZVLbovUJ027xW51naWFc74TZtUcQQ9+A
 yjZVpC12GWgadv95XRLGg7WNrT34IBoNon+cJA/+Q2p7pdOTN23gxxJCiCRDLZZWOYS7XPkxQ
 QvuTjZFcf7pXuTVqmMaGdkm3d7Ao20jBxUrMzJPTEUfHdMmce/KyylqB/DkA0nryOGFAIyVLw
 381oPkmAdjmzys07AUQdutwTBOXrj74MDikbxBUBAytbLRdL4+gT5+BQxKOjXc6+aP9v/qytb
 Ij3+53X+katqB6iaf1rW3ACQEJnBfg8hJRpmVNaMgbpDLpSE2x5VI4v8IjtQDhmiKo+MksXcW
 WueX9yIaoptdxjBpcI+JHm9H+rBjzVhBXYig6uSZpLlBgItsGTBzbz/PDAccRspSX3rGK0JgN
 0uN/agFhP5KefyM/BD0RVELQMsNaNITZF/OsR9ghBJ6nLrRhOtZz69N2aCCSwvQFSaaCIBIDW
 YwPAU6XgZufurGB3QTYCSkDbwEl/YF7Fp29chyW3wIbBjjM7xANAhNI0wJF9D17+EIGTp7ESZ
 +RqyQQGm+6sDvGsBzG9y4CY7MPKLCRkzvMv3bTLVMdtZZtGQo2ggmDwkaa68+COZIX5HidB66
 8oq7vFultHMYNZ/toezj1M6op3uqMuhLBExa0jXk8YvN2fvx8Ok9DtOvJ3kdof4g+szftvFU9
 eU7f6jx94/g9kRFVxggVARd7U9/cNuUX5bXBh3wQB+MswGoR2fRt6h981ge/fcsAi08KFX7Hj
 4avA244WPAqlRSsDw
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
index c29f7072c742..370ae4253a3f 100644
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
