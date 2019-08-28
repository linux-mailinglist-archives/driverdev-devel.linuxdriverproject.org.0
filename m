Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 377D19F914
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Aug 2019 06:07:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D6C5A24C8F;
	Wed, 28 Aug 2019 04:07:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dljK9yTyBDjZ; Wed, 28 Aug 2019 04:07:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 74EFB24C01;
	Wed, 28 Aug 2019 04:07:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 579131BF3C1
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 04:07:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 52FF686C06
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 04:07:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XBH5llBIZmwd for <devel@linuxdriverproject.org>;
 Wed, 28 Aug 2019 04:07:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
 (mail-eopbgr800131.outbound.protection.outlook.com [40.107.80.131])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3F33E86BE1
 for <devel@linuxdriverproject.org>; Wed, 28 Aug 2019 04:07:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eVeWzvlWHvcBw2NpBLQMwzQkemGWr6a9JVN+OQyWIjqTT9yfBk2/8i5ejzZG655VKFzwE6RIzCDxkd0Ww395EteTI/6NSE3PWL4OhdPu+necxYBT5Rt20mpnIcVZhlZ9AvSuz0eKKN3Pe72/W/uPrwZGC0kH3kdIgz9U01cQ3ugaOruo2z7KjmmMSCGGvpaJZz2ESrDgpdEXEDGbj+UYbvh9zDGGFuJAMV5fUSplramAGnWjJNThcq332XnN10eLQ855Goh9PFJ16dz2b2HVdoj/g9aiJXCv1jbVsxaLEi4ZiG0K2mzuGYdg0kf073J0mcAJ4Mhj8joMHru8BzJcVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FS1L3rsQGfFeNKHOGgPsLUtZP9N+fdtdluU9yHkAEL8=;
 b=Ju1ETHFJEuDttGkS+I6VETikTJuj/b7rP12tc0OSLdQxddMVrmY77uHddthMNnwcG00RtdcbqmTaW8VkdXqhEBjMb61XyeNzISrBHnBNQrzE/Mk2bLhCKvKsxSsUduU8/3mXuWg3ZVwnQUAXIOGUuVdcpVzNUDmoM1gInw6Ysw+bQiobhz0oB/mct5OAZAxoCqm3rgbqNkmhav33SiKirgL3sTMlmF9r/b68EVcD/1YDo4Oth5r5uIkHRqIN68rCuhaOLyZJBbXvwyEP9LZL7zj/BrPXu2uMc7DW5VmRwp0yPCo7UAEXTdBnZBxLDKBdhHUyhx7cXwTNWzVoAC97Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FS1L3rsQGfFeNKHOGgPsLUtZP9N+fdtdluU9yHkAEL8=;
 b=Fz7QnOBrMu1IrUYN4WqPSNumzF7XHz8CR7Z8GKVBRL8XjmSEYzIiYMJ3NyrbobEwfVQ6aKrFu7SGhV9pWItHGAYwDgArCobH0RlsZTCTcqENUK9BFxaxWXoebjO9Gd4fX32cqDe94baIK+yJ/7EAjz/a+hexnIMkCJcKLAHG8hg=
Received: from DM5PR21MB0137.namprd21.prod.outlook.com (10.173.173.12) by
 DM5PR21MB0170.namprd21.prod.outlook.com (10.173.173.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.3; Wed, 28 Aug 2019 03:33:58 +0000
Received: from DM5PR21MB0137.namprd21.prod.outlook.com
 ([fe80::c437:6219:efcc:fb8a]) by DM5PR21MB0137.namprd21.prod.outlook.com
 ([fe80::c437:6219:efcc:fb8a%7]) with mapi id 15.20.2241.000; Wed, 28 Aug 2019
 03:33:58 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: "will.deacon@arm.com" <will.deacon@arm.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "marc.zyngier@arm.com" <marc.zyngier@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-hyperv@vger.kernel.org"
 <linux-hyperv@vger.kernel.org>, "devel@linuxdriverproject.org"
 <devel@linuxdriverproject.org>, "olaf@aepfle.de" <olaf@aepfle.de>,
 "apw@canonical.com" <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>, "marcelo.cerri@canonical.com"
 <marcelo.cerri@canonical.com>, KY Srinivasan <kys@microsoft.com>
Subject: RE: [PATCH v4 0/8] Enable Linux guests on Hyper-V on ARM64
Thread-Topic: [PATCH v4 0/8] Enable Linux guests on Hyper-V on ARM64
Thread-Index: AQHVTJXUFtv+Ew2tU0qrx4VqyHzNjKcQCEKw
Date: Wed, 28 Aug 2019 03:33:58 +0000
Message-ID: <DM5PR21MB01372CD06B64AA668A65D18CD7A30@DM5PR21MB0137.namprd21.prod.outlook.com>
References: <1565122133-9086-1-git-send-email-mikelley@microsoft.com>
In-Reply-To: <1565122133-9086-1-git-send-email-mikelley@microsoft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=mikelley@ntdev.microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-08-28T03:33:55.9748967Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=47f122f0-5357-4ad2-964b-c033be97f336;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-originating-ip: [24.22.167.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8d784ab6-b9ae-43e2-5edf-08d72b688faa
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DM5PR21MB0170; 
x-ms-traffictypediagnostic: DM5PR21MB0170:|DM5PR21MB0170:|DM5PR21MB0170:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <DM5PR21MB0170EB3FD8702E59CB35AF3CD7A30@DM5PR21MB0170.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(376002)(39860400002)(346002)(396003)(199004)(189003)(53936002)(71190400001)(7736002)(1511001)(71200400001)(55016002)(66066001)(86362001)(81156014)(81166006)(6436002)(8676002)(9686003)(5660300002)(6116002)(64756008)(66946007)(186003)(66556008)(8936002)(76116006)(66446008)(6506007)(7696005)(2501003)(33656002)(10090500001)(74316002)(2906002)(22452003)(8990500004)(76176011)(486006)(6246003)(2201001)(110136005)(25786009)(26005)(476003)(6636002)(66476007)(7416002)(446003)(102836004)(3846002)(14444005)(14454004)(4326008)(99286004)(229853002)(11346002)(305945005)(52536014)(10290500003)(54906003)(256004)(316002)(478600001)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR21MB0170;
 H:DM5PR21MB0137.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: g289PjByq/L+98eVurs98T+zF18V/ZAcRRhwkydFL+hkuzfvlWEZuyx9dPzb7N02dt4JA33U6Ku4N1Wu5ETrJ8rdJo4Q/BgzI2OojjN96NLcwQVmbm5bUVIG7EVR4dktat8Jq/H5Jp2oKkDZ43Or1tBqylvWd/Y/pv8gycfOSksvms1hj3tT4Zd1KCPIP+xg/Yu7GcvXZdHBRxuaKfuDQAdD0wcSBoWm48fMFMgD6D92ZSDiQGi3vDAXBvEDQ14vQFfUHlFtTBNpORN6YBEGaCGfBO+Rgd6F/966JX70oJM9Y/yPtq/lmN1kJAJMq4RX+Rm1gpgCfeYd0zDN9FM3Ir4LSeCgxm+nTBGBQIpgVarbvamaXv9LnOLluCtxr6G2vzhHUI7+njSzhEcK7IqVKhqBKK2xC/gtRX/h6ZzFxa0=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d784ab6-b9ae-43e2-5edf-08d72b688faa
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2019 03:33:58.1125 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hH88CJDhuH7RDy2/RkYAkQVhLC3xEjAHJis53gB8/BxdqETpCLxW58d/+96cGCmpUscFjukCEEkUu/9EpFzfYiF/pjAByzeN7OzK8PiMEnw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR21MB0170
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
Cc: Sunil Muthuswamy <sunilmut@microsoft.com>,
 "boqun.feng" <boqun.feng@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Michael Kelley <mikelley@microsoft.com>  Sent: Tuesday, August 6, 2019 1:31 PM
> 
> This series enables Linux guests running on Hyper-V on ARM64
> hardware. New ARM64-specific code in arch/arm64/hyperv initializes
> Hyper-V, including its interrupts and hypercall mechanism.
> Existing architecture independent drivers for Hyper-V's VMbus and
> synthetic devices just work when built for ARM64. Hyper-V code is
> built and included in the image and modules only if CONFIG_HYPERV
> is enabled.
> 
> The eight patches are organized as follows:
> 1) Add include files that define the Hyper-V interface as
>    described in the Hyper-V Top Level Functional Spec (TLFS), plus
>    additional definitions specific to Linux running on Hyper-V.
> 
> 2 thru 6) Add core Hyper-V support on ARM64, including hypercalls,
>    interrupt handlers, kexec & panic handlers, and core hypervisor
>    initialization.
> 
> 7) Update the existing VMbus driver to generalize interrupt
>    management across x86/x64 and ARM64.
> 
> 8) Make CONFIG_HYPERV selectable on ARM64 in addition to x86/x64.
> 

I'm hoping to get some feedback from the ARM64 maintainers on this
series.  Previous feedback has been incorporated, so it should be
close to being able to go in.

Michael
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
