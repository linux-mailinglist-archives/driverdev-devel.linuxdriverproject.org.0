Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C18819C25
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 May 2019 13:05:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 683B1874A2;
	Fri, 10 May 2019 11:05:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ixyj9U2o7BhY; Fri, 10 May 2019 11:05:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EF6B98740E;
	Fri, 10 May 2019 11:05:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A00C81BF2A6
 for <devel@linuxdriverproject.org>; Fri, 10 May 2019 11:05:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9AEAA882CF
 for <devel@linuxdriverproject.org>; Fri, 10 May 2019 11:05:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pbPpfx4IYXB5 for <devel@linuxdriverproject.org>;
 Fri, 10 May 2019 11:05:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr780053.outbound.protection.outlook.com [40.107.78.53])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8929B882BD
 for <devel@driverdev.osuosl.org>; Fri, 10 May 2019 11:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector1-analog-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nVlpM+6hUpJfEDjmqqh5buswTi9IXWo+idp+3aYvadA=;
 b=cJaRCIlXlhytsC0WOUjovdUXlHRExZWPjhVf03F0+kh9EW3mb68RI6Rnc3cHyEhKGz4sJV9wA82vpcEx/F+iU3ypyrnsW4/k0e997VS2hIGKO+igCU4zzHHlAx2b/kf5RKAjaKA2W3b6tkRnBRfNgWUAFNGQGOnAYoLiEYdp3VE=
Received: from BN6PR03CA0017.namprd03.prod.outlook.com (2603:10b6:404:23::27)
 by BY2PR03MB556.namprd03.prod.outlook.com (2a01:111:e400:2c3a::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1878.22; Fri, 10 May
 2019 11:04:54 +0000
Received: from BL2NAM02FT036.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::208) by BN6PR03CA0017.outlook.office365.com
 (2603:10b6:404:23::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1878.20 via Frontend
 Transport; Fri, 10 May 2019 11:04:54 +0000
Authentication-Results: spf=pass (sender IP is 137.71.25.57)
 smtp.mailfrom=analog.com; linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=bestguesspass action=none
 header.from=analog.com;
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 BL2NAM02FT036.mail.protection.outlook.com (10.152.77.154) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1856.11
 via Frontend Transport; Fri, 10 May 2019 11:04:53 +0000
Received: from NWD2HUBCAS9.ad.analog.com (nwd2hubcas9.ad.analog.com
 [10.64.69.109])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x4AB4rkt031706
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Fri, 10 May 2019 04:04:53 -0700
Received: from NWD2MBX7.ad.analog.com ([fe80::190e:f9c1:9a22:9663]) by
 NWD2HUBCAS9.ad.analog.com ([fe80::44a2:871b:49ab:ea47%12]) with mapi id
 14.03.0415.000; Fri, 10 May 2019 07:04:53 -0400
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>
Subject: Re: [PATCH 09/16] mmc: sdhci-xenon: use new match_string()
 helper/macro
Thread-Topic: [PATCH 09/16] mmc: sdhci-xenon: use new match_string()
 helper/macro
Thread-Index: AQHVBZFjC5krcc3G0k+g00YBPwx6V6ZhaK0AgAAShYCAAt35AIAAHiKAgAABAAA=
Date: Fri, 10 May 2019 11:04:53 +0000
Message-ID: <d320a13ad06bba87fcb0c04c4143e911723684ea.camel@analog.com>
References: <20190508112842.11654-1-alexandru.ardelean@analog.com>
 <20190508112842.11654-11-alexandru.ardelean@analog.com>
 <20190508122010.GC21059@kadam>
 <2ec6812d6bf2f33860c7c816c641167a31eb2ed6.camel@analog.com>
 <31be52eb1a1abbc99a24729f5c65619235cb201f.camel@analog.com>
 <20190510110116.GB18105@kadam>
In-Reply-To: <20190510110116.GB18105@kadam>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.50.1.244]
x-adiroutedonprem: True
Content-ID: <134D0B85CEA25646B3EBD898406EC02C@analog.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(1496009)(136003)(396003)(376002)(346002)(39860400002)(2980300002)(189003)(199004)(426003)(76176011)(102836004)(26005)(436003)(70206006)(446003)(8936002)(7696005)(70586007)(36756003)(14444005)(6246003)(186003)(336012)(2486003)(8676002)(6116002)(3846002)(229853002)(5660300002)(11346002)(47776003)(5640700003)(356004)(305945005)(50466002)(2616005)(476003)(6916009)(2906002)(118296001)(478600001)(126002)(7736002)(86362001)(14454004)(2351001)(2501003)(7636002)(23676004)(106002)(246002)(4326008)(316002)(7416002)(7406005)(54906003)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY2PR03MB556; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f76a2088-dc12-4942-d433-08d6d537549b
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:BY2PR03MB556; 
X-MS-TrafficTypeDiagnostic: BY2PR03MB556:
X-Microsoft-Antispam-PRVS: <BY2PR03MB5567CAEF2048D0CACEA3D3CF90C0@BY2PR03MB556.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0033AAD26D
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: tULqUEYxx8A1Vcan/qfbE7E/YiNcE+blJBkWLIfZLYQfoW+YJfMk/7pGVcvZ1Zi7zwbrhva5fOWhPlE7BRloVhcy0b7UY+H3u7eHfxlqm2FqcBDBRA6rNCrikJSdpJCdjDevTorMO4v2pbPJ9vgXgpdzx4rSWTBAzaTFpTqnxoN6817pHFRM6OimKYwZT+zkHQBRDborUH0cfCMCTH7W/DYsug3lJUPmoVohbzUw7Qlzb5gflrpKMIIuKRlZUQA5y+LwbgY2fjwZItJ1in7CCdq2yHbgQEyod/D4nUaFXtQNysaVfM6q5P4JW2pJdKeJjrqkRhofhZP8Dy5+VsJYbafZu2hWLTkGR5O0X96SKzhm9VbATpPl5eWgoo6bTpaSEgvMToAEFFE6dQ7aXg+NwW0dDvkkJwZFaifj5Uv3dxk=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2019 11:04:53.7708 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f76a2088-dc12-4942-d433-08d6d537549b
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR03MB556
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
Cc: "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-fbdev@vger.kernel.org" <linux-fbdev@vger.kernel.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 "cgroups@vger.kernel.org" <cgroups@vger.kernel.org>,
 "linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-ide@vger.kernel.org" <linux-ide@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-security-module@vger.kernel.org"
 <linux-security-module@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-integrity@vger.kernel.org" <linux-integrity@vger.kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 2019-05-10 at 14:01 +0300, Dan Carpenter wrote:
> [External]
> 
> 
> On Fri, May 10, 2019 at 09:13:26AM +0000, Ardelean, Alexandru wrote:
> > On Wed, 2019-05-08 at 16:26 +0300, Alexandru Ardelean wrote:
> > > On Wed, 2019-05-08 at 15:20 +0300, Dan Carpenter wrote:
> > > > 
> > > > 
> > > > On Wed, May 08, 2019 at 02:28:35PM +0300, Alexandru Ardelean wrote:
> > > > > -static const char * const phy_types[] = {
> > > > > -     "emmc 5.0 phy",
> > > > > -     "emmc 5.1 phy"
> > > > > -};
> > > > > -
> > > > >  enum xenon_phy_type_enum {
> > > > >       EMMC_5_0_PHY,
> > > > >       EMMC_5_1_PHY,
> > > > >       NR_PHY_TYPES
> > > > 
> > > > There is no need for NR_PHY_TYPES now so you could remove that as
> > > > well.
> > > > 
> > > 
> > > I thought the same.
> > > The only reason to keep NR_PHY_TYPES, is for potential future
> > > patches,
> > > where it would be just 1 addition
> > > 
> > >  enum xenon_phy_type_enum {
> > >       EMMC_5_0_PHY,
> > >       EMMC_5_1_PHY,
> > > +      EMMC_5_2_PHY,
> > >       NR_PHY_TYPES
> > >   }
> > > 
> > > Depending on style/preference of how to do enums (allow comma on last
> > > enum
> > > or not allow comma on last enum value), adding new enum values woudl
> > > be 2
> > > additions + 1 deletion lines.
> > > 
> > >  enum xenon_phy_type_enum {
> > >       EMMC_5_0_PHY,
> > > -      EMMC_5_1_PHY
> > > +      EMM
> > > C_5_1_PHY,
> > > +      EMMC_5_2_PHY
> > >  }
> > > 
> > > Either way (leave NR_PHY_TYPES or remove NR_PHY_TYPES) is fine from
> > > my
> > > side.
> > > 
> > 
> > Preference on this ?
> > If no objection [nobody insists] I would keep.
> > 
> > I don't feel strongly about it [dropping NR_PHY_TYPES or not].
> 
> If you end up resending the series could you remove it, but if not then
> it's not worth it.

ack

thanks
Alex

> 
> regards,
> dan carpenter
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
