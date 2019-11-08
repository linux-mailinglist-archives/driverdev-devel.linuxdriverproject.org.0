Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38042F582B
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Nov 2019 21:34:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC04687FD8;
	Fri,  8 Nov 2019 20:34:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KyRkdL72He04; Fri,  8 Nov 2019 20:34:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0ED5787EA1;
	Fri,  8 Nov 2019 20:34:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 489CD1BF350
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 20:34:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4537686381
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 20:34:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UKw6ZxITiZGg for <devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 20:34:03 +0000 (UTC)
X-Greylist: delayed 01:19:09 by SQLgrey-1.7.6
Received: from NAM05-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr720109.outbound.protection.outlook.com [40.107.72.109])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2949C86371
 for <devel@linuxdriverproject.org>; Fri,  8 Nov 2019 20:34:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H4JTphZsB60UhzJe+UHUig8WdU0yh9d08zBjzgI8tWw0f83DhSetnFcugBJyFtdOdcstbf+Q1z89PtCBKgH5hjQ+H96vzV0dITxzS6NWIaCos+ANJu7oHc+nDJsjPTQU9NFSoKtkcmfRsV2ulLmeVcuavwhx/i4P0/UI8Gv9wKdz+dyguVC/2VrusBBkuM+UPoTlMz853ewiAtFgBod2dHPUYQfqS2wOFrjiwAfGzUHEq+su07AOOlkZWeZttlQj8BF/fDNWmYsP7WMIW4pJ+Z0hZFfo7WOWsCZoe8HQldGnACJ5AdGj340B4OQyJHsxu+KtKuda6++7MVUl/9R+bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VO2S6M1qY9fe2w8cZycs0IX2ND6j/pja58mAe0o9mNs=;
 b=ldK9AxuOxR30P2r+i4MFijZTah7HPWxbC9rMkD+N+6uFxQtZGdyL8zAoZ3INlIxIk6u1L7ZRxD0844jUM97/bTsiUjIA0PSWvY5f+s4P6cmyQe6c5YvjpMpHW3JclWndTCLM3tahkc0UPhjtciqyuNd97e0xWK0EvgTYjySK4tlVHhP8/h4g3E5GIlJUPmB9SLeqDW2TmRrNj5v89DabcRbTSehqaD99IRsE2NaMRBW3p6j2aSNP+V5Pn8/PsqH9PIHpgkFEQ1Ly8e+hxRspfUCl+iYUt4rF6OOLYnkw+pnkto79BmclnaFol1sdG6xydwM9/yqLzkUmuOjPRZxKPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VO2S6M1qY9fe2w8cZycs0IX2ND6j/pja58mAe0o9mNs=;
 b=f3Vb2th8iqAyraFJHZ5rg1Lj6MMEf2YKRedo98CqjvqOgNBPZf+s2Jnp9Aec8ARkAdnwxpzI+W1pKijJu/jSRvimqHQEEM7dvHsctS7Z9Rz8h9N6PTLy3yMDsXUWUIYI8EbeKK7v21hEGNIJtIe6W9PFBHxYzgGvOk98SjuG5T8=
Received: from DM5PR21MB0137.namprd21.prod.outlook.com (10.173.173.12) by
 DM5PR21MB0138.namprd21.prod.outlook.com (10.173.173.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.15; Fri, 8 Nov 2019 19:00:24 +0000
Received: from DM5PR21MB0137.namprd21.prod.outlook.com
 ([fe80::9cc3:f167:bb63:799]) by DM5PR21MB0137.namprd21.prod.outlook.com
 ([fe80::9cc3:f167:bb63:799%5]) with mapi id 15.20.2451.013; Fri, 8 Nov 2019
 19:00:24 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Marc Zyngier <maz@kernel.org>
Subject: RE: [PATCH v5 3/8] arm64: hyperv: Add memory alloc/free functions
 for Hyper-V size pages
Thread-Topic: [PATCH v5 3/8] arm64: hyperv: Add memory alloc/free functions
 for Hyper-V size pages
Thread-Index: AQHVlXZk8k578k16NE+4oE6DGxisXqeBnxIw
Date: Fri, 8 Nov 2019 19:00:24 +0000
Message-ID: <DM5PR21MB0137C1D8C235CE8D6B26E3E4D77B0@DM5PR21MB0137.namprd21.prod.outlook.com>
References: <1570129355-16005-1-git-send-email-mikelley@microsoft.com>
 <1570129355-16005-4-git-send-email-mikelley@microsoft.com>
 <43d53ebd2637bd9106137103028a4f0e@www.loen.fr>
In-Reply-To: <43d53ebd2637bd9106137103028a4f0e@www.loen.fr>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-11-08T19:00:22.7576236Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=1a82cc3b-5f0f-413f-80da-a4b461a15203;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b2798357-1728-4501-478c-08d7647de99b
x-ms-traffictypediagnostic: DM5PR21MB0138:|DM5PR21MB0138:|DM5PR21MB0138:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <DM5PR21MB01382E31E38EF625F764AB1AD77B0@DM5PR21MB0138.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0215D7173F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(396003)(39860400002)(136003)(376002)(366004)(189003)(199004)(22452003)(54906003)(8936002)(316002)(6436002)(81156014)(4326008)(81166006)(55016002)(8676002)(446003)(7696005)(186003)(11346002)(25786009)(10290500003)(478600001)(33656002)(6506007)(74316002)(9686003)(486006)(6246003)(476003)(26005)(99286004)(86362001)(76176011)(14454004)(102836004)(3846002)(6116002)(6916009)(66066001)(2906002)(7416002)(10090500001)(305945005)(52536014)(7736002)(66476007)(66946007)(66556008)(64756008)(66446008)(5660300002)(229853002)(256004)(71200400001)(71190400001)(76116006)(8990500004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR21MB0138;
 H:DM5PR21MB0137.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Wi7mKc93AP6t9t/asy7vx44CfuCem0Nh1XJDYES3n/DtYVDFUza3BJbKkXmvQJ2q4oXzhfIBmP6yqKH+wrYUUu0Y9hpunYYiD/l5AwsUqudxNc9T68aXNuJKNCVY4D4ec8EMDJJtwwzWyVX1mvAJp9aWTZFILw6zHUbXZWPR/2cSHN5HaIbmdqauBpe5Hu/1mENVg2MGNOF6Pk1ipTfHVgLxwrqUlh23Ekl24a8iXLIekyaIDaaCFeXGdL7UIkzP/oh8vRkmCps9CbLj/3VTWIsAdRMt7mfqloqrKOTpKRk6l2RcVtHc+zhRj0VjaQhfEwzpz22YLfApyLgN3BYI7wUrREqu9PCZnCa9XnsEILakR/zE1CI4g6+L8xCUh8fy9JOgGmlj3uqq5sLQbwluALv/OieHi3SgkcwKFuggb8nhyNn2rCUhfbdUhCHPWN61
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b2798357-1728-4501-478c-08d7647de99b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Nov 2019 19:00:24.8442 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Czto9UJuOD9dwKru99cZq6G2KmuAPdjqOMRHnbreqRp3fPfJsSdg6hTU+oIMwfrTLzhcpZMtYCDZckvywTrSu3do0+wYCH7jhfrYZffOtsE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR21MB0138
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "boqun.feng" <boqun.feng@gmail.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "apw@canonical.com" <apw@canonical.com>,
 "devel@linuxdriverproject.org" <devel@linuxdriverproject.org>,
 vkuznets <vkuznets@redhat.com>, "will@kernel.org" <will@kernel.org>,
 Sunil Muthuswamy <sunilmut@microsoft.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Marc Zyngier <maz@kernel.org>  Sent: Thursday, November 7, 2019 6:20 AM
> > +/*
> > + * Functions for allocating and freeing memory with size and
> > + * alignment HV_HYP_PAGE_SIZE. These functions are needed because
> > + * the guest page size may not be the same as the Hyper-V page
> > + * size. And while kalloc() could allocate the memory, it does not
> > + * guarantee the required alignment. So a separate small memory
> > + * allocator is needed.  The free function is rarely used, so it
> > + * does not try to combine freed pages into larger chunks.
> 
> Is this still needed now that kmalloc has alignment guarantees
> (see 59bb47985c1d)?
> 

The new kmalloc alignment guarantee is good news, and at least
for now would allow these implementations to collapse to just
kmalloc/kzalloc/kfree calls.  My inclination is to keep the function calls
as wrappers, since ISA neutral Hyper-V drivers are starting to use
them, and future work on memory encryption in virtual environments
may require special handling of pages like these that are shared
between the host and guest.  But they probably can be moved into
the ISA neutral Hyper-V drivers instead of per arch.

Michael
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
