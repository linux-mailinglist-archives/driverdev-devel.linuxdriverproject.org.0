Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C891CC9A8
	for <lists+driverdev-devel@lfdr.de>; Sun, 10 May 2020 11:10:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8925B88393;
	Sun, 10 May 2020 09:10:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mAcW2uQvK5pu; Sun, 10 May 2020 09:10:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E3C3E88328;
	Sun, 10 May 2020 09:10:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F3A271BF5A0
 for <devel@linuxdriverproject.org>; Sun, 10 May 2020 09:10:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EF874203A4
 for <devel@linuxdriverproject.org>; Sun, 10 May 2020 09:10:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uVnr1xFwddrh for <devel@linuxdriverproject.org>;
 Sun, 10 May 2020 09:10:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by silver.osuosl.org (Postfix) with ESMTPS id 2335420384
 for <devel@driverdev.osuosl.org>; Sun, 10 May 2020 09:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1589101823;
 bh=RnTcmEx5qoAJbFLaa3pbcn/t4m8FJU30wWNSGdhiRfs=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=UqjdcjEMiph1OuovZsbjRKMsWEWNgvu8pH8r0h8x7ucIvHMGumrPN0JbdqTSfeprx
 DCFxWEeVoBbwBvnCEDxFL7PQc3vWMpdmkrazESylODVvnkT88iDqG61E/YO2Ei+nJV
 d1WgnjqjEjDP/pJSkv5oqJAr6sNt0xgjztxohEXY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MvK4Z-1jFd1j1Q9p-00rHZb; Sun, 10 May 2020 11:10:23 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vt6656: Remove logically dead code
Date: Sun, 10 May 2020 11:09:50 +0200
Message-Id: <20200510090950.7633-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:LAtPG/5BH3DRfe+GQcJ9fBH7tC1pg8Lo0EEGG7tE45bglIk4HD2
 A84NWs16OwynIpPYFO0t54DwOr9IBDjP56fOLEy+E257n4KeK2OZDk01Nnh+rx0/FP8zIna
 qkgdav/LrHiAkUGKFQ3xp2RA3dTw1pLsgNuj1+B7Fy+4DqViQ9ihd3fVzjBBtbwG7okZxOU
 KDWVtj7c8koItU9kqejgQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:AMH1ANeRsy4=:JbGy5T25FJNTV8OudkXP4P
 pj6b7y+nr0Lqz0IS3kFblgV53ffCMetEvPZ7qY8lVYsejFLjTFr+mgsbTO5TKXkGZMQxGO1cD
 tZwKvx+tIIur8UwXjBpTVCrbYXUJosSfa9s+pBQ/MJdFytRf3cJtXmCrD6Vv947XIQ/KhwzFo
 /gRew5Kphxjayh65IbTUhDsdojZ0nVuA/NgjaVj7hBgnYzpAKyTetuzi8w1wFTe2o5cdAfJ8b
 m1RW+9SNjFt07qKdv4ZXcieY9bUqQ4r4dYoLRIUYbC+N4LaFCfaepcIj0dZMY3I66Z0AXtROw
 JpgeM1BROjVPmaBnuDvyd2J6EndQT6JPr5c2KnTVMzGB4+7Ao7855GFpPZNSIHgHQFJiXn/DI
 JM3V69HxITqZxQg46deoZpDglFUYdAJ/S2uUS/rXkyHO6fn1O+FqnDZKQY8lkTiHZXVwBZ7Dl
 swuTyD+XnAYQv5/PkmOuJE7csK3h6/O4LxiMETFIy3QF5RBXsYLekjzajUmkhbsS0yCSLWdpU
 lt+DkLHl891N88hL0ZlPt7JK7K4ZTNdRWVp8jIik1GnJS2n3eiuTNjIwdbdbTAHdE0J1ezEJc
 ZIAGctAuTneguLvueLSvj0I+yG6iHxgkF+WUr/zrAGcY9W4LQ/kbuE190b/S7jomEKR7ew1Zp
 KswRQ+VZounetcn0GbjxIBozH/HoJ5j3rqvy0DAollm9G2LfYbc7ILkY7ugUUew/dJzWo5xxd
 a9GFsy211JKqXfEuaYjOzZj3cgvCU44VDIx/4ERXOVtB783lhSaBlDvFXkfzWznsT3tfZMV5q
 C4fxc+VZCNLp7DfAjcqsJrXx9gjTfo9ifX55k2ftm5wF1af6XdnW9+UyLOJSPcBTw0couh7hD
 6dxB8A0yjGuk9xMP7jc42Tj9qQIw5KjjKQu4koCWvCpy7pc76zgqXzLqVsUr0LDgSTfbSVm4x
 jrKJtTtozr6hFctOSLkJbqzaomHseIKtyBbCihGxxT7G4GP4+eKs7+uuHx5KXYEJsT6NLMxhg
 YlgVVxUkE0PBLqoBIJUmoWX/ragJWehg5F1pmjsmdn2nTfMXJgFE7Qevq0i1aiXCmIJt1BdF8
 P21+yNtKNJsSE99E5zyBqvza/3JWwUwnlyMaVGRaTYtsHOIHthpy94AL5oNFrBw/BR4oHjvhR
 jFziQMY0gpv8KKt4i+VXZdQ530RZxpSen3qwY5b3npKvUL0hoh76tqDA2kUL9pzf2i+pn4qiG
 JaOdIRWaLfaKN244R
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
Cc: Malcolm Priestley <tvboxspy@gmail.com>, devel@driverdev.osuosl.org,
 Oscar Carter <oscar.carter@gmx.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In the start of the "vnt_rf_set_txpower" function the "power" variable
is set at most to VNT_RF_MAX_POWER (hex = 0x3f, dec = 63). Then, in the
switch statement there are four comparisons with the "power" variable
against AL7230_PWR_IDX_LEN (dec = 64), VT3226_PWR_IDX_LEN (dec = 64),
VT3342_PWR_IDX_LEN (dec = 64). Due to all the commented comparisons are
to check if the "power" variable is "greater than or equal" to 64, this
never happens. So, remove the logically dead code.

Also, remove all the defines that are no longer required.

Addresses-Coverity-ID: 1230228 ("Logically dead code")
Fixes: f53d9f12c51a ("staging: vt6656: rf.c additional power.")
Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/rf.c | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
index fb708467b99b..5b8da06e3916 100644
--- a/drivers/staging/vt6656/rf.c
+++ b/drivers/staging/vt6656/rf.c
@@ -28,15 +28,9 @@
 #include "usbpipe.h"

 #define CB_AL2230_INIT_SEQ    15
-
 #define CB_AL7230_INIT_SEQ    16
-#define AL7230_PWR_IDX_LEN    64
-
 #define CB_VT3226_INIT_SEQ    11
-#define VT3226_PWR_IDX_LEN    64
-
 #define CB_VT3342_INIT_SEQ    13
-#define VT3342_PWR_IDX_LEN    64

 static u8 al2230_init_table[CB_AL2230_INIT_SEQ][3] = {
 	{0x03, 0xf7, 0x90},
@@ -658,9 +652,6 @@ static int vnt_rf_set_txpower(struct vnt_private *priv, u8 power,
 		if (ret)
 			return ret;

-		if (power >= AL7230_PWR_IDX_LEN)
-			return -EINVAL;
-
 		/*
 		 * 0x080F1B00 for 3 wire control TxGain(D10)
 		 * and 0x31 as TX Gain value
@@ -671,16 +662,11 @@ static int vnt_rf_set_txpower(struct vnt_private *priv, u8 power,
 		break;

 	case RF_VT3226:
-		if (power >= VT3226_PWR_IDX_LEN)
-			return -EINVAL;
 		power_setting = ((0x3f - power) << 20) | (0x17 << 8);

 		ret = vnt_rf_write_embedded(priv, power_setting);
 		break;
 	case RF_VT3226D0:
-		if (power >= VT3226_PWR_IDX_LEN)
-			return -EINVAL;
-
 		if (ch->flags & IEEE80211_CHAN_NO_OFDM) {
 			u16 hw_value = ch->hw_value;

@@ -731,9 +717,6 @@ static int vnt_rf_set_txpower(struct vnt_private *priv, u8 power,
 		break;

 	case RF_VT3342A0:
-		if (power >= VT3342_PWR_IDX_LEN)
-			return -EINVAL;
-
 		power_setting =  ((0x3f - power) << 20) | (0x27 << 8);

 		ret = vnt_rf_write_embedded(priv, power_setting);
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
