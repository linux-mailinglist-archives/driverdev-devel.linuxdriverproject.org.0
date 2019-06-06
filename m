Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BDF37EF8
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Jun 2019 22:49:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D81CD8769F;
	Thu,  6 Jun 2019 20:49:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rbDZsyU3PqgH; Thu,  6 Jun 2019 20:49:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9800887686;
	Thu,  6 Jun 2019 20:49:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5C6211BF330
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 20:49:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 589B2204CA
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 20:49:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2+NMfXI3Ko9F for <devel@linuxdriverproject.org>;
 Thu,  6 Jun 2019 20:49:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
 (mail-eopbgr760055.outbound.protection.outlook.com [40.107.76.55])
 by silver.osuosl.org (Postfix) with ESMTPS id 0EBC120352
 for <devel@driverdev.osuosl.org>; Thu,  6 Jun 2019 20:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=daktronics.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S70zAWA5rQbuUhwlGGNcaFEkhX0eSelXSSma4HHsMUQ=;
 b=ndHojiFqZ372/msbTgz93J92lJ1tsOHrexoP9CJr9DNCawPgf19U+06e+T37nnaeIhI6iBip/3/Q8c9r4R9D9Cv+CmNDJtiNUTnw++mCyXPM1pwLFfZSKQXyatWGmR1hMgKnyb3e8KS1rHVmy1tP9vJbwBMQ49N0pMJT/M37JOc=
Received: from SN6PR02MB4016.namprd02.prod.outlook.com (52.135.69.145) by
 SN6PR02MB5070.namprd02.prod.outlook.com (52.135.99.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Thu, 6 Jun 2019 20:33:56 +0000
Received: from SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::f551:3180:ba2d:7c1f]) by SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::f551:3180:ba2d:7c1f%6]) with mapi id 15.20.1965.011; Thu, 6 Jun 2019
 20:33:56 +0000
From: Matt Sickler <Matt.Sickler@daktronics.com>
To: Fabio Estevam <festevam@gmail.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Subject: RE: [PATCH 1/2] staging: kpc2000: Use '%llx' for printing 'long long
 int' type
Thread-Topic: [PATCH 1/2] staging: kpc2000: Use '%llx' for printing 'long long
 int' type
Thread-Index: AQHVG+bSke1I+ZyOx0uJICKQyHvgOKaNl9wAgAF+PiA=
Date: Thu, 6 Jun 2019 20:33:56 +0000
Message-ID: <SN6PR02MB40169CF68D242DDE66C8B1FBEE170@SN6PR02MB4016.namprd02.prod.outlook.com>
References: <20190605213648.6887-1-festevam@gmail.com>
 <CAOMZO5DCq=G_qouFp0F4aKp9hCcMqYVx3L6gWyHbj1Ckd8oUUg@mail.gmail.com>
In-Reply-To: <CAOMZO5DCq=G_qouFp0F4aKp9hCcMqYVx3L6gWyHbj1Ckd8oUUg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Matt.Sickler@daktronics.com; 
x-originating-ip: [63.85.214.4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5e8a8dda-ea96-4d06-d529-08d6eabe4c60
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SN6PR02MB5070; 
x-ms-traffictypediagnostic: SN6PR02MB5070:
x-microsoft-antispam-prvs: <SN6PR02MB5070632D65620F6DCB03872EEE170@SN6PR02MB5070.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 00603B7EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(366004)(396003)(136003)(39850400004)(13464003)(189003)(199004)(55016002)(7696005)(476003)(9686003)(53936002)(102836004)(76176011)(11346002)(71190400001)(446003)(305945005)(14444005)(14454004)(26005)(186003)(6436002)(256004)(71200400001)(316002)(8936002)(74316002)(110136005)(66556008)(66446008)(4744005)(99286004)(81166006)(81156014)(8676002)(64756008)(229853002)(486006)(52536014)(7736002)(5660300002)(4326008)(3846002)(6116002)(2906002)(68736007)(73956011)(66946007)(76116006)(66476007)(33656002)(66066001)(72206003)(478600001)(6246003)(6506007)(86362001)(25786009)(223183001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5070;
 H:SN6PR02MB4016.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: daktronics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: m/qfQTRB0izR/E3DotBLsdmhEYD5rfdQ4VX7pQ2EVK+MHdlZUTa0mt32kB8z9WBVVeSQuQ92cVfyK+wGfJE1Xes1Zh3kGb1cOfH5cpW12UyknlNbavnkgYMTyaw2hRKlMTx3Q+knfHFi3U2CwzGMWMxRk2OGMA9QowIJvvvN/rGcNXGDCKFbKWHbz2ZsukozpbJtbe+qj8Mml5SCnOqDVFUl+1HxSsAmXoahKuYvUjwZ7ZR7muORwoUa7pyJplUzJFV5QpgTX+UWulAdtuMjFbjjkDc9Urus7Q91LXs7nQ5JcZXTSLN+8uDfHEDtmniZ6RY5nMtbkoD/V/ioj0IIpMnarkWjM4zlWf4WkEi19EuKeIBx7QiHRjGeSIpuF5OlhycQmpVAUIaXDHPlL8RF6EMbAbdvJe4ivwtQ/nILtoc=
MIME-Version: 1.0
X-OriginatorOrg: daktronics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e8a8dda-ea96-4d06-d529-08d6eabe4c60
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2019 20:33:56.4244 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: be88af81-0945-42aa-a3d2-b122777351a2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: matt.sickler@daktronics.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5070
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

>-----Original Message-----
>From: Fabio Estevam <festevam@gmail.com>
>Hi Greg,
>
>Please discard this. It fixes arm32 build warning, but introduces
>warnings with arm64.
>
>I will think about a better fix.

The hardware/driver will only ever be used on amd64.   If it can be totally disabled for any other architecture as an easy fix, that's acceptable to me.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
