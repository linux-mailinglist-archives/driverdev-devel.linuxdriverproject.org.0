Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C45A1B8755
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 17:18:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 896C985BB5;
	Sat, 25 Apr 2020 15:18:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Og3whbTYkvkM; Sat, 25 Apr 2020 15:18:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B270D85B0A;
	Sat, 25 Apr 2020 15:18:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B06E71BF5AE
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 15:18:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AA0232010A
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 15:18:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UA9-VU-rNUUN for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 15:18:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
 by silver.osuosl.org (Postfix) with ESMTPS id 0F2B320115
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 15:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587827919;
 bh=V4mn8XWOidnV35lpF6k4PLGi3eJjtkJ7bFNpYDHAFrM=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=b2HK/aFjc/NgxS6heebeuWwbwZIfNCCAoaM5rua60nDkJ4gtc3mBKKWJwoGyxA7NM
 rIMUfhxM+YuGff2CoDmpIo4w3IBTryflI8UntDPjLSWERAjrlAiYBKuaukQC/unqzH
 nfcPEF69w4NTBd99/9IhmRIEEV4ArQNcNuoH/qMU=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx104 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1MysRu-1jFlbp2aos-00w0Sg; Sat, 25 Apr 2020 17:18:39 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 3/3] staging: vt6656: Remove duplicate code in
 vnt_rf_table_download
Date: Sat, 25 Apr 2020 17:17:47 +0200
Message-Id: <20200425151747.8199-4-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200425151747.8199-1-oscar.carter@gmx.com>
References: <20200425151747.8199-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:O0CbRDf92e151EFq1Tr62g7Abu264JDJMB0TQsvFCf5to1J4tlu
 uGIVzKgrpivucPTVkS+I8nfkoGKr11imtK/QLaOPiAwHgbHVhFLLnn0eRvVZ2TTV5TZa+Nv
 gEPHNRtQNLnQqISLx141zUzA8Nl3+52wFDezmPueb6NiG7WAmCTSJoZQ8rOvupN0L3esxfa
 M5UVFcCM/0BzuP2kYL2SQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:P7XaABjktOo=:mYSAPT8yUikJd6o5uzjVjS
 gbDmQcWxXGAC3xuAmK3hAeKzD5YKhZJhVjMMF+yg2jcYjB8JDULAVnaKRBcJMh9ec4q6h4PF6
 CEySSeGjEhmGwmtuEMPmOLxBKvyMJL2djBRlky3xfOh1LEttp9n53cQQNo6MuhcXOnedf9/qH
 +BEJBfXN216SyRi64avQNC/DJNdNQr6j+AcFXrXfwXDvSCithxujcgasrnQ1JANNN1bAhBplD
 jax4KgkMOe06tajaEYYHJk4xoZwFihftT0rDkVFWruUkVZjxvswJ8lZG1CK8sksiPMkw917EW
 sKs930UIixEYuDP4Qi4MkEt3XURVG6HxiwTsW63KN5umAS1RQZzRDt0liXp5nUh1TxR52mRj8
 yO7QDclwdHx09pe47aBW8xQTyOqRaConXy73wmeVJJt7sKvs9d0DK/btMyed1VKsPoP9P9K3R
 J2HJuPUPi7v48hk/GbaPLo4iy+4QdURiKLPo2s8TfoS6FxJ8U4qNDuQ1LB2NLDdtd1F6xWfJ/
 7gsqYOTmXJeG0upG49MLPpBUDcwCmYKlK5bOP6R93w5H4aMndwaLEVYh1CLDEJrTbKR08DV3S
 b1dU3f3fPIKssujyPnqo1ojgrWnFnXgSYd6U+5SjqJ9YU8Peum57VjYmZ97CNwQwGMP1hkQpi
 sEeYg/0K6k5Z56E4dh+fg50BZHeJVGDQyPZ77X2UxQL/kFQ4Q6wA9AZN+uWiSoPE85sHQMBGe
 YnDUMyDTnmqLopIob1+fNCwOr1P6xUwW52WiWmPx70oLhiddhPaMlIj52gfdZ06m1Nkqw9b+Z
 9fwcWciwZnHR3EMLbtxiZ7p/RSxn05xsjtMvS2A8NmULgQIJGtF4KxBKoDERhejZGaaNMdNL4
 D07/Elpj2yPVoILjshnFKh1zXgI9bXB31S+O9P0L93c53q5XsGuoh0IhBSb+qte+ED+S2YhLb
 rBsTV/pfW2RojsptfcWpZBks1H93WVpgTyN7owe6EVtlQlCRT9Vopn/Zpnu3uL2QdNhyYlhYf
 /wi0RniHbiP51oNarAiZe8OSvYqvu6/dc+DUSt0MBYZVaKGUbMUi2RaEz8VuDdT5DJKxC1C55
 9ZHbLxNoc1aUnEvk7HR+tXyHC+YN7Q3Ql2mU7l1g1RtS1lYGUZPyWqqysk6g5bG4zCH/OfJYq
 2n1S+yVnMEZRVNgGf9EhBFEMrSLQTAjiLhmkzwN/1KYYVIbHXdeFBE2z2RhiiL5o1v67oLan9
 HtbuntM+1gcnL7P9x
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
 Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace three while loops with three calls to the vnt_control_out_blocks
function. This way avoid repeat a functionality that already exists.

Also remove the variables that now are not used.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/rf.c | 65 +++++++------------------------------
 1 file changed, 12 insertions(+), 53 deletions(-)

diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
index 888b6fcb6e91..420e9869af76 100644
--- a/drivers/staging/vt6656/rf.c
+++ b/drivers/staging/vt6656/rf.c
@@ -769,7 +769,6 @@ int vnt_rf_table_download(struct vnt_private *priv)
 	int ret;
 	u16 length1 = 0, length2 = 0, length3 = 0;
 	u8 *addr1 = NULL, *addr2 = NULL, *addr3 = NULL;
-	u16 length, value;

 	switch (priv->rf_type) {
 	case RF_AL2230:
@@ -822,40 +821,14 @@ int vnt_rf_table_download(struct vnt_private *priv)
 		return ret;

 	/* Channel Table 0 */
-	value = 0;
-	while (length2 > 0) {
-		if (length2 >= 64)
-			length = 64;
-		else
-			length = length2;
-
-		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, value,
-				      MESSAGE_REQUEST_RF_CH0, length, addr2);
-		if (ret)
-			return ret;
-
-		length2 -= length;
-		value += length;
-		addr2 += length;
-	}
-
-	/* Channel table 1 */
-	value = 0;
-	while (length3 > 0) {
-		if (length3 >= 64)
-			length = 64;
-		else
-			length = length3;
-
-		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, value,
-				      MESSAGE_REQUEST_RF_CH1, length, addr3);
-		if (ret)
-			return ret;
+	ret = vnt_control_out_blocks(priv, VNT_REG_BLOCK_SIZE,
+				     MESSAGE_REQUEST_RF_CH0, length2, addr2);
+	if (ret)
+		return ret;

-		length3 -= length;
-		value += length;
-		addr3 += length;
-	}
+	/* Channel Table 1 */
+	ret = vnt_control_out_blocks(priv, VNT_REG_BLOCK_SIZE,
+				     MESSAGE_REQUEST_RF_CH1, length3, addr3);

 	if (priv->rf_type == RF_AIROHA7230) {
 		length1 = CB_AL7230_INIT_SEQ * 3;
@@ -869,25 +842,11 @@ int vnt_rf_table_download(struct vnt_private *priv)
 		if (ret)
 			return ret;

-		/* Channel Table 0 */
-		value = 0;
-		while (length2 > 0) {
-			if (length2 >= 64)
-				length = 64;
-			else
-				length = length2;
-
-			ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, value,
-					      MESSAGE_REQUEST_RF_CH2, length,
-					      addr2);
-			if (ret)
-				return ret;
-
-			length2 -= length;
-			value += length;
-			addr2 += length;
-		}
+		/* Channel Table 2 */
+		ret = vnt_control_out_blocks(priv, VNT_REG_BLOCK_SIZE,
+					     MESSAGE_REQUEST_RF_CH2, length2,
+					     addr2);
 	}

-	return 0;
+	return ret;
 }
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
