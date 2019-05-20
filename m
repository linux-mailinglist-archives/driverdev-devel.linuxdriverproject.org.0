Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A69323DA9
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 18:39:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5F6C585BC6;
	Mon, 20 May 2019 16:39:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nbvLu0pHiRJg; Mon, 20 May 2019 16:39:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 51CAB85C4C;
	Mon, 20 May 2019 16:39:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 363FE1BF3A4
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 16:39:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3394A87824
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 16:39:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ettJ7Lh-flyR for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 16:39:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr30053.outbound.protection.outlook.com [40.107.3.53])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2C9B7878CE
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 16:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector1-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TZ1FI76t1V2JUF9npqN73z1XugX1WH+02Z9CQ3H25A8=;
 b=qiV3Jwkhyl+jvdHPM6fi65YNQDODuaUYDK8ifcKBBjY9CBX4FlG52d6Y231v2erNG3L4FA4oHVh3jJusnNVIs+7W8f8rnZaNtoVC6A/oQyfpWzRLZre0nyLQH6a6P28aM95yQSioF0mUB+C70MhkhKUHwkH+DTxbY719050HYeM=
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com (52.133.15.143) by
 VI1PR08MB3662.eurprd08.prod.outlook.com (20.177.61.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Mon, 20 May 2019 16:39:05 +0000
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::1d25:dae7:53a6:b461]) by VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::1d25:dae7:53a6:b461%3]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 16:39:05 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: [PATCH 6/7] staging: vt6656: clean-up registers initialization error
 path
Thread-Topic: [PATCH 6/7] staging: vt6656: clean-up registers initialization
 error path
Thread-Index: AQHVDyqJfSKxNqVCiUKyQNx7q/b4Sw==
Date: Mon, 20 May 2019 16:39:04 +0000
Message-ID: <20190520163844.1225-7-quentin.deslandes@itdev.co.uk>
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
x-ms-office365-filtering-correlation-id: 1bfea39d-0cbf-436f-6775-08d6dd41abd9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR08MB3662; 
x-ms-traffictypediagnostic: VI1PR08MB3662:
x-microsoft-antispam-prvs: <VI1PR08MB3662C3BEC5125BDC87D3E4A0B3060@VI1PR08MB3662.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(39840400004)(376002)(396003)(136003)(199004)(189003)(1730700003)(2501003)(14454004)(73956011)(486006)(8936002)(44832011)(71190400001)(71200400001)(50226002)(81156014)(81166006)(4326008)(66446008)(64756008)(66556008)(66946007)(66476007)(8676002)(53936002)(446003)(316002)(11346002)(476003)(2616005)(305945005)(6436002)(66066001)(508600001)(6486002)(7736002)(5640700003)(68736007)(25786009)(186003)(6512007)(14444005)(86362001)(256004)(6116002)(3846002)(1076003)(5660300002)(26005)(36756003)(76176011)(99286004)(6916009)(6506007)(386003)(52116002)(102836004)(2351001)(54906003)(74482002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3662;
 H:VI1PR08MB3168.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jC12L/TJGcRqWuTHarsoGh4EeTHVA6tWyDIkxRI0/quoYqYSxko+15jSCdscyPXEqyYBxbFQyZ2bkuPEaXSnOYRWyEwA9NUHvWBz0xiUwLMO1t1ns1m1XlCoN/pJoyBSPDpF4l5hKp9eEyP27ygGLlJzHQY67tKhXAtFH4NcaSTUBJpkCtAdzMHoU3HX+dXsIYAVbTLGRbTBillJ2dXEVk+nAKX3/pKwzdEQ20LynzmR5bB7J9/PXqk1oqDlY+Pw+Jnx7UiiDD1/QznVHzbvDgZZDc89wmH5v0pp+jhv6oNHGGQkYbRsZT4Mc8YKG1ycNO7f3VjGo1qFH+OLGP4vJGCWq9G5dvylI27/CSFZ5Y/oMN8WFKzeFSC69tb0io9hx0Dz8vPbvxhnXZAfPCTO9pi6v7JP1iddPShqeVAlIWc=
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bfea39d-0cbf-436f-6775-08d6dd41abd9
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 16:39:04.8656 (UTC)
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

Avoid discarding function's return code during register initialization.
Handle it instead and return 0 on success or a negative errno value on
error.

Signed-off-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
---
 drivers/staging/vt6656/main_usb.c | 163 ++++++++++++++++++------------
 1 file changed, 96 insertions(+), 67 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 5fd845cbdd52..8ed96e8eedbe 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -109,33 +109,38 @@ static void vnt_set_options(struct vnt_private *priv)
  */
 static int vnt_init_registers(struct vnt_private *priv)
 {
+	int ret = 0;
 	struct vnt_cmd_card_init *init_cmd = &priv->init_command;
 	struct vnt_rsp_card_init *init_rsp = &priv->init_response;
 	u8 antenna;
 	int ii;
-	int status = STATUS_SUCCESS;
 	u8 tmp;
 	u8 calib_tx_iq = 0, calib_tx_dc = 0, calib_rx_iq = 0;
 
 	dev_dbg(&priv->usb->dev, "---->INIbInitAdapter. [%d][%d]\n",
 		DEVICE_INIT_COLD, priv->packet_type);
 
-	if (!vnt_check_firmware_version(priv)) {
-		if (vnt_download_firmware(priv) == true) {
-			if (vnt_firmware_branch_to_sram(priv) == false) {
-				dev_dbg(&priv->usb->dev,
-					" vnt_firmware_branch_to_sram fail\n");
-				return false;
-			}
-		} else {
-			dev_dbg(&priv->usb->dev, "FIRMWAREbDownload fail\n");
-			return false;
+	ret = vnt_check_firmware_version(priv);
+	if (ret) {
+		ret = vnt_download_firmware(priv);
+		if (ret) {
+			dev_dbg(&priv->usb->dev,
+				"Could not download firmware: %d.\n", ret);
+			goto end;
+		}
+
+		ret = vnt_firmware_branch_to_sram(priv);
+		if (ret) {
+			dev_dbg(&priv->usb->dev,
+				"Could not branch to SRAM: %d.\n", ret);
+			goto end;
 		}
 	}
 
-	if (!vnt_vt3184_init(priv)) {
+	ret = vnt_vt3184_init(priv);
+	if (ret) {
 		dev_dbg(&priv->usb->dev, "vnt_vt3184_init fail\n");
-		return false;
+		goto end;
 	}
 
 	init_cmd->init_class = DEVICE_INIT_COLD;
@@ -146,28 +151,27 @@ static int vnt_init_registers(struct vnt_private *priv)
 	init_cmd->long_retry_limit = priv->long_retry_limit;
 
 	/* issue card_init command to device */
-	status = vnt_control_out(priv, MESSAGE_TYPE_CARDINIT, 0, 0,
-				 sizeof(struct vnt_cmd_card_init),
-				 (u8 *)init_cmd);
-	if (status != STATUS_SUCCESS) {
+	ret = vnt_control_out(priv, MESSAGE_TYPE_CARDINIT, 0, 0,
+			      sizeof(struct vnt_cmd_card_init),
+			      (u8 *)init_cmd);
+	if (ret) {
 		dev_dbg(&priv->usb->dev, "Issue Card init fail\n");
-		return false;
+		goto end;
 	}
 
-	status = vnt_control_in(priv, MESSAGE_TYPE_INIT_RSP, 0, 0,
-				sizeof(struct vnt_rsp_card_init),
-				(u8 *)init_rsp);
-	if (status != STATUS_SUCCESS) {
-		dev_dbg(&priv->usb->dev,
-			"Cardinit request in status fail!\n");
-		return false;
+	ret = vnt_control_in(priv, MESSAGE_TYPE_INIT_RSP, 0, 0,
+			     sizeof(struct vnt_rsp_card_init),
+			     (u8 *)init_rsp);
+	if (ret) {
+		dev_dbg(&priv->usb->dev, "Cardinit request in status fail!\n");
+		goto end;
 	}
 
 	/* local ID for AES functions */
-	status = vnt_control_in(priv, MESSAGE_TYPE_READ, MAC_REG_LOCALID,
-				MESSAGE_REQUEST_MACREG, 1, &priv->local_id);
-	if (status != STATUS_SUCCESS)
-		return false;
+	ret = vnt_control_in(priv, MESSAGE_TYPE_READ, MAC_REG_LOCALID,
+			     MESSAGE_REQUEST_MACREG, 1, &priv->local_id);
+	if (ret)
+		goto end;
 
 	/* do MACbSoftwareReset in MACvInitialize */
 
@@ -253,7 +257,9 @@ static int vnt_init_registers(struct vnt_private *priv)
 	}
 
 	/* Set initial antenna mode */
-	vnt_set_antenna_mode(priv, priv->rx_antenna_mode);
+	ret = vnt_set_antenna_mode(priv, priv->rx_antenna_mode);
+	if (ret)
+		goto end;
 
 	/* get Auto Fall Back type */
 	priv->auto_fb_ctrl = AUTO_FB_0;
@@ -275,33 +281,41 @@ static int vnt_init_registers(struct vnt_private *priv)
 				/* CR255, enable TX/RX IQ and
 				 * DC compensation mode
 				 */
-				vnt_control_out_u8(priv,
-						   MESSAGE_REQUEST_BBREG,
-						   0xff,
-						   0x03);
+				ret = vnt_control_out_u8(priv,
+							 MESSAGE_REQUEST_BBREG,
+							 0xff, 0x03);
+				if (ret)
+					goto end;
+
 				/* CR251, TX I/Q Imbalance Calibration */
-				vnt_control_out_u8(priv,
-						   MESSAGE_REQUEST_BBREG,
-						   0xfb,
-						   calib_tx_iq);
+				ret = vnt_control_out_u8(priv,
+							 MESSAGE_REQUEST_BBREG,
+							 0xfb, calib_tx_iq);
+				if (ret)
+					goto end;
+
 				/* CR252, TX DC-Offset Calibration */
-				vnt_control_out_u8(priv,
-						   MESSAGE_REQUEST_BBREG,
-						   0xfC,
-						   calib_tx_dc);
+				ret = vnt_control_out_u8(priv,
+							 MESSAGE_REQUEST_BBREG,
+							 0xfC, calib_tx_dc);
+				if (ret)
+					goto end;
+
 				/* CR253, RX I/Q Imbalance Calibration */
-				vnt_control_out_u8(priv,
-						   MESSAGE_REQUEST_BBREG,
-						   0xfd,
-						   calib_rx_iq);
+				ret = vnt_control_out_u8(priv,
+							 MESSAGE_REQUEST_BBREG,
+							 0xfd, calib_rx_iq);
+				if (ret)
+					goto end;
 			} else {
 				/* CR255, turn off
 				 * BB Calibration compensation
 				 */
-				vnt_control_out_u8(priv,
-						   MESSAGE_REQUEST_BBREG,
-						   0xff,
-						   0x0);
+				ret = vnt_control_out_u8(priv,
+							 MESSAGE_REQUEST_BBREG,
+							 0xff, 0x0);
+				if (ret)
+					goto end;
 			}
 		}
 	}
@@ -323,37 +337,52 @@ static int vnt_init_registers(struct vnt_private *priv)
 	else
 		priv->short_slot_time = false;
 
-	vnt_set_short_slot_time(priv);
+	ret = vnt_set_short_slot_time(priv);
+	if (ret)
+		goto end;
 
 	priv->radio_ctl = priv->eeprom[EEP_OFS_RADIOCTL];
 
 	if ((priv->radio_ctl & EEP_RADIOCTL_ENABLE) != 0) {
-		status = vnt_control_in(priv, MESSAGE_TYPE_READ,
-					MAC_REG_GPIOCTL1,
-					MESSAGE_REQUEST_MACREG, 1, &tmp);
+		ret = vnt_control_in(priv, MESSAGE_TYPE_READ,
+				     MAC_REG_GPIOCTL1, MESSAGE_REQUEST_MACREG,
+				     1, &tmp);
+		if (ret)
+			goto end;
 
-		if (status != STATUS_SUCCESS)
-			return false;
+		if ((tmp & GPIO3_DATA) == 0) {
+			ret = vnt_mac_reg_bits_on(priv, MAC_REG_GPIOCTL1,
+						  GPIO3_INTMD);
+		} else {
+			ret = vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1,
+						   GPIO3_INTMD);
+		}
 
-		if ((tmp & GPIO3_DATA) == 0)
-			vnt_mac_reg_bits_on(priv, MAC_REG_GPIOCTL1,
-					    GPIO3_INTMD);
-		else
-			vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1,
-					     GPIO3_INTMD);
+		if (ret)
+			goto end;
 	}
 
-	vnt_mac_set_led(priv, LEDSTS_TMLEN, 0x38);
 
-	vnt_mac_set_led(priv, LEDSTS_STS, LEDSTS_SLOW);
+	ret = vnt_mac_set_led(priv, LEDSTS_TMLEN, 0x38);
+	if (ret)
+		goto end;
 
-	vnt_mac_reg_bits_on(priv, MAC_REG_GPIOCTL0, 0x01);
+	ret = vnt_mac_set_led(priv, LEDSTS_STS, LEDSTS_SLOW);
+	if (ret)
+		goto end;
 
-	vnt_radio_power_on(priv);
+	ret = vnt_mac_reg_bits_on(priv, MAC_REG_GPIOCTL0, 0x01);
+	if (ret)
+		goto end;
+
+	ret = vnt_radio_power_on(priv);
+	if (ret)
+		goto end;
 
 	dev_dbg(&priv->usb->dev, "<----INIbInitAdapter Exit\n");
 
-	return true;
+end:
+	return ret;
 }
 
 static void vnt_free_tx_bufs(struct vnt_private *priv)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
