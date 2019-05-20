Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 512D123DA0
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 18:39:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5EE9587877;
	Mon, 20 May 2019 16:39:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zxovAyn8PoVX; Mon, 20 May 2019 16:39:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8C79187852;
	Mon, 20 May 2019 16:39:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A0E551BF3A4
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 16:39:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9D3BA8790F
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 16:39:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6rMwWkycc2c7 for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 16:39:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr30053.outbound.protection.outlook.com [40.107.3.53])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A143087850
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 16:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector1-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P+zHgcExANDLE4IWH6V8rLshAlVA2jn2qE+lWxfbB5c=;
 b=NHfyFlNVZmwONhK/2Kfp2hG4o9k1/LhlkNKelZ+YsBMOL5MPDdo2FZFU3d88jUG0OTdpmHXmBx5vjAM2EWVkfZXk1B0yEMfKJl67qsOCR0+ghy27Fa9Ls/qxwYUehWEcnV1gI4sIiPLR18eMh28jqMv00qjr+JH9o579e3E+Dqs=
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
Subject: [PATCH 2/7] staging: vt6656: clean function's error path in usbpipe.c
Thread-Topic: [PATCH 2/7] staging: vt6656: clean function's error path in
 usbpipe.c
Thread-Index: AQHVDyqH33HY9G1vdkSkWvMIogsj9A==
Date: Mon, 20 May 2019 16:39:01 +0000
Message-ID: <20190520163844.1225-3-quentin.deslandes@itdev.co.uk>
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
x-ms-office365-filtering-correlation-id: d0fae776-b782-4861-3ee4-08d6dd41aa0c
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR08MB3662; 
x-ms-traffictypediagnostic: VI1PR08MB3662:
x-microsoft-antispam-prvs: <VI1PR08MB366275A16EC51FAA4D7B710EB3060@VI1PR08MB3662.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(39830400003)(346002)(366004)(376002)(396003)(136003)(199004)(189003)(1730700003)(2501003)(14454004)(73956011)(486006)(8936002)(44832011)(71190400001)(71200400001)(50226002)(81156014)(81166006)(4326008)(66446008)(64756008)(66556008)(66946007)(66476007)(8676002)(53936002)(446003)(316002)(11346002)(476003)(2616005)(305945005)(6436002)(66066001)(508600001)(6486002)(7736002)(5640700003)(68736007)(25786009)(186003)(6512007)(14444005)(86362001)(256004)(6116002)(3846002)(1076003)(5660300002)(26005)(36756003)(76176011)(99286004)(6916009)(6506007)(386003)(52116002)(102836004)(2351001)(54906003)(74482002)(2906002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3662;
 H:VI1PR08MB3168.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AY00TAjnLHJgz3g9iarjcLODaYzFiZK+5sUfyzKIxryKzYWCnBXu7ECO8UjtHiNgRC0QqRN9/pCTFelpMSflE65XqWSOjJD1vhqry2MY01p771ouNnSJ74fcIvYsy8OA988XJ2CHeOpNfgclKAHfflkAcxc9YN60SbFFgOtAzaXHMXGASFy4n/7FelZaBPIi/h2B1MrQoZhXUMo7s8KhCu9rsSFn0UavspFnHucD7MdEP0fhq5104t+VSa8N8hghxM3Uly2g5LjbQkzrsEwYtXVyxZgdxa7TPxlhOTAfmfzE/8k0bGoRs1Ln7ou+WG841fdePjqrazJAhSJ1FltwiL44JoETKTH/K+tjGaOnghu1xT4hzfji5GvSyjrek2dGvYOwTHS6BQTVkEt5Y74qDicLGPB7U+6ZXc1Wo3aXG/o=
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: d0fae776-b782-4861-3ee4-08d6dd41aa0c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 16:39:01.8873 (UTC)
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

Avoid discarding called function's returned value. Store it instead in
order to act accordingly.

Update error path to return 0 on success and a negative errno value on
error.

Signed-off-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
---
 drivers/staging/vt6656/usbpipe.c | 115 +++++++++++++++++--------------
 drivers/staging/vt6656/usbpipe.h |   4 +-
 2 files changed, 67 insertions(+), 52 deletions(-)

diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index 5bbc56f8779e..ff351a7a0876 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -36,80 +36,86 @@
 int vnt_control_out(struct vnt_private *priv, u8 request, u16 value,
 		    u16 index, u16 length, u8 *buffer)
 {
-	int status = 0;
+	int ret = 0;
 	u8 *usb_buffer;
 
-	if (test_bit(DEVICE_FLAGS_DISCONNECTED, &priv->flags))
-		return STATUS_FAILURE;
+	if (test_bit(DEVICE_FLAGS_DISCONNECTED, &priv->flags)) {
+		ret = -EINVAL;
+		goto end;
+	}
 
 	mutex_lock(&priv->usb_lock);
 
 	usb_buffer = kmemdup(buffer, length, GFP_KERNEL);
 	if (!usb_buffer) {
-		mutex_unlock(&priv->usb_lock);
-		return -ENOMEM;
+		ret = -ENOMEM;
+		goto end_unlock;
 	}
 
-	status = usb_control_msg(priv->usb,
-				 usb_sndctrlpipe(priv->usb, 0),
-				 request, 0x40, value,
-				 index, usb_buffer, length, USB_CTL_WAIT);
+	ret = usb_control_msg(priv->usb,
+			      usb_sndctrlpipe(priv->usb, 0),
+			      request, 0x40, value,
+			      index, usb_buffer, length, USB_CTL_WAIT);
 
 	kfree(usb_buffer);
 
-	mutex_unlock(&priv->usb_lock);
+	if (ret >= 0 && ret < (int)length)
+		ret = -EIO;
 
-	if (status < (int)length)
-		return STATUS_FAILURE;
-
-	return STATUS_SUCCESS;
+end_unlock:
+	mutex_unlock(&priv->usb_lock);
+end:
+	return ret;
 }
 
-void vnt_control_out_u8(struct vnt_private *priv, u8 reg, u8 reg_off, u8 data)
+int vnt_control_out_u8(struct vnt_private *priv, u8 reg, u8 reg_off, u8 data)
 {
-	vnt_control_out(priv, MESSAGE_TYPE_WRITE,
-			reg_off, reg, sizeof(u8), &data);
+	return vnt_control_out(priv, MESSAGE_TYPE_WRITE,
+			       reg_off, reg, sizeof(u8), &data);
 }
 
 int vnt_control_in(struct vnt_private *priv, u8 request, u16 value,
 		   u16 index, u16 length, u8 *buffer)
 {
-	int status;
+	int ret = 0;
 	u8 *usb_buffer;
 
-	if (test_bit(DEVICE_FLAGS_DISCONNECTED, &priv->flags))
-		return STATUS_FAILURE;
+	if (test_bit(DEVICE_FLAGS_DISCONNECTED, &priv->flags)) {
+		ret = -EINVAL;
+		goto end;
+	}
 
 	mutex_lock(&priv->usb_lock);
 
 	usb_buffer = kmalloc(length, GFP_KERNEL);
 	if (!usb_buffer) {
-		mutex_unlock(&priv->usb_lock);
-		return -ENOMEM;
+		ret = -ENOMEM;
+		goto end_unlock;
 	}
 
-	status = usb_control_msg(priv->usb,
-				 usb_rcvctrlpipe(priv->usb, 0),
-				 request, 0xc0, value,
-				 index, usb_buffer, length, USB_CTL_WAIT);
+	ret = usb_control_msg(priv->usb,
+			      usb_rcvctrlpipe(priv->usb, 0),
+			      request, 0xc0, value,
+			      index, usb_buffer, length, USB_CTL_WAIT);
 
-	if (status == length)
+	if (ret == length)
 		memcpy(buffer, usb_buffer, length);
 
 	kfree(usb_buffer);
 
-	mutex_unlock(&priv->usb_lock);
+	if (ret >= 0 && ret < (int)length)
+		ret = -EIO;
 
-	if (status < (int)length)
-		return STATUS_FAILURE;
-
-	return STATUS_SUCCESS;
+end_unlock:
+	mutex_unlock(&priv->usb_lock);
+end:
+	return ret;
 }
 
-void vnt_control_in_u8(struct vnt_private *priv, u8 reg, u8 reg_off, u8 *data)
+int vnt_control_in_u8(struct vnt_private *priv, u8 reg, u8 reg_off, u8 *data)
 {
-	vnt_control_in(priv, MESSAGE_TYPE_READ,
-		       reg_off, reg, sizeof(u8), data);
+	return vnt_control_in(priv, MESSAGE_TYPE_READ,
+			      reg_off, reg, sizeof(u8), data);
 }
 
 static void vnt_start_interrupt_urb_complete(struct urb *urb)
@@ -147,10 +153,12 @@ static void vnt_start_interrupt_urb_complete(struct urb *urb)
 
 int vnt_start_interrupt_urb(struct vnt_private *priv)
 {
-	int status = STATUS_FAILURE;
+	int ret = 0;
 
-	if (priv->int_buf.in_use)
-		return STATUS_FAILURE;
+	if (priv->int_buf.in_use) {
+		ret = -EBUSY;
+		goto err;
+	}
 
 	priv->int_buf.in_use = true;
 
@@ -163,13 +171,18 @@ int vnt_start_interrupt_urb(struct vnt_private *priv)
 			 priv,
 			 priv->int_interval);
 
-	status = usb_submit_urb(priv->interrupt_urb, GFP_ATOMIC);
-	if (status) {
-		dev_dbg(&priv->usb->dev, "Submit int URB failed %d\n", status);
-		priv->int_buf.in_use = false;
+	ret = usb_submit_urb(priv->interrupt_urb, GFP_ATOMIC);
+	if (ret) {
+		dev_dbg(&priv->usb->dev, "Submit int URB failed %d\n", ret);
+		goto err_submit;
 	}
 
-	return status;
+	return 0;
+
+err_submit:
+	priv->int_buf.in_use = false;
+err:
+	return ret;
 }
 
 static void vnt_submit_rx_urb_complete(struct urb *urb)
@@ -215,12 +228,13 @@ static void vnt_submit_rx_urb_complete(struct urb *urb)
 
 int vnt_submit_rx_urb(struct vnt_private *priv, struct vnt_rcb *rcb)
 {
-	int status = 0;
+	int ret = 0;
 	struct urb *urb = rcb->urb;
 
 	if (!rcb->skb) {
 		dev_dbg(&priv->usb->dev, "rcb->skb is null\n");
-		return status;
+		ret = -EINVAL;
+		goto end;
 	}
 
 	usb_fill_bulk_urb(urb,
@@ -231,15 +245,16 @@ int vnt_submit_rx_urb(struct vnt_private *priv, struct vnt_rcb *rcb)
 			  vnt_submit_rx_urb_complete,
 			  rcb);
 
-	status = usb_submit_urb(urb, GFP_ATOMIC);
-	if (status) {
-		dev_dbg(&priv->usb->dev, "Submit Rx URB failed %d\n", status);
-		return STATUS_FAILURE;
+	ret = usb_submit_urb(urb, GFP_ATOMIC);
+	if (ret) {
+		dev_dbg(&priv->usb->dev, "Submit Rx URB failed %d\n", ret);
+		goto end;
 	}
 
 	rcb->in_use = true;
 
-	return status;
+end:
+	return ret;
 }
 
 static void vnt_tx_context_complete(struct urb *urb)
diff --git a/drivers/staging/vt6656/usbpipe.h b/drivers/staging/vt6656/usbpipe.h
index 2910ca54886e..95147ec7b96a 100644
--- a/drivers/staging/vt6656/usbpipe.h
+++ b/drivers/staging/vt6656/usbpipe.h
@@ -23,8 +23,8 @@ int vnt_control_out(struct vnt_private *priv, u8 request, u16 value,
 int vnt_control_in(struct vnt_private *priv, u8 request, u16 value,
 		   u16 index, u16 length,  u8 *buffer);
 
-void vnt_control_out_u8(struct vnt_private *priv, u8 reg, u8 ref_off, u8 data);
-void vnt_control_in_u8(struct vnt_private *priv, u8 reg, u8 reg_off, u8 *data);
+int vnt_control_out_u8(struct vnt_private *priv, u8 reg, u8 ref_off, u8 data);
+int vnt_control_in_u8(struct vnt_private *priv, u8 reg, u8 reg_off, u8 *data);
 
 int vnt_start_interrupt_urb(struct vnt_private *priv);
 int vnt_submit_rx_urb(struct vnt_private *priv, struct vnt_rcb *rcb);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
