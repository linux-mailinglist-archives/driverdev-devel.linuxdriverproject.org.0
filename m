Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55776196854
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Mar 2020 19:17:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 04B6486CF3;
	Sat, 28 Mar 2020 18:17:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i2Eigb_kFLyQ; Sat, 28 Mar 2020 18:17:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0E87086C78;
	Sat, 28 Mar 2020 18:17:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6FE8C1BF57F
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 18:17:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 41D182047A
 for <devel@linuxdriverproject.org>; Sat, 28 Mar 2020 18:17:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9ogrZ5JjdMMw for <devel@linuxdriverproject.org>;
 Sat, 28 Mar 2020 18:17:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by silver.osuosl.org (Postfix) with ESMTPS id DE3AF20358
 for <devel@driverdev.osuosl.org>; Sat, 28 Mar 2020 18:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1585419453;
 bh=8ClDFE5jb+D6WSqrYcYwBB3UMbtyV3apdX6dVPxKzro=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=RkKAzv7q1RFhXp+JE7EQOC9SrlCodxCVizulEnOAVVk3IV6/QNhftUYCskrt32qFL
 SrkTa434F0Lf8PwamryZgwVEvchTks/FCLChl9FLJcM9ZNtLDd3b3NtjPAYWdHTTn7
 ZxwjHlQ6bLhV3x6991SjByjovGQd4KsQEVvA9Nsc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx104 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1MvK4f-1jZVtN3fsX-00rHzd; Sat, 28 Mar 2020 19:17:33 +0100
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vt6656: Refactor the vnt_update_pre_ed_threshold
 function
Date: Sat, 28 Mar 2020 19:17:06 +0100
Message-Id: <20200328181706.14276-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:6wF4kJiH5B1RFFkaEFpYdT+DGqXNheQYuV0ArwKuD7MrY4UcAMb
 TKBhovAJ5S2QtIMKshVTdD7M/1XC92uKlBri7nzTNelsw6uUsuxlpQpBIOMBbBnTfnfM3mx
 uBzyuCxMEvFGJyhiY0d1XjjGdCT6XoGBhC3A8tC6bQ5+p4qUZsbwffpaCui/UlwYrhlJatR
 wAbaPvRC8z8EUiUpfXWLQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:O/yTV3qRnN0=:uL8r9Uu/ngFkqmCQAlkZBt
 C5M1+gmfMUulCSGsTwFf1MwNlC5JbaVobd9QcO+71gc9WjMArUT+W5bINfZ37GE2386blqkrM
 o4F0u86ReYr9O4IgCdjmmf5Z2nY2CE+jQ5aSo/yaU2J5Ouyb8Le9s57hG3tPZVhcxKKt3laMK
 o592g+ojZv0hPs9qZFIMH0KcNJAgbZjZCg28TMPuiZb0u1kAui8zJ7pm0FXP1n5FWTyg5oq2p
 rJmLLi6K4fB01PsfV1xgz9yg3O7S7CQQb//dq7iXuwnj3no74LqVqprjU4HP1/MIhOOH909et
 CLur2nsGD52PB4VR35DWKEdaYwYaSZOyqgJb/wYe0kBrmZ4cNrRBujwYLGAjCZtyDRRot7n52
 fAraMYeG1I9Gc88qpqNSzZQWKCubXGw0fMFHpBwx8cTN5ukIpN/CsYSDWcG2b6pb5vlw9MooK
 E3AzvWA8djnoIynGm/BFNv5DgkOIPNzZjKr6BtMh4FL/GnuNdMNZR3nhj4MKS4tZEkfqxTxiY
 a4uTg53sK8m7+GcMOgcb2EeZaqDCp669F07EY1zBbzdgt4ohYkXnGPRR4XaZuwCluZyjrQBvs
 BjDaQxQ79b9ApExqIz4dWaqqDsNjfySd2ZkJgZ3KWyvt4iDXuQHfzaQw0iOkAX+2/VZtbuLoi
 uNk+MJWT6Nrhu7Ac7wa6flAP5mLKtAaQLAXr377AzLdk6i7E0zpgTK/5KDPax4lYMtZYPii8I
 jgkEXw/X6vVthfZz4xeEr7he9/kh3r4hQ6NAFe1Xd3O0MxYyEatfhgSqvpRr1Z4mZ3UnYNsg9
 xEYCsm1qaTP9i7l4aCyU2F39rCluWQWP33yBhid0JEtnobSLb1rDVHE3ez5aFO+jTDkQxvnbG
 YnoQamyk1+1cZYYPrusPevcd+WGtvLcwK3gjgkW5grOqzuGA/LKc196NObXix9RfMwXyCJctR
 z8EPeeZAro3427sb2vg/MIy1MNxz1lFpxKz4f3Rs+LJrDfOM+paCe+CpcfV0G4thwDm27FxBJ
 dK80aLF55d4ndViUVwcli6rMjXIY0iShtfK/WBAvUSkElCDQWOPAdif2mp7PRDd4ZpD1RPyK8
 9L0KN/Qe1TRDQOmqvG3Mg+5kL99aVni27GMGsiPbuxfqJatickMAPKCP2h5u4vuGyZcLXwVWo
 eWEJJUMTQdiOpHXHdvhYP4QF2CUKyXtnYhk+CqX33PZV9pBKhS+DkuVOLRX4ETQifBGbUADBh
 Bocq7bNrZhx5NrZm6
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
 Malcolm Priestley <tvboxspy@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Create three arrays with the threshold data use in the switch statement
of the vnt_update_pre_ed_threshold function. These three arrays contains
elements of struct vnt_threshold new type.

Create a for loop in the vnt_update_pre_ed_threshold function to do
exactly the same that the if-elseif-else statements in the switch
statement.

Also, remove the if check against the !cr_201 && !cr_206 due to now it
is replace by the NULL check against the threshold pointer. When this
pointer is NULL means that the cr_201 and cr_206 variables have not been
assigned, that is the same that the old comparison against cr_201 and
cr_206 due to these variables were initialized with 0.

The statistics of the old baseband object file are:

section              size   addr
.text                3415      0
.data                 576      0
.bss                    0      0
.rodata               120      0
.comment               45      0
.note.GNU-stack         0      0
.note.gnu.property     28      0
Total                4184

The statistics of the new baseband object file are:

section              size   addr
.text                2209      0
.data                 576      0
.bss                    0      0
.rodata               344      0
.comment               45      0
.note.GNU-stack         0      0
.note.gnu.property     28      0
Total                3202

With this refactoring it increase a little the readonly data but it
decrease much more the .text section. This refactoring decrease the
footprint and makes the code more clear.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/baseband.c | 335 +++++++++---------------------
 1 file changed, 100 insertions(+), 235 deletions(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index a19a563d8bcc..e03f83e1c394 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -115,6 +115,86 @@ static const u16 vnt_frame_time[MAX_RATE] = {
 	10, 20, 55, 110, 24, 36, 48, 72, 96, 144, 192, 216
 };

+struct vnt_threshold {
+	u8 bb_pre_ed_rssi;
+	u8 cr_201;
+	u8 cr_206;
+};
+
+static const struct vnt_threshold al2230_vnt_threshold[] = {
+	{0, 0x00, 0x30},	/* Max sensitivity */
+	{68, 0x00, 0x36},
+	{67, 0x00, 0x43},
+	{66, 0x00, 0x51},
+	{65, 0x00, 0x62},
+	{64, 0x00, 0x79},
+	{63, 0x00, 0x93},
+	{62, 0x00, 0xb9},
+	{61, 0x00, 0xe3},
+	{60, 0x01, 0x18},
+	{59, 0x01, 0x54},
+	{58, 0x01, 0xa0},
+	{57, 0x02, 0x20},
+	{56, 0x02, 0xa0},
+	{55, 0x03, 0x00},
+	{53, 0x06, 0x00},
+	{51, 0x09, 0x00},
+	{49, 0x0e, 0x00},
+	{47, 0x15, 0x00},
+	{46, 0x1a, 0x00},
+	{45, 0xff, 0x00}
+};
+
+static const struct vnt_threshold vt3226_vnt_threshold[] = {
+	{0, 0x00, 0x24},	/* Max sensitivity */
+	{68, 0x00, 0x2d},
+	{67, 0x00, 0x36},
+	{66, 0x00, 0x43},
+	{65, 0x00, 0x52},
+	{64, 0x00, 0x68},
+	{63, 0x00, 0x80},
+	{62, 0x00, 0x9c},
+	{61, 0x00, 0xc0},
+	{60, 0x00, 0xea},
+	{59, 0x01, 0x30},
+	{58, 0x01, 0x70},
+	{57, 0x01, 0xb0},
+	{56, 0x02, 0x30},
+	{55, 0x02, 0xc0},
+	{53, 0x04, 0x00},
+	{51, 0x07, 0x00},
+	{49, 0x0a, 0x00},
+	{47, 0x11, 0x00},
+	{45, 0x18, 0x00},
+	{43, 0x26, 0x00},
+	{42, 0x36, 0x00},
+	{41, 0xff, 0x00}
+};
+
+static const struct vnt_threshold vt3342_vnt_threshold[] = {
+	{0, 0x00, 0x38},	/* Max sensitivity */
+	{66, 0x00, 0x43},
+	{65, 0x00, 0x52},
+	{64, 0x00, 0x68},
+	{63, 0x00, 0x80},
+	{62, 0x00, 0x9c},
+	{61, 0x00, 0xc0},
+	{60, 0x00, 0xea},
+	{59, 0x01, 0x30},
+	{58, 0x01, 0x70},
+	{57, 0x01, 0xb0},
+	{56, 0x02, 0x30},
+	{55, 0x02, 0xc0},
+	{53, 0x04, 0x00},
+	{51, 0x07, 0x00},
+	{49, 0x0a, 0x00},
+	{47, 0x11, 0x00},
+	{45, 0x18, 0x00},
+	{43, 0x26, 0x00},
+	{42, 0x36, 0x00},
+	{41, 0xff, 0x00}
+};
+
 /*
  * Description: Calculate data frame transmitting time
  *
@@ -572,254 +652,42 @@ int vnt_exit_deep_sleep(struct vnt_private *priv)

 void vnt_update_pre_ed_threshold(struct vnt_private *priv, int scanning)
 {
-	u8 cr_201 = 0x0, cr_206 = 0x0;
+	const struct vnt_threshold *threshold = NULL;
+	u8 length;
+	u8 cr_201, cr_206;
 	u8 ed_inx = priv->bb_pre_ed_index;

 	switch (priv->rf_type) {
 	case RF_AL2230:
 	case RF_AL2230S:
 	case RF_AIROHA7230:
-		if (scanning) { /* Max sensitivity */
-			ed_inx = 0;
-			cr_206 = 0x30;
-			break;
-		}
-
-		if (priv->bb_pre_ed_rssi <= 45) {
-			ed_inx = 20;
-			cr_201 = 0xff;
-		} else if (priv->bb_pre_ed_rssi <= 46) {
-			ed_inx = 19;
-			cr_201 = 0x1a;
-		} else if (priv->bb_pre_ed_rssi <= 47) {
-			ed_inx = 18;
-			cr_201 = 0x15;
-		} else if (priv->bb_pre_ed_rssi <= 49) {
-			ed_inx = 17;
-			cr_201 = 0xe;
-		} else if (priv->bb_pre_ed_rssi <= 51) {
-			ed_inx = 16;
-			cr_201 = 0x9;
-		} else if (priv->bb_pre_ed_rssi <= 53) {
-			ed_inx = 15;
-			cr_201 = 0x6;
-		} else if (priv->bb_pre_ed_rssi <= 55) {
-			ed_inx = 14;
-			cr_201 = 0x3;
-		} else if (priv->bb_pre_ed_rssi <= 56) {
-			ed_inx = 13;
-			cr_201 = 0x2;
-			cr_206 = 0xa0;
-		} else if (priv->bb_pre_ed_rssi <= 57) {
-			ed_inx = 12;
-			cr_201 = 0x2;
-			cr_206 = 0x20;
-		} else if (priv->bb_pre_ed_rssi <= 58) {
-			ed_inx = 11;
-			cr_201 = 0x1;
-			cr_206 = 0xa0;
-		} else if (priv->bb_pre_ed_rssi <= 59) {
-			ed_inx = 10;
-			cr_201 = 0x1;
-			cr_206 = 0x54;
-		} else if (priv->bb_pre_ed_rssi <= 60) {
-			ed_inx = 9;
-			cr_201 = 0x1;
-			cr_206 = 0x18;
-		} else if (priv->bb_pre_ed_rssi <= 61) {
-			ed_inx = 8;
-			cr_206 = 0xe3;
-		} else if (priv->bb_pre_ed_rssi <= 62) {
-			ed_inx = 7;
-			cr_206 = 0xb9;
-		} else if (priv->bb_pre_ed_rssi <= 63) {
-			ed_inx = 6;
-			cr_206 = 0x93;
-		} else if (priv->bb_pre_ed_rssi <= 64) {
-			ed_inx = 5;
-			cr_206 = 0x79;
-		} else if (priv->bb_pre_ed_rssi <= 65) {
-			ed_inx = 4;
-			cr_206 = 0x62;
-		} else if (priv->bb_pre_ed_rssi <= 66) {
-			ed_inx = 3;
-			cr_206 = 0x51;
-		} else if (priv->bb_pre_ed_rssi <= 67) {
-			ed_inx = 2;
-			cr_206 = 0x43;
-		} else if (priv->bb_pre_ed_rssi <= 68) {
-			ed_inx = 1;
-			cr_206 = 0x36;
-		} else {
-			ed_inx = 0;
-			cr_206 = 0x30;
-		}
+		threshold = al2230_vnt_threshold;
+		length = ARRAY_SIZE(al2230_vnt_threshold);
 		break;

 	case RF_VT3226:
 	case RF_VT3226D0:
-		if (scanning)	{ /* Max sensitivity */
-			ed_inx = 0;
-			cr_206 = 0x24;
-			break;
-		}
-
-		if (priv->bb_pre_ed_rssi <= 41) {
-			ed_inx = 22;
-			cr_201 = 0xff;
-		} else if (priv->bb_pre_ed_rssi <= 42) {
-			ed_inx = 21;
-			cr_201 = 0x36;
-		} else if (priv->bb_pre_ed_rssi <= 43) {
-			ed_inx = 20;
-			cr_201 = 0x26;
-		} else if (priv->bb_pre_ed_rssi <= 45) {
-			ed_inx = 19;
-			cr_201 = 0x18;
-		} else if (priv->bb_pre_ed_rssi <= 47) {
-			ed_inx = 18;
-			cr_201 = 0x11;
-		} else if (priv->bb_pre_ed_rssi <= 49) {
-			ed_inx = 17;
-			cr_201 = 0xa;
-		} else if (priv->bb_pre_ed_rssi <= 51) {
-			ed_inx = 16;
-			cr_201 = 0x7;
-		} else if (priv->bb_pre_ed_rssi <= 53) {
-			ed_inx = 15;
-			cr_201 = 0x4;
-		} else if (priv->bb_pre_ed_rssi <= 55) {
-			ed_inx = 14;
-			cr_201 = 0x2;
-			cr_206 = 0xc0;
-		} else if (priv->bb_pre_ed_rssi <= 56) {
-			ed_inx = 13;
-			cr_201 = 0x2;
-			cr_206 = 0x30;
-		} else if (priv->bb_pre_ed_rssi <= 57) {
-			ed_inx = 12;
-			cr_201 = 0x1;
-			cr_206 = 0xb0;
-		} else if (priv->bb_pre_ed_rssi <= 58) {
-			ed_inx = 11;
-			cr_201 = 0x1;
-			cr_206 = 0x70;
-		} else if (priv->bb_pre_ed_rssi <= 59) {
-			ed_inx = 10;
-			cr_201 = 0x1;
-			cr_206 = 0x30;
-		} else if (priv->bb_pre_ed_rssi <= 60) {
-			ed_inx = 9;
-			cr_206 = 0xea;
-		} else if (priv->bb_pre_ed_rssi <= 61) {
-			ed_inx = 8;
-			cr_206 = 0xc0;
-		} else if (priv->bb_pre_ed_rssi <= 62) {
-			ed_inx = 7;
-			cr_206 = 0x9c;
-		} else if (priv->bb_pre_ed_rssi <= 63) {
-			ed_inx = 6;
-			cr_206 = 0x80;
-		} else if (priv->bb_pre_ed_rssi <= 64) {
-			ed_inx = 5;
-			cr_206 = 0x68;
-		} else if (priv->bb_pre_ed_rssi <= 65) {
-			ed_inx = 4;
-			cr_206 = 0x52;
-		} else if (priv->bb_pre_ed_rssi <= 66) {
-			ed_inx = 3;
-			cr_206 = 0x43;
-		} else if (priv->bb_pre_ed_rssi <= 67) {
-			ed_inx = 2;
-			cr_206 = 0x36;
-		} else if (priv->bb_pre_ed_rssi <= 68) {
-			ed_inx = 1;
-			cr_206 = 0x2d;
-		} else {
-			ed_inx = 0;
-			cr_206 = 0x24;
-		}
+		threshold = vt3226_vnt_threshold;
+		length = ARRAY_SIZE(vt3226_vnt_threshold);
 		break;

 	case RF_VT3342A0:
-		if (scanning) { /* need Max sensitivity */
-			ed_inx = 0;
-			cr_206 = 0x38;
-			break;
-		}
-
-		if (priv->bb_pre_ed_rssi <= 41) {
-			ed_inx = 20;
-			cr_201 = 0xff;
-		} else if (priv->bb_pre_ed_rssi <= 42) {
-			ed_inx = 19;
-			cr_201 = 0x36;
-		} else if (priv->bb_pre_ed_rssi <= 43) {
-			ed_inx = 18;
-			cr_201 = 0x26;
-		} else if (priv->bb_pre_ed_rssi <= 45) {
-			ed_inx = 17;
-			cr_201 = 0x18;
-		} else if (priv->bb_pre_ed_rssi <= 47) {
-			ed_inx = 16;
-			cr_201 = 0x11;
-		} else if (priv->bb_pre_ed_rssi <= 49) {
-			ed_inx = 15;
-			cr_201 = 0xa;
-		} else if (priv->bb_pre_ed_rssi <= 51) {
-			ed_inx = 14;
-			cr_201 = 0x7;
-		} else if (priv->bb_pre_ed_rssi <= 53) {
-			ed_inx = 13;
-			cr_201 = 0x4;
-		} else if (priv->bb_pre_ed_rssi <= 55) {
-			ed_inx = 12;
-			cr_201 = 0x2;
-			cr_206 = 0xc0;
-		} else if (priv->bb_pre_ed_rssi <= 56) {
-			ed_inx = 11;
-			cr_201 = 0x2;
-			cr_206 = 0x30;
-		} else if (priv->bb_pre_ed_rssi <= 57) {
-			ed_inx = 10;
-			cr_201 = 0x1;
-			cr_206 = 0xb0;
-		} else if (priv->bb_pre_ed_rssi <= 58) {
-			ed_inx = 9;
-			cr_201 = 0x1;
-			cr_206 = 0x70;
-		} else if (priv->bb_pre_ed_rssi <= 59) {
-			ed_inx = 8;
-			cr_201 = 0x1;
-			cr_206 = 0x30;
-		} else if (priv->bb_pre_ed_rssi <= 60) {
-			ed_inx = 7;
-			cr_206 = 0xea;
-		} else if (priv->bb_pre_ed_rssi <= 61) {
-			ed_inx = 6;
-			cr_206 = 0xc0;
-		} else if (priv->bb_pre_ed_rssi <= 62) {
-			ed_inx = 5;
-			cr_206 = 0x9c;
-		} else if (priv->bb_pre_ed_rssi <= 63) {
-			ed_inx = 4;
-			cr_206 = 0x80;
-		} else if (priv->bb_pre_ed_rssi <= 64) {
-			ed_inx = 3;
-			cr_206 = 0x68;
-		} else if (priv->bb_pre_ed_rssi <= 65) {
-			ed_inx = 2;
-			cr_206 = 0x52;
-		} else if (priv->bb_pre_ed_rssi <= 66) {
-			ed_inx = 1;
-			cr_206 = 0x43;
-		} else {
-			ed_inx = 0;
-			cr_206 = 0x38;
-		}
+		threshold = vt3342_vnt_threshold;
+		length = ARRAY_SIZE(vt3342_vnt_threshold);
 		break;
 	}

+	if (!threshold)
+		return;
+
+	for (ed_inx = scanning ? 0 : length - 1; ed_inx > 0; ed_inx--) {
+		if (priv->bb_pre_ed_rssi <= threshold[ed_inx].bb_pre_ed_rssi)
+			break;
+	}
+
+	cr_201 = threshold[ed_inx].cr_201;
+	cr_206 = threshold[ed_inx].cr_206;
+
 	if (ed_inx == priv->bb_pre_ed_index && !scanning)
 		return;

@@ -828,9 +696,6 @@ void vnt_update_pre_ed_threshold(struct vnt_private *priv, int scanning)
 	dev_dbg(&priv->usb->dev, "%s bb_pre_ed_rssi %d\n",
 		__func__, priv->bb_pre_ed_rssi);

-	if (!cr_201 && !cr_206)
-		return;
-
 	vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0xc9, cr_201);
 	vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0xce, cr_206);
 }
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
