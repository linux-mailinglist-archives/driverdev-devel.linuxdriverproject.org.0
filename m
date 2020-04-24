Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A0D1B711E
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Apr 2020 11:41:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A609424AF5;
	Fri, 24 Apr 2020 09:41:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dh5DvctFD-6X; Fri, 24 Apr 2020 09:41:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id ED3962044B;
	Fri, 24 Apr 2020 09:41:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 115F41BF842
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 09:41:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0DB5B86493
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 09:41:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jQcCtTFH9crT for <devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 09:41:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B576B86268
 for <devel@driverdev.osuosl.org>; Fri, 24 Apr 2020 09:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587721300; x=1619257300;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=/aAoHxfxUh4C7gtMRbP8Axn11eHji48KlimHmFBRdTk=;
 b=u3E73+go/u4dLZfytPaDVKhY8bR/dETkhki+0VOBF51K/T39NERHNzFv
 9EjYHIZ07+3j9XYtFwfQT1GERR5L98zpsD2AIo8BTT5jLHNAx9PHo8VB7
 ZRNYDk8SFlmF0LctO8oTgUgRXTf5XxLsVi4OZe1srbLpM0GxnO8bPLy+M
 76+F9K5hgZYU6tD8SPWAKJNWw38RsrZfwN8fzk/qtR91i16QDIT06tsqq
 nxiHHD32IMQS9bfBJ020GASr8d+UUFjmt0uxkC0XtQ86yA5/KchrBDtY5
 V6y7i4IPVm7AzIRleYl0FNvjLZB2Vqc2tdl/KluhKy+BdHr6owfpxSadt A==;
IronPort-SDR: SugeHfCelkbcUYL76zepOY63ZR/wa8wBy+nOCXe3MQhA2IOwttArBAyGOLwP09/BEmJ3LtYVHK
 Jibf3aBBdo1VREy2m20PUZB4Ry30ekKAz8qBn50G7k9L0OauTJAlDM5tq+kTDUdBn1+g/bjUz7
 QyHjJjKzfbAKnW18u1whQXakaSjAz9+tKPoBlnfxs79sdBXNoY0rmTXzm6i51yNJAaymZM96fQ
 qWMA+yZ93Z2Dz7JcyVjVaJng1ziZ1SnzclpKDRWn2ti4iPyfArtiJ73UxeeRySawdjqzjGZHYc
 R7I=
X-IronPort-AV: E=Sophos;i="5.73,311,1583218800"; d="scan'208";a="71407323"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Apr 2020 02:41:39 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 24 Apr 2020 02:41:03 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 24 Apr 2020 02:41:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=liGEssBkPUSq2fVlexIZN7zy0WmRSkSxt6/zTvrcxLVO8fK3HfzEezxiT7qAQwtoj5yQBMJSb7mz5xO6ufkNaWAg7ZOs7HvcD6HSVWz2orDUwlhO7nHmzWp7nFZ0gwk74VSGfpXf9ZlG/OYWEP1sxzfWWT2Z3BSClcu776GjJ7kkGadqMvXWJW9zVvhH996aOTs8os3TgaDT6GANmK++qzu4UC3+J94iv2DnDNQkjgIEx6scxijvOFbFh2f9eTXz9G6m3Adyz7LZdQLIpdBfq3/w0157AGCufwjQxoHFBSJIq4CqUO9/vWZk8x59qBb9ei7wi8NGmi+IZ2+OByvd9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/aAoHxfxUh4C7gtMRbP8Axn11eHji48KlimHmFBRdTk=;
 b=TQlx5AzUyGqGeUo48XtZQywUqazgYSsaxAo+BHM6Z4qt2C0eimR+RIu2Ey77tAxNli8r1kH2fMh52caX0Jx6APoSXngBz1bVWbYYPCMSgegMW8ZIlefJ1/lZyvcrSRM6on+O1hvOWW3imQxb8WjD0v8nhsCfXJfMHnF4DYSIl8UnfN120B2YHX9+/kR+H/Rng3v9qq0vDc2hJkcHsW8igf8Pej/Q0tyswQakg7uk5++EF6uRUm3SElh55fMH2uvloDHDYyNwRiJP5jxYjgb5BXcUaeGmg+8TpkLT3HxkKS738bPflDhlBHJFSsxYmSClm4p2YMhLL/4VuMjWqfbodA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/aAoHxfxUh4C7gtMRbP8Axn11eHji48KlimHmFBRdTk=;
 b=NqYSkgf5dghTPDtJM8qF0o0QMfDWJNrN2YRAMunpuDIsiYH8ylR4UafFveziIHdwiiZaR/9dUh6nj6svQ1LjTqdWJ2t/SJnyoDjRwemLUr02DHTQSZI+kXJgcVFdKBFR16Rn2eQXMvguqt97ytkt26g17LbK1W4wCziR5rTsJJI=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM6PR11MB3772.namprd11.prod.outlook.com (2603:10b6:5:143::28) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13; Fri, 24 Apr 2020 09:41:36 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa%7]) with mapi id 15.20.2921.030; Fri, 24 Apr 2020
 09:41:36 +0000
From: <Christian.Gromm@microchip.com>
To: <lkp@intel.com>
Subject: Re: b276527539 ("staging: most: move core files out of the staging
 .."): [   12.247349] BUG: kernel NULL pointer dereference, address: 00000000
Thread-Topic: b276527539 ("staging: most: move core files out of the staging
 .."): [   12.247349] BUG: kernel NULL pointer dereference, address: 00000000
Thread-Index: AQHWBc+TuKJ+f2owr0iaAkl6WPDuc6iILXeA
Date: Fri, 24 Apr 2020 09:41:36 +0000
Message-ID: <1e725f60c598cd8a5f167fd63ade6ee173960f01.camel@microchip.com>
References: <20200329133917.GE11705@shao2-debian>
In-Reply-To: <20200329133917.GE11705@shao2-debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.30.5-1.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Gromm@microchip.com; 
x-originating-ip: [46.142.77.233]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a3d9ab3c-8a85-4e49-2389-08d7e833aead
x-ms-traffictypediagnostic: DM6PR11MB3772:
x-microsoft-antispam-prvs: <DM6PR11MB3772D7BA237A2215EE158A92F8D00@DM6PR11MB3772.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:133;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(376002)(39860400002)(136003)(346002)(396003)(6916009)(966005)(66556008)(186003)(5660300002)(64756008)(6512007)(66446008)(6486002)(26005)(91956017)(66476007)(478600001)(76116006)(36756003)(2906002)(66946007)(4326008)(2616005)(6506007)(81156014)(8676002)(8936002)(316002)(71200400001)(86362001)(54906003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1IlCTUfwI9Y2cqiecw/AHrHAq+dYEv32yvDP9Wb3H+RTHcmaMBZZdYMwRPFn+Na9IjWE0n1FwRelJKRoJmCHDPxLihSg64IQCcaEIgO9JcVD6/SOknCj8KRiQ3zki2FMqoZ85LoTY1fKdIda2jkvQ1izPHsU3wO1ZuHeA4rsZ/hOxTqGkvKWjf/8HrETqdEh2UDiwWlPctCJ4qkT4Ih2s+ZEpB0+nJvyBvwetkMsTgnpoTiGU4EQFHS0T2AbhjoiHgl0w6gs7KsCDooASEqeCuFjYUQueFNqafgoWRQuzlJvXoBu+GQ0DfH8lox2dL/7medjmKhjb9NofhHSdpjrYHphp/l3upxGHznGstJfZkBNLClh/EENOET7dp1/M3VgRtTJ5pI8V3hi8YkSsjIKcpKj533ksMDJfZ806WvxqDLkiIDM0ww26gz9N2QkLPq9OBFuc+TYtDdyB/OgUOYHH/yBuyYKUvK1e2jYoavYYk7d0qyK+uzGO59PcXS1vKvNC9aHarvKNlgit9LWAw30+A==
x-ms-exchange-antispam-messagedata: Y26urbJ1a2G3QyY+JQGwvhEVihWCYtAbuP3I/AYjr6dl7wvGaXgasva6LkveLk04kXpPPMktXhxY8hfrgn9xoREY5llmld3PyGVbXwYyJet9HQZZ8ZC3m9JCsJmGw2bq+fvWW7Av61B++HM7/nOeBg==
x-ms-exchange-transport-forked: True
Content-ID: <8E516CCD77ECBA40B5FEAA3E64E72631@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a3d9ab3c-8a85-4e49-2389-08d7e833aead
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 09:41:36.6793 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B4GDJxkuqrpeKYD4pwvStaWh2RMfUI1s8Uu5l7jbdcd+cRqMxTNiYjgNvPyoJMnhcM32YfwacJ3LvZM1su3hhQsuizm9d3cmX9rDiJg3DoA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3772
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


The init order of the modules is wrong in case the driver is
being built in-tree.

The init function of module most_sound is called before the
core itself is being initialized.

[    5.179189] most_sound: init()
[    5.180205] mostcore: __init()

Hence the list used in the core to store and track the
registered components has not been initialized with
INIT_LIST_HEAD(&comp_list) by the time the sound module
tries to register itself with the core.

The Kconfig of most_sound, however, has a dependency to
MOST. How can the build system be forced to initialize the
core module first?

thanks,
Chris  

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
