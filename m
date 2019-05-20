Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E2323DA2
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 18:39:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 35D4B81E46;
	Mon, 20 May 2019 16:39:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZtYJtS6ul9Kn; Mon, 20 May 2019 16:39:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DE62A85F96;
	Mon, 20 May 2019 16:39:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E911D1BF3A4
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 16:39:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E3AC9878EA
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 16:39:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G92Xf+qUOpHO for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 16:39:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr30053.outbound.protection.outlook.com [40.107.3.53])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0AA618786C
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 16:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector1-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=icpRyS73cIcQKDqGrCfshKA+Dl1mr/H8Tjfi0jTGOyY=;
 b=h31p/6iLLMb3cYHdR+rF6JmDmYr/dgkBivGgMs6LYqDgTmRMe61B/L4YOmjWR9KCHyiIzBJY/YhKt15QE6RE3N5wsw1aAdTdk5zav1ZVSEttnbfVmxHOvaJMOblyZEzyUcuyz3FG8HIv6VTWnIjFu5A+U1DFPlGYOWYJ21i40tE=
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com (52.133.15.143) by
 VI1PR08MB3662.eurprd08.prod.outlook.com (20.177.61.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Mon, 20 May 2019 16:39:03 +0000
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::1d25:dae7:53a6:b461]) by VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::1d25:dae7:53a6:b461%3]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 16:39:03 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: [PATCH 4/7] staging: vt6656: clean error path for firmware management
Thread-Topic: [PATCH 4/7] staging: vt6656: clean error path for firmware
 management
Thread-Index: AQHVDyqIEKpGQa86PkmrlJfCOD3n5Q==
Date: Mon, 20 May 2019 16:39:03 +0000
Message-ID: <20190520163844.1225-5-quentin.deslandes@itdev.co.uk>
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
x-ms-office365-filtering-correlation-id: fb1b574a-911f-4de9-eff4-08d6dd41ab08
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR08MB3662; 
x-ms-traffictypediagnostic: VI1PR08MB3662:
x-microsoft-antispam-prvs: <VI1PR08MB366298ABA8F784A25F11DADAB3060@VI1PR08MB3662.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39830400003)(346002)(366004)(376002)(396003)(136003)(199004)(189003)(1730700003)(2501003)(14454004)(73956011)(486006)(8936002)(44832011)(71190400001)(71200400001)(50226002)(81156014)(81166006)(4326008)(66446008)(64756008)(66556008)(66946007)(66476007)(8676002)(53936002)(446003)(316002)(11346002)(476003)(2616005)(305945005)(6436002)(66066001)(508600001)(6486002)(7736002)(5640700003)(68736007)(25786009)(186003)(6512007)(14444005)(86362001)(256004)(6116002)(3846002)(1076003)(5660300002)(26005)(36756003)(76176011)(99286004)(6916009)(6506007)(386003)(52116002)(102836004)(2351001)(54906003)(74482002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3662;
 H:VI1PR08MB3168.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: G64e19tEHUOzgv45dqcNSKfwMEiecbYl2VJLRTWTZadV3ztu4/VVJ1bF1G05jCINBdxRU0Ui9acD98MHDVU3WXPPoQz/7I2Q8IsKMmzzQ3m78xOVTS/HeiNsHFS1N1oFyq0hKbxkok2ZJCrXZ7q5cl40jeTeOKmNrZPO8LTBz4Fz8Dr8WiMckbTlKxTS3i4Dsenoe326s61E9axx4lsviTyDqGDuhCVpXvYSR3vAbCOOM+YKBP6cStPH0G9GhWGH7f82PrIUnD9sWJcBTsCgcqUbMHM4zL0XrM7lx/cGsH8L+DrkpUUUol1hx6pwGNU4383bfgJ1t/8ePIAWlD8HX3bLqc4xyk9cJsmubkccM2WL1LFNQF/CwteGwIDGM+8apy1JDpZUFsdotK/Pxg1DK9cL78UykkrJ0TTm15MTN+c=
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: fb1b574a-911f-4de9-eff4-08d6dd41ab08
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 16:39:03.4114 (UTC)
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

Avoid discarding return value of functions called during firmware
management process. Handle such return value and return 0 on success or
a negative errno value on error.

Signed-off-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
---
 drivers/staging/vt6656/firmware.c | 91 ++++++++++++++-----------------
 1 file changed, 40 insertions(+), 51 deletions(-)

diff --git a/drivers/staging/vt6656/firmware.c b/drivers/staging/vt6656/firmware.c
index 38521c338917..60a00af250bf 100644
--- a/drivers/staging/vt6656/firmware.c
+++ b/drivers/staging/vt6656/firmware.c
@@ -30,98 +30,87 @@ int vnt_download_firmware(struct vnt_private *priv)
 {
 	struct device *dev = &priv->usb->dev;
 	const struct firmware *fw;
-	int status;
 	void *buffer = NULL;
-	bool result = false;
 	u16 length;
-	int ii, rc;
+	int ii;
+	int ret = 0;
 
 	dev_dbg(dev, "---->Download firmware\n");
 
-	rc = request_firmware(&fw, FIRMWARE_NAME, dev);
-	if (rc) {
+	ret = request_firmware(&fw, FIRMWARE_NAME, dev);
+	if (ret) {
 		dev_err(dev, "firmware file %s request failed (%d)\n",
-			FIRMWARE_NAME, rc);
-			goto out;
+			FIRMWARE_NAME, ret);
+		goto end;
 	}
 
 	buffer = kmalloc(FIRMWARE_CHUNK_SIZE, GFP_KERNEL);
-	if (!buffer)
+	if (!buffer) {
+		ret = -ENOMEM;
 		goto free_fw;
+	}
 
 	for (ii = 0; ii < fw->size; ii += FIRMWARE_CHUNK_SIZE) {
 		length = min_t(int, fw->size - ii, FIRMWARE_CHUNK_SIZE);
 		memcpy(buffer, fw->data + ii, length);
 
-		status = vnt_control_out(priv,
-					 0,
-					 0x1200 + ii,
-					 0x0000,
-					 length,
-					 buffer);
+		ret = vnt_control_out(priv, 0, 0x1200 + ii, 0x0000, length,
+				      buffer);
+		if (ret)
+			goto free_buffer;
 
 		dev_dbg(dev, "Download firmware...%d %zu\n", ii, fw->size);
-
-		if (status != STATUS_SUCCESS)
-			goto free_fw;
 	}
 
-	result = true;
+free_buffer:
+	kfree(buffer);
 free_fw:
 	release_firmware(fw);
-
-out:
-	kfree(buffer);
-
-	return result;
+end:
+	return ret;
 }
 MODULE_FIRMWARE(FIRMWARE_NAME);
 
 int vnt_firmware_branch_to_sram(struct vnt_private *priv)
 {
-	int status;
-
 	dev_dbg(&priv->usb->dev, "---->Branch to Sram\n");
 
-	status = vnt_control_out(priv,
-				 1,
-				 0x1200,
-				 0x0000,
-				 0,
-				 NULL);
-	return status == STATUS_SUCCESS;
+	return vnt_control_out(priv, 1, 0x1200, 0x0000, 0, NULL);
 }
 
 int vnt_check_firmware_version(struct vnt_private *priv)
 {
-	int status;
-
-	status = vnt_control_in(priv,
-				MESSAGE_TYPE_READ,
-				0,
-				MESSAGE_REQUEST_VERSION,
-				2,
-				(u8 *)&priv->firmware_version);
+	int ret = 0;
+
+	ret = vnt_control_in(priv, MESSAGE_TYPE_READ, 0,
+			     MESSAGE_REQUEST_VERSION, 2,
+			     (u8 *)&priv->firmware_version);
+	if (ret) {
+		dev_dbg(&priv->usb->dev,
+			"Could not get firmware version: %d.\n", ret);
+		goto end;
+	}
 
 	dev_dbg(&priv->usb->dev, "Firmware Version [%04x]\n",
 		priv->firmware_version);
 
-	if (status != STATUS_SUCCESS) {
-		dev_dbg(&priv->usb->dev, "Firmware Invalid.\n");
-		return false;
-	}
 	if (priv->firmware_version == 0xFFFF) {
 		dev_dbg(&priv->usb->dev, "In Loader.\n");
-		return false;
+		ret = -EINVAL;
+		goto end;
 	}
 
-	dev_dbg(&priv->usb->dev, "Firmware Version [%04x]\n",
-		priv->firmware_version);
-
 	if (priv->firmware_version < FIRMWARE_VERSION) {
 		/* branch to loader for download new firmware */
-		vnt_firmware_branch_to_sram(priv);
-		return false;
+		ret = vnt_firmware_branch_to_sram(priv);
+		if (ret) {
+			dev_dbg(&priv->usb->dev,
+				"Could not branch to SRAM: %d.\n", ret);
+		} else {
+			ret = -EINVAL;
+		}
 	}
-	return true;
+
+end:
+	return ret;
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
