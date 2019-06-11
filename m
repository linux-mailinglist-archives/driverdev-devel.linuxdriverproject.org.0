Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD3241922
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 01:48:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DCC2F20503;
	Tue, 11 Jun 2019 23:48:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g9UaDrFWZgCi; Tue, 11 Jun 2019 23:48:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EE3AA20504;
	Tue, 11 Jun 2019 23:48:17 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC14F1BF3AB
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 23:48:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A488085C67
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 23:48:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WIPHEKoiXa-7
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 23:48:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770051.outbound.protection.outlook.com [40.107.77.51])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5D47F858C9
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 23:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=daktronics.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V4x7LB5npbgu4mPFhZpQawxMO8Hiw87LyzneKTrm/3k=;
 b=oQxWaF+NJJ/YiZh2qNmkEaS1CBQ9pDJcPzsCnYEbLcThYJ7ju4QBrTuuIM1WHr9Uib4wIEXL3V0uK+daK1FgBPNDaYBHQQfzthnWQ31N1WNTTzX7ypyv+q1Hw5UsDckASrnXUvhNjqY5EEt4JIp5joe8xINlYjp/APUyfF+3GdE=
Received: from SN6PR02MB4016.namprd02.prod.outlook.com (52.135.69.145) by
 SN6PR02MB5693.namprd02.prod.outlook.com (20.177.252.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.15; Tue, 11 Jun 2019 23:48:13 +0000
Received: from SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::f551:3180:ba2d:7c1f]) by SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::f551:3180:ba2d:7c1f%6]) with mapi id 15.20.1965.017; Tue, 11 Jun 2019
 23:48:12 +0000
From: Matt Sickler <Matt.Sickler@daktronics.com>
To: Jeremy Sowden <jeremy@azazel.net>, Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: RE: [PATCH 4/6] staging: kpc2000_dma: replaced aio_(read|write)
 file-ops with (read|write)_iter ones.
Thread-Topic: [PATCH 4/6] staging: kpc2000_dma: replaced aio_(read|write)
 file-ops with (read|write)_iter ones.
Thread-Index: AQHVII8H8yDdrR6ayU+DU3WJqUwK9qaXHhag
Date: Tue, 11 Jun 2019 23:48:12 +0000
Message-ID: <SN6PR02MB40166D1E2E4C8BBD76EA9AFCEEED0@SN6PR02MB4016.namprd02.prod.outlook.com>
References: <20190611195104.4828-1-jeremy@azazel.net>
 <20190611195104.4828-5-jeremy@azazel.net>
In-Reply-To: <20190611195104.4828-5-jeremy@azazel.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Matt.Sickler@daktronics.com; 
x-originating-ip: [63.85.214.4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9d2c4497-64c6-4b42-b2b1-08d6eec74436
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SN6PR02MB5693; 
x-ms-traffictypediagnostic: SN6PR02MB5693:
x-microsoft-antispam-prvs: <SN6PR02MB5693CBACB38BAFCE9E0AAD90EEED0@SN6PR02MB5693.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 006546F32A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(396003)(376002)(366004)(136003)(199004)(189003)(13464003)(71200400001)(66476007)(316002)(14454004)(476003)(64756008)(229853002)(76116006)(305945005)(73956011)(66446008)(102836004)(68736007)(66946007)(53936002)(66556008)(2906002)(6246003)(52536014)(5660300002)(7736002)(33656002)(71190400001)(4326008)(25786009)(6506007)(486006)(26005)(55016002)(446003)(6436002)(186003)(9686003)(256004)(99286004)(3846002)(81156014)(81166006)(72206003)(110136005)(7696005)(76176011)(74316002)(11346002)(86362001)(6116002)(8936002)(478600001)(8676002)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5693;
 H:SN6PR02MB4016.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: daktronics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: A4JsLrDGAalNnHyCYGutxfFH4di8YwVeef+jAhsH3V1LP4vwGoOaUnHbPTCbECbOZCjBCy1GppnfjjlWgdY9NMyGv55A3NbV8pfH53nAOuwUgeT7ulfiYsLsJlqerlpgVMU0LNsQRBReJI9qD3HZtoUcbdMh8s1aT783t/b235zM+2J0xc0P5bAMIb3Hu6oNM83H6mVrHssVrlf4Hyi6rZ8LUq1/QbEcRRqXjDTHC09b2vJgzb7ecXYnQZBC6fqATHoL+SJXR27Jh/JqCONopDDLufjudQn+Du4oCAO1aa8geGiB4LHWrUP5wRK2N0z0HrwXFEPj0MrM0ONEAXHRBIOYZiB/hf3bawdzwcVUXLrdocJT2sdSGo/hm/hMDIGiWIacYJ1GAUW0AYfctxwC/FRBBOePD1902IYskNxpGxk=
MIME-Version: 1.0
X-OriginatorOrg: daktronics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d2c4497-64c6-4b42-b2b1-08d6eec74436
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2019 23:48:12.8672 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: be88af81-0945-42aa-a3d2-b122777351a2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: matt.sickler@daktronics.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5693
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
>

>The AIO API was implemented in terms of obsolete file-ops.  Replaced the
>->aio_read and ->aio_write call-backs with ->read_iter and ->write_iter
>ones.  Replaced the call to aio_complete with a call to the ki_complete
>call-back of the kiocb object.
>
>Cc: Matt Sickler <matt.sickler@daktronics.com>
>Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
>---
> drivers/staging/kpc2000/kpc_dma/fileops.c | 40 +++++++++++++++--------
> 1 file changed, 26 insertions(+), 14 deletions(-)
>
>diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c
>b/drivers/staging/kpc2000/kpc_dma/fileops.c
>index d74300f14dff..1e8f8c41f82a 100644
>--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
>+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
>@@ -10,6 +10,7 @@
> #include <linux/cdev.h>
> #include <linux/uaccess.h>  /* copy_*_user */
> #include <linux/aio.h>      /* aio stuff */
>+#include <linux/uio.h>
> #include <linux/highmem.h>
> #include <linux/pagemap.h>
> #include "kpc_dma_driver.h"
>@@ -243,7 +244,7 @@ void  transfer_complete_cb(struct aio_cb_data *acd,
>size_t xfr_count, u32 flags)
>                }
>        } else {
> #ifdef CONFIG_KPC2000_DMA_AIO
>-               aio_complete(acd->kcb, acd->len, acd->flags);
>+               acd->kcb->ki_complete(acd->kcb, acd->len, acd->flags);
> #endif
>                kfree(acd);
>        }
>@@ -319,42 +320,54 @@ static int kpc_dma_aio_cancel(struct kiocb *kcb)
>        return 0;
> }

This part was wrapped in the ifdef because aio_complete was removed some time
after 3.16 and I didn't bother with figuring out the replacement for it since
I figured the AIO functionality would be removed entirely.


As for the read_iter/write_iter, my understanding is that's for allowing
scatter-gather type buffers from userspace.  If so, that functionality could
be removed entirely.  Our use cases have zero need for it, which is why it's
not implemented right now.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
