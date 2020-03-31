Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C9AF21997AB
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Mar 2020 15:39:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 687EB24DFD;
	Tue, 31 Mar 2020 13:39:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WC0VCqBB5dJY; Tue, 31 Mar 2020 13:39:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BA45E24BE8;
	Tue, 31 Mar 2020 13:38:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 140321BF30C
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 13:38:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0B97A21FA8
 for <devel@linuxdriverproject.org>; Tue, 31 Mar 2020 13:38:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vrger5UdC3Kz for <devel@linuxdriverproject.org>;
 Tue, 31 Mar 2020 13:38:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by silver.osuosl.org (Postfix) with ESMTPS id CA68B21549
 for <devel@driverdev.osuosl.org>; Tue, 31 Mar 2020 13:38:55 +0000 (UTC)
IronPort-SDR: f5n3P0ZhKplKL+1H1bgF5aECnKzuz6BTO84XCNBbIsfY21FWbpU1aIafVeTZrSr7+aDt3YjgHN
 GTRqLpfFUiFA3VZ3Dxw5yL8u/KMCbWyu5l8PKVsxrqDOu2XwHm2Y2/aahsins9wDVlSPEG7yaF
 ZIUvHjl80zDyjJdh9m0aDMvY3FXRkMloi0KOHHGqqzD5XswV+eL8asnbFv3qkZsu3XMIuUNag7
 EOPHFqljMJkbffLkUqSMdZ6WKzpN15p7r5Gq7M92oHgbLuMRXbi7KnQtBk7gUuPsiOBvlNbBrG
 aqs=
X-IronPort-AV: E=Sophos;i="5.72,327,1580799600"; d="scan'208";a="71832712"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 31 Mar 2020 06:38:44 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 31 Mar 2020 06:38:49 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 31 Mar 2020 06:38:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IYGVDFMyzqVMoH0EGFPtfEFWODUc70uKD1ujjAUjQM7Y5lh3IzEKksC+kZAZc8nIFm4VcKhFpA66yhmWAndopF0xy/vppzxLGp4w+/KCpvHs16CqmZJfPsMDtYQIfNv2HmAXQ9PogQWtgiVwktAYmbYumEIipMF0IWEUxp+wGDwls+poaU0rQODk/fXfluAwY2L4BexsDTqrWSuFsV1Xw1roRMEWtQYiw8FdwgKdc0eZH+DTTJ7/A5/8/EomEJuvevBtiaADhs2DKQrNcM6O+ykOr8jKNpI/IS1F7GH262Q/PvNtm3jtdWTwKcBE0Qr6Dsu8mBuWV4/R8LX0hD1k2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RzNTP/yOlbdIej1gWb9Pmi+yJDGi7+qjkfqNYX4si+0=;
 b=JEyU4gRaHUoqk8be7TuXLLQO8EelgS8OwElc4cEKvlvkZBjR3zH4iqBatwgqsmwVt3BR+9NfEwjudqZsOPEO3ohC2xJRuCe3TjmxXFCBeFpEA4JRl/rSsArZpLyehLyHFD2536qNNVzl3Flqse82lqIKBQlf33EvekkCd3xvb+flXzsqQGgOV1VIjt/gsVI9fbYIctiQlvbUk0UBnoiqnSOpViddcaR7WM/iOQHZgUMkgZ51YGjsv4iOetASNvaeZj0V555X13leZDJUbdejQDz64Ot9EKmhA6nktdB7quvs8dmt9GlwrhLVyTf2KWmCr2e/UVj1JoJxEiDawf1h9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RzNTP/yOlbdIej1gWb9Pmi+yJDGi7+qjkfqNYX4si+0=;
 b=fALjsKyPnpLfshkGGS8enXGSaA+cmv2BXvNveTV86aoN4bDUUMzDswjWAgQ7fD0aM7lLnDNMDitrUubiQdl7bcH0smyggdxu9iqJGsPmVPEYfHPKz5OhOd9PSALSArz/+xuBzlr2yKh+VL07SyXl2XUdL8Oxo2inlxyz3E4A4UY=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM6PR11MB3898.namprd11.prod.outlook.com (2603:10b6:5:19f::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Tue, 31 Mar 2020 13:38:41 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::91cb:6555:db9b:53fa%7]) with mapi id 15.20.2856.019; Tue, 31 Mar 2020
 13:38:41 +0000
From: <Christian.Gromm@microchip.com>
To: <kbuild@lists.01.org>, <dan.carpenter@oracle.com>
Subject: Re: [staging:staging-testing 278/280] drivers/most/core.c:1287
 most_register_interface() error: we previously assumed 'iface' could be null
 (see line 1285)
Thread-Topic: [staging:staging-testing 278/280] drivers/most/core.c:1287
 most_register_interface() error: we previously assumed 'iface' could be null
 (see line 1285)
Thread-Index: AQHWB0mROgcd+ZOlnE+MpMJcvl6IiahitMuA
Date: Tue, 31 Mar 2020 13:38:40 +0000
Message-ID: <e7cbca6782303670198f9aebf598476c5d628ae3.camel@microchip.com>
References: <20200331104530.GA2001@kadam>
In-Reply-To: <20200331104530.GA2001@kadam>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.30.5-1.1 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Gromm@microchip.com; 
x-originating-ip: [46.142.75.226]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0b1d6543-8112-40d5-57ed-08d7d578d31f
x-ms-traffictypediagnostic: DM6PR11MB3898:
x-microsoft-antispam-prvs: <DM6PR11MB3898AEBAC811955BFEC5536BF8C80@DM6PR11MB3898.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:311;
x-forefront-prvs: 0359162B6D
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(396003)(39860400002)(376002)(346002)(136003)(366004)(8936002)(6506007)(5660300002)(8676002)(478600001)(36756003)(81156014)(81166006)(966005)(2906002)(66446008)(66556008)(110136005)(76116006)(54906003)(91956017)(4001150100001)(4326008)(86362001)(71200400001)(186003)(6486002)(316002)(26005)(6512007)(2616005)(66476007)(66946007)(64756008);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: v/RDnmgekGg6nULShfNnF3RgReQJbkKe3XZvqn7hBrp7Vke6nqvVr83xNSF/bhFJq3n45JJRoLtmAY7zLCL8mew9xg3+tA/WQwXX8HoWKBWR+mBgj+G3NXHJngTx3uxQ3GR3fP/aduaC6jD1IllI5cAGB/fvCbOsbatYCrf1Rs+v+xHCe3Yq2MU89KfWB203dXyaUwo/o+Dfzw8tY8gdN1ejNkXXq2X2RKVTx8iMOwq4cFUkUtPdWP8TABtzn44Ij0NU1bKfxP2QKFykWfzwgFPFgxeyy7NYGYC9Gq3WAli1T0UKVhDSxNydNDyacaC7+vFkWL2lZ0blMzV4y3ElKn6Ocs50F7SjZwYuY2k9WLPGPwW+7e6rIZ+WbeNCm9HkTJgMVBKXbJjuMYVEGw5t11ktxw5D3QuLXXO92zU2foA2/mRUsy5iisOWu+M6b8KafwfPUuR8GUuLZUAk46m/u70/WlgwYFmjkuKj/XEFJgebcxg68vk4YC1slvQZ3PjwCcfcGGsl1Uri35+ZcdPiqg==
x-ms-exchange-antispam-messagedata: HVlwyJkJl1LRQSmoMC5A7gh9JIpYU3UW/u/5dIXaPVZNbTWtYFsPdqNdIaavdZFheAhp7Gw0iISM59+Z5pmQB1eOYr/JFor7Uemu9wVuO+uT4KIy79huSYl2regxiVk4og1944zqJvi1Cei16u5O3g==
x-ms-exchange-transport-forked: True
Content-ID: <40E2A26C41BA3F4F95BAAC76281A3FAA@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b1d6543-8112-40d5-57ed-08d7d578d31f
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Mar 2020 13:38:41.0213 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lzagYUuCFmsaxGZ61O+7yzhGURRynjbqHW4tn14u6/dV2yHfrDKOgt4M7ex294LIYliQU46K8X0OMPa0jXC7Xj3kIQRKq6JesygrQGNMA/o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3898
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2020-03-31 at 13:45 +0300, Dan Carpenter wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> Hi Christian,
> 
> First bad commit (maybe != root cause):
> 
> tree:   
> https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
> staging-testing
> head:   4a1a3e9bf5654e98bb48f5b074af17af96ded30d
> commit: b276527539188f1f61c082ebef27803db93e536d [278/280] staging:
> most: move core files out of the staging area
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
> smatch warnings:
> drivers/most/core.c:1287 most_register_interface() error: we
> previously assumed 'iface' could be null (see line 1285)
> 
> # 
> https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit/?id=b276527539188f1f61c082ebef27803db93e536d
> git remote add staging 
> https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
> git remote update staging
> git checkout b276527539188f1f61c082ebef27803db93e536d
> vim +/iface +1287 drivers/most/core.c
> 
> 4d5f022f3a664e drivers/staging/most/core.c          Christian
> Gromm     2017-11-21  1279  int most_register_interface(struct
> most_interface *iface)
> 57562a72414ca3 drivers/staging/most/mostcore/core.c Christian
> Gromm     2015-07-24  1280  {
> 57562a72414ca3 drivers/staging/most/mostcore/core.c Christian
> Gromm     2015-07-24  1281        unsigned int i;
> 57562a72414ca3 drivers/staging/most/mostcore/core.c Christian
> Gromm     2015-07-24  1282        int id;
> fcb7fad82e23f6 drivers/staging/most/core.c          Christian
> Gromm     2017-11-21  1283        struct most_channel *c;
> 57562a72414ca3 drivers/staging/most/mostcore/core.c Christian
> Gromm     2015-07-24  1284
> 57562a72414ca3 drivers/staging/most/mostcore/core.c Christian
> Gromm     2015-07-24 @1285        if (!iface || !iface->enqueue ||
> !iface->configure ||
>                                                                      
>                                ^^^^^^
> 
> 57562a72414ca3 drivers/staging/most/mostcore/core.c Christian
> Gromm     2015-07-24  1286            !iface->poison_channel ||
> (iface->num_channels > MAX_CHANNELS)) {
> 6a82c775812944 drivers/staging/most/core.c          Christian
> Gromm     2020-01-23 @1287                dev_err(iface->dev, "Bad
> interface or channel overflow\n");
>                                                                      
>                                            ^^^^^^^^^^
> 
> Hopefully, we can just remove the NULL check?

Yes we can. The modules that register such an interface with the
core already check that.

I'll send a patch that removes the NULL check of the "iface" pointer.

thanks,
Chris

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
