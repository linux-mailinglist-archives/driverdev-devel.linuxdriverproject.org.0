Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CE269E9C
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 00:02:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9413320410;
	Mon, 15 Jul 2019 22:02:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oY2steYwfKng; Mon, 15 Jul 2019 22:02:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 42D2620454;
	Mon, 15 Jul 2019 22:02:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B86311BF35C
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 22:02:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B518286AE3
 for <devel@linuxdriverproject.org>; Mon, 15 Jul 2019 22:02:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FVcBHB1JbHKY for <devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 22:02:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr790045.outbound.protection.outlook.com [40.107.79.45])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2ADA286A70
 for <devel@driverdev.osuosl.org>; Mon, 15 Jul 2019 22:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=daktronics.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+QEEByh4lS/gSMRbtZUtuN5W91MwldMSc83SzKGqWs0=;
 b=mjQTlKo2t5HI1bSImm8F0DSw/qEwYMVOXHw99bsMHvkXmHx+XQJoc+cREq7DLtHUofyhyjkkp/sqUErraTo4mSdRpbjgPCs/22rosWK+GOHIyUSBROJyvcacwW5qc8PrcRm+jJea47cBpmPO1h7f8qoGIEE91kxCm4ftoUJDTjI=
Received: from SN6PR02MB4016.namprd02.prod.outlook.com (52.135.69.145) by
 SN6PR02MB4943.namprd02.prod.outlook.com (52.135.116.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Mon, 15 Jul 2019 21:47:45 +0000
Received: from SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::3dba:454:9025:c1d0]) by SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::3dba:454:9025:c1d0%7]) with mapi id 15.20.2073.012; Mon, 15 Jul 2019
 21:47:45 +0000
From: Matt Sickler <Matt.Sickler@daktronics.com>
To: John Hubbard <jhubbard@nvidia.com>, Bharath Vedartham
 <linux.bhar@gmail.com>, "ira.weiny@intel.com" <ira.weiny@intel.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jglisse@redhat.com" <jglisse@redhat.com>
Subject: RE: [PATCH] staging: kpc2000: Convert put_page() to put_user_page*()
Thread-Topic: [PATCH] staging: kpc2000: Convert put_page() to put_user_page*()
Thread-Index: AQHVO0bnrb019gUuHEupUjqic0YUcabMHS+AgAAWgjA=
Date: Mon, 15 Jul 2019 21:47:45 +0000
Message-ID: <SN6PR02MB4016687B605E3D97D699956EEECF0@SN6PR02MB4016.namprd02.prod.outlook.com>
References: <20190715195248.GA22495@bharath12345-Inspiron-5559>
 <2604fcd1-4829-d77e-9f7c-d4b731782ff9@nvidia.com>
In-Reply-To: <2604fcd1-4829-d77e-9f7c-d4b731782ff9@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Matt.Sickler@daktronics.com; 
x-originating-ip: [2620:9b:8000:6046:9335:3b1c:cd5f:f1d3]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d4f9dbea-40c0-4a6d-52f3-08d7096e1288
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SN6PR02MB4943; 
x-ms-traffictypediagnostic: SN6PR02MB4943:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <SN6PR02MB4943530D267C230C0674C110EECF0@SN6PR02MB4943.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00997889E7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39850400004)(376002)(136003)(366004)(396003)(346002)(189003)(199004)(76116006)(64756008)(66446008)(966005)(66556008)(66476007)(66946007)(81166006)(476003)(81156014)(8676002)(486006)(256004)(46003)(229853002)(11346002)(8936002)(446003)(478600001)(102836004)(6246003)(5660300002)(7696005)(316002)(53936002)(6436002)(55016002)(6506007)(54906003)(110136005)(9686003)(76176011)(6306002)(33656002)(68736007)(186003)(52536014)(45080400002)(6116002)(4326008)(99286004)(25786009)(71190400001)(305945005)(71200400001)(86362001)(2201001)(2501003)(14454004)(74316002)(7736002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4943;
 H:SN6PR02MB4016.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: daktronics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: ndV78HoM98QrUbiI2IIUjvNf0Ml6CDjQzZlkM8Cz6qaxr+hIuZmjt4aqwHKJymy7XXpa0ohPL1ScA2m4C9BQmRxhL0tnI569YO0C2O9gLciEZZSl635Qxl26FN/XmpQv2YEsZW2Pedqp7ENNWSn7fyIt3JvPKIEAZYgBOwVm5rJ7BjmpaIRr4KwyKxUafKImG1ebYm53XkQc6QGl0GtBk5Fc1uF2l+WJOqERkrsYh95tpqddps6cf4f9A8psRwf6u9sLRxIH5A77rwwdsPjzDv3FaiDf4o5SLBF1iT9/+xiyQH5tWCBT3TVkmguFcqgTpXwcAJCVbYUU1dGLu8uKfXED1+y+QwyK/3J7Dt/c6gbRYnTMnPZQTIQa4bkYmthTKOiAah1JoQXWSnIeY357KIoCL2RtcsBG/qiOQskjo6o=
MIME-Version: 1.0
X-OriginatorOrg: daktronics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4f9dbea-40c0-4a6d-52f3-08d7096e1288
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2019 21:47:45.7821 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: be88af81-0945-42aa-a3d2-b122777351a2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: matt.sickler@daktronics.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4943
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
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

It looks like Outlook is going to absolutely trash this email.  Hopefully it comes through okay.

>> There have been issues with get_user_pages and filesystem writeback.
>> The issues are better described in [1].
>>
>> The solution being proposed wants to keep track of gup_pinned pages
>which will allow to take furthur steps to coordinate between subsystems
>using gup.
>>
>> put_user_page() simply calls put_page inside for now. But the
>implementation will change once all call sites of put_page() are converted.
>>
>> I currently do not have the driver to test. Could I have some suggestions to
>test this code? The solution is currently implemented in [2] and
>> it would be great if we could apply the patch on top of [2] and run some
>tests to check if any regressions occur.
>
>Because this is a common pattern, and because the code here doesn't likely
>need to set page dirty before the dma_unmap_sg call, I think the following
>would be better (it's untested), instead of the above diff hunk:
>
>diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c
>b/drivers/staging/kpc2000/kpc_dma/fileops.c
>index 48ca88bc6b0b..d486f9866449 100644
>--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
>+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
>@@ -211,16 +211,13 @@ void  transfer_complete_cb(struct aio_cb_data
>*acd, size_t xfr_count, u32 flags)
>        BUG_ON(acd->ldev == NULL);
>        BUG_ON(acd->ldev->pldev == NULL);
>
>-       for (i = 0 ; i < acd->page_count ; i++) {
>-               if (!PageReserved(acd->user_pages[i])) {
>-                       set_page_dirty(acd->user_pages[i]);
>-               }
>-       }
>-
>        dma_unmap_sg(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd->ldev->dir);
>
>        for (i = 0 ; i < acd->page_count ; i++) {
>-               put_page(acd->user_pages[i]);
>+               if (!PageReserved(acd->user_pages[i])) {
>+                       put_user_pages_dirty(&acd->user_pages[i], 1);
>+               else
>+                       put_user_page(acd->user_pages[i]);
>        }
>
>        sg_free_table(&acd->sgt);

I don't think I ever really knew the right way to do this. 

The changes Bharath suggested look okay to me.  I'm not sure about the check for PageReserved(), though.  At first glance it appears to be equivalent to what was there before, but maybe I should learn what that Reserved page flag really means.
From [1], the only comment that seems applicable is
* - MMIO/DMA pages. Some architectures don't allow to ioremap pages that are
 *   not marked PG_reserved (as they might be in use by somebody else who does
 *   not respect the caching strategy).

These pages should be coming from anonymous (RAM, not file backed) memory in userspace.  Sometimes it comes from hugepage backed memory, though I don't think that makes a difference.  I should note that transfer_complete_cb handles both RAM to device and device to RAM DMAs, if that matters.

[1] https://elixir.bootlin.com/linux/v5.2/source/include/linux/page-flags.h#L17
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
