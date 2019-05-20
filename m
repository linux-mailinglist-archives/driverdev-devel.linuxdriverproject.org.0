Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6203F23DA1
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 18:39:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6DFB187860;
	Mon, 20 May 2019 16:39:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Wf8nq0orpfD7; Mon, 20 May 2019 16:39:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D86C887889;
	Mon, 20 May 2019 16:39:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6F6CC1BF3A4
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 16:39:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6B0FD87860
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 16:39:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mFVPi6pKgpf5 for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 16:39:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr30053.outbound.protection.outlook.com [40.107.3.53])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 94D2287889
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 16:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector1-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=22+t++npVmU9XAwfW/7uEQx2GWAPj6K1rITvV+4o4iM=;
 b=ksysDfKnj4b+rmRoqlLW5rhOToy6PA0JcWYOKjKF72iGeQTMyz8/tS28BdfgrUDCUH4nQRh6APG6Z3GF/3o0BYQK4A4+wvt/LpYVT83xB5qNlqVDKH+K767OnnrzAIAVOEWipZWe5uhjJIUIJstjvk/hjffJsyl8Uo+rS+s+1pw=
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com (52.133.15.143) by
 VI1PR08MB3662.eurprd08.prod.outlook.com (20.177.61.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Mon, 20 May 2019 16:39:04 +0000
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::1d25:dae7:53a6:b461]) by VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::1d25:dae7:53a6:b461%3]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 16:39:04 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: [PATCH 5/7] staging: vt6656: use meaningful error code during buffer
 allocation
Thread-Topic: [PATCH 5/7] staging: vt6656: use meaningful error code during
 buffer allocation
Thread-Index: AQHVDyqJYpIMwruyFkC+v/QIyP9FLA==
Date: Mon, 20 May 2019 16:39:04 +0000
Message-ID: <20190520163844.1225-6-quentin.deslandes@itdev.co.uk>
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
x-ms-office365-filtering-correlation-id: c978152b-d0fb-4f18-8d57-08d6dd41ab71
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR08MB3662; 
x-ms-traffictypediagnostic: VI1PR08MB3662:
x-microsoft-antispam-prvs: <VI1PR08MB36629485364A4E7EF09ADB96B3060@VI1PR08MB3662.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39830400003)(346002)(366004)(376002)(396003)(136003)(199004)(189003)(1730700003)(2501003)(14454004)(73956011)(486006)(8936002)(44832011)(71190400001)(71200400001)(50226002)(81156014)(81166006)(4326008)(66446008)(64756008)(66556008)(66946007)(66476007)(8676002)(53936002)(446003)(316002)(11346002)(476003)(2616005)(305945005)(6436002)(66066001)(508600001)(6486002)(7736002)(5640700003)(68736007)(25786009)(186003)(6512007)(86362001)(256004)(6116002)(3846002)(1076003)(5660300002)(26005)(36756003)(76176011)(99286004)(6916009)(6506007)(386003)(52116002)(102836004)(2351001)(54906003)(74482002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3662;
 H:VI1PR08MB3168.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /+0zlcN5xF7ODRNZDHuqZpuafZKq0k8M3M5sai8Fx8Lutm1HYcKknanaAe3WRcrDusNrBeK2piIP1tEZHeoBOlapgyaYslONmzCVhyR6WFAzxN7oAIWvbrqohs2krf2IFg7zlx6LUuJZVtVYGohrQePuZ4Rj/Uq6ADrF2NfXFBFXKXJyUhkli3RF5aMXI8Z06t9/vUOmdNwkVQIC/ls5SuomDWo5c6bZ9nWeW2VXpOJwEAKdalA59nHf3ckvujg33F4xtK1qcQXsZ5G/Potrulfe92g79jMBWjf6DlkV1xZCU3eM0qhwKExyp3mrzOFdTTMvtbEeIQiDuhhFCCAJJO05Mnn4iYNZJTjqq5MLROs86k09BvwmemaRI0NEiIokgUBGdqV9TDDWiL8B8gLF4Taogm3oXmQPu4JJ8jp2/ro=
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: c978152b-d0fb-4f18-8d57-08d6dd41ab71
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 16:39:04.0870 (UTC)
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

Check on called function's returned value for error and return 0 on
success or a negative errno value on error instead of a boolean value.

Signed-off-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
---
 drivers/staging/vt6656/main_usb.c | 42 ++++++++++++++++++++-----------
 1 file changed, 28 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index bfe952fe27bf..5fd845cbdd52 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -405,16 +405,19 @@ static void vnt_free_int_bufs(struct vnt_private *priv)
 	kfree(priv->int_buf.data_buf);
 }
 
-static bool vnt_alloc_bufs(struct vnt_private *priv)
+static int vnt_alloc_bufs(struct vnt_private *priv)
 {
+	int ret = 0;
 	struct vnt_usb_send_context *tx_context;
 	struct vnt_rcb *rcb;
 	int ii;
 
 	for (ii = 0; ii < priv->num_tx_context; ii++) {
 		tx_context = kmalloc(sizeof(*tx_context), GFP_KERNEL);
-		if (!tx_context)
+		if (!tx_context) {
+			ret = -ENOMEM;
 			goto free_tx;
+		}
 
 		priv->tx_context[ii] = tx_context;
 		tx_context->priv = priv;
@@ -422,16 +425,20 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
 
 		/* allocate URBs */
 		tx_context->urb = usb_alloc_urb(0, GFP_KERNEL);
-		if (!tx_context->urb)
+		if (!tx_context->urb) {
+			ret = -ENOMEM;
 			goto free_tx;
+		}
 
 		tx_context->in_use = false;
 	}
 
 	for (ii = 0; ii < priv->num_rcb; ii++) {
 		priv->rcb[ii] = kzalloc(sizeof(*priv->rcb[ii]), GFP_KERNEL);
-		if (!priv->rcb[ii])
+		if (!priv->rcb[ii]) {
+			ret = -ENOMEM;
 			goto free_rx_tx;
+		}
 
 		rcb = priv->rcb[ii];
 
@@ -439,39 +446,46 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
 
 		/* allocate URBs */
 		rcb->urb = usb_alloc_urb(0, GFP_KERNEL);
-		if (!rcb->urb)
+		if (!rcb->urb) {
+			ret = -ENOMEM;
 			goto free_rx_tx;
+		}
 
 		rcb->skb = dev_alloc_skb(priv->rx_buf_sz);
-		if (!rcb->skb)
+		if (!rcb->skb) {
+			ret = -ENOMEM;
 			goto free_rx_tx;
+		}
 
 		rcb->in_use = false;
 
 		/* submit rx urb */
-		if (vnt_submit_rx_urb(priv, rcb))
+		ret = vnt_submit_rx_urb(priv, rcb);
+		if (ret)
 			goto free_rx_tx;
 	}
 
 	priv->interrupt_urb = usb_alloc_urb(0, GFP_KERNEL);
-	if (!priv->interrupt_urb)
+	if (!priv->interrupt_urb) {
+		ret = -ENOMEM;
 		goto free_rx_tx;
+	}
 
 	priv->int_buf.data_buf = kmalloc(MAX_INTERRUPT_SIZE, GFP_KERNEL);
 	if (!priv->int_buf.data_buf) {
-		usb_free_urb(priv->interrupt_urb);
-		goto free_rx_tx;
+		ret = -ENOMEM;
+		goto free_rx_tx_urb;
 	}
 
-	return true;
+	return 0;
 
+free_rx_tx_urb:
+	usb_free_urb(priv->interrupt_urb);
 free_rx_tx:
 	vnt_free_rx_bufs(priv);
-
 free_tx:
 	vnt_free_tx_bufs(priv);
-
-	return false;
+	return ret;
 }
 
 static void vnt_tx_80211(struct ieee80211_hw *hw,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
