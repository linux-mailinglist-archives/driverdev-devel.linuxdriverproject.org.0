Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 688CD3AEBB
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Jun 2019 07:50:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E020A203C5;
	Mon, 10 Jun 2019 05:50:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WLTfFqC6Cn7N; Mon, 10 Jun 2019 05:50:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 09FE4203CD;
	Mon, 10 Jun 2019 05:50:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 894991BF83B
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 05:50:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 868EC855D1
 for <devel@linuxdriverproject.org>; Mon, 10 Jun 2019 05:50:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FGU-_yn-0FdI for <devel@linuxdriverproject.org>;
 Mon, 10 Jun 2019 05:50:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-oln040092072097.outbound.protection.outlook.com [40.92.72.97])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D1562848A0
 for <devel@driverdev.osuosl.org>; Mon, 10 Jun 2019 05:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JlejmUwO2SSsFUS1xQ6pk6e2RCvMLIBdi1cYOFHVERg=;
 b=RuJq0wbdi1Vv4zLrhjBHCyeuPCTplnRe90G5OZIEQ5wcQsCWEslH/e5+r+RhpSzDu4Zh0F9ENCXZFX+rE/i+nFpZHKER8BWb+DsjytUVbdon7+hz7BrtfUZqsZcPCobSKuyvGUvqAhY8pB6zDL5D2eOK9K1fylEcj/S/03dTfAe08Hk9PPhG9Do672qeKxZOtK/YSFIld7sH7I+Hakj/F12s6DN2Rvaw5blt8wG2JMBcaH41FTwxv3BhtDbl8hMMJS9EEYixThGmk8Ngqtbd2HcHTQQGsENNjhtKLixDsGaxjArexdaTMi8G1mZS77TE4pkXmwfrtnHMmGAh6CO1vQ==
Received: from VE1EUR03FT054.eop-EUR03.prod.protection.outlook.com
 (10.152.18.53) by VE1EUR03HT054.eop-EUR03.prod.protection.outlook.com
 (10.152.19.205) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1965.12; Mon, 10 Jun
 2019 05:50:01 +0000
Received: from VE1PR09MB3168.eurprd09.prod.outlook.com (10.152.18.58) by
 VE1EUR03FT054.mail.protection.outlook.com (10.152.19.64) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1965.12 via Frontend Transport; Mon, 10 Jun 2019 05:50:01 +0000
Received: from VE1PR09MB3168.eurprd09.prod.outlook.com
 ([fe80::f0bb:30d6:5a71:a0b5]) by VE1PR09MB3168.eurprd09.prod.outlook.com
 ([fe80::f0bb:30d6:5a71:a0b5%5]) with mapi id 15.20.1965.017; Mon, 10 Jun 2019
 05:50:01 +0000
From: Rishiraj Manwatkar <manwatkar@outlook.com>
To: "Matt.Sickler@daktronics.com" <Matt.Sickler@daktronics.com>
Subject: [PATCH] staging: kpc2000: To make symbols static
Thread-Topic: [PATCH] staging: kpc2000: To make symbols static
Thread-Index: AQHVH1BYFwIuYBqHlUWEZvKAkLFDdA==
Date: Mon, 10 Jun 2019 05:50:01 +0000
Message-ID: <VE1PR09MB3168ADAF43CC85CC05D06384A4130@VE1PR09MB3168.eurprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BL0PR0102CA0032.prod.exchangelabs.com
 (2603:10b6:207:18::45) To VE1PR09MB3168.eurprd09.prod.outlook.com
 (2603:10a6:802:a7::18)
x-incomingtopheadermarker: OriginalChecksum:8C2E6246924EE30B143952FCFB6D490088311ECF2F979C1BAFC731B372E5CFD9;
 UpperCasedChecksum:71E21D7A95FD0B50B54ACBD46EC417D826FDBD7F31923C0DA33F1FA06E3BA7D6;
 SizeAsReceived:7512; Count:48
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-tmn: [A7ZqFDacBhEy9FM506FRSR+SkSSCSAVv]
x-microsoft-original-message-id: <4e94f7249349f7973895fb0c9cfe9c413958bc22.1560145323.git.manwatkar@outlook.com>
x-ms-publictraffictype: Email
x-incomingheadercount: 48
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
 SRVR:VE1EUR03HT054; 
x-ms-traffictypediagnostic: VE1EUR03HT054:
x-microsoft-antispam-message-info: XylKqhuFRntsPlhPUIi5ZFaW/p6wz4mxbd8urt/S9an+CjAmYjbYEgjzCYa5yvpV2sfOvrJ/lffhL/+j1VRVAAeFPJKlSPWpUrDQTTaZy6yQ1t/kjpPM4xgHocjMyH2L8wy9WeG3rGkQ7Mn46FGwFSAzhbdKkSZdhbA/SYNJyEvlM0CY6ioK60FLPRKkaKmx
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: c3f9f3db-8f0d-45ec-03eb-08d6ed67796e
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2019 05:50:01.3380 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT054
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
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "bnvandana@gmail.com" <bnvandana@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch makes 4 symbols static as suggested by Sparse tool.

Signed-off-by: Rishiraj Manwatkar <manwatkar@outlook.com>
---
 drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
index cda057569163..e4056607af0b 100644
--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c
@@ -36,14 +36,14 @@ struct kpc_dma_device *kpc_dma_lookup_device(int minor)
 	return c;
 }
 
-void  kpc_dma_add_device(struct kpc_dma_device *ldev)
+static void  kpc_dma_add_device(struct kpc_dma_device *ldev)
 {
 	mutex_lock(&kpc_dma_mtx);
 	list_add(&ldev->list, &kpc_dma_list);
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
