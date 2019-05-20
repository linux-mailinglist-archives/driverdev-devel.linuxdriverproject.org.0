Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD2F23DA3
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 18:39:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9AF2784D16;
	Mon, 20 May 2019 16:39:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VQO5Fg31lKTD; Mon, 20 May 2019 16:39:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 50B1581726;
	Mon, 20 May 2019 16:39:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 914EC1BF3A4
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 16:39:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8AF1C87824
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 16:39:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LwU+Jm0oXlFx for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 16:39:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr30053.outbound.protection.outlook.com [40.107.3.53])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B73C787850
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 16:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector1-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s3GH7ZsDuH1SdzYTbOBWAxaLhgiD0VLmogZPDLQ9TSA=;
 b=llYh8KTOk0vS/sV7cdXZzWpZdchsErTkQU58J5Ya4OECmUvuflOHlz5YgTH2xbkyr0Uf3zErVG+CsU6J/F6BRrA0MfE/L79vB6j/oWs472AOdRveCfFRzNbWI6A8rCjLlcKWHtGN6IXl9LheXJbC1H4y6gIIcW7d4lzfWDaKsUo=
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
Subject: [PATCH 7/7] staging: vt6656: manage error path during device
 initialization
Thread-Topic: [PATCH 7/7] staging: vt6656: manage error path during device
 initialization
Thread-Index: AQHVDyqJGDUMHl7IJU60tXBT/8KwAA==
Date: Mon, 20 May 2019 16:39:05 +0000
Message-ID: <20190520163844.1225-8-quentin.deslandes@itdev.co.uk>
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
x-ms-office365-filtering-correlation-id: 1fc780eb-0ee7-41e3-5f08-08d6dd41ac4e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR08MB3662; 
x-ms-traffictypediagnostic: VI1PR08MB3662:
x-microsoft-antispam-prvs: <VI1PR08MB366286EF5D82624CC0042AA8B3060@VI1PR08MB3662.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:190;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(39840400004)(376002)(396003)(136003)(199004)(189003)(1730700003)(2501003)(14454004)(73956011)(486006)(8936002)(44832011)(71190400001)(71200400001)(50226002)(81156014)(81166006)(4326008)(66446008)(64756008)(66556008)(66946007)(66476007)(8676002)(53936002)(446003)(316002)(11346002)(476003)(2616005)(305945005)(6436002)(66066001)(508600001)(6486002)(7736002)(5640700003)(68736007)(25786009)(186003)(6512007)(86362001)(256004)(6116002)(3846002)(1076003)(5660300002)(26005)(36756003)(76176011)(99286004)(6916009)(6506007)(386003)(52116002)(102836004)(2351001)(54906003)(74482002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3662;
 H:VI1PR08MB3168.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: IHBuYuQ5bPDOD8hVYnoDOZ1Lm7l/sWa/EGckt7UCWTuVCH9qXaeh5jKBPZ6zRCfiZ5KcX3JTM+992iF9AYC8V3SxjrPRTwXuxaSPzoEGBa32jtpBkil5dVUmeaIe8gzQAFwVvQLzd6RZNFP8gHd1C6OC5Cc3ZstwjjoJpSMc2rrJWRlI6xY1LbPtmz1soeEtt6UIeAM+hjtJKzuukxHmV3tbaSCJ62FW9Nth5sejghVG2avZKgt98R13pLf18tCDMEZata7K3mGDY4fXcO+EMRrlJPL2w9UhvTMyEibFcHE+nowbt3hE5nZzyeJfsn1/KKCATZeKtoNwsptdkacLHRnHEQWcwwc3LfMsN1J4nB0lK0FX7/hEt0/V+ZsXGmmKvfkO/+IOdzK7Sm0+rex+Ow3IwRSP3xEP/aVqfY0c1Yg=
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fc780eb-0ee7-41e3-5f08-08d6dd41ac4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 16:39:05.5572 (UTC)
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

Check for error during device initialization callback and return a
meaningful error code or zero on success.

Signed-off-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
---
 drivers/staging/vt6656/main_usb.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 8ed96e8eedbe..856ba97aec4f 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -529,28 +529,34 @@ static void vnt_tx_80211(struct ieee80211_hw *hw,
 
 static int vnt_start(struct ieee80211_hw *hw)
 {
+	int ret = 0;
 	struct vnt_private *priv = hw->priv;
 
 	priv->rx_buf_sz = MAX_TOTAL_SIZE_WITH_ALL_HEADERS;
 
-	if (!vnt_alloc_bufs(priv)) {
+	ret = vnt_alloc_bufs(priv);
+	if (ret) {
 		dev_dbg(&priv->usb->dev, "vnt_alloc_bufs fail...\n");
-		return -ENOMEM;
+		goto err;
 	}
 
 	clear_bit(DEVICE_FLAGS_DISCONNECTED, &priv->flags);
 
-	if (vnt_init_registers(priv) == false) {
+	ret = vnt_init_registers(priv);
+	if (ret) {
 		dev_dbg(&priv->usb->dev, " init register fail\n");
 		goto free_all;
 	}
 
-	if (vnt_key_init_table(priv))
+	ret = vnt_key_init_table(priv);
+	if (ret)
 		goto free_all;
 
 	priv->int_interval = 1;  /* bInterval is set to 1 */
 
-	vnt_int_start_interrupt(priv);
+	ret = vnt_int_start_interrupt(priv);
+	if (ret)
+		goto free_all;
 
 	ieee80211_wake_queues(hw);
 
@@ -563,8 +569,8 @@ static int vnt_start(struct ieee80211_hw *hw)
 
 	usb_kill_urb(priv->interrupt_urb);
 	usb_free_urb(priv->interrupt_urb);
-
-	return -ENOMEM;
+err:
+	return ret;
 }
 
 static void vnt_stop(struct ieee80211_hw *hw)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
