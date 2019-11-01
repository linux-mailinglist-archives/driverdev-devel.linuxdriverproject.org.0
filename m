Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F912ECA72
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Nov 2019 22:43:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A5F2386BEC;
	Fri,  1 Nov 2019 21:43:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XF1sOs9LAxyJ; Fri,  1 Nov 2019 21:43:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3456E86AD2;
	Fri,  1 Nov 2019 21:43:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 997D71BF3CB
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 21:43:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7C3FB24BF8
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 21:43:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LyQWW0JtwPOk for <devel@linuxdriverproject.org>;
 Fri,  1 Nov 2019 21:43:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr30058.outbound.protection.outlook.com [40.107.3.58])
 by silver.osuosl.org (Postfix) with ESMTPS id 532FC24B59
 for <devel@driverdev.osuosl.org>; Fri,  1 Nov 2019 21:43:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a8gWy9t3tTdY6mMyjGyEF3LvbGVwKq4DWan1lp6165+1uXLnqHG72exhUSmhmAVYZqBsHBoeC0H28+OfCw2AEO08/piYucJehCddxz6yBzIbcUVxfn9N1yKntM9y3EqvcaPSgytjNQo8jhO3OeAmjUfLjJyVtkNDHU2uJXCW0GYZnp48v+tpnZB75ONQ1oSU0E8f4eeqDP8UcP5ndSRwyTLwIpYazHqbsG1iHZVKFHl1R9w+NNFbs+cgLUwlYg5J3bh22QTB2nZUKfTB2Wg5zY+lobOv+ebko/Wk8eRb1EvNnBcvLc3Us8RAky1CEqenZKyi+zDcmP42OGeFdsfu6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6tbDgwYm7i3M2kgWjGD06NtwTINNoD5Qp0G0Z5fm1fI=;
 b=LIA/RI3s3+5Scr2RFFW5b1XjOhv1lhGt+7J2Kiwqe3en0znezR3uc0akr7NDDsWhcbQfszXtJNxCj+3LByQ9BsVoctnQ0BiqhvZoPkbrGdWab1OhEtqHnCPCh8W6q3p5x2p1pEH01wq3obPFNmB80yKRcQa+x6xno6ZP7vWhReYoq0ZhAAnYIRUMIb8mva7xPXwQ5lM17nzsY8kGzQF/rJt/0RAQyKSN3dVpfEhMYw9cViz98v0xfwA7mYKwO/867yr/iZyR9dzGkWMNwrrkGA9hBaxWnZdD8z18QDLtDcegjBEyxQ9iYSpWjy4rqVDc5jhtEN0Wi39C7V6DrBZGtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6tbDgwYm7i3M2kgWjGD06NtwTINNoD5Qp0G0Z5fm1fI=;
 b=VWkOgbShV8v+r5Pzup4XkkUu7dHdlaHUyr3nzxOTwjHYzz3n2vO9oDJmt+pR93hOejFhJGT7E4IWYrJjtAivCm7kQUZBEk6euZwBsuC4wz4yTp/DAEsmdXJ6VIYFDiDsG7lqcO0/PZdpgL8VAZr6Wg6LNnyUUQk6m63I5vvhVt8=
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com (20.179.44.144) by
 DBBPR08MB4679.eurprd08.prod.outlook.com (20.179.47.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Fri, 1 Nov 2019 21:42:59 +0000
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::4c2f:e455:fb07:bdee]) by DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::4c2f:e455:fb07:bdee%6]) with mapi id 15.20.2387.031; Fri, 1 Nov 2019
 21:42:59 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>
Subject: [PATCH 3/3] staging: axis-fifo: remove unused pointer to memory
 resource
Thread-Topic: [PATCH 3/3] staging: axis-fifo: remove unused pointer to memory
 resource
Thread-Index: AQHVkP1UzicuaAAUZk66MpcyAj/NRw==
Date: Fri, 1 Nov 2019 21:42:59 +0000
Message-ID: <20191101214232.16960-4-quentin.deslandes@itdev.co.uk>
References: <20191101214232.16960-1-quentin.deslandes@itdev.co.uk>
In-Reply-To: <20191101214232.16960-1-quentin.deslandes@itdev.co.uk>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0194.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::14) To DBBPR08MB4491.eurprd08.prod.outlook.com
 (2603:10a6:10:d2::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.23.0
x-originating-ip: [81.98.213.45]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dfae3b0e-75ab-46d4-269d-08d75f14769b
x-ms-traffictypediagnostic: DBBPR08MB4679:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DBBPR08MB46799E5C11E255F745E5E9ACB3620@DBBPR08MB4679.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:421;
x-forefront-prvs: 020877E0CB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39830400003)(376002)(136003)(346002)(396003)(366004)(199004)(189003)(36756003)(2351001)(86362001)(186003)(66066001)(6916009)(14444005)(66556008)(476003)(486006)(71200400001)(64756008)(5640700003)(2501003)(6512007)(66946007)(6486002)(44832011)(71190400001)(2906002)(6436002)(11346002)(6116002)(3846002)(50226002)(66476007)(4326008)(305945005)(8936002)(25786009)(5660300002)(7736002)(81166006)(256004)(386003)(8676002)(6506007)(54906003)(81156014)(66446008)(2616005)(508600001)(14454004)(76176011)(52116002)(446003)(99286004)(102836004)(316002)(1076003)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR08MB4679;
 H:DBBPR08MB4491.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jDwTgDFKNic/y0hKd407ooVPIbb++FMSEHnNS/JuMhQ57q1bVI4TB7tYp2YZ1f2kH/hUFEkis8dhX0ljF825LEvsvuqBa63wUFLA3LqXg/yXF6h3yS9H0LnfFyhoJWyQYMYUi179l61Sjm33bQSlL1Y49LN3HyDRUB7xD+lLXr0qeSJ4ls+sh8WyCwa3ET7MTm8JuG8U2w+G8G1EmY5PKiBjdrvhpQrOlQxUmeoZ465hgVYQ5ZIv1zLPaT8ArLdLIuwhECDcSwVCEsJ61X+51WHNuOcmtF7Eh8SBbrnq1gYAI4Gn7wGDy0ZMzfnFk2rg21toSwZdseir9BgYlTwhdiP5SRv4vc7ZgGP1RBwccDOx3QsugBipXoNz0UVzP2QqOztFFs6lBQfT1zH1SRH+fwO9wknlGWIJVb5f0zyD+t28vJSFt/CorLQeYyIA903a
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: dfae3b0e-75ab-46d4-269d-08d75f14769b
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2019 21:42:59.1557 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5NiYWv3V8QjHwkgJ0dtpl2G6s2fiNUb5B1AwfHPnyNDgj4BdXGEr+AVc+S797WdcXlC2aslSuwmTh9p7mltlQSPBBTFXoWRbeb3ap0q5p3s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4679
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Cristian Sicilia <sicilia.cristian@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unused resource pointer from the device's internal structure.

Signed-off-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
---
 drivers/staging/axis-fifo/axis-fifo.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/axis-fifo/axis-fifo.c b/drivers/staging/axis-fifo/axis-fifo.c
index 2e6e2f149a26..39e6c59df1e9 100644
--- a/drivers/staging/axis-fifo/axis-fifo.c
+++ b/drivers/staging/axis-fifo/axis-fifo.c
@@ -125,7 +125,6 @@ MODULE_PARM_DESC(write_timeout, "ms to wait before blocking write() timing out;
 
 struct axis_fifo {
 	int irq; /* interrupt */
-	struct resource *mem; /* physical memory */
 	void __iomem *base_addr; /* kernel space memory */
 
 	unsigned int rx_fifo_depth; /* max words in the receive fifo */
@@ -806,10 +805,8 @@ static int axis_fifo_probe(struct platform_device *pdev)
 		goto err_initial;
 	}
 
-	fifo->mem = r_mem;
-
 	/* request physical memory */
-	fifo->base_addr = devm_ioremap_resource(fifo->dt_device, fifo->mem);
+	fifo->base_addr = devm_ioremap_resource(fifo->dt_device, r_mem);
 	if (IS_ERR(fifo->base_addr)) {
 		rc = PTR_ERR(fifo->base_addr);
 		dev_err(fifo->dt_device, "can't remap IO resource (%d)\n", rc);
@@ -820,7 +817,7 @@ static int axis_fifo_probe(struct platform_device *pdev)
 
 	/* create unique device name */
 	snprintf(device_name, sizeof(device_name), "%s_%pa",
-		 DRIVER_NAME, &fifo->mem->start);
+		 DRIVER_NAME, &r_mem->start);
 
 	dev_dbg(fifo->dt_device, "device name [%s]\n", device_name);
 
@@ -844,7 +841,7 @@ static int axis_fifo_probe(struct platform_device *pdev)
 	r_irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 	if (!r_irq) {
 		dev_err(fifo->dt_device, "no IRQ found for 0x%pa\n",
-			&fifo->mem->start);
+			&r_mem->start);
 		rc = -EIO;
 		goto err_initial;
 	}
@@ -898,7 +895,7 @@ static int axis_fifo_probe(struct platform_device *pdev)
 	}
 
 	dev_info(fifo->dt_device, "axis-fifo created at %pa mapped to 0x%pa, irq=%i, major=%i, minor=%i\n",
-		 &fifo->mem->start, &fifo->base_addr, fifo->irq,
+		 &r_mem->start, &fifo->base_addr, fifo->irq,
 		 MAJOR(fifo->devt), MINOR(fifo->devt));
 
 	return 0;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
