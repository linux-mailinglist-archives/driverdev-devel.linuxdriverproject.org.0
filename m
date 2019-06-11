Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FE13C198
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2019 05:35:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DC657869E6;
	Tue, 11 Jun 2019 03:35:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gOg3pZ+JW5Bj; Tue, 11 Jun 2019 03:35:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 462ED86B11;
	Tue, 11 Jun 2019 03:35:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9EBB91BF350
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 03:35:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9BACC869BF
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 03:35:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GbH30-Hb83AJ for <devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 03:35:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-oln040092072012.outbound.protection.outlook.com [40.92.72.12])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1D16986988
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 03:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7+mJIDlRvGtHcpCrxKM4DKlGQq7unQJFA2lWqeAV9QI=;
 b=CtFl9bLsb9E25kLSsfH/yiFTX1EEDGwiic/hMiiwkQOqfQxH+5hYJVpNZvbtsnz9OTeVhAz92god5vewd9usSqrdWXCIYX1s4Wz8lWPY4y+2V5Jp/m/ReVi/ZniL5/nJ6ZQ1W3zBIaEGw2W/974VZWfbZcg5hhMMXZsd2/92udfsLRQmowhnhCWTNO3HzpX9C5JX24fs8d1XZMx0PCSf2vHz7Iu2HXGXSAfsaLvd4mnJaZqeY4CMoDBU6/JKQRvHkf1hrLdEdscttY7RsJk3Cnm9JtzdeB0ZajxGweOJEJG8fxmgDnQmVLP8UdgWiFLbhMXvelNbdW+K+fSPOFUOBw==
Received: from VE1EUR03FT018.eop-EUR03.prod.protection.outlook.com
 (10.152.18.59) by VE1EUR03HT100.eop-EUR03.prod.protection.outlook.com
 (10.152.19.128) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1965.12; Tue, 11 Jun
 2019 03:35:41 +0000
Received: from VE1PR09MB3168.eurprd09.prod.outlook.com (10.152.18.54) by
 VE1EUR03FT018.mail.protection.outlook.com (10.152.18.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1965.12 via Frontend Transport; Tue, 11 Jun 2019 03:35:41 +0000
Received: from VE1PR09MB3168.eurprd09.prod.outlook.com
 ([fe80::f0bb:30d6:5a71:a0b5]) by VE1PR09MB3168.eurprd09.prod.outlook.com
 ([fe80::f0bb:30d6:5a71:a0b5%5]) with mapi id 15.20.1965.017; Tue, 11 Jun 2019
 03:35:41 +0000
From: Rishiraj Manwatkar <manwatkar@outlook.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: kpc2000: Fix: 'kpc_dma_del_device' and other symbols
 were not declared
Thread-Topic: [PATCH] staging: kpc2000: Fix: 'kpc_dma_del_device' and other
 symbols were not declared
Thread-Index: AQHVIAa+mJHy7aHM8U6rpSRuqffU/A==
Date: Tue, 11 Jun 2019 03:35:41 +0000
Message-ID: <VE1PR09MB316879FBE9A8B0DE90263709A4ED0@VE1PR09MB3168.eurprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BL0PR02CA0130.namprd02.prod.outlook.com
 (2603:10b6:208:35::35) To VE1PR09MB3168.eurprd09.prod.outlook.com
 (2603:10a6:802:a7::18)
x-incomingtopheadermarker: OriginalChecksum:C6657298DED78BBF88EA8E0B63A9F3D783D25510F860DD9AC0406D3DA0E4FFED;
 UpperCasedChecksum:6E72CAFF6F4F6D7CA595967CAF27C182AC610590DF19FD900E65F52DB11EC85D;
 SizeAsReceived:7532; Count:48
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [wJlMN1Kd3eRbVwyxNh6qdmNVpT+4bLTl]
x-microsoft-original-message-id: <32ec2eacdf458b7ee5864a9ac8b3c3a9ff5966b9.1560223804.git.manwatkar@outlook.com>
x-ms-publictraffictype: Email
x-incomingheadercount: 48
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:VE1EUR03HT100; 
x-ms-traffictypediagnostic: VE1EUR03HT100:
x-microsoft-antispam-message-info: I0i11/Wu4GzLKRaBxL7BlSypPmmuDQPQvneak5msGcdY44q+i5L4E8DNERh+N+c9IYjEURt0H0aS/QxuDJG3SWIRkiDUg+QOeZiF5nFz764e5+xE6XH4+CMhdmqcmCwzm/Uqn6Bmz5mqFQUtyNlkbzp3q5bQEpXIClfHgs8KQcrVOuKEZ5PQWhmE65e4pwmJ
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 0244cdea-075d-4a1a-f7b2-08d6ee1de07b
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2019 03:35:41.9189 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT100
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch removes the Sparse generated warnings. Following warnings are reported by Sparse:
drivers/staging/kpc2000//kpc_dma/kpc_dma_driver.c:46:6: warning: symbol 'kpc_dma_del_device' was not declared. Should it be static?
drivers/staging/kpc2000//kpc_dma/kpc_dma_driver.c:91:14: warning: symbol 'kpc_dma_class' was not declared. Should it be static?
drivers/staging/kpc2000//kpc_dma/kpc_dma_driver.c:199:24: warning: symbol 'kpc_dma_plat_driver_i' was not declared. Should it be static?

Signed-off-by: Rishiraj Manwatkar <manwatkar@outlook.com>
---
 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index 9acf1eafa024..b45296b4b8b2 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
@@ -43,7 +43,7 @@ static void kpc_dma_add_device(struct kpc_dma_device *ldev)
 	mutex_unlock(&kpc_dma_mtx);
 }
 
-void kpc_dma_del_device(struct kpc_dma_device *ldev)
+static void kpc_dma_del_device(struct kpc_dma_device *ldev)
 {
 	mutex_lock(&kpc_dma_mtx);
 	list_del(&ldev->list);
@@ -88,7 +88,7 @@ static const struct attribute *ndd_attr_list[] = {
 	NULL,
 };
 
-struct class *kpc_dma_class;
+static struct class *kpc_dma_class;
 
 /**********  Platform Driver Functions  **********/
 static
@@ -196,7 +196,7 @@ int  kpc_dma_remove(struct platform_device *pldev)
 }
 
 /**********  Driver Functions  **********/
-struct platform_driver kpc_dma_plat_driver_i = {
+static struct platform_driver kpc_dma_plat_driver_i = {
 	.probe        = kpc_dma_probe,
 	.remove       = kpc_dma_remove,
 	.driver = {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
