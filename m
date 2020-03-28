Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 269E51966A3
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Mar 2020 15:18:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5C8922048D;
	Sat, 28 Mar 2020 14:18:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Knf3lqLIMFg; Sat, 28 Mar 2020 14:18:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A28F4203E7;
	Sat, 28 Mar 2020 14:18:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E66281BF476
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 14:18:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E27B4888C7
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 14:18:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sp4tpZp+hefX for <devel@linuxdriverproject.org>;
 Sat, 28 Mar 2020 14:18:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D7BE4888B3
 for <devel@driverdev.osuosl.org>; Sat, 28 Mar 2020 14:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1585405086;
 bh=SUx80C22dsCXi3ioaoBr0faA646Xc9AQsYzwECabVtM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=BKwwzc+EcfWo75t1wQlgAxvoqfVeraDs/2nXNh1pWHE+dw+/55qtUlNveIiDg4aQt
 6/iHjdbiYLCKTlhc9qEI8jYW+7fq8Q7pYEgXem/p3Lku/DsyXee47iAX0JTLeMID4z
 urbQnvxuJcTOE5j67/dPARSOA5TZnZojYpElLisA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx005 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1MeU4s-1jqQZd3Wjs-00aXqG; Sat, 28 Mar 2020 15:18:06 +0100
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: vt6656: Use defines in preamble_type variables
Date: Sat, 28 Mar 2020 15:17:38 +0100
Message-Id: <20200328141738.23810-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:taf/1qb6TVJpY5BRTC2GnU1NkcevxFOvDkNTlR0xv0nWwHz4mtA
 urZ5cTR8TMK+wlutjrF49EGAUcp2LkvUEs2EIR3vO/nkktDOvsVybtVncearcNl+4ax9Ti/
 chaXVjD4vdMXbo4C6X6nDx2Xbec50V501YW9YrFLmRVotwcme6hfUj3k5XIBcUxmPk3M23k
 eggQB2hqgJXabcglDi39g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:h1F8Q0YvS4Y=:wWkmqCsp0Xg/95wLuyShEm
 JoUbR4W0dj9+/DWfTu5ozK+gCuTqOZVyk2GoJ2RO/L4aZ7xBmmSOnSVSkqXKxB1NiTkFCvXVy
 jRevW08UVhDpHfeM9H0hJjfMT+gHJQFNMdEMY5S+CfmpLdQwAOk7cRHYpXIZtU6az4L0n7fA3
 drPO1v6KK9oeUh00cuBR3ry58KLGLYK4JM7Yd4M0mLmmCOai5aNqQAt2RtPf6qNPBMKsV2py/
 w3MUdf5Rfhx1ja0vfFml7nmWyN/pOVoG2aH46q0NXSUD/NAqxu930a5y2iwlTawT3dOBh6quv
 gO/IOhrMFqgRL9y3ThwhlmHhHHV5KVJXwO/39RJ1fqqXCGmgiD57gfK4QmqYCd0xB+km0KQAy
 IcvyHcHJP5FfsQeFF8gYQ/AnfagC70ePIHT3N5Xt4lFU31tyW5EB2+Psw6EkgKdRXf3ip2r8N
 D+RSuYnU0WY0u1a+k9KbMb9eLJxUlid24cdqFyWfySX+H6L4T4l8/RDOS/wVT7n1A6bIQKi/R
 loNe2RODYuMEMBTJiSvvAmHYPsNZiT+cXjeK7rPlI4Q8m63nt5/B2Wz3951BPV2ia9gGHIJPZ
 4xjxfu4k66O9pBW8srOqb52UCJoaQawzWWckfxYArTK13QqJLxkyMaW9Q5z7FqcRGrUUDL7Xh
 aqRxNggmgkCxOY7yhBgZwvgN4d68hIG0GYcYM7rhsMWPfc3Qg4tyUJ5vmycYDtJtNo7yf6SfL
 zLUi8yRxrloLz3B6xZl+NtAPDtglSO/slzEj+WJd+8sV/LdGwHVOkjS57UyeF9F6zKrCFr+j/
 m7LUAEDP6H2uwdyikkjymeYOYLpuwNG7GIWjJ+xGKinAB6qZSD7e7ElJ+uyb/sGQ7vE+tgtDH
 lpGbfV7iOweaX9FBTWBX/lJUr3HIkKxEdDKA6XkuXhXYKEFw9+59DLfTzzTi4CUTB05UbXC1g
 WWNcwyAAzflEjhIMu2y4N7qBOngIaJcoJ2ji5bT15he/nkhZe8rakzoLXHCveoU3VYe0AJtHX
 IopucBoYniCDe0QdFtXJQZTzKfnLlo6DJj3cltqikVjzAwIjUUOhc8taZAE/Fa8yWV/Cg7mHE
 qbdYXP8APNEw82ywpGmbpnN/5ilJLAx9bwN4OGkWR/0poccBweejsushWNuvBYiiUTf3ZxlFW
 RIwfTrv2xq7eg91tBmPgPH3jxMZpa86HlihvSpIEF2HYKH8P/9BT/I66PltZ8CbASw+tAQsn7
 WnaQ7XGVkImEQs1O+
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
same defines to make comparisons against these variables.

In this way, avoid the use of numerical literals or boolean values and
make the code more clear.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
Changelog v1 -> v2
- Spell checking correction in the changelog.

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
