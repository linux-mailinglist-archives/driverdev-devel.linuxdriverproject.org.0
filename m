Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6DF20295
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 11:31:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A808F30FD1;
	Thu, 16 May 2019 09:31:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MyZAEv87reyj; Thu, 16 May 2019 09:31:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CBC3C30F1B;
	Thu, 16 May 2019 09:31:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A5A311BF35C
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 09:31:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A1DF423730
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 09:31:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kKexG0bYavz1 for <devel@linuxdriverproject.org>;
 Thu, 16 May 2019 09:31:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
 (mail-eopbgr40040.outbound.protection.outlook.com [40.107.4.40])
 by silver.osuosl.org (Postfix) with ESMTPS id 2BE76231A8
 for <devel@driverdev.osuosl.org>; Thu, 16 May 2019 09:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector1-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JN/0cKwExxFWXT6NQchMF8Gmsom+mwEEgXD/ZVEj/u0=;
 b=P+a0m83wis7oQtEDNU69rXgc9TYo9enhuBY7/GSAt3de46EhBNJC6ZE/QSkZgiVEcYw3VBy9vI9WaAuT0wwUStZCO7dpKbrsK9syQs+taz+RqC5sLrPdvzbEj1PuxCS9jL85QAWlQAE4LmswL3pVfcf/gr4YN1PSptlYeIhI0U0=
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com (52.133.15.143) by
 VI1PR08MB2878.eurprd08.prod.outlook.com (10.170.239.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Thu, 16 May 2019 09:31:05 +0000
Received: from VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::8e9:9487:4f0a:fdaf]) by VI1PR08MB3168.eurprd08.prod.outlook.com
 ([fe80::8e9:9487:4f0a:fdaf%3]) with mapi id 15.20.1878.024; Thu, 16 May 2019
 09:31:05 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>
Subject: [PATCH] staging: vt6656: remove unused variable
Thread-Topic: [PATCH] staging: vt6656: remove unused variable
Thread-Index: AQHVC8oVWbJV7t4C7kCfosLx3wTTvA==
Date: Thu, 16 May 2019 09:31:05 +0000
Message-ID: <20190516093046.1400-1-quentin.deslandes@itdev.co.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: DB6PR1001CA0016.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:4:b7::26) To VI1PR08MB3168.eurprd08.prod.outlook.com
 (2603:10a6:803:47::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [89.21.227.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 928aa406-891d-4716-b106-08d6d9e13809
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:VI1PR08MB2878; 
x-ms-traffictypediagnostic: VI1PR08MB2878:
x-microsoft-antispam-prvs: <VI1PR08MB28788C91A0833A8C9AAFFB6EB30A0@VI1PR08MB2878.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39830400003)(366004)(376002)(396003)(136003)(199004)(189003)(8936002)(508600001)(316002)(44832011)(81166006)(81156014)(86362001)(6116002)(3846002)(8676002)(66066001)(6436002)(68736007)(2906002)(486006)(6486002)(476003)(5640700003)(6512007)(50226002)(2616005)(2351001)(74482002)(4326008)(71200400001)(71190400001)(52116002)(186003)(99286004)(1076003)(4744005)(386003)(6506007)(73956011)(66446008)(102836004)(64756008)(66946007)(66476007)(66556008)(36756003)(5660300002)(54906003)(26005)(2501003)(25786009)(305945005)(7736002)(6916009)(256004)(14444005)(14454004)(53936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB2878;
 H:VI1PR08MB3168.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Uc1wjTTew1fxAxF0ZvWS05YqsqSxLbODNpOVHjZjqEwUWQQxTP3KLBIUwnkZPCk+lploRMebw5clxygvBt7qQ1hEqUmBmH871DfO7ijTGPx+60ORcuB62ycm6t9fLnbELl3ZO7Wj/ZNJ4mcIZ6iO2lK1eDdl/q5qczpn/npZFi1x8/z21/2Qj5dVpQ2AR+ApHK3HoMtlFKP2ckncLgkxi9Mt1o9vWBOQnsFCLT/poamKu3wqZY9SBnhIxyrQ6zUQs6Xttuq6REYsKkAtLyOCY5Q0QyHHF+p8GXc0RQVmw5JAvU9pF1yLb9AG+p8AhE1WV4gbNGGO+UO4YjSpYOYlTePINmU/VLZYWnIErRmxfWvK87iz26O016W2+XOpCYHwvRuuuVk9NzmV/dkPKOlViNes9IrSdSR+KJuebO7NL7o=
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 928aa406-891d-4716-b106-08d6d9e13809
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 09:31:05.5385 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB2878
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
 Forest Bond <forest@alittletooquiet.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed 'set but not used' warning message on a status variable. The
called function returning the status code 'vnt_start_interrupt_urb()'
clean up after itself and the caller function
'vnt_int_start_interrupt()' does not returns any value.

Signed-off-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
---
 drivers/staging/vt6656/int.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/vt6656/int.c b/drivers/staging/vt6656/int.c
index 504424b19fcf..ac30ce72db5a 100644
--- a/drivers/staging/vt6656/int.c
+++ b/drivers/staging/vt6656/int.c
@@ -42,13 +42,12 @@ static const u8 fallback_rate1[5][5] = {
 void vnt_int_start_interrupt(struct vnt_private *priv)
 {
 	unsigned long flags;
-	int status;
 
 	dev_dbg(&priv->usb->dev, "---->Interrupt Polling Thread\n");
 
 	spin_lock_irqsave(&priv->lock, flags);
 
-	status = vnt_start_interrupt_urb(priv);
+	vnt_start_interrupt_urb(priv);
 
 	spin_unlock_irqrestore(&priv->lock, flags);
 }
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
