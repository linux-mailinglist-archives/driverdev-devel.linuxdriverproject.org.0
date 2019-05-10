Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB8219A57
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 May 2019 11:14:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2353988933;
	Fri, 10 May 2019 09:14:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tewtoFqOyF7W; Fri, 10 May 2019 09:14:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 956E988181;
	Fri, 10 May 2019 09:14:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3BF811BF584
 for <devel@linuxdriverproject.org>; Fri, 10 May 2019 09:14:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 310D587967
 for <devel@linuxdriverproject.org>; Fri, 10 May 2019 09:14:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6GaarF3b6vy7 for <devel@linuxdriverproject.org>;
 Fri, 10 May 2019 09:13:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM05-DM3-obe.outbound.protection.outlook.com
 (mail-eopbgr730040.outbound.protection.outlook.com [40.107.73.40])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8CB738732C
 for <devel@driverdev.osuosl.org>; Fri, 10 May 2019 09:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector1-analog-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cd+V8yqGMykCDx3832Gazx49N+DzcZoh0jyuHRt5ol4=;
 b=UtgaGDmS/mFN7LqP4rRanlhIErtROJDfXKgcIeQ1c2pUsTHgWkYu7j96Yd2lPftDdz2wXx3xkpYor7R+H8gftiZOSJxx+ATBAk9fPgRuYm3L0Lav4JU1SKRoMBgfFlLd2aeYeN4GFuH2989f+gy+Ay1+8Dk0VQ9Sau1g+bv3pvo=
Received: from BN3PR03CA0101.namprd03.prod.outlook.com (2603:10b6:400:4::19)
 by BN3PR03MB2257.namprd03.prod.outlook.com (2a01:111:e400:c5f1::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1878.22; Fri, 10 May
 2019 09:13:30 +0000
Received: from BL2NAM02FT032.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::206) by BN3PR03CA0101.outlook.office365.com
 (2603:10b6:400:4::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1878.21 via Frontend
 Transport; Fri, 10 May 2019 09:13:29 +0000
Authentication-Results: spf=pass (sender IP is 137.71.25.57)
 smtp.mailfrom=analog.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=analog.com;
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 BL2NAM02FT032.mail.protection.outlook.com (10.152.77.169) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1856.11
 via Frontend Transport; Fri, 10 May 2019 09:13:29 +0000
Received: from NWD2HUBCAS8.ad.analog.com (nwd2hubcas8.ad.analog.com
 [10.64.69.108])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x4A9DRsE000406
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Fri, 10 May 2019 02:13:27 -0700
Received: from NWD2MBX7.ad.analog.com ([fe80::190e:f9c1:9a22:9663]) by
 NWD2HUBCAS8.ad.analog.com ([fe80::90a0:b93e:53c6:afee%12]) with mapi id
 14.03.0415.000; Fri, 10 May 2019 05:13:27 -0400
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>
Subject: Re: [PATCH 09/16] mmc: sdhci-xenon: use new match_string()
 helper/macro
Thread-Topic: [PATCH 09/16] mmc: sdhci-xenon: use new match_string()
 helper/macro
Thread-Index: AQHVBZFjC5krcc3G0k+g00YBPwx6V6ZhaK0AgAAShYCAAt35AA==
Date: Fri, 10 May 2019 09:13:26 +0000
Message-ID: <31be52eb1a1abbc99a24729f5c65619235cb201f.camel@analog.com>
References: <20190508112842.11654-1-alexandru.ardelean@analog.com>
 <20190508112842.11654-11-alexandru.ardelean@analog.com>
 <20190508122010.GC21059@kadam>
 <2ec6812d6bf2f33860c7c816c641167a31eb2ed6.camel@analog.com>
In-Reply-To: <2ec6812d6bf2f33860c7c816c641167a31eb2ed6.camel@analog.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.50.1.244]
x-adiroutedonprem: True
Content-ID: <BB59C46108248B4E9B7153CD2DF23B7C@analog.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(1496009)(39860400002)(136003)(376002)(396003)(346002)(2980300002)(189003)(199004)(486006)(126002)(86362001)(186003)(436003)(426003)(11346002)(6916009)(2351001)(476003)(2501003)(478600001)(2616005)(47776003)(336012)(446003)(229853002)(5640700003)(5660300002)(305945005)(70206006)(70586007)(6116002)(7406005)(3846002)(7416002)(118296001)(7736002)(8676002)(54906003)(8936002)(6246003)(7636002)(102836004)(76176011)(7696005)(246002)(2486003)(23676004)(36756003)(26005)(356004)(316002)(2906002)(50466002)(14454004)(4326008)(106002)(14444005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN3PR03MB2257; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ed9fe5e3-db8d-4bcc-4243-08d6d527c4a6
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:BN3PR03MB2257; 
X-MS-TrafficTypeDiagnostic: BN3PR03MB2257:
X-Microsoft-Antispam-PRVS: <BN3PR03MB22575AF9CEACED448826345BF90C0@BN3PR03MB2257.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0033AAD26D
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: hz7ohuHgjnC+2gC26Y3onOT2s7J5axPm+umLFJQFpWgNQk6MlgOTYWYEOsKdiXoy1GNT+vGczdwJR2hzhjkPPM1uQL11kNZN6SYSWyKfr2kiZbabqEYBPxg7icedXBmdO+rbB5SwWFk2CrIhe/7lkW+xgUYjQGNgYAWGE0lXiIRaorInlOmQTMPz663NCbL7aaCb7ajYyo05LxXNUMEKTW2Pof7owMPxVhD448BZPhIoBbV1UHHwV/vrelBEVbXLtRY94OqIxeAe7xTw2lhziZuN15WfFYwjblJa6OE/jYP1PkRLhqh4l1AN/UYxDW/icpD8nSoxxD0H5PPn7qhAU0pjn6TkUKbqtid8LuApVz3z+EfmjXcQFNq5JLTewszxUxStGHfqcWVxcM/2aY0TjxPPu7OPuaGxGQvTycbDhqM=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2019 09:13:29.7933 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ed9fe5e3-db8d-4bcc-4243-08d6d527c4a6
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR03MB2257
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

On Wed, 2019-05-08 at 16:26 +0300, Alexandru Ardelean wrote:
> On Wed, 2019-05-08 at 15:20 +0300, Dan Carpenter wrote:
> > 
> > 
> > On Wed, May 08, 2019 at 02:28:35PM +0300, Alexandru Ardelean wrote:
> > > -static const char * const phy_types[] = {
> > > -     "emmc 5.0 phy",
> > > -     "emmc 5.1 phy"
> > > -};
> > > -
> > >  enum xenon_phy_type_enum {
> > >       EMMC_5_0_PHY,
> > >       EMMC_5_1_PHY,
> > >       NR_PHY_TYPES
> > 
> > There is no need for NR_PHY_TYPES now so you could remove that as well.
> > 
> 
> I thought the same.
> The only reason to keep NR_PHY_TYPES, is for potential future patches,
> where it would be just 1 addition
> 
>  enum xenon_phy_type_enum {
>       EMMC_5_0_PHY,
>       EMMC_5_1_PHY,
> +      EMMC_5_2_PHY,
>       NR_PHY_TYPES
>   }
> 
> Depending on style/preference of how to do enums (allow comma on last
> enum
> or not allow comma on last enum value), adding new enum values woudl be 2
> additions + 1 deletion lines.
> 
>  enum xenon_phy_type_enum {
>       EMMC_5_0_PHY,
> -      EMMC_5_1_PHY
> +      EMM
> C_5_1_PHY,
> +      EMMC_5_2_PHY
>  }
> 
> Either way (leave NR_PHY_TYPES or remove NR_PHY_TYPES) is fine from my
> side.
> 

Preference on this ?
If no objection [nobody insists] I would keep.

I don't feel strongly about it [dropping NR_PHY_TYPES or not].

Thanks
Alex

> Thanks
> Alex
> 
> > regards,
> > dan carpenter
> > 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
