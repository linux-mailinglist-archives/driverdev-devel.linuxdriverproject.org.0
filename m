Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 878E07B668
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 01:55:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5221887BEE;
	Tue, 30 Jul 2019 23:55:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KObsCcMxdxCo; Tue, 30 Jul 2019 23:55:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 26438873DE;
	Tue, 30 Jul 2019 23:55:44 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 647161BF28C
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Jul 2019 23:55:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 60F6385580
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Jul 2019 23:55:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rLyQtHFjbjHy
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Jul 2019 23:55:41 +0000 (UTC)
X-Greylist: delayed 00:59:47 by SQLgrey-1.7.6
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
 (mail-eopbgr800095.outbound.protection.outlook.com [40.107.80.95])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DDB0C85572
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Jul 2019 23:55:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bzD39K52Md4lFNXpYSz9ktz9R1PcbxQ2fChS+cPzWpG3ynIOJY102qeNA7zuLgqRKayydtv87aHtEieF4kSNXXh8lkzX2cKREa7bB1z3HxrSkNXBMyfJbxD/+qnOUSrA1g6ArcorPk2pvOnyTR7k8tiwhz6CrywvFBn2FZB0UU17oHsNPleKsIzjl4ef/D6YYcjSqPSLr+Ch948CT5zE/sByShZLxjyeJPbUfY/XwTE/vln7X9zBV3n48h+HZL4QLfACBr1VRyFP3MsXoEAQRRMnbA88SHt96iLNCugKo2GvE+MkAVX1mjZtFLj/8YV4XXaibS/TLVUpXhP1HMxzXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dEuT0TCMC3AU3xoYRF+BdV4unpsjIrcZu/bc3dxa0us=;
 b=ACxDms0QlCUVju9IMRNGQGqvZWtCgBOx1x0d0Pq3yrO6huLXPiDZPgEGg/2I9N5V1qcC/nFPljanOXDbr6OmGukTZm5E7yu6UwufhbHUoBbcUh5DnGtwbdJexQ7eEPcj3kaTmMQMPA1gw/ybuEnsjrIOORMxf/i7G7OSfg0BP2v7hjdRb9ZLaJJGCzTTSjP7nPFZvm79RAUGNjK70jCQhzZ4ogsyvFAMlcjMf3f2w38su7qr7YAMVR1YTDLrB/GwyW/nYD67jQhD0yRz9vPZDbPCJjfgEdjbTm9npYCD51gtS+O1vlUuUWjuHva25xI6PFVB9zFnSGY/91CyssPu/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dEuT0TCMC3AU3xoYRF+BdV4unpsjIrcZu/bc3dxa0us=;
 b=dZ+VgK+C8PeOvuioMr5ZHbttHip21K5PCWPvmvby1Bc9MPora6dqiIjVNq4a7u/u9Fqh+egTS0Jf0Ay9ndtrqzopEKiQjZUyqJ4PRH85j2xrupO9J8bO6MYHtdJhd4tOHro4xyW8dthQSOQ2a18ffFHkB/susvjPP1IhK/ZALj0=
Received: from MWHPR21MB0784.namprd21.prod.outlook.com (10.173.51.150) by
 MWHPR21MB0832.namprd21.prod.outlook.com (10.173.51.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.2; Tue, 30 Jul 2019 20:22:33 +0000
Received: from MWHPR21MB0784.namprd21.prod.outlook.com
 ([fe80::7de1:e6c1:296:4e82]) by MWHPR21MB0784.namprd21.prod.outlook.com
 ([fe80::7de1:e6c1:296:4e82%5]) with mapi id 15.20.2157.001; Tue, 30 Jul 2019
 20:22:33 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: Dexuan Cui <decui@microsoft.com>, Thomas Gleixner <tglx@linutronix.de>,
 vkuznets <vkuznets@redhat.com>, Haiyang Zhang <haiyangz@microsoft.com>, KY
 Srinivasan <kys@microsoft.com>, Stephen Hemminger <sthemmin@microsoft.com>,
 Sasha Levin <Alexander.Levin@microsoft.com>, "linux-hyperv@vger.kernel.org"
 <linux-hyperv@vger.kernel.org>, Long Li <longli@microsoft.com>,
 "x86@kernel.org" <x86@kernel.org>
Subject: RE: [PATCH v2] x86/hyper-v: Zero out the VP ASSIST PAGE to fix CPU
 offlining
Thread-Topic: [PATCH v2] x86/hyper-v: Zero out the VP ASSIST PAGE to fix CPU
 offlining
Thread-Index: AdU94G2xIVn7CyIeS/6O8LXGJUvDAAJM6dHA
Date: Tue, 30 Jul 2019 20:22:33 +0000
Message-ID: <MWHPR21MB078454BD8C0F54F77DE44FF1D7DC0@MWHPR21MB0784.namprd21.prod.outlook.com>
References: <PU1P153MB0169B716A637FABF07433C04BFCB0@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
In-Reply-To: <PU1P153MB0169B716A637FABF07433C04BFCB0@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=decui@microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-07-19T03:22:32.0829896Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=5dd41e98-2884-4d2f-a875-9f8196cfcfd0;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 58968a0b-effe-4225-ff8c-08d7152ba79b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MWHPR21MB0832; 
x-ms-traffictypediagnostic: MWHPR21MB0832:|MWHPR21MB0832:
x-ms-exchange-transport-forked: True
x-ms-exchange-purlcount: 2
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <MWHPR21MB0832A50E7938E318E510C971D7DC0@MWHPR21MB0832.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0114FF88F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(366004)(396003)(376002)(39860400002)(136003)(199004)(189003)(54534003)(81166006)(256004)(186003)(33656002)(74316002)(81156014)(102836004)(8676002)(316002)(110136005)(6506007)(55016002)(26005)(7416002)(2906002)(7696005)(22452003)(71200400001)(8936002)(6306002)(76176011)(6116002)(476003)(66556008)(53936002)(14444005)(3846002)(486006)(54906003)(11346002)(229853002)(6436002)(71190400001)(7736002)(446003)(4326008)(8990500004)(66066001)(1511001)(2501003)(76116006)(99286004)(14454004)(10090500001)(66946007)(66476007)(52536014)(478600001)(6246003)(966005)(68736007)(305945005)(64756008)(9686003)(10290500003)(5660300002)(66446008)(25786009)(86362001)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR21MB0832;
 H:MWHPR21MB0784.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: EhMi/sbW3DHzzRwYblwAIOdaHVHdNKFYVLdvgwOjxgNHj181Eu6BKsBZIQFGc4ZwCFWt3qqiJ/y5Pt4GiCoxysFqY34hW02T55D8axSOpqaZ9UixIi3FaotPFt6zygu5068HPppl3mjjCuX3qf/gvXpExjoFnYlAIB1+dXL1ATkXFFit+Yz5bskLqByP1nwzlhI90fRn96ouSPZcre8CUEhLp2Kj4PKqpfZj0905CNBN31nL5oRIof8be/IcZhoE6QnE+CN8JNVUyiBr+4rCCwj84AbgGgO9RR85oDDhuVXwNIgO4QdtfqA8+0vMRxH9s1m3enJAXllCTEguwwASEJ0kwdlmrZrsGNFoNfKsXjnjOkPurVZ7CLeyxWWiEvL3Oa3Us5RaZhdZZ9qDR1HZQtHfzotIXP1R+TyL57wWvQ4=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58968a0b-effe-4225-ff8c-08d7152ba79b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2019 20:22:33.4020 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K9Q2K79T00cghrJerAhb03CyBTDy4bsEp8T4dee7FcGgbyH5GLAMxOLn06NdzgbipXP3hSkRmMU12+t9VkKxENFxI6PyayqUJo7C9hV9fyA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR21MB0832
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
Cc: "olaf@aepfle.de" <olaf@aepfle.de>,
 "jasowang@redhat.com" <jasowang@redhat.com>,
 "driverdev-devel@linuxdriverproject.org"
 <driverdev-devel@linuxdriverproject.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter
 Anvin" <hpa@zytor.com>, "apw@canonical.com" <apw@canonical.com>,
 Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dexuan Cui <decui@microsoft.com> Sent: Thursday, July 18, 2019 8:23 PM
> 
> The VP ASSIST PAGE is an "overlay" page (see Hyper-V TLFS's Section
> 5.2.1 "GPA Overlay Pages" for the details) and here is an excerpt:
> 
> "
> The hypervisor defines several special pages that "overlay" the guest's
> Guest Physical Addresses (GPA) space. Overlays are addressed GPA but are
> not included in the normal GPA map maintained internally by the hypervisor.
> Conceptually, they exist in a separate map that overlays the GPA map.
> 
> If a page within the GPA space is overlaid, any SPA page mapped to the
> GPA page is effectively "obscured" and generally unreachable by the
> virtual processor through processor memory accesses.
> 
> If an overlay page is disabled, the underlying GPA page is "uncovered",
> and an existing mapping becomes accessible to the guest.
> "
> 
> SPA = System Physical Address = the final real physical address.
> 
> When a CPU (e.g. CPU1) is being onlined, in hv_cpu_init(), we allocate the
> VP ASSIST PAGE and enable the EOI optimization for this CPU by writing the
> MSR HV_X64_MSR_VP_ASSIST_PAGE. From now on, hvp->apic_assist belongs to the
> special SPA page, and this CPU *always* uses hvp->apic_assist (which is
> shared with the hypervisor) to decide if it needs to write the EOI MSR.
> 
> When a CPU (e.g. CPU1) is being offlined, on this CPU, we do:
> 1. in hv_cpu_die(), we disable the EOI optimizaton for this CPU, and from
>    now on hvp->apic_assist belongs to the original "normal" SPA page;
> 2. we finish the remaining work of stopping this CPU;
> 3. this CPU is completely stopped.
> 
> Between 1 and 3, this CPU can still receive interrupts (e.g. reschedule
> IPIs from CPU0, and Local APIC timer interrupts), and this CPU *must* write
> the EOI MSR for every interrupt received, otherwise the hypervisor may not
> deliver further interrupts, which may be needed to completely stop the CPU.
> 
> So, after we disable the EOI optimization in hv_cpu_die(), we need to make
> sure hvp->apic_assist's bit0 is zero. The easiest way is we just zero out
> the page when it's allocated in hv_cpu_init().
> 
> Note 1: after the "normal" SPA page is allocted and zeroed out, neither the
> hypervisor nor the guest writes into the page, so the page remains with
> zeros.
> 
> Note 2: see Section 10.3.5 "EOI Assist" for the details of the EOI
> optimization. When the optimization is enabled, the guest can still write
> the EOI MSR register irrespective of the "No EOI required" value, though
> by doing so we can't benefit from the optimization.
> 
> Fixes: ba696429d290 ("x86/hyper-v: Implement EOI assist")
> Signed-off-by: Dexuan Cui <decui@microsoft.com>
> ---
> 
> v2: there is no code change. I just improved the comment and the changelog
> according to the discussion with tglx:
> 
> https://lkml.org/lkml/2019/7/17/781
> https://lkml.org/lkml/2019/7/18/91 
> 
>  arch/x86/hyperv/hv_init.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/x86/hyperv/hv_init.c b/arch/x86/hyperv/hv_init.c
> index 0e033ef11a9f..d26832cb38bb 100644
> --- a/arch/x86/hyperv/hv_init.c
> +++ b/arch/x86/hyperv/hv_init.c
> @@ -60,8 +60,16 @@ static int hv_cpu_init(unsigned int cpu)
>  	if (!hv_vp_assist_page)
>  		return 0;
> 
> +	/*
> +	 * The VP ASSIST PAGE is an "overlay" page (see Hyper-V TLFS's Section
> +	 * 5.2.1 "GPA Overlay Pages"). Here it must be zeroed out to make sure
> +	 * we always write the EOI MSR in hv_apic_eoi_write() *after* the
> +	 * EOI optimization is disabled in hv_cpu_die(), otherwise a CPU may
> +	 * not be stopped in the case of CPU offlining and the VM will hang.
> +	 */
>  	if (!*hvp)
> -		*hvp = __vmalloc(PAGE_SIZE, GFP_KERNEL, PAGE_KERNEL);
> +		*hvp = __vmalloc(PAGE_SIZE, GFP_KERNEL | __GFP_ZERO,
> +				 PAGE_KERNEL);
> 
>  	if (*hvp) {
>  		u64 val;
> --
> 2.19.1

Reviewed-by:  Michael Kelley <mikelley@microsoft.com>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
