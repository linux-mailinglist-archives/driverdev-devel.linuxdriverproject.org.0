Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59CE3214D8
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 09:54:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 810E587612;
	Fri, 17 May 2019 07:53:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q-T4pp5keNFb; Fri, 17 May 2019 07:53:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DFC1A873D2;
	Fri, 17 May 2019 07:53:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5F1FA1BF2E4
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 07:53:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5621487048
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 07:53:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PptKAPsAgryf for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 07:53:53 +0000 (UTC)
X-Greylist: delayed 21:29:55 by SQLgrey-1.7.6
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-eopbgr50074.outbound.protection.outlook.com [40.107.5.74])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 61B978700E
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector1-itdev-co-uk;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5zyF0SW8VHKrIIVAvogZAaYQSGveFvAadZIJkq0LA5Q=;
 b=z2OaoHfGVtv6mjBIzbuh9U+6rh+dd5dY+zqSPAjtaGoWIKuV4jPttKAE8MoZXvLWpFzck3ndFG+Q3m1PxkPx/aNZCyemtfnqT+cluu7NHhwSo/4JKZ8TRKrLa8R2ZSBAkUDI5eoPtZWSnGOV6e4bWFvpUP3nBWSRsjcZ7ef4+cw=
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com (52.133.15.143) by
 VI1PR08MB4271.eurprd08.prod.outlook.com (20.179.25.77) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Fri, 17 May 2019 07:53:50 +0000
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::8e9:9487:4f0a:fdaf]) by VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::8e9:9487:4f0a:fdaf%3]) with mapi id 15.20.1878.028; Fri, 17 May 2019
 07:53:50 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>
Subject: [PATCH v3] staging: vt6656: returns error code on
 vnt_int_start_interrupt fail
Thread-Topic: [PATCH v3] staging: vt6656: returns error code on
 vnt_int_start_interrupt fail
Thread-Index: AQHVDIWpJheiltxkuEGGqxIJz+Vw2Q==
Date: Fri, 17 May 2019 07:53:49 +0000
Message-ID: <20190517075331.3658-1-quentin.deslandes@itdev.co.uk>
References: <20190516093046.1400-1-quentin.deslandes@itdev.co.uk>
In-Reply-To: <20190516093046.1400-1-quentin.deslandes@itdev.co.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: DB6P190CA0013.EURP190.PROD.OUTLOOK.COM (2603:10a6:6:2f::26)
 To VI1PR08MB3168.eurprd08.prod.outlook.com
 (2603:10a6:803:47::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [89.21.227.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a2197891-17ae-4d38-a7fd-08d6da9ccc5b
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR08MB4271; 
x-ms-traffictypediagnostic: VI1PR08MB4271:
x-microsoft-antispam-prvs: <VI1PR08MB4271519E352CF301691DF913B30B0@VI1PR08MB4271.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-forefront-prvs: 0040126723
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(136003)(376002)(39830400003)(346002)(199004)(189003)(68736007)(316002)(386003)(305945005)(36756003)(7736002)(6506007)(6916009)(2501003)(102836004)(1076003)(26005)(86362001)(66066001)(14444005)(256004)(6486002)(5640700003)(8676002)(76176011)(11346002)(2616005)(81166006)(81156014)(14454004)(2906002)(446003)(66946007)(66556008)(66476007)(6436002)(25786009)(73956011)(66446008)(64756008)(8936002)(50226002)(74482002)(186003)(508600001)(44832011)(476003)(99286004)(54906003)(71200400001)(71190400001)(5660300002)(6116002)(3846002)(6512007)(486006)(2351001)(53936002)(52116002)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB4271;
 H:VI1PR08MB3168.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gi0t2LkvcOccvwfMDhE5np2KncNl8us3E4HtQg9zWbVCLP6SiVSKQH2Y/jkhhEIbE+8Xmtvep2DGsvI/kJcGP+HZfaY+eslBP0tn/eL/2jltM3uX3B5t9CSriEgjCbHsgzUiEukg0/kou1ZnM8257ES632XMjtLt/7LDvWYa29e/FIcLevzAXiri98uh8XEThtp/1r7P7WGkc+0ACKhvz61vV6sOC2aVmLWPSzAvJhBlkJeVNpFnaymlyKPDyM7U7dYqo+mC/EU1uam+RPVEIKC+6iYgMkFOpQySO4o2e/z2B9V3wAf6vGIbqaFpIsvq28EyYVfqO28LjZBc/cfdTxsnDy2LbVgbRlBKJ5E8pt9bvgv8ryS0fiynlOjCAut1FbwE63zTIXFMzZmd+9PGmY7f4SGUAqOrFAMGtJfyzBs=
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: a2197891-17ae-4d38-a7fd-08d6da9ccc5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2019 07:53:50.0818 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB4271
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mukesh Ojha <mojha@codeaurora.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Forest Bond <forest@alittletooquiet.net>,
 Ojaswin Mujoo <ojaswin25111998@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Returns error code from 'vnt_int_start_interrupt()' so the device's private
buffers will be correctly freed and 'struct ieee80211_hw' start function
will return an error code.

Signed-off-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
---
v2: returns 'status' value to caller instead of removing it.
v3: add patch version details. Thanks to Greg K-H for his help.

 drivers/staging/vt6656/int.c      |  4 +++-
 drivers/staging/vt6656/int.h      |  2 +-
 drivers/staging/vt6656/main_usb.c | 12 +++++++++---
 3 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vt6656/int.c b/drivers/staging/vt6656/int.c
index 504424b19fcf..f3ee2198e1b3 100644
--- a/drivers/staging/vt6656/int.c
+++ b/drivers/staging/vt6656/int.c
@@ -39,7 +39,7 @@ static const u8 fallback_rate1[5][5] = {
 	{RATE_54M, RATE_54M, RATE_36M, RATE_18M, RATE_18M}
 };
 
-void vnt_int_start_interrupt(struct vnt_private *priv)
+int vnt_int_start_interrupt(struct vnt_private *priv)
 {
 	unsigned long flags;
 	int status;
@@ -51,6 +51,8 @@ void vnt_int_start_interrupt(struct vnt_private *priv)
 	status = vnt_start_interrupt_urb(priv);
 
 	spin_unlock_irqrestore(&priv->lock, flags);
+
+	return status;
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
diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index ccafcc2c87ac..71e10b9ae253 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -483,6 +483,7 @@ static void vnt_tx_80211(struct ieee80211_hw *hw,
 
 static int vnt_start(struct ieee80211_hw *hw)
 {
+	int err = 0;
 	struct vnt_private *priv = hw->priv;
 
 	priv->rx_buf_sz = MAX_TOTAL_SIZE_WITH_ALL_HEADERS;
@@ -496,15 +497,20 @@ static int vnt_start(struct ieee80211_hw *hw)
 
 	if (vnt_init_registers(priv) == false) {
 		dev_dbg(&priv->usb->dev, " init register fail\n");
+		err = -ENOMEM;
 		goto free_all;
 	}
 
-	if (vnt_key_init_table(priv))
+	if (vnt_key_init_table(priv)) {
+		err = -ENOMEM;
 		goto free_all;
+	}
 
 	priv->int_interval = 1;  /* bInterval is set to 1 */
 
-	vnt_int_start_interrupt(priv);
+	err = vnt_int_start_interrupt(priv);
+	if (err)
+		goto free_all;
 
 	ieee80211_wake_queues(hw);
 
@@ -518,7 +524,7 @@ static int vnt_start(struct ieee80211_hw *hw)
 	usb_kill_urb(priv->interrupt_urb);
 	usb_free_urb(priv->interrupt_urb);
 
-	return -ENOMEM;
+	return err;
 }
 
 static void vnt_stop(struct ieee80211_hw *hw)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
