Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D96D3CEB7
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2019 16:31:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2A33187C89;
	Tue, 11 Jun 2019 14:31:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SY6StRdxNTqY; Tue, 11 Jun 2019 14:31:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AE21487032;
	Tue, 11 Jun 2019 14:31:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2A42C1BF343
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 14:31:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 20BF1204CD
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 14:31:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N2iomEATvBRv for <devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 14:31:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
 (mail-eopbgr750080.outbound.protection.outlook.com [40.107.75.80])
 by silver.osuosl.org (Postfix) with ESMTPS id 8B19A20116
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 14:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=daktronics.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HXwYd5rDPqfq54U2WqMVU3a3Bl6dswf0jyYrsWiLDN8=;
 b=Hs/UROba4RVaY1VZnErJ53MCg2wW5/2yrCdbA9RWoK/1ISQyT3+xcqcCo7Sod5mx+MdMWcQZGpNlFPSDC/hbBH9QBztaroDvESd4Iw65XyYGTkavJhrP04S3djI3SPSXxTwdo07DBmfHmZ1ZLBFFiRCYonQUkWKpC6d0F7UVdlQ=
Received: from SN6PR02MB4016.namprd02.prod.outlook.com (52.135.69.145) by
 SN6PR02MB4814.namprd02.prod.outlook.com (52.135.114.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.13; Tue, 11 Jun 2019 13:57:30 +0000
Received: from SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::f551:3180:ba2d:7c1f]) by SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::f551:3180:ba2d:7c1f%6]) with mapi id 15.20.1965.017; Tue, 11 Jun 2019
 13:57:30 +0000
From: Matt Sickler <Matt.Sickler@daktronics.com>
To: Geordan Neukum <gneukum1@gmail.com>, Hao Xu <haoxu.linuxkernel@gmail.com>
Subject: RE: [PATCH v2] staging: kpc2000: kpc_i2c: remove the macros inb_p and
 outb_p
Thread-Topic: [PATCH v2] staging: kpc2000: kpc_i2c: remove the macros inb_p
 and outb_p
Thread-Index: AQHVH2Dso4KgADC9a0e1F3CVK4xfcaaVuXWAgADA57A=
Date: Tue, 11 Jun 2019 13:57:30 +0000
Message-ID: <SN6PR02MB40169CA0F341B5727B806607EEED0@SN6PR02MB4016.namprd02.prod.outlook.com>
References: <1560152904-31894-1-git-send-email-haoxu.linuxkernel@gmail.com>
 <20190611021933.GA915@arch-01.home>
In-Reply-To: <20190611021933.GA915@arch-01.home>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Matt.Sickler@daktronics.com; 
x-originating-ip: [2620:9b:8000:6046:1c1e:e54f:8af5:e89]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e6cb339b-bc5c-4039-6427-08d6ee74bec4
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SN6PR02MB4814; 
x-ms-traffictypediagnostic: SN6PR02MB4814:
x-microsoft-antispam-prvs: <SN6PR02MB4814529B2FE4471FA863F17EEEED0@SN6PR02MB4814.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 006546F32A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(136003)(346002)(376002)(39860400002)(189003)(199004)(13464003)(81156014)(53936002)(7696005)(8676002)(76176011)(72206003)(8936002)(25786009)(55016002)(102836004)(478600001)(86362001)(229853002)(9686003)(52536014)(99286004)(305945005)(14454004)(54906003)(6436002)(5660300002)(68736007)(2906002)(110136005)(6116002)(7736002)(6506007)(316002)(74316002)(4744005)(46003)(66556008)(64756008)(66446008)(33656002)(71190400001)(186003)(71200400001)(4326008)(486006)(66476007)(73956011)(81166006)(66946007)(6246003)(446003)(256004)(476003)(14444005)(11346002)(76116006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4814;
 H:SN6PR02MB4016.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: daktronics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: DdVAs975oqDT1Lfyr3il8WbBNn+2mS/6dv3H00sOeu3jKhXLDfAlB/T02A1P936Kw4njGn2OrsKcYFrNflXckEWIoSTzkG03C7W5JRM8TJiCh2BNvX7R7JYlXC8G27bO5hyG4wdfvIyagCnOmpDCf+MqX9xbdkXfnEjV/32UYYDxIwbsLBvLLPaMLZxrHPxKgbtxKLwmwwh2VjOmPMdhVzQOGRBkdwDdxEO2nsQnSi9T74hoERPcDvadIavxGS9jTLk7yNcEf3UrEVORAPfe824Il46+k6PalX1f/sHcH80Cx+dnqPdnW53mku2o+qsrdcSxeLZgl650X8f2llxACAdtritJQI5dEsMRbsb8SqvPoadH/zmv7q/FJ0mEI/UNbCDX5OqJqLBpJoFagdOuvIreoRXKaWZBo6KkNx9tesM=
MIME-Version: 1.0
X-OriginatorOrg: daktronics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6cb339b-bc5c-4039-6427-08d6ee74bec4
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2019 13:57:30.2243 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: be88af81-0945-42aa-a3d2-b122777351a2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: matt.sickler@daktronics.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4814
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

>-----Original Message-----
>From: devel <driverdev-devel-bounces@linuxdriverproject.org> On Behalf Of
>Geordan Neukum
>
>This inb() call looks like a bug. We perform a 64-bit operation when
>talking to this hardware register everywhere else in this driver. Anyone
>have more insight into the hardware with which this driver interacts
>such that they could shed some light on the subject?

That would be me.  I looked at the VHDL for the hardware.  The registers seem to
be aligned to 8 bytes but only use the LS byte of each.  So it probably doesn't
matter whether the memory transactions are 64-bit or 8-bit.
I know the hardware doesn't support byte-enables either, which is probably why
the registers were padded this way.   Probably also why the inb_p and outb_p
macros were redefined.

>Probably a separate issue, but I did notice it as a result of this patch.
>
>Thanks,
>Geordan

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
