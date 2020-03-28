Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B456B19668B
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Mar 2020 15:10:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0DB468715C;
	Sat, 28 Mar 2020 14:10:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5m_bJhimvlxV; Sat, 28 Mar 2020 14:10:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8F340870F6;
	Sat, 28 Mar 2020 14:10:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 57BE71BF476
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 14:10:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 51A3188C07
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 14:10:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6V0PKBFnYFC0 for <devel@linuxdriverproject.org>;
 Sat, 28 Mar 2020 14:10:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CD03088BCD
 for <devel@driverdev.osuosl.org>; Sat, 28 Mar 2020 14:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1585404627;
 bh=HIDEZKg7AykOfEpAZWMSjf5Y8O/Z/Xqtejc6v4E6QRk=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=Udp+Xn81bCboKS40mWYPzQ2oJ4IYByLyE+QhmLLciiOhKPvJSfn0mEVr74XCtQQ2i
 HPx9LVhXkrvEItXmjf0PdTinXJHeyPHasAPSUijqjD5cTZdCwLbxeN1pC/Tiarl+yV
 msueYBTIQL91q2f9aMa/cwJk/QjKx4olbeZAvWos=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx105 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1MXp9Y-1ik2d43Vs4-00YEUC; Sat, 28 Mar 2020 15:10:27 +0100
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vt6656: Use defines in preamble_type variables
Date: Sat, 28 Mar 2020 15:09:55 +0100
Message-Id: <20200328140955.23615-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:4qwPggfEBu5MUFm8FNxfZQgZqQe9rPwUA/31M3C/IRxc8RItije
 I35xUMIAB4igdortDKOqCpuJGMeIj6ezqh5dKEES/EW+gFOKdHCtwSpXAVIktUSuouEPXCE
 uT/cwNHuGXJWwe3IAEg8JC8FD/n4ATHWEKkokY1n6QZWxV5h72CnvMHfNbJsl5yhc8AUxwk
 wJO/uWLFs+KDoB4ebdTeQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:t+ipRfVZVbg=:KfY+aNl4fjMrZpVugqNWVW
 8CsbQZoKPmTRR2udY+Pr9Y0xbIcYKu9e4N7nDuXsCoPqxmJzykzuVvek2UIHr/DgXIhzEHUr/
 D3lZbTF3w7zNzO5bXU7vz7Kki2erD23h7uU2UVvgnPdsK9BJP6NYXhmGBRgEs0ZaNJRquTVrO
 7EwbXMz9P3UxdoK9KKVMRi/d/qpyxjnpZDzzbiEkTSJhSSz12yDlMMDlBOOItRtvOBfm1hyn/
 bQTeeTKLaLEiQythWX9AAe6eMmvLFebdH25jVtbgc/eDRGW42bhJSb+Ww8CChQUMA3q0TYYjf
 NT5W5LtJTxbscHAXp6Zqvg+OJJ0Ru/Vn1GjPRVFhJdXNwDWSzp5FIz8CyihUReOhkyESxw+sy
 vSi0vFPraCAxUpE0SuZ/0khbQXcxNEkyxjRmcaCU0HXbaDZ5C+6D0f0YdIPI7RA70OMgdmtQB
 qO72B+gUT/7Wq9oVEha9edKSw8BcTI2rcQhdd5Q1LS3eP5aySLsL/i5SfaiEJ6ZaaW2IxSaMg
 YWfOw8Qy3xCu5J4iw53jlrOw+Rz5Fmais90bU0wMDMdG+Qbc4mlgjp+iSS4Jzys5wCbFG6OGx
 iTpKkWdyZD8W3xisOTQTIFz1vIMYVzNhWAHFosUByDmovWOCuVS56wfipzp6qbRp6U6KnJJSf
 jGL6RHAI7C/goreakKWuKmABM0Bm+20Yjy5VwLCyEhzl3j6BQV+IU7aq1U491jmGfk5UdM+WT
 zDyXH1D5wGMgOtaESnUezfvnlJ/755ey/p+ychjiSNsMcKmY/XNvmh0IAaXqohZClBBxl/+BT
 jcELFuTAngIOEMtie6owwp+dvBd4Hq4vY2gf2CrgusWGkRrfwZzX1cmQ54n4viVfMgFxjIu5d
 kUsx+Xg8aPG2783bAmib2buWc4xxUMnVIO64r4Wx/vret3FTRoU44xj6O1SWdHaEM7MJ2LHxM
 66aejWt2qvOvGUX3r7pWBmmqdTz18XEasmbjR6UY22/rMgYf/zBGdapAmyVDSH5aITMxf4DoB
 walEymN+udcVIBhygD/ssUdibAsx6REOqPAjvE3e73CLXw4nMK4LfgYNGf9+2pCgpivfsWSXf
 kVjHINxcwYUFM3YqFi5tSpBdel874hhIKurNeYJ+eIcTK3FosRmR707YZEbDH/SvrRhe6TpFb
 4lANa1PFKUzAPZ1McPI2190ko1QtHAXKokFvQd1rsajQRXZ9mfUKdUGF+sIThhgDChywtzTFk
 7uIyk2e/Tye6ki4So
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

Use the PREAMBLE_SHORT and PREAMBLE_LONG defines present in the file
"baseband.h" to assign values to preamble_type variables. Also, use the
same defines to make comparisons against this variables.

In this way, avoid the use of numerical literals or boolean values and
make the code more clear.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/baseband.c | 8 ++++----
 drivers/staging/vt6656/main_usb.c | 6 +++---
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index a19a563d8bcc..9bbafa7fff61 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -142,7 +142,7 @@ unsigned int vnt_get_frame_time(u8 preamble_type, u8 pkt_type,
 	rate = (unsigned int)vnt_frame_time[tx_rate];

 	if (tx_rate <= 3) {
-		if (preamble_type == 1)
+		if (preamble_type == PREAMBLE_SHORT)
 			preamble = 96;
 		else
 			preamble = 192;
@@ -198,7 +198,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 	case RATE_2M:
 		count = bit_count / 2;

-		if (preamble_type == 1)
+		if (preamble_type == PREAMBLE_SHORT)
 			phy->signal = 0x09;
 		else
 			phy->signal = 0x01;
@@ -207,7 +207,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 	case RATE_5M:
 		count = DIV_ROUND_UP(bit_count * 10, 55);

-		if (preamble_type == 1)
+		if (preamble_type == PREAMBLE_SHORT)
 			phy->signal = 0x0a;
 		else
 			phy->signal = 0x02;
@@ -224,7 +224,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 				ext_bit = true;
 		}

-		if (preamble_type == 1)
+		if (preamble_type == PREAMBLE_SHORT)
 			phy->signal = 0x0b;
 		else
 			phy->signal = 0x03;
diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 8e7269c87ea9..dd89f98cc18c 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -99,7 +99,7 @@ static void vnt_set_options(struct vnt_private *priv)
 	priv->op_mode = NL80211_IFTYPE_UNSPECIFIED;
 	priv->bb_type = BBP_TYPE_DEF;
 	priv->packet_type = priv->bb_type;
-	priv->preamble_type = 0;
+	priv->preamble_type = PREAMBLE_LONG;
 	priv->exist_sw_net_addr = false;
 }

@@ -721,10 +721,10 @@ static void vnt_bss_info_changed(struct ieee80211_hw *hw,
 	if (changed & BSS_CHANGED_ERP_PREAMBLE) {
 		if (conf->use_short_preamble) {
 			vnt_mac_enable_barker_preamble_mode(priv);
-			priv->preamble_type = true;
+			priv->preamble_type = PREAMBLE_SHORT;
 		} else {
 			vnt_mac_disable_barker_preamble_mode(priv);
-			priv->preamble_type = false;
+			priv->preamble_type = PREAMBLE_LONG;
 		}
 	}

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
