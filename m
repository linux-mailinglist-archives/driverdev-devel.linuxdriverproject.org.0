Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A152A1B868A
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Apr 2020 14:39:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 390F586BDB;
	Sat, 25 Apr 2020 12:39:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 19LL7LCng1Uf; Sat, 25 Apr 2020 12:39:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 32B7086AFF;
	Sat, 25 Apr 2020 12:39:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E33551BF3FD
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 12:39:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DF402204DF
 for <devel@linuxdriverproject.org>; Sat, 25 Apr 2020 12:39:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jbdx8fHBQbOL for <devel@linuxdriverproject.org>;
 Sat, 25 Apr 2020 12:39:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 284B2204CF
 for <devel@driverdev.osuosl.org>; Sat, 25 Apr 2020 12:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1587818382;
 bh=5SG9BzflKv7Fzm0xhOrgRj/a0QfgGzvqTTTXIn76vpo=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=fOQfXH9Q94acOyDU/TPyocNRBEW1AfVm+OHknxQNtjWoRKBhWwWNXEfn46tDlnjpB
 dJF1nnFRY91xg0VXrWWHBuecllyQCISmMxvOy4oJO77hq+Fn1uDpgxvfDwUoXB6FQ6
 RqdKtf4bfn1Ja5KrJBit7dhypIE/F2LDXoxrAPQA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx004 [212.227.17.184]) with ESMTPSA (Nemesis) id
 1N7i8O-1j73rY1VQo-014jNt; Sat, 25 Apr 2020 14:39:42 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 1/3] staging: vt6656: Remove the local variable "array"
Date: Sat, 25 Apr 2020 14:38:42 +0200
Message-Id: <20200425123844.7959-2-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200425123844.7959-1-oscar.carter@gmx.com>
References: <20200425123844.7959-1-oscar.carter@gmx.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:ikptTVomcIa2Ak7P7aCNKI7F/Z4TRsm7UP1vbjo5KQhjN5KFMp6
 0kORStaVnog4RmjXsa3eWaiEex0BmLVuKpWsH/xlL5lQfoDYvBCumG+5ymj1JDYvevzcuSn
 h/ONhh6m7iC37TO4ujHhggau0OTKzwfJcsXlrE4hQTVSdHj0W6k5GjUA/K9JOZExy2vy7ff
 fTc6/GgGkybLw2YrvcUcw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:xQYBUl6RL+s=:7xj96gcFiAkfTrHzVSKQlm
 fB4z9umJFgAs5BEvq6+0sy/OYuPlwz6czjpToK9TbwpGMUZc+jJsgAdZd1yuTA+ZsbKJMj+u1
 wgF03r1m5HFOXXOY77+k99+K4eke+MRKrq/EANUFX2v3VbgM4Cjt+TT++rY8ci5cW2ZPvSJG8
 pW1krlUSbAgQfYRRvQ1rGokzV0MYeVSUBr7YuFwCs9UXgwrN34LDwVoyKu5CG5Q50roJs5DXd
 R9L2tJoexDoVrjU/YLfGChI0XciUwgC+A7lkjALIYkuzvYuIaJvEJsOzg6jVop0t78dnxH0MN
 4Fv51ACWzKGgK5nI0JqTSj24PgyasuZxBZYbEH/K/r6dtvH5CMt162y5YfU9+gZwh8PSXz+A3
 y51/QS5AGjDCeBUgZ4KJ1AagJ7b+LRxUvjgN1LpH7UqaxJltv232XqQ5fuGgi2n58uGzRR/kr
 Rq5sPKeDaxWUnkfUPtSC47gC0smaasgJqp9RiEKEuc/bq6nDqeIbZMXguGKzNApLEorAQoxFm
 9+ZR3AZD+DCwYAhgWRHoFUN6Ol+QaUavULNsJN0qxncf5x8T/Fq++7v68YbkurvffVmXXcqZt
 azgyfXGcL1p7ayXlGI2XXapLLy5J+UK0TcLqD2OgFpQEpykvEkCcGMBw1X1fv4Jsru50SImfQ
 wMM613aEqeTnHNNNOwUwCov7c5//JOJmaOSUbnHCodLVY/BooK5mMGfeuBGayS5hiNSgkZNIK
 01EOsTuVFODYJY1v9SoBRtz44+QFwNYXJCcFHrerSJfabC1Pf0zprOhMwTu0GqkLQSJxpeLnJ
 cAcgW8pGKCqSssN8zu7dT3FaG4ZJQduEOEuEmpxzhOuW3q64fTXQoM2/O45AIfSQgkt61MZs6
 mhcT6oqFzPhrSN2RUSQ7kQvMRlF2fXhRfRSas1Rur2DiRziMIQgqAYSdNmVPdAGl0/M8q+dFx
 j0Xn8G8ke31rUjdcZrG71cycXvPnhgkQbUmbL263M88OQG+ZLub/ekAGHykZwdyf27YRX2nqo
 3QFB46nVKhE1IlOQY9P0KKhgg1pIf2HKzXBtW7zjolWFfXJWtyZbbEn4DS8Qp9caudebnobTy
 uAuLkPoTW7Lr0dQGJqh55Fzo+J3rZjeUyKEpzEjyWmzsGfNispds70MKg+tbpDjVhPecPtzFz
 uqjbpoz+D/EghR77NCMaB5ieNIwve65WVFAQAm3Sf06UeBmjq/uvdju1eZrcIW09/b1RkX9kr
 tC7wijsRdXHBm2qEp
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

Remove the local variable "array" and all the memcpy function calls
because this copy operation from different arrays to this variable is
unnecessary.

The same result can be achieved using the arrays directly.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/rf.c | 21 +++++----------------
 1 file changed, 5 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
index 06fa8867cfa3..82d3b6081b5b 100644
--- a/drivers/staging/vt6656/rf.c
+++ b/drivers/staging/vt6656/rf.c
@@ -770,7 +770,6 @@ int vnt_rf_table_download(struct vnt_private *priv)
 	u16 length1 = 0, length2 = 0, length3 = 0;
 	u8 *addr1 = NULL, *addr2 = NULL, *addr3 = NULL;
 	u16 length, value;
-	u8 array[256];

 	switch (priv->rf_type) {
 	case RF_AL2230:
@@ -817,10 +816,8 @@ int vnt_rf_table_download(struct vnt_private *priv)
 	}

 	/* Init Table */
-	memcpy(array, addr1, length1);
-
 	ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, 0,
-			      MESSAGE_REQUEST_RF_INIT, length1, array);
+			      MESSAGE_REQUEST_RF_INIT, length1, addr1);
 	if (ret)
 		goto end;

@@ -832,10 +829,8 @@ int vnt_rf_table_download(struct vnt_private *priv)
 		else
 			length = length2;

-		memcpy(array, addr2, length);
-
 		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, value,
-				      MESSAGE_REQUEST_RF_CH0, length, array);
+				      MESSAGE_REQUEST_RF_CH0, length, addr2);
 		if (ret)
 			goto end;

@@ -852,10 +847,8 @@ int vnt_rf_table_download(struct vnt_private *priv)
 		else
 			length = length3;

-		memcpy(array, addr3, length);
-
 		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, value,
-				      MESSAGE_REQUEST_RF_CH1, length, array);
+				      MESSAGE_REQUEST_RF_CH1, length, addr3);
 		if (ret)
 			goto end;

@@ -870,11 +863,9 @@ int vnt_rf_table_download(struct vnt_private *priv)
 		addr1 = &al7230_init_table_amode[0][0];
 		addr2 = &al7230_channel_table2[0][0];

-		memcpy(array, addr1, length1);
-
 		/* Init Table 2 */
 		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, 0,
-				      MESSAGE_REQUEST_RF_INIT2, length1, array);
+				      MESSAGE_REQUEST_RF_INIT2, length1, addr1);
 		if (ret)
 			goto end;

@@ -886,11 +877,9 @@ int vnt_rf_table_download(struct vnt_private *priv)
 			else
 				length = length2;

-			memcpy(array, addr2, length);
-
 			ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, value,
 					      MESSAGE_REQUEST_RF_CH2, length,
-					      array);
+					      addr2);
 			if (ret)
 				goto end;

--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
