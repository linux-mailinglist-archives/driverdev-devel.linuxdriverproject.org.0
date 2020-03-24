Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7985A1913E1
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Mar 2020 16:09:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5974088C8A;
	Tue, 24 Mar 2020 15:09:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JYfIHxo5-he0; Tue, 24 Mar 2020 15:09:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CD99087A8E;
	Tue, 24 Mar 2020 15:09:01 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3FD5D1BF574
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 24 Mar 2020 15:08:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3C2AF84F2E
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 24 Mar 2020 15:08:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ihx8IIXltjh6
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 24 Mar 2020 15:08:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7123C84E5F
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 24 Mar 2020 15:08:58 +0000 (UTC)
IronPort-SDR: q3hltyQAa8XN9wZlDg9vRaWPa790spmGE1JaE/mcWRjRmCYmQ/tHGUdKcA2seG5cduHRR5p1nO
 ojmf6/vgwkmLrHNaDg2GchcgQzdvEfo72YrDueQ0U0mtcNBo199fdnslThjuPcY0rIrMAf2Vra
 WZnVDpKCw8Iu/KilQl5awaWmpYVezbArjXWiE6ocImduIoAIKSoHpoKInAyQjGCNKr2v5D8CKG
 IUKZMmPAYkZg2Ur/5T+ZEcs3IJ2B4GD4KVBfZqS8q0bwBIAmpILnXRH5z0/eMmICps1E44mEHE
 v8o=
X-IronPort-AV: E=Sophos;i="5.72,300,1580799600"; d="scan'208";a="68216914"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Mar 2020 08:08:57 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 24 Mar 2020 08:08:56 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 24 Mar 2020 08:08:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fWOMXuWjAZQUX3txbj7Pacy7dnh3zCSkbww9r02Vfbyv6Q08eGueGquoA89RwZXl0mIUttLRa0MdCCM0qGHypIieXQSx+xuhqxtYBBCfIiB0+3g6x+2uvcFKt6fst99GldGGC9v05cZaGm3gKsOORTAmKpRH+tqphTPmFBB06AVgId+JUhHKspMQENZXd8UhTK+LKyvJZGxyN+HaFbafMLWDNTFewocpg1xuK7lZVHvDGBq7uvLXCCdf4lTr9LLJOY+XenZPP2GmmjykSYjK8SppZ1BHnywVgOGGvqLY25hbva4aZxF9kWzozeOjqIQmdsv/Tr0YGpBOQHNlJT4nhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vSMx9ea35G5fIcwZGx3Qg8yZJSC1gOY7/XQ+wmckX3w=;
 b=V2tzGkl+62pqoy5hQPA8gHKFAI3yxJYyFUywaSex3pKSAYzvCDgi9CfrNSx7piftcfa04Pm+7tFdiQkymxasIaQYmdx86z/9R1ohnS/iqmQ0vf7idNp6a8mD9RkbPRhudi/Bs32vkgP3FDeKW88hMVxGsyHg296TtgG1+QnvvL0+1vPPqgzC39mwlHIVWpXrHi7ahSAar4YoCqj1OmbvD2TZ/qyzS20XNzfUwt6gGNZ5Jvj4D11E9c52MeAj8+4Y+U9T/D6uIMAkshewxszPPrxmYj+8FitD1xmQTwdQs9AwjhUzStvowGYLGtsULegq7rDBGzkX5qEl/W3oPIo2mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vSMx9ea35G5fIcwZGx3Qg8yZJSC1gOY7/XQ+wmckX3w=;
 b=ajvFI0Mz5PQgSabtUVT/8ezAMIWY6jygH6T0+pop97XKm0qem8Zn6ACpvdTc7akDBudu91BMpOmrSqRSgJPrrtCxTu7S0507q9g4CeWoOQMQt/WWFVGOlZoYsW22Ht0TXgf4sc2WHrOln6ySKJ1ON0AD95gaG0MP4Le/+CBqOMg=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM6PR11MB2873.namprd11.prod.outlook.com (2603:10b6:5:bd::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.22; Tue, 24 Mar 2020 15:08:56 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa%7]) with mapi id 15.20.2835.017; Tue, 24 Mar 2020
 15:08:56 +0000
From: <Christian.Gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [RESEND PATCH v5 0/3] staging: most: move core module out of
 staging
Thread-Topic: [RESEND PATCH v5 0/3] staging: most: move core module out of
 staging
Thread-Index: AQHV9tw+NUoBjsGNGkOhOHFMRzqFD6hXxjEAgAAoW4A=
Date: Tue, 24 Mar 2020 15:08:56 +0000
Message-ID: <06a3f2a923cd920ef126e6fce4fa127e02e65e9f.camel@microchip.com>
References: <1583845362-26707-1-git-send-email-christian.gromm@microchip.com>
 <20200324124428.GA2388007@kroah.com>
In-Reply-To: <20200324124428.GA2388007@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.30.5-1.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Gromm@microchip.com; 
x-originating-ip: [88.130.74.148]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 17d9bd18-7b7b-47fe-171f-08d7d00545ef
x-ms-traffictypediagnostic: DM6PR11MB2873:
x-microsoft-antispam-prvs: <DM6PR11MB28737DA3055D35ABFC9B52E5F8F10@DM6PR11MB2873.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03524FBD26
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(396003)(136003)(366004)(39860400002)(8936002)(8676002)(36756003)(91956017)(66946007)(76116006)(2616005)(81166006)(2906002)(5660300002)(316002)(81156014)(66556008)(66446008)(66476007)(64756008)(186003)(26005)(71200400001)(86362001)(4744005)(6916009)(6512007)(6506007)(478600001)(4326008)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB2873;
 H:DM6PR11MB3420.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6qJZVMyHChH4IzO+qDfSDKuGWRYvXHX+53u2CidJFzELG3CKI6smF7+qmEp6/Ljd/D78QP7yJwNUACjq6cFHx3jzHGMAfhhT7hgmWVxp2nvjlfZjWt4VmJizE2BFFxUuMWaYqhd96aiOC+3tQwwOW6j/TsglRJT63NcC1ZcuK4YwsiZL/SK/lfoF1hO5qcTK3LQeAcrWTjINyRLobkAZqhYhNrlWSDFzrVurTqy9oo31cX3rsxCisvUBCKGuyFUPnuYXB/hG3WduLxYimE6NYDOynqNeeQaeoSjkRVEjw8XO6BoiaVtw5FZpM8KKmOvkOpvyhWf28evipA6uB/c4FKaTw+7VWagYkRvGwjUys4Pvm4FJN0UHWCMdGbKK67ZzqdIsAij3sNTgK+aIbO5Rf51YkzSLOuic4vmxr95PQ4vE23aEp+K/tT8J1dIRyd97
x-ms-exchange-antispam-messagedata: V/jQKO+CB0l+ZmgaHeQn9Kh/ZSE8RNC8tsy279zOgsvvUWm6fFEG1w525hqXpgkiAqHC02JKeH/XOj2c20NvZl035HPJkaLIYpc85gfeLcWSoj5XSO8pM2ZpXkrL8Ooak5zCKK/thp7imVGKNcgnKA==
x-ms-exchange-transport-forked: True
Content-ID: <42A0CFD1C757CD48AEAB026FD4CA2725@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 17d9bd18-7b7b-47fe-171f-08d7d00545ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2020 15:08:56.1046 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yqv+xVqpyZqPMKU9BznymiJOeM7cJvHRJJd67tcNUTMBWYOl3AgGbXRdouBy8qd5CVl+gv6OKJDxOvf2ZGZFe56DDV3g3f8v+6YlbsNrbjo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2873
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2020-03-24 at 13:44 +0100, Greg KH wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> On Tue, Mar 10, 2020 at 02:02:39PM +0100, Christian Gromm wrote:
> > v2:
> > Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> >         - use -M option to create patches
> > v3:
> > Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> >         - fix date range in comment section of core.c
> >         - move code to free up memory to release funtions
> >         - remove noisy log messages
> >         - use dev_* functions for logging
> > v4:
> > Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> >       - change owner of struct device that is registered with
> > kernel's
> >         device/driver model
> >       - fix linked list race condition
> >       - fix logging behaviour
> >       - fix possible NULL pointer dereference
> > v5:
> >       rebased and adapted
> 
> Sorry for the long delay on this, looks good, thanks for sticking
> with
> this.
> 
> All now queued up.

Nice! :)
Thank you very much,

Chris

> 
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
