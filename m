Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8838D199F18
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Mar 2020 21:30:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3AF7887734;
	Tue, 31 Mar 2020 19:30:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lWHMlabVPHDW; Tue, 31 Mar 2020 19:30:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BBF6786E69;
	Tue, 31 Mar 2020 19:30:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2EC1C1BF418
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 19:30:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2B0A786E1F
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 19:30:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kB785Ea9RBWf for <devel@linuxdriverproject.org>;
 Tue, 31 Mar 2020 19:30:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 054D286B67
 for <devel@driverdev.osuosl.org>; Tue, 31 Mar 2020 19:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1585683024; x=1617219024;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=He2noJduSdSQW3GXRiQgCLoG6qQkBoQ42w+6LAtLO68=;
 b=LzO1IGlIc6Lg+GMfRq9ZlQrYlgUjaoH4z2Vnq4qiorgilfwOBxPy7EH+
 fiAexVfMAiQbw1htTeF2Nzy88cmpshHD78PSQAlt1gTXz+KFp43o2i6ly
 YZ/QUMY8EuMQpGIinQdM1AEeHw1E0W0+GmFQvuBuGtNi3Uso5vBxI0boD
 M/k6fI0yFsI8YHwp+Qxz50HhQ/DE+kqWRFKhs+9tWK52vPPZ8eWJc2Ris
 j6173TZHBYfHUUWqAiaKTtNLEGBekY08vYYYQb435N4D/xP9Ceu9l8kox
 QERCsI0yr3SyUouvIkGcAB1L/RNiRDCwFcj92QaGvbtLr/WfiWQDohkGH A==;
IronPort-SDR: I06eq689CPaMSyPVkXQzCVn31IpgqbFjkSAKEGoY94fhsOZyE2absUqp6wblBMBSD5kZZDkLtd
 8u4i2rfcUXTYUctIp0xynegoGZcpmaHvN6BipuIip9vpao9q+QEHDkNbDFTxOIz7+M6ATw5BU2
 Qc+YXXv4jcxGCsWrdzK19ksq8MkeLOeCJYEpi9291u2BHYGFxk3C1DyO5N8QMy5H6sjZQR7iAu
 DLFQWq92SNc1/sED93CMnHVRsIHvkuMmn7wlsgOabxU/JmleBate3zibKllyBuL1ljbkCflwSx
 vgU=
X-IronPort-AV: E=Sophos;i="5.72,328,1580799600"; d="scan'208";a="74280114"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 31 Mar 2020 12:30:23 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 31 Mar 2020 12:30:23 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 31 Mar 2020 12:30:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PpeCBy15D+9ouRiSo+1DhwyZzA2KDEFZcLfjLvWU9bIc3E+WcIzS84dFgEwJJ1haa18l81KGUIEICS+vFlxkUnct5hYQJ1crgsL2I8VPCIvTNEqh7u1271ijY4/5YzQWyhy/2DUxdJoWyTi7sG4m/PyRe/0QWK6rVDAGJpHmEJvACAmnmFPf0tF7PrTdnNuCJUMLGG4v68TcxQhmn60WNHyDs0+EZ1mFX2GUKULr8UeMoWYA5O2wMLU5nmNebMq5Do1sh2m5a/k4vkPgZCOclORzK60N8/sjOexyvcaY0zpcLGX4arR3C6WY1ecb/76JmF6n745wjAceOU09tfp/Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=He2noJduSdSQW3GXRiQgCLoG6qQkBoQ42w+6LAtLO68=;
 b=OEfFNg2PO1JjVMgk9vzfVns+aaN7bytLP7E8ryLaPUZ+d+27qfNlONNzGnJzl8oT+hAHXaMCIfraubwN+LWFEmyagN0sXj1xfzu1LFAZBe/9ZHZw2fs/tQwlTRligKm575iCN9GSuzl0VMc5wYdd8glKBHWLZepPCXaxT2/mp13i1nV1a9c7NslBcyVnOoQ/Ib26AkTaWcyekByeDDvZNC/sxDYEq2VmpDmZjgqMTFeYaCgbCiHRyeAVg8efNOUU0ZIP+VrUBdHq9JwGSVjWD7vGCjAG4a+P+U9ai8iSpC53KYoFEtFSqsM1DO/v21f4H4WPvR6gpLpNMWPp87XCLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=He2noJduSdSQW3GXRiQgCLoG6qQkBoQ42w+6LAtLO68=;
 b=BbfEAPixhVi3HWPWyJOwqryF1k4oHYhWyq2UbIm5NSDW9R2ZxwMTb/kWSPP+ZNBvjKgwV9pf82auxcE7EVPIqjHVQ3Ts1E4fYMkAMaa3xCUbjeZ3321y3szbyIkts1eziLEgRp+3IHLcveW13kbGTKgSu1PW/m4Z+ABKlhPFLko=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM6PR11MB3066.namprd11.prod.outlook.com (2603:10b6:5:64::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.18; Tue, 31 Mar 2020 19:30:20 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa%7]) with mapi id 15.20.2856.019; Tue, 31 Mar 2020
 19:30:20 +0000
From: <Christian.Gromm@microchip.com>
To: <lkp@intel.com>
Subject: Re: b276527539 ("staging: most: move core files out of the staging
 .."): [   12.247349] BUG: kernel NULL pointer dereference, address: 00000000
Thread-Topic: b276527539 ("staging: most: move core files out of the staging
 .."): [   12.247349] BUG: kernel NULL pointer dereference, address: 00000000
Thread-Index: AQHWBc+TuKJ+f2owr0iaAkl6WPDuc6hjGf0A
Date: Tue, 31 Mar 2020 19:30:19 +0000
Message-ID: <3c8fefd9fadf217bc618b6558ce099aa6f76145e.camel@microchip.com>
References: <20200329133917.GE11705@shao2-debian>
In-Reply-To: <20200329133917.GE11705@shao2-debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.30.5-1.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Gromm@microchip.com; 
x-originating-ip: [46.142.75.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d1bb71f3-307e-4b50-fdc4-08d7d5a9f352
x-ms-traffictypediagnostic: DM6PR11MB3066:
x-microsoft-antispam-prvs: <DM6PR11MB3066907D605B41EE7BB8BA64F8C80@DM6PR11MB3066.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:422;
x-forefront-prvs: 0359162B6D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(396003)(366004)(376002)(346002)(136003)(39860400002)(26005)(5660300002)(76116006)(66446008)(64756008)(66946007)(66476007)(91956017)(66556008)(71200400001)(6916009)(2616005)(45080400002)(86362001)(478600001)(36756003)(316002)(4326008)(966005)(54906003)(186003)(6486002)(8936002)(2906002)(81156014)(6506007)(8676002)(81166006)(6512007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eqdsWJ3ZcaKLd1SJj8XLLmX9tm7xrtgJAjXp6Md2mKL+GzCitQARtTtJz6aMdTO3r/PkFzhH2iYgK+y5uYxgtwhJvmgtyPqmaFkgXKQW4Y93F11Co1RnzGjidqWibhcx3G8XFQOTZWczqm1NQAMyVXO29MH45BLl3Yh9gWqOkM79z40+PhTB+gqlgGk1iGdOZ+VRu4pUyA8QXY1DqN6uqH5NtyxSYMRbY2knxgxsLHTmn5I71KSiyV8jX8tfzqmcTKja/sB4N16gpkkMQpYQUVOWC+2Z/YUw8wh010S+/6GVFvN3ZZ7nuOI7Uhtraj2r386ULjp3OCIsgvtlwy4IGICYpMqewR0o6lYtnTBSxSQLXmW4pEmICcEzJpca7epyXiyfSYkuhmjP9qq66yDANFYmmgQ+Kr1vzC30dHqYF1IR3U8oRuKOod8YpN4iv/JGOgAaxZc4Jf2OY9DqQo1pIQmZXiKREkV8kSQxUpW48L5+5/g5mBmbVLidj0aZ6qooQm0iJgiK/XvOzseFzPtojg==
x-ms-exchange-antispam-messagedata: VhrgiCaCIXMomU2+v3xHi+rma4+VCuob2WCDHGx/w81hlMeOXpvZLbbhOkaWJ8ZhxxQ7ykBdho2Czj5zWR5wAKR8T8lZAMqOYWP2RgRF/EiIKldt0F7Gk5Lq0RqH9qbfpOiV3wvZ4I1ZDDppXuNHIw==
x-ms-exchange-transport-forked: True
Content-ID: <8296B9BE72379A44B41F503D915A6080@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d1bb71f3-307e-4b50-fdc4-08d7d5a9f352
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2020 19:30:20.2907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0V7K/k+CxMm6mhIGqDSzAKOTwEUuDZhGtt8A6IeFH3ehWTR8SiRN65rO2MTavaVuJJXrvnZM+7nmbTpFwc1xYli+2wq+0SqFFyfdzOm/S7c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3066
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
Cc: devel@driverdev.osuosl.org, lkp@lists.01.org, linux-kernel@vger.kernel.org,
 gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2020-03-29 at 21:39 +0800, kernel test robot wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> Greetings,
> 
> 0day kernel testing robot got the below dmesg and the first bad
> commit is
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
> staging-next
> 
> commit b276527539188f1f61c082ebef27803db93e536d
> Author:     Christian Gromm <christian.gromm@microchip.com>
> AuthorDate: Tue Mar 10 14:02:40 2020 +0100
> Commit:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> CommitDate: Tue Mar 24 13:42:44 2020 +0100
> 
>     staging: most: move core files out of the staging area
> 
>     This patch moves the core module to the /drivers/most directory
>     and makes all necessary changes in order to not break the build.
> 
>     Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
>     Link: 
> https://lore.kernel.org/r/1583845362-26707-2-git-send-email-christian.gromm@microchip.com
>     Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> 
> 22dd4acc80  Staging: speakup: Add identifier name to function
> declaration arguments.
> b276527539  staging: most: move core files out of the staging area
> e681bb287f  staging: vt6656: Use DIV_ROUND_UP macro instead of
> specific code
> +-------------------------------------------------------+----------
> --+------------+------------+
> >                                                       | 22dd4acc80
> > | b276527539 | e681bb287f |
> +-------------------------------------------------------+----------
> --+------------+------------+
> > boot_successes                                        |
> > 26         | 0          | 0          |
> > boot_failures                                         |
> > 8          | 11         | 11         |
> > WARNING:possible_circular_locking_dependency_detected |
> > 8          |            |            |
> > BUG:kernel_NULL_pointer_dereference,address           |
> > 0          | 11         | 11         |
> > Oops:#[##]                                            |
> > 0          | 11         | 11         |
> > EIP:__list_add_valid                                  |
> > 0          | 11         | 11         |
> > Kernel_panic-not_syncing:Fatal_exception              |
> > 0          | 11         | 11         |
> +-------------------------------------------------------+----------
> --+------------+------------+
> 
> If you fix the issue, kindly add following tag
> Reported-by: kernel test robot <lkp@intel.com>
> 
> [   12.242090] no options.
> [   12.245364] FPGA DOWNLOAD --->
> [   12.245723] FPGA image file name: xlinx_fpga_firmware.bit
> [   12.246548] GPIO INIT FAIL!!
> [   12.246995] most_sound: init()
> [   12.247349] BUG: kernel NULL pointer dereference, address:
> 00000000
> [   12.248032] #PF: supervisor read access in kernel mode
> [   12.248322] #PF: error_code(0x0000) - not-present page
> [   12.248322] *pdpt = 0000000000000000 *pde = f000ff53f000ff53
> [   12.248322] Oops: 0000 [#1] PREEMPT SMP
> [   12.248322] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.6.0-rc7-
> 00376-gb276527539188 #1
> [   12.248322] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996),
> BIOS 1.12.0-1 04/01/2014
> [   12.248322] EIP: __list_add_valid+0x29/0x77
> [   12.248322] Code: c3 55 89 e5 56 53 83 ec 10 8b 59 04 39 d3 74 1a
> 89 4c 24 0c 89 5c 24 08 89 54 24 04 c7 04 24 00 cc bd c2 e8 84 9e b4
> ff 0f 0b <8b> 33 39 ce 74 1a 89 5c 24 0c 89 74 24 08 89 4c 24 04 c7
> 04 24 7c
> [   12.248322] EAX: c2f45800 EBX: 00000000 ECX: c3e8df50 EDX:
> 00000000
> [   12.248322] ESI: 00000000 EDI: ec4a7f68 EBP: ec4a7ee8 ESP:
> ec4a7ed0
> [   12.248322] DS: 007b ES: 007b FS: 00d8 GS: 00e0 SS: 0068 EFLAGS:
> 00010246
> [   12.248322] CR0: 80050033 CR2: 00000000 CR3: 03256000 CR4:
> 001406b0
> [   12.248322] Call Trace:
> [   12.248322]  ? vprintk_func+0x9d/0xa7
> [   12.248322]  most_register_component+0x33/0x53

This function does a NULL check on the passed argument
struct most_component, berfore it calls list_add_tail().
So the dereferenced pointer must be the struct list_head
comp_list of the core.

> [   12.248322]  ? wilc_spi_driver_init+0x11/0x11
> [   12.248322]  audio_init+0x2c/0x76
> [   12.248322]  do_one_initcall+0xf0/0x284
> [   12.248322]  ? __might_sleep+0x70/0x77
> [   12.262064]  kernel_init_freeable+0x141/0x1a5
> [   12.262064]  ? rest_init+0x205/0x205
> [   12.262064]  kernel_init+0xb/0xea
> [   12.262064]  ? schedule_tail_wrapper+0x9/0xc
> [   12.262064]  ret_from_fork+0x2e/0x38
> [   12.262064] Modules linked in:
> [   12.262064] CR2: 0000000000000000
> [   12.262064] ---[ end trace 7c7a2cb6d11f9c5d ]---
> [   12.262064] EIP: __list_add_valid+0x29/0x77

which is weird, as the list_head used here is not dynamically
allocated and INIT_LIST_HEAD is definitely being called in the
__init function most_init() of the core module before its first
usage.

I've never seen the code failing at this point, nor has this
being reported by anyone yet.

Need to investigate.

thanks,
Chris

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
