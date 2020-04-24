Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F0A1B71D9
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Apr 2020 12:21:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1F7F424C39;
	Fri, 24 Apr 2020 10:21:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DhJqDsJn5xYk; Fri, 24 Apr 2020 10:21:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0E48624BF3;
	Fri, 24 Apr 2020 10:21:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9DA2A1BF5A2
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 10:21:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 95C95887A7
 for <devel@linuxdriverproject.org>; Fri, 24 Apr 2020 10:21:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7wpV5B1uWob5 for <devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 10:21:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6700B8876A
 for <devel@driverdev.osuosl.org>; Fri, 24 Apr 2020 10:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587723669; x=1619259669;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=N5BsflEajSqlbxuhmPGHzRk6I6f2HP+Bll6XtG2JJ+A=;
 b=ZpJbX5LD5aUTRV+mrGQDbRajxAXnPRUkR32tree6dPxnQxF2KSBa/HGv
 qULMyLn/MaxskEZfAT1DxHK2MkNocKIs5hznbavCgdSu2SpArX61USxIc
 M1Zaxowlet09jQilYe1oH0LIdwwC8F6Fv2M3vScEwGkxG/9Q6jgquX4QO
 ehS/qMgEIsW7Ew5s0zMt/goaTRAOnEpOP0M59348wP6SwO4+VIqNqcWaB
 8LHtJVZ4hC429UXUM5aQDHlAg8STVWkP68J4BmFwK0OQU5FbT/jhY2fHn
 JLyKTS1mD9r7/oKIGK0AEB34ZK46UaeZYJgw3qB4ho6wVp7k2haSd4inR A==;
IronPort-SDR: fLfm7RucU9d4ZGNZTGOH2GOVw3HorbilbNhoDmtug+z3i5qr+wAA7R8uromptg7qq4lMuQ4/6i
 l6/A0ATHzCuYFBWW0QzrjC+WFQ8mxR/OSUVQm3ARiV5C33lMWCFsCvSbLDmUNP0fWl5ysn82Yj
 VGquNvu7qDtDDjuCoyePFnpzCLLoy2GGtLqnZXONJnxonJGSQIE66+FAXval9E/UdL79f4WzYi
 meyNYnujReoHM7qcr4T/+jjRnekWwkqrHaJptIY/7PrTdLvCizOyUB8G84cy2PtW7vDigQ1iQ8
 Kng=
X-IronPort-AV: E=Sophos;i="5.73,311,1583218800"; d="scan'208";a="74457743"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Apr 2020 03:21:08 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 24 Apr 2020 03:21:08 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 24 Apr 2020 03:21:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DZs5PWviAn2E46eJhDo5ymny1Q/py7NN1nCMIgUmLB+U/0QsgL3wLfjd4cmWwpx+DgiFzCiokL7dITWG/cu+qNQIPx0oNnigycJek4qEQFlelVfRA4hOrPZhLpuT0Wq/C7BeR81VPkK7Y6NGDMXMRNQCzxsy0nG8e0AZ0NG4W7JpMC1b41jDiS76POHpQGvFk1csDwPBNtBltAyc1zvHboTnemzsW67lfmLiky9Sm5wUOikzV/FE1Oo+E59bOA8Ie19m7LtQJFLhf5oKjRNmdh5wmwStlXdHyqN+xPQxWqGvHUVdEGoFVBVqdoc5ZpQe/iMnPYm74ZYA43UVc9XocQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N5BsflEajSqlbxuhmPGHzRk6I6f2HP+Bll6XtG2JJ+A=;
 b=flp7kdqjHLji0z2VgjsyOs+z6KJU4nikImipVcfPm4T6uDP6KF4B0PMvrX+P1SqMSyqU3XrLXF+3y1o/kq+oqSq1YUKRYy5f5HQHsJ2qz6fOfxawJ/+1Q4nQW8dEA5QiTPh+UoYJznQjtTV6FvME33jmiGG7Xi9xOT6K/uTnxEfooun27Gqcj5JKEnays+AtAm9ckUGtr62epFnLJfZ2zvEFpmvaccZesQ0/UUoNkcqpxPp1qCo+Un2HYHqeK3tyZcpFzLJkUo/f0m8NEOqpcA0fJ34aVE74CWtwjxkRiNcYY518AtUarZncq2pPgBU3wnBkaEprdKLqr6LDknWdhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N5BsflEajSqlbxuhmPGHzRk6I6f2HP+Bll6XtG2JJ+A=;
 b=Xi0AH1OjK1tihI+xo3fWrdFp6jk4VCWVCCnhAZ4eSYprvb1c5UhcOv5xPRvMIikPOFL8TyZp/a2q5Q02ml+GzPMg81u5OKB8+nKUtlA8sdAwTotur9xOLsvhp54fMGftaZyEm9alBXP5v0sWHOlARfzorfI8TJGQmxPlbB4AaE4=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM6PR11MB2539.namprd11.prod.outlook.com (2603:10b6:5:bf::30) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.29; Fri, 24 Apr 2020 10:21:06 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa%7]) with mapi id 15.20.2921.030; Fri, 24 Apr 2020
 10:21:06 +0000
From: <Christian.Gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: b276527539 ("staging: most: move core files out of the staging
 .."): [   12.247349] BUG: kernel NULL pointer dereference, address: 00000000
Thread-Topic: b276527539 ("staging: most: move core files out of the staging
 .."): [   12.247349] BUG: kernel NULL pointer dereference, address: 00000000
Thread-Index: AQHWBc+TuKJ+f2owr0iaAkl6WPDuc6iILXeAgAAJxgCAAAFCAA==
Date: Fri, 24 Apr 2020 10:21:05 +0000
Message-ID: <210f5dac5fe26fba008068a932e51a9cde142c89.camel@microchip.com>
References: <20200329133917.GE11705@shao2-debian>
 <1e725f60c598cd8a5f167fd63ade6ee173960f01.camel@microchip.com>
 <20200424101634.GB390100@kroah.com>
In-Reply-To: <20200424101634.GB390100@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Gromm@microchip.com; 
x-originating-ip: [46.142.77.233]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a448e6cd-8f6d-446a-3dfd-08d7e83932da
x-ms-traffictypediagnostic: DM6PR11MB2539:
x-microsoft-antispam-prvs: <DM6PR11MB2539483C9D3590CEA703FF0DF8D00@DM6PR11MB2539.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:109;
x-forefront-prvs: 03838E948C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(396003)(39860400002)(346002)(376002)(366004)(136003)(5660300002)(76116006)(66476007)(64756008)(91956017)(66946007)(66446008)(66556008)(6486002)(6512007)(186003)(2906002)(54906003)(86362001)(478600001)(966005)(6916009)(71200400001)(81156014)(2616005)(8676002)(36756003)(6506007)(4326008)(26005)(8936002)(316002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JcwGfjJMpaGVoSVlQVDrIrSF+8BAsLUVZKlYUvTiqZ9o7sLFu9ALrEDka7FSPPdWu8FygZUzdk6Y3W+WjqR6vzOhTeA5mcu6LuUY6cNVzV1/tgXVvUAZN5HN1xqEaEI8m7pF0Kuw/Pc5tBppPDr5ADBLaMm4ecMqDUn3VItoT2ikIKw72a+Fy5f/hAXM10RMgkBu+yKjuDNTE5IOvx8yEDMSEU2ASBOfPTaft94l7mPLOqVLjxrk51+uMB2B9BnLAF7EUnx/3vuFzXX2DAw/xjvohJiN2geTWsURXcmlwP1rQt1JiDy1VWNtncN7gpYdSlD3f4AYujKCFx+S1x0SKnbpdPsNMKXgeMcty+XuhQwdroP0C+Vw+cKFREMWhLmgehfwzkTFjWaoFm0IivRgitXZmI8mvlrkBW8b1GC7mr/+mis3dBwJxafRIxdh6uDYIRDnUB651t3kdal5kBIzRxk8wZCBTT5qQQc8+hjKn1ZAeAIUUmOYCKIW2mNz4JTMVJP3DWINkHpeNRJpq4dPuw==
x-ms-exchange-antispam-messagedata: EakEMiejpVOAapb5aWhcHioq/Vr7ivvdlB6zDTOSlhnTZd/D8DPakX/uQmc9sWaUnmE0w0bl2oXxYqbvSD8qeO1RDGAtvy02pk1nUOZ+zOo4GrFWNwlrsW7oJMDraom2mw2zHFaMlo4P+XThQawjLw==
x-ms-exchange-transport-forked: True
Content-ID: <5177E86D55F6A74CA8270C177A9323D6@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a448e6cd-8f6d-446a-3dfd-08d7e83932da
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2020 10:21:05.8698 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IAn3xRj3W1bhLMf9OBMNYEPxc8elCPOIrKnN3W+CSRmMXqsd1qnSIMShMkSoRNDIGZBbUnk47qVIesS1uRNj2z2cwq2DWyP/lhNgc2oEF8A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2539
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
Cc: devel@driverdev.osuosl.org, lkp@lists.01.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 2020-04-24 at 12:16 +0200, Greg KH wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> On Fri, Apr 24, 2020 at 09:41:36AM +0000, 
> Christian.Gromm@microchip.com wrote:
> > On Sun, 2020-03-29 at 21:39 +0800, kernel test robot wrote:
> > > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > > know the content is safe
> > > 
> > > Greetings,
> > > 
> > > 0day kernel testing robot got the below dmesg and the first bad
> > > commit is
> > > 
> > > https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
> > > staging-next
> > > 
> > > commit b276527539188f1f61c082ebef27803db93e536d
> > > Author:     Christian Gromm <christian.gromm@microchip.com>
> > > AuthorDate: Tue Mar 10 14:02:40 2020 +0100
> > > Commit:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > > CommitDate: Tue Mar 24 13:42:44 2020 +0100
> > > 
> > >     staging: most: move core files out of the staging area
> > > 
> > >     This patch moves the core module to the /drivers/most
> > > directory
> > >     and makes all necessary changes in order to not break the
> > > build.
> > > 
> > >     Signed-off-by: Christian Gromm <christian.gromm@microchip.com
> > > >
> > >     Link:
> > > https://lore.kernel.org/r/1583845362-26707-2-git-send-email-christian.gromm@microchip.com
> > >     Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org
> > > >
> > > 
> > > 22dd4acc80  Staging: speakup: Add identifier name to function
> > > declaration arguments.
> > > b276527539  staging: most: move core files out of the staging
> > > area
> > > e681bb287f  staging: vt6656: Use DIV_ROUND_UP macro instead of
> > > specific code
> > > +-------------------------------------------------------+------
> > > ----
> > > --+------------+------------+
> > > >                                                       |
> > > > 22dd4acc80
> > > > > b276527539 | e681bb287f |
> > > +-------------------------------------------------------+------
> > > ----
> > > --+------------+------------+
> > > > boot_successes                                        |
> > > > 26         | 0          | 0          |
> > > > boot_failures                                         |
> > > > 8          | 11         | 11         |
> > > > WARNING:possible_circular_locking_dependency_detected |
> > > > 8          |            |            |
> > > > BUG:kernel_NULL_pointer_dereference,address           |
> > > > 0          | 11         | 11         |
> > > > Oops:#[##]                                            |
> > > > 0          | 11         | 11         |
> > > > EIP:__list_add_valid                                  |
> > > > 0          | 11         | 11         |
> > > > Kernel_panic-not_syncing:Fatal_exception              |
> > > > 0          | 11         | 11         |
> > > +-------------------------------------------------------+------
> > > ----
> > > --+------------+------------+
> > > 
> > > If you fix the issue, kindly add following tag
> > > Reported-by: kernel test robot <lkp@intel.com>
> > > 
> > > [   12.242090] no options.
> > > [   12.245364] FPGA DOWNLOAD --->
> > > [   12.245723] FPGA image file name: xlinx_fpga_firmware.bit
> > > [   12.246548] GPIO INIT FAIL!!
> > > [   12.246995] most_sound: init()
> > > [   12.247349] BUG: kernel NULL pointer dereference, address:
> > 
> > The init order of the modules is wrong in case the driver is
> > being built in-tree.
> > 
> > The init function of module most_sound is called before the
> > core itself is being initialized.
> > 
> > [    5.179189] most_sound: init()
> > [    5.180205] mostcore: __init()
> > 
> > Hence the list used in the core to store and track the
> > registered components has not been initialized with
> > INIT_LIST_HEAD(&comp_list) by the time the sound module
> > tries to register itself with the core.
> > 
> > The Kconfig of most_sound, however, has a dependency to
> > MOST. How can the build system be forced to initialize the
> > core module first?
> 
> Linker order is the thing here.
> 
> You can mess with the init levels here, and use subsys_initcall() for
> mostcore, will that fix it?

I already gave it a try and it works. But is it ok to use the
subsys_initcall() function when the driver is being built as a
module?

thanks,
Chris

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
