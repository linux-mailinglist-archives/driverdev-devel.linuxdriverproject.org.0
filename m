Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2F51BE2ED
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Apr 2020 17:39:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C0E35884F5;
	Wed, 29 Apr 2020 15:39:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id laeeIGB0G3-Q; Wed, 29 Apr 2020 15:39:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 463508846B;
	Wed, 29 Apr 2020 15:39:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B4D381BF36C
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 15:39:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B13E985BC0
 for <devel@linuxdriverproject.org>; Wed, 29 Apr 2020 15:39:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UOZwsDiRJaOD for <devel@linuxdriverproject.org>;
 Wed, 29 Apr 2020 15:39:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0C6FD858B5
 for <devel@driverdev.osuosl.org>; Wed, 29 Apr 2020 15:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1588174751;
 bh=8z1MF8q0T1lLTf5F8R5lHUb5+8Yh6vfgzjQGK5iyFXI=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=fRznkPLVfE6ME8fN54Fqwg3quSFBEYvFficZbE/OGczvciwLhXx/rqzzFhpCuvOT8
 TmHxJS1s7CCoTMLnhWFF1U6OfX7qJcKx3A2cOf/9ulvjDluuicC6BXksQJ4yj8E+5x
 lq7f93iWc0NaG+3NgPvf6OwAjU0k5BqlTSbdtkNI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([83.52.229.196]) by mail.gmx.com
 (mrgmx105 [212.227.17.174]) with ESMTPSA (Nemesis) id
 1N0Fxf-1jHtsn3hwt-00xGLj; Wed, 29 Apr 2020 17:39:11 +0200
From: Oscar Carter <oscar.carter@gmx.com>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vt6656: Refactor the vnt_rf_table_download function
Date: Wed, 29 Apr 2020 17:38:38 +0200
Message-Id: <20200429153838.7216-1-oscar.carter@gmx.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:U82pnMTQRa3lfCfOyaP62GlsK9cfo0XGqPo0uQM8kaVdjqeT5Ou
 CNThO1MA3x5fLAFTgE9z2Wv2+6YZpB6h+nWRAgNcIxX4IPx1pgJuNO1xPf07VUOGTrHcV3P
 mHte+V820d9Df7xsubFMmvSZSwGwhudHN/gtvZBHJj+GLR1aFlJfZH1Qr0BqdyFPosKGJ8S
 EXu043m8G/p+E6EPP0Clg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Wwoh4W94p0M=:ILNRWVH9MH4/qz6fPiIrld
 ffEuMKaXz0dkvBsWnZ1P8aJlsQnyg8ma+C934+TOoO7K0OrKwyd3MOIjkPKW87NYpgps8xfEC
 7qw9nmiosx7FvVICJWu7imqwEFuEcjrc8chvDj2zEVBqvNqrW782jS7FoD5vAvHp2zj0E/fTx
 IpRDbBS2JFgP+dAwm0MkjNDaUBXPXY/PKvEqr8D/SGNSC8cx5sHoHoy3tRdIjhzAkTea3Nk1L
 jeniJ3sHU+6GJoTRY8FYnofijqlX2yGmEB1LIxfCds3HxSFfoWWwCwt9xYgIVB5uzICzfiNJr
 +xvAELBKTw12KZyyBVLoXJapUEC7rXo3DVX9XHmKJwh1P7jdSMqp2Lym6fbPicuheq49QPwnC
 7CkUKY5Jzds7qvU+Ncj1B1Vq4JFs4zYjAZptHYMSsRNQPbUTyIlXLof6JDvPnzRw2l6fHCgZT
 9zw90nQxCIpqyk3Tk8n/24UCvctglvkJRAMM1nWtLlwolhDOB+uDMUFc/DD2bsCJ+zMggJsK9
 WKR9jQuTHGH7x8dVkrv5iuoA20NG8yxdlig2rIKb8ekNxwjEtSclG73QO+IOxethFNemG+BBc
 pzT394g/1B6bvsqo0aQnMyN/2/aCyp2YKgNgfGrghzGCm5ZddrgShr+zTIrfWhQUgEdw2LJlf
 zSXifEdTIaqXcPEj2KAgAKgBOo8wJ6voQOmTcL9BOxRnv2NBxKCcQ04LddCud+7QLJ318Xuu8
 j6+JwCJRu/NAeK9yp+QPkTn64CXRpgSwXQOODbl9xU7140jhCLODektKrwI2O7285h4EUjV1+
 dPJ/gu9WLuUSQK53Lr7/t6OXeqvgRDQr7xxr4YN4rLNPh3n3O3UaKECCooQVRlTwyacbV3Il7
 3zU59AsAfsRCaOYe2CXj7WUuSHC7ZoHzm1CRkP4plPGmUYX21clZcQOh/DjQVwkFXAaCR/I5J
 Fgc8WCXgVBR1Gvr7jaVENBC81u6m1DpvRlYUh4Pv7PEXsrm8/MdIOr1izhNHMWd7r4uH5gvgz
 jdFadSh33OF6miySQ+G1OZiqzJ0BVqP7kIRJ5bPpf5faUxWUAt03/TFJi5bj70ibjpk4qCU2m
 7p0/JNFz48hhBUtAXQlGPC3lhrS6zeBl6jgcvjy3C9K4KP96Jio6Bvfea5bJ1URNh4lvvONQh
 TEz+e12vy39TT6EySQQX5NzUTGfN0VOesC7If9Y50nVX8vpKJ2O+wq0StOPlgiT82//r2xWcE
 qBh3lvVgw3O5sJ5cY
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

Create a constant array of struct vnt_table_info type elements with the
necessary info (address and length) about all the rf tables for every rf
type.

In every case of the "switch" statement replace the hardcoded info about
these tables with and index to the new constant array. Moreover, use
this array index to extract the necessary info in every call to the
vnt_control_out_* functions.

Check if this index has been set and return without error otherwise.
So, avoid the execution of code that previously did nothing due to
lengths with values of zero for some rf types.

Also remove all the variables that are now unused.

This way reduce the stack footprint, and make the code more clear.

Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
---
 drivers/staging/vt6656/rf.c | 111 ++++++++++++++++++++++--------------
 1 file changed, 69 insertions(+), 42 deletions(-)

diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
index f18d456a8f5d..fb708467b99b 100644
--- a/drivers/staging/vt6656/rf.c
+++ b/drivers/staging/vt6656/rf.c
@@ -518,6 +518,47 @@ static u8 vt3342_channel_table1[CB_MAX_CHANNEL][3] = {
 	{0x03, 0x00, 0x04}
 };

+enum {
+	VNT_TABLE_INIT = 0,
+	VNT_TABLE_INIT_2 = 0,
+	VNT_TABLE_0 = 1,
+	VNT_TABLE_1 = 2,
+	VNT_TABLE_2 = 1
+};
+
+struct vnt_table_info {
+	u8 *addr;
+	int length;
+};
+
+static const struct vnt_table_info vnt_table_seq[][3] = {
+	{	/* RF_AL2230, RF_AL2230S init table, channel table 0 and 1 */
+		{&al2230_init_table[0][0], CB_AL2230_INIT_SEQ * 3},
+		{&al2230_channel_table0[0][0], CB_MAX_CHANNEL_24G * 3},
+		{&al2230_channel_table1[0][0], CB_MAX_CHANNEL_24G * 3}
+	}, {	/* RF_AIROHA7230 init table, channel table 0 and 1 */
+		{&al7230_init_table[0][0], CB_AL7230_INIT_SEQ * 3},
+		{&al7230_channel_table0[0][0], CB_MAX_CHANNEL * 3},
+		{&al7230_channel_table1[0][0], CB_MAX_CHANNEL * 3}
+	}, {	/* RF_VT3226 init table, channel table 0 and 1 */
+		{&vt3226_init_table[0][0], CB_VT3226_INIT_SEQ * 3},
+		{&vt3226_channel_table0[0][0], CB_MAX_CHANNEL_24G * 3},
+		{&vt3226_channel_table1[0][0], CB_MAX_CHANNEL_24G * 3}
+	}, {	/* RF_VT3226D0 init table, channel table 0 and 1 */
+		{&vt3226d0_init_table[0][0], CB_VT3226_INIT_SEQ * 3},
+		{&vt3226_channel_table0[0][0], CB_MAX_CHANNEL_24G * 3},
+		{&vt3226_channel_table1[0][0], CB_MAX_CHANNEL_24G * 3}
+	}, {	/* RF_VT3342A0 init table, channel table 0 and 1 */
+		{&vt3342a0_init_table[0][0], CB_VT3342_INIT_SEQ * 3},
+		{&vt3342_channel_table0[0][0], CB_MAX_CHANNEL * 3},
+		{&vt3342_channel_table1[0][0], CB_MAX_CHANNEL * 3}
+	}, {	/* RF_AIROHA7230 init table 2 and channel table 2 */
+		{&al7230_init_table_amode[0][0], CB_AL7230_INIT_SEQ * 3},
+		{&al7230_channel_table2[0][0], CB_MAX_CHANNEL * 3},
+		{NULL, 0}
+	}
+};
+
 /*
  * Description: Write to IF/RF, by embedded programming
  */
@@ -760,85 +801,71 @@ void vnt_rf_rssi_to_dbm(struct vnt_private *priv, u8 rssi, long *dbm)
 int vnt_rf_table_download(struct vnt_private *priv)
 {
 	int ret;
-	u16 length1 = 0, length2 = 0, length3 = 0;
-	u8 *addr1 = NULL, *addr2 = NULL, *addr3 = NULL;
+	int idx = -1;
+	const struct vnt_table_info *table_seq;

 	switch (priv->rf_type) {
 	case RF_AL2230:
 	case RF_AL2230S:
-		length1 = CB_AL2230_INIT_SEQ * 3;
-		length2 = CB_MAX_CHANNEL_24G * 3;
-		length3 = CB_MAX_CHANNEL_24G * 3;
-		addr1 = &al2230_init_table[0][0];
-		addr2 = &al2230_channel_table0[0][0];
-		addr3 = &al2230_channel_table1[0][0];
+		idx = 0;
 		break;
 	case RF_AIROHA7230:
-		length1 = CB_AL7230_INIT_SEQ * 3;
-		length2 = CB_MAX_CHANNEL * 3;
-		length3 = CB_MAX_CHANNEL * 3;
-		addr1 = &al7230_init_table[0][0];
-		addr2 = &al7230_channel_table0[0][0];
-		addr3 = &al7230_channel_table1[0][0];
+		idx = 1;
 		break;
 	case RF_VT3226:
-		length1 = CB_VT3226_INIT_SEQ * 3;
-		length2 = CB_MAX_CHANNEL_24G * 3;
-		length3 = CB_MAX_CHANNEL_24G * 3;
-		addr1 = &vt3226_init_table[0][0];
-		addr2 = &vt3226_channel_table0[0][0];
-		addr3 = &vt3226_channel_table1[0][0];
+		idx = 2;
 		break;
 	case RF_VT3226D0:
-		length1 = CB_VT3226_INIT_SEQ * 3;
-		length2 = CB_MAX_CHANNEL_24G * 3;
-		length3 = CB_MAX_CHANNEL_24G * 3;
-		addr1 = &vt3226d0_init_table[0][0];
-		addr2 = &vt3226_channel_table0[0][0];
-		addr3 = &vt3226_channel_table1[0][0];
+		idx = 3;
 		break;
 	case RF_VT3342A0:
-		length1 = CB_VT3342_INIT_SEQ * 3;
-		length2 = CB_MAX_CHANNEL * 3;
-		length3 = CB_MAX_CHANNEL * 3;
-		addr1 = &vt3342a0_init_table[0][0];
-		addr2 = &vt3342_channel_table0[0][0];
-		addr3 = &vt3342_channel_table1[0][0];
+		idx = 4;
 		break;
 	}

+	if (idx < 0)
+		return 0;
+
+	table_seq = &vnt_table_seq[idx][0];
+
 	/* Init Table */
 	ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, 0,
-			      MESSAGE_REQUEST_RF_INIT, length1, addr1);
+			      MESSAGE_REQUEST_RF_INIT,
+			      table_seq[VNT_TABLE_INIT].length,
+			      table_seq[VNT_TABLE_INIT].addr);
 	if (ret)
 		return ret;

 	/* Channel Table 0 */
 	ret = vnt_control_out_blocks(priv, VNT_REG_BLOCK_SIZE,
-				     MESSAGE_REQUEST_RF_CH0, length2, addr2);
+				     MESSAGE_REQUEST_RF_CH0,
+				     table_seq[VNT_TABLE_0].length,
+				     table_seq[VNT_TABLE_0].addr);
 	if (ret)
 		return ret;

 	/* Channel Table 1 */
 	ret = vnt_control_out_blocks(priv, VNT_REG_BLOCK_SIZE,
-				     MESSAGE_REQUEST_RF_CH1, length3, addr3);
+				     MESSAGE_REQUEST_RF_CH1,
+				     table_seq[VNT_TABLE_1].length,
+				     table_seq[VNT_TABLE_1].addr);

 	if (priv->rf_type == RF_AIROHA7230) {
-		length1 = CB_AL7230_INIT_SEQ * 3;
-		length2 = CB_MAX_CHANNEL * 3;
-		addr1 = &al7230_init_table_amode[0][0];
-		addr2 = &al7230_channel_table2[0][0];
+		table_seq = &vnt_table_seq[5][0];

 		/* Init Table 2 */
 		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, 0,
-				      MESSAGE_REQUEST_RF_INIT2, length1, addr1);
+				      MESSAGE_REQUEST_RF_INIT2,
+				      table_seq[VNT_TABLE_INIT_2].length,
+				      table_seq[VNT_TABLE_INIT_2].addr);
 		if (ret)
 			return ret;

 		/* Channel Table 2 */
 		ret = vnt_control_out_blocks(priv, VNT_REG_BLOCK_SIZE,
-					     MESSAGE_REQUEST_RF_CH2, length2,
-					     addr2);
+					     MESSAGE_REQUEST_RF_CH2,
+					     table_seq[VNT_TABLE_2].length,
+					     table_seq[VNT_TABLE_2].addr);
 	}

 	return ret;
--
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
