Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 738F441960
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 02:17:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4CA108759A;
	Wed, 12 Jun 2019 00:16:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 19eUZ-MDQIj9; Wed, 12 Jun 2019 00:16:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6655E86F92;
	Wed, 12 Jun 2019 00:16:56 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E33C41BF980
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 00:16:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DF74F20508
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 00:16:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GYynhyN6X6Hr
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 00:16:53 +0000 (UTC)
X-Greylist: delayed 00:18:08 by SQLgrey-1.7.6
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr790044.outbound.protection.outlook.com [40.107.79.44])
 by silver.osuosl.org (Postfix) with ESMTPS id 587581FFFE
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 00:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=daktronics.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/s4tNdGmTQOkJX7L2MkFXly0hEmyzWpIRpAEnyhQLvA=;
 b=hmWWcBdofXnbZi/W7oBgGFgypQUWBRByUuozXfBpdXkqkYlaX65VAcOdJ0qox1PAdVJVi5txdSWQo+8ivjWYcmJsxJPdUFr+TNkmtUdtphkvsN8fSDxLFpxRfsmkZQrVoLuFFVk82HDmnM4fhjttbSNvn83dTMyejnY3NaGSNg8=
Received: from SN6PR02MB4016.namprd02.prod.outlook.com (52.135.69.145) by
 SN6PR02MB5149.namprd02.prod.outlook.com (52.135.99.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.17; Tue, 11 Jun 2019 23:43:19 +0000
Received: from SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::f551:3180:ba2d:7c1f]) by SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::f551:3180:ba2d:7c1f%6]) with mapi id 15.20.1965.017; Tue, 11 Jun 2019
 23:43:19 +0000
From: Matt Sickler <Matt.Sickler@daktronics.com>
To: Jeremy Sowden <jeremy@azazel.net>, Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: RE: [PATCH 0/6] staging: kpc2000_dma: fixes for AIO file-ops.
Thread-Topic: [PATCH 0/6] staging: kpc2000_dma: fixes for AIO file-ops.
Thread-Index: AQHVII8IHRUOyrPrvEeQ3eI5zKn33qaXEi4g
Date: Tue, 11 Jun 2019 23:43:19 +0000
Message-ID: <SN6PR02MB4016014FC72267C4C0C148DDEEED0@SN6PR02MB4016.namprd02.prod.outlook.com>
References: <20190611195104.4828-1-jeremy@azazel.net>
In-Reply-To: <20190611195104.4828-1-jeremy@azazel.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Matt.Sickler@daktronics.com; 
x-originating-ip: [63.85.214.4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5c40fd97-541f-46c8-eaa8-08d6eec6952a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:SN6PR02MB5149; 
x-ms-traffictypediagnostic: SN6PR02MB5149:
x-microsoft-antispam-prvs: <SN6PR02MB514904EF97DEF2CC18F7F626EEED0@SN6PR02MB5149.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 006546F32A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(376002)(346002)(366004)(136003)(189003)(199004)(13464003)(6506007)(99286004)(256004)(66066001)(14444005)(76176011)(86362001)(478600001)(53936002)(7696005)(6436002)(74316002)(55016002)(33656002)(71190400001)(305945005)(71200400001)(9686003)(72206003)(14454004)(7736002)(8936002)(5660300002)(66946007)(64756008)(66446008)(6116002)(6246003)(66476007)(316002)(486006)(3846002)(476003)(446003)(68736007)(52536014)(76116006)(73956011)(4326008)(11346002)(186003)(110136005)(229853002)(26005)(8676002)(81156014)(66556008)(2906002)(81166006)(102836004)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5149;
 H:SN6PR02MB4016.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: daktronics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JjWJ8n4oq7b3gQFBoKn4jsh6nU4MJEYPDq3cHP8sx5ieqAQ2AAD8jjw13TotF0Tl+LKmYNUFoKnqTc85Z5z3PW6r2Ft1EvXFIcHdrkEpLcujDCG7KfFPu3P0femG4h958ENoc8rEK3HFLrkcee4cEoqofMUG7kbA46dTUKuGUtJogfdOAt4oCU/cq1w3MM751U0FdaUjDlbGc/ogL7dWfryEGfAkqKIYL5oaorNaRlQfYOvjeYlj3OLF2d+NAhkDmI//Vxk6vohJ/nkXW7glq3TAcHzuRGrGkcpZmdGAKuV0qyWSKW83vy19CZP0KP2g+iGGyHWiWZ9n4fZcF9RCZEBmnYLkqV6i/xqV6VtfKe7iTfe/vOw4kDbIz5qrRzE/VZGea/K4AUnBc3S16yq00RhFE4m00pjO8ngDkli0SEI=
MIME-Version: 1.0
X-OriginatorOrg: daktronics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c40fd97-541f-46c8-eaa8-08d6eec6952a
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2019 23:43:19.2047 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: be88af81-0945-42aa-a3d2-b122777351a2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: matt.sickler@daktronics.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5149
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
Cc: Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

>-----Original Message-----
>From: Jeremy Sowden <jeremy@azazel.net>
>I've had a go at getting the DMA AIO working.  It compiles, but I don't
>have access to the hardware, so I have done no more testing than that.

Honestly, it'd probably be better to just remove the AIO support entirely.  The
one use case we had that could possibly have benefitted from AIO has been
switched away from DMA entirely.  We switched because the DMA buffer was a
couple hundred bytes and the overhead of setting up the DMA was killing
throughput.  AIO *might* have been able to help there, but the userspace side
of AIO is a PITA to work with.  IMO, if "AIO" for the kpc_dma driver were to
make a come back, I think it would be better to use something like io_uring
The other things that use DMA wouldn't benefit from AIO as they have to setup
other parts of the hardware that can't coordinate with the DMA controllers
(or at least not without a lot of work).

TL;DR: it's probably better to just kill the AIO parts of the driver than to try to make them work.

>The fifth patch removes the cancel call-back because it is empty and so
>doesn't serve any purpose (AFAICS).  However, it doesn't appear to be
>too tricky to implement something that would abort the transfer in the
>same manner that kpc_dma_close() if this would be useful.

It's empty because I didn't have time to figure out how to cancel the DMA
operation on the hardware side.  Doing the same "reset the whole engine"
type of cancel could work, but I'm not sure how well that would mesh with
aio_cancel (the latter would kill *all* in-flight operations, the former
is only killing the one).  As I said above, it's probably better to just
remove all the AIO pieces.

>Jeremy Sowden (6):
>  staging: kpc2000_dma: added Kconfig to enable asynchronous I/O.
>  staging: kpc2000_dma: removed casts of void pointers.
>  staging: kpc2000_dma: formatting fixes for AIO functions.
>  staging: kpc2000_dma: replaced aio_(read|write) file-ops with
>    (read|write)_iter ones.
>  staging: kpc2000_dma: removed aio cancel call-back.
>  staging: kpc2000: updated TODO in light of DMA AIO fixes.
>
> drivers/staging/kpc2000/Kconfig           |  8 +++
> drivers/staging/kpc2000/TODO              |  4 +-
> drivers/staging/kpc2000/kpc_dma/fileops.c | 69 ++++++++++++-----------
> 3 files changed, 44 insertions(+), 37 deletions(-)
>
>--
>2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
