Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B1C3618B
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 18:43:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3792A86144;
	Wed,  5 Jun 2019 16:43:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uTLr8rr_G0u3; Wed,  5 Jun 2019 16:43:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC8088248B;
	Wed,  5 Jun 2019 16:43:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 817171BF576
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 16:43:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 783C186E77
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 16:43:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7xOkAEv6Tkso for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 16:43:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr780070.outbound.protection.outlook.com [40.107.78.70])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E9B40865D6
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 16:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=daktronics.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TZKjR+aKaM7SNkga57Y2V4cUixephsgLQnpwgpF+XlE=;
 b=jcjDxpY+vi4Xz2YHElxLGIdwSfYWgrRxcmpMESbXQ9DAwoE7RhWFVjmpRLoC5mfqLYIQjD13Q12CbYP6ig9PfZKjT8Im/GpfZWxqyRq6jzOWXgiUpShCFl6RirGAfbwzhX2jTQoHKFuz6d3imhntG0IuH6YIujqUZZFgpFMEmp8=
Received: from SN6PR02MB4016.namprd02.prod.outlook.com (52.135.69.145) by
 SN6PR02MB5200.namprd02.prod.outlook.com (52.135.103.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Wed, 5 Jun 2019 16:09:41 +0000
Received: from SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::f551:3180:ba2d:7c1f]) by SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::f551:3180:ba2d:7c1f%6]) with mapi id 15.20.1943.023; Wed, 5 Jun 2019
 16:09:41 +0000
From: Matt Sickler <Matt.Sickler@daktronics.com>
To: Valerio Genovese <valerio.click@gmail.com>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>
Subject: RE: [PATCH] staging: kpc2000: kpc_dma: fix symbol
 'kpc_dma_add_device' was not declared.
Thread-Topic: [PATCH] staging: kpc2000: kpc_dma: fix symbol
 'kpc_dma_add_device' was not declared.
Thread-Index: AQHVG7dilT2yYfZL10OphSiUIglSjqaNOn8w
Date: Wed, 5 Jun 2019 16:09:41 +0000
Message-ID: <SN6PR02MB4016AB359CFD2CAAF58D8B5DEE160@SN6PR02MB4016.namprd02.prod.outlook.com>
References: <20190605155711.19722-1-valerio.click@gmail.com>
In-Reply-To: <20190605155711.19722-1-valerio.click@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Matt.Sickler@daktronics.com; 
x-originating-ip: [63.85.214.4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c80387fa-24d3-4d4f-751f-08d6e9d037a9
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SN6PR02MB5200; 
x-ms-traffictypediagnostic: SN6PR02MB5200:
x-microsoft-antispam-prvs: <SN6PR02MB520080C20BAB0AC2283AFBD7EE160@SN6PR02MB5200.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 00594E8DBA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(376002)(136003)(39860400002)(346002)(189003)(199004)(478600001)(5660300002)(446003)(14454004)(11346002)(25786009)(6246003)(7696005)(229853002)(54906003)(72206003)(4744005)(99286004)(26005)(8936002)(8676002)(81156014)(81166006)(305945005)(186003)(76176011)(110136005)(2501003)(53936002)(86362001)(4326008)(102836004)(76116006)(68736007)(33656002)(66946007)(73956011)(6436002)(2906002)(6506007)(9686003)(66066001)(7736002)(486006)(476003)(55016002)(316002)(14444005)(66446008)(6116002)(256004)(3846002)(66476007)(66556008)(64756008)(52536014)(71190400001)(71200400001)(74316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5200;
 H:SN6PR02MB4016.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: daktronics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: VpFtRpfwXEQ3hgQbpDXhhh8r2BG5bJLEGpPo3HWR7VU/aDzsFahR2DHB9vRZg8Wsyj1vqd3iQCZbTlk10ENc3NcRmuGR/Tvj0QmWaEyKRhAwjsrc4hlM1RpIUEcpWQ8UGrMxPscDLm1vZZMVNDqy+cqfDvjX9gH0Givr4kzPAEJUck4zbucHqaaifvZW27hev43qFyU9pPPyQ30XdRKKZ5xvyU9WxhSkQDeF/mX6h3wC5D4KFjBUlxn/PEu/LpxFwJR+xpkdOS820yXKNoU7tnjlgkKKxC2SJGDfX4zWW/xmA1Od3GmvX1h/sMDGRCBdegGwzQ7RkNBYTOhUfG9PeeiLvWp2QPN+ZeOJ+CJHhNQvOuV2Eo2MaIhovYXmCNQxr63Eg39S/ZSiiy6HTVmp/BjO29YkCFNfV0zh3Cu+vMU=
MIME-Version: 1.0
X-OriginatorOrg: daktronics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c80387fa-24d3-4d4f-751f-08d6e9d037a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2019 16:09:41.4666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: be88af81-0945-42aa-a3d2-b122777351a2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: matt.sickler@daktronics.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5200
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

>This was reported by sparse:
>drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.c:39:7: warning: symbol
>'kpc_dma_add_device
>' was not declared. Should it be static?
>
>Signed-off-by: Valerio Genovese <valerio.click@gmail.com>
>---
> drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h | 1 +
> 1 file changed, 1 insertion(+)
>
>diff --git a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
>b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
>index ee47f43e71cf..19e88c3bc13f 100644
>--- a/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
>+++ b/drivers/staging/kpc2000/kpc_dma/kpc_dma_driver.h
>@@ -56,6 +56,7 @@ struct dev_private_data {
> };
>
> struct kpc_dma_device *kpc_dma_lookup_device(int minor);
>+void kpc_dma_add_device(struct kpc_dma_device *ldev);
>
> extern const struct file_operations  kpc_dma_fops;
>

Wouldn't it be better to mark the function static?
It's only used in kpc_dma_driver.c which is where it's defined.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
