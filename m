Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B3523DA4
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 18:39:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C3781858BF;
	Mon, 20 May 2019 16:39:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iWZpMUIZ1T95; Mon, 20 May 2019 16:39:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7075B8577F;
	Mon, 20 May 2019 16:39:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E19241BF3A4
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 16:39:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DE4B887852
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 16:39:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xZMo4XK+kdt1 for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 16:39:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr30053.outbound.protection.outlook.com [40.107.3.53])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4E23687880
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 16:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector1-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f5r326nTr+7bjxbbpLWXl1IjIt00QuDkAcX4BTd7FXs=;
 b=MIeWyMk+TGKCkF361QsAxl4GBqBRuMMFTOzIraviBWUVNiqOvuaH0ydz6lCdZ1k+H/EEqOYvgJ/PUr5QnrrbC4nJ87RorPUxv/MJC41yNuz7+N4nLVWmu8SGcfu71LV+fRg3hsj0gxb4PpZkTlbJ2HnKGEgIhBfOZ2fUryeiBKs=
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com (52.133.15.143) by
 VI1PR08MB3662.eurprd08.prod.outlook.com (20.177.61.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Mon, 20 May 2019 16:39:02 +0000
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::1d25:dae7:53a6:b461]) by VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::1d25:dae7:53a6:b461%3]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 16:39:02 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: [PATCH 3/7] staging: vt6656: avoid discarding called function's
 return code
Thread-Topic: [PATCH 3/7] staging: vt6656: avoid discarding called function's
 return code
Thread-Index: AQHVDyqIZTN2vGM57kyrGztjUf6Uxg==
Date: Mon, 20 May 2019 16:39:02 +0000
Message-ID: <20190520163844.1225-4-quentin.deslandes@itdev.co.uk>
References: <20190520163844.1225-1-quentin.deslandes@itdev.co.uk>
In-Reply-To: <20190520163844.1225-1-quentin.deslandes@itdev.co.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6PR08CA0002.eurprd08.prod.outlook.com
 (2603:10a6:20b:b2::14) To VI1PR08MB3168.eurprd08.prod.outlook.com
 (2603:10a6:803:47::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [89.21.227.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ea5d97c8-2a23-41b8-7723-08d6dd41aa87
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR08MB3662; 
x-ms-traffictypediagnostic: VI1PR08MB3662:
x-microsoft-antispam-prvs: <VI1PR08MB3662294773DE43364DCF4C5EB3060@VI1PR08MB3662.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:534;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39830400003)(346002)(366004)(376002)(396003)(136003)(199004)(189003)(1730700003)(2501003)(14454004)(73956011)(486006)(8936002)(44832011)(71190400001)(71200400001)(50226002)(81156014)(81166006)(4326008)(66446008)(64756008)(66556008)(66946007)(66476007)(8676002)(53936002)(446003)(316002)(11346002)(476003)(2616005)(305945005)(6436002)(66066001)(508600001)(6486002)(7736002)(5640700003)(68736007)(25786009)(186003)(53946003)(6512007)(14444005)(86362001)(256004)(6116002)(3846002)(1076003)(5660300002)(26005)(36756003)(76176011)(30864003)(99286004)(6916009)(6506007)(386003)(52116002)(102836004)(2351001)(54906003)(74482002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3662;
 H:VI1PR08MB3168.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mnb06foMMjNJtL3QlKw2I8qVWkwgPtz3XjfYIn4T5vlRccPJV1aIVKAi0qwvmR7n6Sgv5z2nlxNfgJn5IXtaa8T5HxeRAUeagKo39sTz9hsJnkXJ1zTjWFkSTdVO6mVJ+T28Q2OSl1SKYfrlBh/4buCcqmtff36WAJQ9PLRrnIUk1HmBp3n6WWrLEO8Coclb3S7gafjii3dHnWePnZNGpvxeNhfhPv4I5yNPk7wjsX4XXxZh8lSeGWLPe3BWTLZFNJw7QOyBFgfqbEEvgARjLMs3WQUQ7curEgOzrtE7a8bwojbZE9+u9j+ZRCjymQIDUnbDi4p948hdKJhVn5DtNiDxvKL6bPfwSGq89tk1yBTTgk1NAfKUHmzlYhFp8ENaU6WU9qNOtYJJOceWv6/wQEpQEYueBFrMe2IItAWODLI=
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: ea5d97c8-2a23-41b8-7723-08d6dd41aa87
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 16:39:02.7188 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3662
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
Cc: Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
 Nishad Kamdar <nishadkamdar@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mukesh Ojha <mojha@codeaurora.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Forest Bond <forest@alittletooquiet.net>,
 Ojaswin Mujoo <ojaswin25111998@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change some of the driver's functions in order to handle error codes
instead of discarding them. These function now returns 0 on success and
a negative errno value on error.

Signed-off-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
---
 drivers/staging/vt6656/baseband.c | 130 ++++++++++++++++++++----------
 drivers/staging/vt6656/baseband.h |   8 +-
 drivers/staging/vt6656/card.c     |  20 +++--
 drivers/staging/vt6656/int.c      |   8 +-
 drivers/staging/vt6656/int.h      |   2 +-
 drivers/staging/vt6656/mac.c      |  19 +++--
 drivers/staging/vt6656/mac.h      |   6 +-
 drivers/staging/vt6656/rf.c       |  38 ++++++---
 drivers/staging/vt6656/rf.h       |   2 +-
 9 files changed, 152 insertions(+), 81 deletions(-)

diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
index b29ba237fa29..8d19ae71e7cc 100644
--- a/drivers/staging/vt6656/baseband.c
+++ b/drivers/staging/vt6656/baseband.c
@@ -329,7 +329,7 @@ void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
  * Return Value: none
  *
  */
-void vnt_set_antenna_mode(struct vnt_private *priv, u8 antenna_mode)
+int vnt_set_antenna_mode(struct vnt_private *priv, u8 antenna_mode)
 {
 	switch (antenna_mode) {
 	case ANT_TXA:
@@ -344,8 +344,8 @@ void vnt_set_antenna_mode(struct vnt_private *priv, u8 antenna_mode)
 		break;
 	}
 
-	vnt_control_out(priv, MESSAGE_TYPE_SET_ANTMD,
-			(u16)antenna_mode, 0, 0, NULL);
+	return vnt_control_out(priv, MESSAGE_TYPE_SET_ANTMD,
+			       (u16)antenna_mode, 0, 0, NULL);
 }
 
 /*
@@ -364,7 +364,7 @@ void vnt_set_antenna_mode(struct vnt_private *priv, u8 antenna_mode)
 
 int vnt_vt3184_init(struct vnt_private *priv)
 {
-	int status;
+	int ret = 0;
 	u16 length;
 	u8 *addr;
 	u8 *agc;
@@ -372,11 +372,10 @@ int vnt_vt3184_init(struct vnt_private *priv)
 	u8 array[256];
 	u8 data;
 
-	status = vnt_control_in(priv, MESSAGE_TYPE_READ, 0,
-				MESSAGE_REQUEST_EEPROM, EEP_MAX_CONTEXT_SIZE,
-						priv->eeprom);
-	if (status != STATUS_SUCCESS)
-		return false;
+	ret = vnt_control_in(priv, MESSAGE_TYPE_READ, 0, MESSAGE_REQUEST_EEPROM,
+			     EEP_MAX_CONTEXT_SIZE, priv->eeprom);
+	if (ret)
+		goto end;
 
 	priv->rf_type = priv->eeprom[EEP_OFS_RFTYPE];
 
@@ -423,8 +422,10 @@ int vnt_vt3184_init(struct vnt_private *priv)
 		priv->bb_vga[3] = 0x0;
 
 		/* Fix VT3226 DFC system timing issue */
-		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL2,
-				    SOFTPWRCTL_RFLEOPT);
+		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL2,
+					  SOFTPWRCTL_RFLEOPT);
+		if (ret)
+			goto end;
 	} else if (priv->rf_type == RF_VT3342A0) {
 		priv->bb_rx_conf = vnt_vt3184_vt3226d0[10];
 		length = sizeof(vnt_vt3184_vt3226d0);
@@ -438,48 +439,74 @@ int vnt_vt3184_init(struct vnt_private *priv)
 		priv->bb_vga[3] = 0x0;
 
 		/* Fix VT3226 DFC system timing issue */
-		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL2,
-				    SOFTPWRCTL_RFLEOPT);
+		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL2,
+					  SOFTPWRCTL_RFLEOPT);
+		if (ret)
+			goto end;
 	} else {
-		return true;
+		goto end;
 	}
 
 	memcpy(array, addr, length);
 
-	vnt_control_out(priv, MESSAGE_TYPE_WRITE, 0,
-			MESSAGE_REQUEST_BBREG, length, array);
+	ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, 0,
+			      MESSAGE_REQUEST_BBREG, length, array);
+	if (ret)
+		goto end;
 
 	memcpy(array, agc, length_agc);
 
-	vnt_control_out(priv, MESSAGE_TYPE_WRITE, 0,
-			MESSAGE_REQUEST_BBAGC, length_agc, array);
+	ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, 0,
+			      MESSAGE_REQUEST_BBAGC, length_agc, array);
+	if (ret)
+		goto end;
 
 	if ((priv->rf_type == RF_VT3226) ||
 	    (priv->rf_type == RF_VT3342A0)) {
-		vnt_control_out_u8(priv, MESSAGE_REQUEST_MACREG,
-				   MAC_REG_ITRTMSET, 0x23);
-		vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY, 0x01);
+		ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_MACREG,
+					 MAC_REG_ITRTMSET, 0x23);
+		if (ret)
+			goto end;
+
+		ret = vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY, 0x01);
+		if (ret)
+			goto end;
 	} else if (priv->rf_type == RF_VT3226D0) {
-		vnt_control_out_u8(priv, MESSAGE_REQUEST_MACREG,
-				   MAC_REG_ITRTMSET, 0x11);
-		vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY, 0x01);
+		ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_MACREG,
+					 MAC_REG_ITRTMSET, 0x11);
+		if (ret)
+			goto end;
+
+		ret = vnt_mac_reg_bits_on(priv, MAC_REG_PAPEDELAY, 0x01);
+		if (ret)
+			goto end;
 	}
 
-	vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x04, 0x7f);
-	vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x0d, 0x01);
+	ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x04, 0x7f);
+	if (ret)
+		goto end;
 
-	vnt_rf_table_download(priv);
+	ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x0d, 0x01);
+	if (ret)
+		goto end;
+
+	ret = vnt_rf_table_download(priv);
+	if (ret)
+		goto end;
 
 	/* Fix for TX USB resets from vendors driver */
-	vnt_control_in(priv, MESSAGE_TYPE_READ, USB_REG4,
-		       MESSAGE_REQUEST_MEM, sizeof(data), &data);
+	ret = vnt_control_in(priv, MESSAGE_TYPE_READ, USB_REG4,
+			     MESSAGE_REQUEST_MEM, sizeof(data), &data);
+	if (ret)
+		goto end;
 
 	data |= 0x2;
 
-	vnt_control_out(priv, MESSAGE_TYPE_WRITE, USB_REG4,
-			MESSAGE_REQUEST_MEM, sizeof(data), &data);
+	ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, USB_REG4,
+			      MESSAGE_REQUEST_MEM, sizeof(data), &data);
 
-	return true;
+end:
+	return ret;
 }
 
 /*
@@ -494,8 +521,9 @@ int vnt_vt3184_init(struct vnt_private *priv)
  * Return Value: none
  *
  */
-void vnt_set_short_slot_time(struct vnt_private *priv)
+int vnt_set_short_slot_time(struct vnt_private *priv)
 {
+	int ret = 0;
 	u8 bb_vga = 0;
 
 	if (priv->short_slot_time)
@@ -503,12 +531,18 @@ void vnt_set_short_slot_time(struct vnt_private *priv)
 	else
 		priv->bb_rx_conf |= 0x20;
 
-	vnt_control_in_u8(priv, MESSAGE_REQUEST_BBREG, 0xe7, &bb_vga);
+	ret = vnt_control_in_u8(priv, MESSAGE_REQUEST_BBREG, 0xe7, &bb_vga);
+	if (ret)
+		goto end;
 
 	if (bb_vga == priv->bb_vga[0])
 		priv->bb_rx_conf |= 0x20;
 
-	vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x0a, priv->bb_rx_conf);
+	ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x0a,
+				 priv->bb_rx_conf);
+
+end:
+	return ret;
 }
 
 void vnt_set_vga_gain_offset(struct vnt_private *priv, u8 data)
@@ -536,16 +570,30 @@ void vnt_set_vga_gain_offset(struct vnt_private *priv, u8 data)
  * Return Value: none
  *
  */
-void vnt_set_deep_sleep(struct vnt_private *priv)
+int vnt_set_deep_sleep(struct vnt_private *priv)
 {
-	vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x0c, 0x17);/* CR12 */
-	vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x0d, 0xB9);/* CR13 */
+	int ret = 0;
+
+	/* CR12 */
+	ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x0c, 0x17);
+	if (ret)
+		return ret;
+
+	/* CR13 */
+	return vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x0d, 0xB9);
 }
 
-void vnt_exit_deep_sleep(struct vnt_private *priv)
+int vnt_exit_deep_sleep(struct vnt_private *priv)
 {
-	vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x0c, 0x00);/* CR12 */
-	vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x0d, 0x01);/* CR13 */
+	int ret = 0;
+
+	/* CR12 */
+	ret = vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x0c, 0x00);
+	if (ret)
+		return ret;
+
+	/* CR13 */
+	return vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0x0d, 0x01);
 }
 
 void vnt_update_pre_ed_threshold(struct vnt_private *priv, int scanning)
diff --git a/drivers/staging/vt6656/baseband.h b/drivers/staging/vt6656/baseband.h
index c3b8bbdb3ea1..dc42aa6ae1d9 100644
--- a/drivers/staging/vt6656/baseband.h
+++ b/drivers/staging/vt6656/baseband.h
@@ -79,12 +79,12 @@ unsigned int vnt_get_frame_time(u8 preamble_type, u8 pkt_type,
 void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 		       u16 tx_rate, u8 pkt_type, struct vnt_phy_field *phy);
 
-void vnt_set_short_slot_time(struct vnt_private *priv);
+int vnt_set_short_slot_time(struct vnt_private *priv);
 void vnt_set_vga_gain_offset(struct vnt_private *priv, u8 data);
-void vnt_set_antenna_mode(struct vnt_private *priv, u8 antenna_mode);
+int vnt_set_antenna_mode(struct vnt_private *priv, u8 antenna_mode);
 int vnt_vt3184_init(struct vnt_private *priv);
-void vnt_set_deep_sleep(struct vnt_private *priv);
-void vnt_exit_deep_sleep(struct vnt_private *priv);
+int vnt_set_deep_sleep(struct vnt_private *priv);
+int vnt_exit_deep_sleep(struct vnt_private *priv);
 void vnt_update_pre_ed_threshold(struct vnt_private *priv, int scanning);
 
 #endif /* __BASEBAND_H__ */
diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 501f482b41c4..08fc03d8740e 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -674,7 +674,7 @@ void vnt_update_next_tbtt(struct vnt_private *priv, u64 tsf,
  */
 int vnt_radio_power_off(struct vnt_private *priv)
 {
-	int ret = true;
+	int ret = 0;
 
 	switch (priv->rf_type) {
 	case RF_AL2230:
@@ -683,17 +683,25 @@ int vnt_radio_power_off(struct vnt_private *priv)
 	case RF_VT3226:
 	case RF_VT3226D0:
 	case RF_VT3342A0:
-		vnt_mac_reg_bits_off(priv, MAC_REG_SOFTPWRCTL,
-				     (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
+		ret = vnt_mac_reg_bits_off(priv, MAC_REG_SOFTPWRCTL,
+					(SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
 		break;
 	}
 
-	vnt_mac_reg_bits_off(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	if (ret)
+		goto end;
+
+	ret = vnt_mac_reg_bits_off(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	if (ret)
+		goto end;
 
-	vnt_set_deep_sleep(priv);
+	ret = vnt_set_deep_sleep(priv);
+	if (ret)
+		goto end;
 
-	vnt_mac_reg_bits_on(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
+	ret = vnt_mac_reg_bits_on(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
 
+end:
 	return ret;
 }
 
diff --git a/drivers/staging/vt6656/int.c b/drivers/staging/vt6656/int.c
index 504424b19fcf..f40947955675 100644
--- a/drivers/staging/vt6656/int.c
+++ b/drivers/staging/vt6656/int.c
@@ -39,18 +39,20 @@ static const u8 fallback_rate1[5][5] = {
 	{RATE_54M, RATE_54M, RATE_36M, RATE_18M, RATE_18M}
 };
 
-void vnt_int_start_interrupt(struct vnt_private *priv)
+int vnt_int_start_interrupt(struct vnt_private *priv)
 {
+	int ret = 0;
 	unsigned long flags;
-	int status;
 
 	dev_dbg(&priv->usb->dev, "---->Interrupt Polling Thread\n");
 
 	spin_lock_irqsave(&priv->lock, flags);
 
-	status = vnt_start_interrupt_urb(priv);
+	ret = vnt_start_interrupt_urb(priv);
 
 	spin_unlock_irqrestore(&priv->lock, flags);
+
+	return ret;
 }
 
 static int vnt_int_report_rate(struct vnt_private *priv, u8 pkt_no, u8 tsr)
diff --git a/drivers/staging/vt6656/int.h b/drivers/staging/vt6656/int.h
index 987c454e99e9..8a6d60569ceb 100644
--- a/drivers/staging/vt6656/int.h
+++ b/drivers/staging/vt6656/int.h
@@ -41,7 +41,7 @@ struct vnt_interrupt_data {
 	u8 sw[2];
 } __packed;
 
-void vnt_int_start_interrupt(struct vnt_private *priv);
+int vnt_int_start_interrupt(struct vnt_private *priv);
 void vnt_int_process_data(struct vnt_private *priv);
 
 #endif /* __INT_H__ */
diff --git a/drivers/staging/vt6656/mac.c b/drivers/staging/vt6656/mac.c
index 0b543854ea97..5cacf6e60e90 100644
--- a/drivers/staging/vt6656/mac.c
+++ b/drivers/staging/vt6656/mac.c
@@ -129,27 +129,26 @@ void vnt_mac_set_keyentry(struct vnt_private *priv, u16 key_ctl, u32 entry_idx,
 			(u8 *)&set_key);
 }
 
-void vnt_mac_reg_bits_off(struct vnt_private *priv, u8 reg_ofs, u8 bits)
+int vnt_mac_reg_bits_off(struct vnt_private *priv, u8 reg_ofs, u8 bits)
 {
 	u8 data[2];
 
 	data[0] = 0;
 	data[1] = bits;
 
-	vnt_control_out(priv, MESSAGE_TYPE_WRITE_MASK,
-			reg_ofs, MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data),
-			data);
+	return vnt_control_out(priv, MESSAGE_TYPE_WRITE_MASK, reg_ofs,
+			       MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
 }
 
-void vnt_mac_reg_bits_on(struct vnt_private *priv, u8 reg_ofs, u8 bits)
+int vnt_mac_reg_bits_on(struct vnt_private *priv, u8 reg_ofs, u8 bits)
 {
 	u8 data[2];
 
 	data[0] = bits;
 	data[1] = bits;
 
-	vnt_control_out(priv, MESSAGE_TYPE_WRITE_MASK, reg_ofs,
-			MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
+	return vnt_control_out(priv, MESSAGE_TYPE_WRITE_MASK, reg_ofs,
+			       MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
 }
 
 void vnt_mac_write_word(struct vnt_private *priv, u8 reg_ofs, u16 word)
@@ -224,13 +223,13 @@ void vnt_mac_set_beacon_interval(struct vnt_private *priv, u16 interval)
 			MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
 }
 
-void vnt_mac_set_led(struct vnt_private *priv, u8 state, u8 led)
+int vnt_mac_set_led(struct vnt_private *priv, u8 state, u8 led)
 {
 	u8 data[2];
 
 	data[0] = led;
 	data[1] = state;
 
-	vnt_control_out(priv, MESSAGE_TYPE_WRITE_MASK, MAC_REG_PAPEDELAY,
-			MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
+	return vnt_control_out(priv, MESSAGE_TYPE_WRITE_MASK, MAC_REG_PAPEDELAY,
+			       MESSAGE_REQUEST_MACREG, ARRAY_SIZE(data), data);
 }
diff --git a/drivers/staging/vt6656/mac.h b/drivers/staging/vt6656/mac.h
index 3fd87f95c524..0a42308b81e9 100644
--- a/drivers/staging/vt6656/mac.h
+++ b/drivers/staging/vt6656/mac.h
@@ -360,8 +360,8 @@ void vnt_mac_set_bb_type(struct vnt_private *priv, u8 type);
 void vnt_mac_disable_keyentry(struct vnt_private *priv, u8 entry_idx);
 void vnt_mac_set_keyentry(struct vnt_private *priv, u16 key_ctl, u32 entry_idx,
 			  u32 key_idx, u8 *addr, u8 *key);
-void vnt_mac_reg_bits_off(struct vnt_private *priv, u8 reg_ofs, u8 bits);
-void vnt_mac_reg_bits_on(struct vnt_private *priv, u8 reg_ofs, u8 bits);
+int vnt_mac_reg_bits_off(struct vnt_private *priv, u8 reg_ofs, u8 bits);
+int vnt_mac_reg_bits_on(struct vnt_private *priv, u8 reg_ofs, u8 bits);
 void vnt_mac_write_word(struct vnt_private *priv, u8 reg_ofs, u16 word);
 void vnt_mac_set_bssid_addr(struct vnt_private *priv, u8 *addr);
 void vnt_mac_enable_protect_mode(struct vnt_private *priv);
@@ -369,6 +369,6 @@ void vnt_mac_disable_protect_mode(struct vnt_private *priv);
 void vnt_mac_enable_barker_preamble_mode(struct vnt_private *priv);
 void vnt_mac_disable_barker_preamble_mode(struct vnt_private *priv);
 void vnt_mac_set_beacon_interval(struct vnt_private *priv, u16 interval);
-void vnt_mac_set_led(struct vnt_private *privpriv, u8 state, u8 led);
+int vnt_mac_set_led(struct vnt_private *privpriv, u8 state, u8 led);
 
 #endif /* __MAC_H__ */
diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
index 18f75dcc65d2..43237b7e1dbe 100644
--- a/drivers/staging/vt6656/rf.c
+++ b/drivers/staging/vt6656/rf.c
@@ -811,8 +811,9 @@ void vnt_rf_rssi_to_dbm(struct vnt_private *priv, u8 rssi, long *dbm)
 	*dbm = -1 * (a + b * 2);
 }
 
-void vnt_rf_table_download(struct vnt_private *priv)
+int vnt_rf_table_download(struct vnt_private *priv)
 {
+	int ret = 0;
 	u16 length1 = 0, length2 = 0, length3 = 0;
 	u8 *addr1 = NULL, *addr2 = NULL, *addr3 = NULL;
 	u16 length, value;
@@ -865,8 +866,10 @@ void vnt_rf_table_download(struct vnt_private *priv)
 	/* Init Table */
 	memcpy(array, addr1, length1);
 
-	vnt_control_out(priv, MESSAGE_TYPE_WRITE, 0,
-			MESSAGE_REQUEST_RF_INIT, length1, array);
+	ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, 0,
+			      MESSAGE_REQUEST_RF_INIT, length1, array);
+	if (ret)
+		goto end;
 
 	/* Channel Table 0 */
 	value = 0;
@@ -878,8 +881,10 @@ void vnt_rf_table_download(struct vnt_private *priv)
 
 		memcpy(array, addr2, length);
 
-		vnt_control_out(priv, MESSAGE_TYPE_WRITE,
-				value, MESSAGE_REQUEST_RF_CH0, length, array);
+		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, value,
+				      MESSAGE_REQUEST_RF_CH0, length, array);
+		if (ret)
+			goto end;
 
 		length2 -= length;
 		value += length;
@@ -896,8 +901,10 @@ void vnt_rf_table_download(struct vnt_private *priv)
 
 		memcpy(array, addr3, length);
 
-		vnt_control_out(priv, MESSAGE_TYPE_WRITE,
-				value, MESSAGE_REQUEST_RF_CH1, length, array);
+		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, value,
+				      MESSAGE_REQUEST_RF_CH1, length, array);
+		if (ret)
+			goto end;
 
 		length3 -= length;
 		value += length;
@@ -913,8 +920,10 @@ void vnt_rf_table_download(struct vnt_private *priv)
 		memcpy(array, addr1, length1);
 
 		/* Init Table 2 */
-		vnt_control_out(priv, MESSAGE_TYPE_WRITE,
-				0, MESSAGE_REQUEST_RF_INIT2, length1, array);
+		ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, 0,
+				      MESSAGE_REQUEST_RF_INIT2, length1, array);
+		if (ret)
+			goto end;
 
 		/* Channel Table 0 */
 		value = 0;
@@ -926,13 +935,18 @@ void vnt_rf_table_download(struct vnt_private *priv)
 
 			memcpy(array, addr2, length);
 
-			vnt_control_out(priv, MESSAGE_TYPE_WRITE,
-					value, MESSAGE_REQUEST_RF_CH2,
-					length, array);
+			ret = vnt_control_out(priv, MESSAGE_TYPE_WRITE, value,
+					      MESSAGE_REQUEST_RF_CH2, length,
+					      array);
+			if (ret)
+				goto end;
 
 			length2 -= length;
 			value += length;
 			addr2 += length;
 		}
 	}
+
+end:
+	return ret;
 }
diff --git a/drivers/staging/vt6656/rf.h b/drivers/staging/vt6656/rf.h
index 6103117d6df5..7494546d71b8 100644
--- a/drivers/staging/vt6656/rf.h
+++ b/drivers/staging/vt6656/rf.h
@@ -44,6 +44,6 @@ int vnt_rf_write_embedded(struct vnt_private *priv, u32 data);
 int vnt_rf_setpower(struct vnt_private *priv, u32 rate, u32 channel);
 int vnt_rf_set_txpower(struct vnt_private *priv, u8 power, u32 rate);
 void vnt_rf_rssi_to_dbm(struct vnt_private *priv, u8 rssi, long *dbm);
-void vnt_rf_table_download(struct vnt_private *priv);
+int vnt_rf_table_download(struct vnt_private *priv);
 
 #endif /* __RF_H__ */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
