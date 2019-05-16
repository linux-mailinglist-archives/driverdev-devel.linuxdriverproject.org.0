Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A501205A4
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 13:57:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 93BE6871C1;
	Thu, 16 May 2019 11:56:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5TWAbOG1tQuo; Thu, 16 May 2019 11:56:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C6B178722E;
	Thu, 16 May 2019 11:56:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 16F121BF343
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 11:56:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 13D1E30FD7
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 11:56:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9tCN6478f5qG for <devel@linuxdriverproject.org>;
 Thu, 16 May 2019 11:56:52 +0000 (UTC)
X-Greylist: delayed 01:14:30 by SQLgrey-1.7.6
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr30067.outbound.protection.outlook.com [40.107.3.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 803202275F
 for <devel@driverdev.osuosl.org>; Thu, 16 May 2019 11:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector1-itdev-co-uk;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d3csnKADdSUAt8TSJkqhYZZl184/FTfPNTd73qCyDRI=;
 b=bkMTDLtYhMxqsHpiHNRY03ltmW5u6LL18YYzmdnaZRu47Ki2IhkruanLmuwfa9d29WNkFgVCt8AHtJ1PEIKMIKEVrND4BeOAU9mtkklQvakP/AoSTT4pBtLxg0jVQ1jKL1Ao2iApZkLqPBxlGGnVWgC7YHlYScbv+xHwN9ZyzoI=
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com (52.133.15.143) by
 VI1PR08MB0413.eurprd08.prod.outlook.com (10.162.12.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.11; Thu, 16 May 2019 11:22:56 +0000
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::8e9:9487:4f0a:fdaf]) by VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::8e9:9487:4f0a:fdaf%3]) with mapi id 15.20.1878.024; Thu, 16 May 2019
 11:22:56 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>
Subject: [PATCH] staging: vt6656: returns error code on
 vnt_int_start_interrupt fail
Thread-Topic: [PATCH] staging: vt6656: returns error code on
 vnt_int_start_interrupt fail
Thread-Index: AQHVC9m12V1LZttiK0yGWFHzOe/4XQ==
Date: Thu, 16 May 2019 11:22:56 +0000
Message-ID: <20190516112243.14353-1-quentin.deslandes@itdev.co.uk>
References: <20190516093046.1400-1-quentin.deslandes@itdev.co.uk>
In-Reply-To: <20190516093046.1400-1-quentin.deslandes@itdev.co.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6P193CA0125.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:209:85::30) To VI1PR08MB3168.eurprd08.prod.outlook.com
 (2603:10a6:803:47::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [89.21.227.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 66243a98-9af8-4616-a81d-08d6d9f0d80e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR08MB0413; 
x-ms-traffictypediagnostic: VI1PR08MB0413:
x-microsoft-antispam-prvs: <VI1PR08MB0413B5FAF549F57948D1FD9CB30A0@VI1PR08MB0413.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:901;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39830400003)(366004)(346002)(136003)(396003)(376002)(189003)(199004)(316002)(7736002)(25786009)(36756003)(68736007)(76176011)(6486002)(6436002)(54906003)(52116002)(71190400001)(71200400001)(305945005)(99286004)(53936002)(2351001)(14454004)(256004)(14444005)(2501003)(8676002)(5640700003)(4326008)(74482002)(6512007)(44832011)(8936002)(73956011)(66476007)(66556008)(64756008)(66946007)(66446008)(102836004)(6916009)(26005)(186003)(386003)(6506007)(50226002)(1076003)(66066001)(3846002)(6116002)(2616005)(476003)(486006)(508600001)(86362001)(446003)(2906002)(5660300002)(81166006)(11346002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB0413;
 H:VI1PR08MB3168.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: YeDv3Tab2e8vKhAvU1KZALvj777N+HfMYiqCv105+Tgum6ekfoBAztP07V+pzt8grZExBx5FJsNi/Iknn0YmiyU3YtjUgi1hecCH0GVmbacC1jK6KMfP7w0baCJ2bWK92awpUqdoPJz29QBHgNYYxlFVaHBRzBLqPcYWrKTCDwrIkyWWUHI9ParvstjeHeNYKiePzOOEImYVOC6anGWZAH4wd/V26gvGxCayyXEqbMzsyQW8rZq7SFs/fS28/m/ii1UolLZsenEluJLGAq5wdhpsPH1wqBiDMesHVeGk9SVDp2hSmJ3uEAMP977xIrAIZdWp4oZmOHYPW1cm68extgZzoeAuq+Uof0B/T3eyQ64OVGokn0XlC/u9zM8Z1aMquNQ6awOoGOn47b/wkld2DIvgh6w75TScqyNJVT8zjn4=
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 66243a98-9af8-4616-a81d-08d6d9f0d80e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 11:22:56.5145 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB0413
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
v2: instead of removing status variable, returns its value to caller and
    handle error in caller.

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
