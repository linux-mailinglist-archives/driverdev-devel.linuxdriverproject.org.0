Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 257AF1A8366
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 17:40:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C31A885BD0;
	Tue, 14 Apr 2020 15:40:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qMfgJYdBtlap; Tue, 14 Apr 2020 15:40:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0AF5785C05;
	Tue, 14 Apr 2020 15:40:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E62E91BF59D
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 15:40:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DC67185BEC
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 15:40:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KiJkwXNTYM10 for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 15:40:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4C85585A6E
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 15:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1586878774;
 bh=qDQL1qzQyEDO5ztNZjiR1182cfMBNg4Z/fUvBHSHojo=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=kb5PqeZLScdCNxIYfwIJluyW9kW1yw6IO1MbTwexg8q3v/N2Wm5gonQ2zaABc+OoU
 tXyHZ5avDu9PLk7TkdXnI6wojVINSG1y4HV/6fPBHcMzo1FitaEtvx/EGCetmgkTX0
 0sebk+zHX3jQE1VEI5nXnzpnj+v/brbh1qMQHCzM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MUGi9-1jp1LZ2wZH-00RE6J; Tue, 14 Apr 2020 17:39:34 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/5] staging: vt6656: Return error code in
 vnt_rf_write_embedded function
Date: Tue, 14 Apr 2020 17:38:45 +0200
Message-Id: <20200414153849.5785-2-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200414153849.5785-1-oscar.carter@gmx.com>
References: <20200414153849.5785-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:alBt3xgMIo+FQ6uhVxVhk1PKUd0YjG/UVZuABkeRBJVeqZt4HnM
 DdXVnqrThYR2JAClI8TPHZpI9MxC7MLZlfaeju1zeL1qAmYdIIuIzTQr/59gsbSeY7B7N6F
 VTzzQhxAZ3erwMV+YB1G+YbZ/g9ZlvAUu5TSj6+005m4W4NsKkm4N1SROXIGETgHcKGP0VY
 TItfkFX9mITYeQKPkH0bw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:5OgZLtgSmLk=:wWw3i7uvqBnuizPlsN2rGf
 ozQtCN5x2q/Dr0ijYws75itfjEGKY6AvjnVgiQs9uorVYK2RAyzl0bQM/nqNAZEhvY+6F9X+O
 jadBPTwO3nL5uwmpWRBR97kNDFvFhmCCYflStgFWMl2gOORwdcnvflkiLvMMVczEAmfzaf/39
 h0brkFecOM0uEW0lbICiZuJX/HJNt10bWJ5GUYKA0oeioPU+rXnaKEcvydIebcT3X5zDYT6e6
 SKjeYG2UYJV0oGqjLStOxNuXJtUsC1MAI0sG8JcfrZlG2JmsNwCIhNQHokLVRlT+FT6YN+KDV
 nxUD2skrVfgxDAjdfKB+EJ7kQYUdY48F4XS18DHUCDvz/Org9faAuglrlvjcPfavbdL46aPbk
 b5FmJWAXFFeXwx8ITyZmeI5QzXQ/FDZKUn2yZE/zWHGQ6SZGs9nEq/spQnQ3y9gDWwLCAMfXy
 asEGIPvSewtCLw5e5kDT3DdZf18XSrupvLObFoDkxAgMNoy96vlg5CUrGnjH4ciXstYaHZe73
 fx7quASUqCjbtcxQfJ9nwJouh/GR2tUsp4pbHfVlx1hK+0B7Jk1+gE08EVQ9HrPeqXd09H08G
 KjExuHUJUtB0p4hm86Zrw6jxfLVZXh05kdC+8N2wWUiSI1EncEdoJPvZCak0U+kwR2to4LHul
 0dYl79cwvIX46hoPJJLs4t5HT68jsFLIQ2yBrXy0akoRio07cXPtNpVc9Kzc2zIaGKpo3UM7Z
 cAD4cNq1Mg8xZCJs8FTDrx2GeByFqkwNgIUnKdxc01YoJqhQGll3/VdJ0jMd3O47PKrvYs5i8
 VKKLcYT3lsZ0CLEu483pmurheW/k2PzXGCqFleH51fMNTMeu/P19+pHCiGoRCMsfjOUZmwykh
 cf0ODW8bnqvwNi8hxKnLE0bKh2IffxSY4PaeCT+NXQDpFZf63QAJZz3qsbDEMpBuu1UbF9woO
 4hA9JVEUpYAHMHqxq7OM2eBabJUJ6dvUmShgEqh6ePFImzAYjizhHBcIN+GHbuu54R18WZL9V
 5xLFudhWIysAaRFcT2sPVduyIVyGm1+yO+9w0a5AisKOMvdZSgTs7iGDUhspHcG+P83dC9xwX
 WDOtGWVDIv0toJ0K6+bErdhJb/9QF3LO2Qd9x52tKXr/bnl+FugeTBNw0c8rQcOs7po972fCU
 QgzWWAlzJBzOU4EPJVGb70aAJKTmWhqy7opf6fxkY8BF6TZ4QGxGdg4MWOJikwD+nUuDq9yis
 C/Uc125M3KumoIIqd
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
 Colin Ian King <colin.king@canonical.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use the error code returned by the vnt_control_out function as the
returned value of the vnt_rf_write_embedded function instead of a
boolean value.

Then, fix all vnt_rf_write_embedded calls removing the "and" operations
and replace with a direct assignment to the ret variable and add a check
condition after every call.

Also replace the boolean values true or false in the vnt_rf_set_txpower
function to 0 or error code EINVAL to follow the coding style guide.

The vnt_rf_set_txpower function is called only in the vnt_rf_setpower
function that already returns error codes. The calls to this function
(vnt_rf_set_txpower) not use the returned values, so they not need to be
fixed.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/rf.c | 99 ++++++++++++++++++++++++-------------
 1 file changed, 64 insertions(+), 35 deletions(-)

diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
index a00179bd4c2e..06fa8867cfa3 100644
--- a/drivers/staging/vt6656/rf.c
+++ b/drivers/staging/vt6656/rf.c
@@ -21,6 +21,7 @@
  *
  */

+#include <linux/errno.h>
 #include "mac.h"
 #include "rf.h"
 #include "baseband.h"
@@ -531,10 +532,8 @@ int vnt_rf_write_embedded(struct vnt_private *priv, u32 data)
 	reg_data[2] = (u8)(data >> 16);
 	reg_data[3] = (u8)(data >> 24);

-	vnt_control_out(priv, MESSAGE_TYPE_WRITE_IFRF,
-			0, 0, ARRAY_SIZE(reg_data), reg_data);
-
-	return true;
+	return vnt_control_out(priv, MESSAGE_TYPE_WRITE_IFRF, 0, 0,
+			       ARRAY_SIZE(reg_data), reg_data);
 }

 static u8 vnt_rf_addpower(struct vnt_private *priv)
@@ -568,14 +567,14 @@ static int vnt_rf_set_txpower(struct vnt_private *priv, u8 power,
 			      struct ieee80211_channel *ch)
 {
 	u32 power_setting = 0;
-	int ret = true;
+	int ret = 0;

 	power += vnt_rf_addpower(priv);
 	if (power > VNT_RF_MAX_POWER)
 		power = VNT_RF_MAX_POWER;

 	if (priv->power == power)
-		return true;
+		return 0;

 	priv->power = power;

@@ -583,35 +582,50 @@ static int vnt_rf_set_txpower(struct vnt_private *priv, u8 power,
 	case RF_AL2230:
 		power_setting = 0x0404090 | (power << 12);

-		ret &= vnt_rf_write_embedded(priv, power_setting);
+		ret = vnt_rf_write_embedded(priv, power_setting);
+		if (ret)
+			return ret;

 		if (ch->flags & IEEE80211_CHAN_NO_OFDM)
-			ret &= vnt_rf_write_embedded(priv, 0x0001b400);
+			ret = vnt_rf_write_embedded(priv, 0x0001b400);
 		else
-			ret &= vnt_rf_write_embedded(priv, 0x0005a400);
+			ret = vnt_rf_write_embedded(priv, 0x0005a400);
+
 		break;
 	case RF_AL2230S:
 		power_setting = 0x0404090 | (power << 12);

-		ret &= vnt_rf_write_embedded(priv, power_setting);
+		ret = vnt_rf_write_embedded(priv, power_setting);
+		if (ret)
+			return ret;

 		if (ch->flags & IEEE80211_CHAN_NO_OFDM) {
-			ret &= vnt_rf_write_embedded(priv, 0x040c1400);
-			ret &= vnt_rf_write_embedded(priv, 0x00299b00);
+			ret = vnt_rf_write_embedded(priv, 0x040c1400);
+			if (ret)
+				return ret;
+
+			ret = vnt_rf_write_embedded(priv, 0x00299b00);
 		} else {
-			ret &= vnt_rf_write_embedded(priv, 0x0005a400);
-			ret &= vnt_rf_write_embedded(priv, 0x00099b00);
+			ret = vnt_rf_write_embedded(priv, 0x0005a400);
+			if (ret)
+				return ret;
+
+			ret = vnt_rf_write_embedded(priv, 0x00099b00);
 		}
+
 		break;

 	case RF_AIROHA7230:
 		if (ch->flags & IEEE80211_CHAN_NO_OFDM)
-			ret &= vnt_rf_write_embedded(priv, 0x111bb900);
+			ret = vnt_rf_write_embedded(priv, 0x111bb900);
 		else
-			ret &= vnt_rf_write_embedded(priv, 0x221bb900);
+			ret = vnt_rf_write_embedded(priv, 0x221bb900);
+
+		if (ret)
+			return ret;

 		if (power >= AL7230_PWR_IDX_LEN)
-			return false;
+			return -EINVAL;

 		/*
 		 * 0x080F1B00 for 3 wire control TxGain(D10)
@@ -619,61 +633,76 @@ static int vnt_rf_set_txpower(struct vnt_private *priv, u8 power,
 		 */
 		power_setting = 0x080c0b00 | (power << 12);

-		ret &= vnt_rf_write_embedded(priv, power_setting);
-
+		ret = vnt_rf_write_embedded(priv, power_setting);
 		break;

 	case RF_VT3226:
 		if (power >= VT3226_PWR_IDX_LEN)
-			return false;
+			return -EINVAL;
 		power_setting = ((0x3f - power) << 20) | (0x17 << 8);

-		ret &= vnt_rf_write_embedded(priv, power_setting);
-
+		ret = vnt_rf_write_embedded(priv, power_setting);
 		break;
 	case RF_VT3226D0:
 		if (power >= VT3226_PWR_IDX_LEN)
-			return false;
+			return -EINVAL;

 		if (ch->flags & IEEE80211_CHAN_NO_OFDM) {
 			u16 hw_value = ch->hw_value;

 			power_setting = ((0x3f - power) << 20) | (0xe07 << 8);

-			ret &= vnt_rf_write_embedded(priv, power_setting);
-			ret &= vnt_rf_write_embedded(priv, 0x03c6a200);
+			ret = vnt_rf_write_embedded(priv, power_setting);
+			if (ret)
+				return ret;
+
+			ret = vnt_rf_write_embedded(priv, 0x03c6a200);
+			if (ret)
+				return ret;

 			dev_dbg(&priv->usb->dev,
 				"%s 11b channel [%d]\n", __func__, hw_value);

 			hw_value--;

-			if (hw_value < ARRAY_SIZE(vt3226d0_lo_current_table))
-				ret &= vnt_rf_write_embedded(priv,
+			if (hw_value < ARRAY_SIZE(vt3226d0_lo_current_table)) {
+				ret = vnt_rf_write_embedded(priv,
 					vt3226d0_lo_current_table[hw_value]);
+				if (ret)
+					return ret;
+			}

-			ret &= vnt_rf_write_embedded(priv, 0x015C0800);
+			ret = vnt_rf_write_embedded(priv, 0x015C0800);
 		} else {
 			dev_dbg(&priv->usb->dev,
 				"@@@@ %s> 11G mode\n", __func__);

 			power_setting = ((0x3f - power) << 20) | (0x7 << 8);

-			ret &= vnt_rf_write_embedded(priv, power_setting);
-			ret &= vnt_rf_write_embedded(priv, 0x00C6A200);
-			ret &= vnt_rf_write_embedded(priv, 0x016BC600);
-			ret &= vnt_rf_write_embedded(priv, 0x00900800);
+			ret = vnt_rf_write_embedded(priv, power_setting);
+			if (ret)
+				return ret;
+
+			ret = vnt_rf_write_embedded(priv, 0x00C6A200);
+			if (ret)
+				return ret;
+
+			ret = vnt_rf_write_embedded(priv, 0x016BC600);
+			if (ret)
+				return ret;
+
+			ret = vnt_rf_write_embedded(priv, 0x00900800);
 		}
+
 		break;

 	case RF_VT3342A0:
 		if (power >= VT3342_PWR_IDX_LEN)
-			return false;
+			return -EINVAL;

 		power_setting =  ((0x3f - power) << 20) | (0x27 << 8);

-		ret &= vnt_rf_write_embedded(priv, power_setting);
-
+		ret = vnt_rf_write_embedded(priv, power_setting);
 		break;
 	default:
 		break;
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
