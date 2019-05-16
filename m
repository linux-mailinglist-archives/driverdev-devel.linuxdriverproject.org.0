Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D5015205A5
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 13:57:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D26D87261;
	Thu, 16 May 2019 11:57:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z6g7BBtnhgPW; Thu, 16 May 2019 11:57:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1C64D87288;
	Thu, 16 May 2019 11:57:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 241091BF343
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 11:57:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 20C028811F
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 11:57:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GANQ83EGNA6x for <devel@linuxdriverproject.org>;
 Thu, 16 May 2019 11:57:19 +0000 (UTC)
X-Greylist: delayed 00:18:49 by SQLgrey-1.7.6
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-eopbgr140084.outbound.protection.outlook.com [40.107.14.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E8ECB8811D
 for <devel@driverdev.osuosl.org>; Thu, 16 May 2019 11:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector1-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=toXCzcG4+vmkdQm5YcEF9FeNTKa0IwyfzIpOLTNT+/4=;
 b=ZXzzJSMrMoGGT/eiFR60wTfMcZjjswbMpOkccrxaB26ak6XUNFXG5MJHZlmdDoG728hjrY4Ytmv1esUFfuleoO+pgjt1BJ9NLyng7ADZMfuLEGJtJx+Lifhh7Dvf8tFRvHdmqZUDT8pqfoUUDPJiW1gmqjjT5VceZq5pv0eom1o=
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com (52.133.15.143) by
 VI1PR08MB3968.eurprd08.prod.outlook.com (20.178.125.209) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Thu, 16 May 2019 11:57:15 +0000
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::8e9:9487:4f0a:fdaf]) by VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::8e9:9487:4f0a:fdaf%3]) with mapi id 15.20.1878.024; Thu, 16 May 2019
 11:57:15 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>
Subject: [PATCH v2] staging: vt6656: returns error code on
 vnt_int_start_interrupt fail
Thread-Topic: [PATCH v2] staging: vt6656: returns error code on
 vnt_int_start_interrupt fail
Thread-Index: AQHVC96A+EJOd0fenE60pjbLPtRDhg==
Date: Thu, 16 May 2019 11:57:15 +0000
Message-ID: <20190516115653.15120-1-quentin.deslandes@itdev.co.uk>
References: <20190516093046.1400-1-quentin.deslandes@itdev.co.uk>
In-Reply-To: <20190516093046.1400-1-quentin.deslandes@itdev.co.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6PR10CA0005.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:209:89::18) To VI1PR08MB3168.eurprd08.prod.outlook.com
 (2603:10a6:803:47::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [89.21.227.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6eac3f93-2ac4-4ba1-06b9-08d6d9f5a329
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR08MB3968; 
x-ms-traffictypediagnostic: VI1PR08MB3968:
x-microsoft-antispam-prvs: <VI1PR08MB3968AA011A63B1D72DA4B5F4B30A0@VI1PR08MB3968.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:166;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39830400003)(376002)(136003)(366004)(346002)(396003)(199004)(189003)(256004)(6512007)(99286004)(446003)(81156014)(52116002)(2906002)(508600001)(1076003)(25786009)(5660300002)(102836004)(6436002)(76176011)(50226002)(5640700003)(6486002)(305945005)(7736002)(8676002)(14444005)(4326008)(8936002)(14454004)(386003)(6506007)(81166006)(11346002)(476003)(2616005)(66066001)(44832011)(36756003)(486006)(186003)(66556008)(64756008)(316002)(2501003)(6916009)(68736007)(2351001)(54906003)(86362001)(6116002)(3846002)(53936002)(66476007)(26005)(71190400001)(66946007)(73956011)(71200400001)(66446008)(74482002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3968;
 H:VI1PR08MB3168.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ujb5iJqqmI+/BreFdf8eUfzho4IEEZDujFkGwfnd8U+PYwgY4pT4m8/kFN2mup8Hz6yyZq2w9CF1pduGxEuLGGekeLVR6OWOr+DwkMCgRrQPFmve1aU2soVVF7ZlPNL+n5TVxwPuRCcPLwRXf/c3VPocG5zPOPRMtRs1ltEo/oZbNEv1xVlABtPLBbCf/INaINx5tW80v5fB7Kyqqz8AU+MfXr39prnNbymkPMbdIgps5Iy2b3rCGB0f6Ewc7/pJQ02p079e9H/0P3l+S/+wOvWJE6/nBcH+7xofovqO5LiNQLNwoYP5abtXqEA+5S2r+cz18X+XPIBTtrm+kvDf5pUyrNG//NOM7uQCBoub7VUPMhKHJUrSENynT5ySg58VSE9PzuUkg/obGdzBC7UeDXcsaeNG2wcaIEmmwOgMZkU=
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 6eac3f93-2ac4-4ba1-06b9-08d6d9f5a329
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 11:57:15.0776 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3968
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
