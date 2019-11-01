Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B4C6BECA71
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Nov 2019 22:43:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8EFCE87E81;
	Fri,  1 Nov 2019 21:43:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UzS-4mUaCUe9; Fri,  1 Nov 2019 21:43:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7458587C99;
	Fri,  1 Nov 2019 21:43:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B53811BF3CB
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 21:42:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B1C7286AE2
 for <devel@linuxdriverproject.org>; Fri,  1 Nov 2019 21:42:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KjW0iu7q7uxr for <devel@linuxdriverproject.org>;
 Fri,  1 Nov 2019 21:42:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr30058.outbound.protection.outlook.com [40.107.3.58])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 99B2686AD2
 for <devel@driverdev.osuosl.org>; Fri,  1 Nov 2019 21:42:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P4wdwB22G4ATggMFR9ucwgMtRoL9kY7wzmkltozVRc8WxfFrSsOeCBrJeZHBOzRbt46xcuf35F+5BlcJ+4M2TF5AoIrABdCuqxVPzzoXFa7t4lOeZqx0kzKpHzmpAFqMHve4FX5eoI6z7TPsdcSegjWQkayTKP/FVWI3r1UTCnyKe45Fp8B4t6SckFp9dX4lnJfoRcIPmhDglYk/8ouo8dbpRqEoXf2EMEKa2cP/3D/hKmAQOrWXi7nVvsVRw6Lh16q464B3wLU2roIri+yYHD56I0zYSdKaUlDJNkpFslTQZks6HVmn6VgW/1e9KXZ5XbKfgvWujNem2ACqzOJ2yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I1asZxG7iy1G+ohx5StQOK1UeIf1kysj2FMuZhcOMis=;
 b=dzH/0S8TOwRDhL+9pfKxJ7Q9mUffuWjpK/mxncV6VwEg67gq6Zmi4VlAo9fTU9yzG/OjhvcZk4xRixuXAFRKp63WjBRoQnBP1edt95FejPjUfWuk5ZyyQsR+C7we7qlV7o8+i9DCjj+Otti98H0ivm+H/P2O6Sa9EKfRjFmo9xUOi49E1lYWurcT2EpFAyedJ2OrbRSkEUdhEga/ebQakTI5xawoiE4hk7nEl1P32Otmh6kKZ0A7qc191CiH+lnj9y2nVmxoNMqIav9BILDFuF+dFaJOWt2s5pKJyA8NKlzanxGU1R+EcLF/DEwQJ+MsOnwqs/7JCjRpAwgjJsGPjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I1asZxG7iy1G+ohx5StQOK1UeIf1kysj2FMuZhcOMis=;
 b=XLj19cNiaSsYNj73vR7njmYWcXc6eFvOHfHmC33qNQRYGoISSlHyzwDsDriOfSYJN8j+enKaWxSLLReTNrYuDTIgy4QaL9ejF5zMK4IC8TCzTKYQfCwaEfGZGb4wawAAxmgjN2buWLA7PNquakOAdEUnyP3Je3DfauGgPQmRPEY=
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com (20.179.44.144) by
 DBBPR08MB4679.eurprd08.prod.outlook.com (20.179.47.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Fri, 1 Nov 2019 21:42:55 +0000
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::4c2f:e455:fb07:bdee]) by DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::4c2f:e455:fb07:bdee%6]) with mapi id 15.20.2387.031; Fri, 1 Nov 2019
 21:42:55 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>
Subject: [PATCH 2/3] staging: axis-fifo: request resources using managed
 functions
Thread-Topic: [PATCH 2/3] staging: axis-fifo: request resources using managed
 functions
Thread-Index: AQHVkP1RD3//gI2KB0K7rhYWv+gNHA==
Date: Fri, 1 Nov 2019 21:42:54 +0000
Message-ID: <20191101214232.16960-3-quentin.deslandes@itdev.co.uk>
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
x-ms-office365-filtering-correlation-id: fc08792d-75f5-4db2-81dd-08d75f147421
x-ms-traffictypediagnostic: DBBPR08MB4679:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DBBPR08MB4679C71FE2DAFC331361E3D6B3620@DBBPR08MB4679.eurprd08.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:431;
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
x-microsoft-antispam-message-info: mYpin8wDLP/q3qXHhJb1uWZ12ZF/zNRdUh6c3yRQQJmMUw24heRDJ9pLPq+QvficTuOUkwJW9d1cH5MVAsZVj3QNCnbuGMcQhTGWryF2onWC/rF5ad/JrRHGfC+ZSnP0NkkU15Ln3SKGe65akL3p81GkwyiM/bq/+Vg850DkChf7VA7cvNCT3rw4AeJWNR5mFVpQGyG3TkEx1O763WMaFOD+Fm1avJHZOHRaxD4Nl/8oep6rrXsghEWqVp9NM4spo3bPMY6a8TrekJMki/ABw2zgDmfG/b2SiY+aZQ0gL3DS5pcnHo7O6J75U0Elv44uYHMY/251qfy1AcXa9HdG8Hrs8eQ9QLnuaGRFd/Y0mgBKZfQkheo7+CsAzKC0bMaa4a+Dmwb6smyFxUeW+yngUoX0GbYaOZ1hzYvYs6u6UFgpvgsHM6YlIFRo33Z57ag2
MIME-Version: 1.0
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: fc08792d-75f5-4db2-81dd-08d75f147421
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2019 21:42:54.9921 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yt2gU9z4S1/rg72Ka1DeOZP26dkwp45LPufwwWRkNrb7qb7K9fL9j+Lk+/zR3tJ2ZortZb0ZEFV1yOeqtMScFO4DChcqn0PjEUx0OAk7OEQ=
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

Request device's resources (memory, interrupt...) using managed
function.

Signed-off-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
---
 drivers/staging/axis-fifo/axis-fifo.c | 45 ++++++++-------------------
 1 file changed, 13 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/axis-fifo/axis-fifo.c b/drivers/staging/axis-fifo/axis-fifo.c
index b436f48a9d50..2e6e2f149a26 100644
--- a/drivers/staging/axis-fifo/axis-fifo.c
+++ b/drivers/staging/axis-fifo/axis-fifo.c
@@ -809,24 +809,13 @@ static int axis_fifo_probe(struct platform_device *pdev)
 	fifo->mem = r_mem;
 
 	/* request physical memory */
-	if (!request_mem_region(fifo->mem->start, resource_size(fifo->mem),
-				DRIVER_NAME)) {
-		dev_err(fifo->dt_device,
-			"couldn't lock memory region at 0x%pa\n",
-			&fifo->mem->start);
-		rc = -EBUSY;
+	fifo->base_addr = devm_ioremap_resource(fifo->dt_device, fifo->mem);
+	if (IS_ERR(fifo->base_addr)) {
+		rc = PTR_ERR(fifo->base_addr);
+		dev_err(fifo->dt_device, "can't remap IO resource (%d)\n", rc);
 		goto err_initial;
 	}
-	dev_dbg(fifo->dt_device, "got memory location [0x%pa - 0x%pa]\n",
-		&fifo->mem->start, &fifo->mem->end);
-
-	/* map physical memory to kernel virtual address space */
-	fifo->base_addr = ioremap(fifo->mem->start, resource_size(fifo->mem));
-	if (!fifo->base_addr) {
-		dev_err(fifo->dt_device, "couldn't map physical memory\n");
-		rc = -ENOMEM;
-		goto err_mem;
-	}
+
 	dev_dbg(fifo->dt_device, "remapped memory to 0x%p\n", fifo->base_addr);
 
 	/* create unique device name */
@@ -842,7 +831,7 @@ static int axis_fifo_probe(struct platform_device *pdev)
 
 	rc = axis_fifo_parse_dt(fifo);
 	if (rc)
-		goto err_unmap;
+		goto err_initial;
 
 	reset_ip_core(fifo);
 
@@ -857,16 +846,17 @@ static int axis_fifo_probe(struct platform_device *pdev)
 		dev_err(fifo->dt_device, "no IRQ found for 0x%pa\n",
 			&fifo->mem->start);
 		rc = -EIO;
-		goto err_unmap;
+		goto err_initial;
 	}
 
 	/* request IRQ */
 	fifo->irq = r_irq->start;
-	rc = request_irq(fifo->irq, &axis_fifo_irq, 0, DRIVER_NAME, fifo);
+	rc = devm_request_irq(fifo->dt_device, fifo->irq, &axis_fifo_irq, 0,
+			      DRIVER_NAME, fifo);
 	if (rc) {
 		dev_err(fifo->dt_device, "couldn't allocate interrupt %i\n",
 			fifo->irq);
-		goto err_unmap;
+		goto err_initial;
 	}
 
 	/* ----------------------------
@@ -877,7 +867,7 @@ static int axis_fifo_probe(struct platform_device *pdev)
 	/* allocate device number */
 	rc = alloc_chrdev_region(&fifo->devt, 0, 1, DRIVER_NAME);
 	if (rc < 0)
-		goto err_irq;
+		goto err_initial;
 	dev_dbg(fifo->dt_device, "allocated device number major %i minor %i\n",
 		MAJOR(fifo->devt), MINOR(fifo->devt));
 
@@ -901,7 +891,7 @@ static int axis_fifo_probe(struct platform_device *pdev)
 	}
 
 	/* create sysfs entries */
-	rc = sysfs_create_group(&fifo->device->kobj, &axis_fifo_attrs_group);
+	rc = devm_device_add_group(fifo->device, &axis_fifo_attrs_group);
 	if (rc < 0) {
 		dev_err(fifo->dt_device, "couldn't register sysfs group\n");
 		goto err_cdev;
@@ -919,12 +909,6 @@ static int axis_fifo_probe(struct platform_device *pdev)
 	device_destroy(axis_fifo_driver_class, fifo->devt);
 err_chrdev_region:
 	unregister_chrdev_region(fifo->devt, 1);
-err_irq:
-	free_irq(fifo->irq, fifo);
-err_unmap:
-	iounmap(fifo->base_addr);
-err_mem:
-	release_mem_region(fifo->mem->start, resource_size(fifo->mem));
 err_initial:
 	dev_set_drvdata(dev, NULL);
 	return rc;
@@ -935,15 +919,12 @@ static int axis_fifo_remove(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct axis_fifo *fifo = dev_get_drvdata(dev);
 
-	sysfs_remove_group(&fifo->device->kobj, &axis_fifo_attrs_group);
 	cdev_del(&fifo->char_device);
 	dev_set_drvdata(fifo->device, NULL);
 	device_destroy(axis_fifo_driver_class, fifo->devt);
 	unregister_chrdev_region(fifo->devt, 1);
-	free_irq(fifo->irq, fifo);
-	iounmap(fifo->base_addr);
-	release_mem_region(fifo->mem->start, resource_size(fifo->mem));
 	dev_set_drvdata(dev, NULL);
+
 	return 0;
 }
 
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
