Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD1217506
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 May 2019 11:22:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1B6A820791;
	Wed,  8 May 2019 09:22:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OAdyN2mvfNgr; Wed,  8 May 2019 09:22:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B23F0228A0;
	Wed,  8 May 2019 09:22:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD9901BF3E9
 for <devel@linuxdriverproject.org>; Wed,  8 May 2019 09:22:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DA196860EA
 for <devel@linuxdriverproject.org>; Wed,  8 May 2019 09:22:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tvEmPa4pO-Mb for <devel@linuxdriverproject.org>;
 Wed,  8 May 2019 09:22:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr810044.outbound.protection.outlook.com [40.107.81.44])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 64A2E85F8A
 for <devel@driverdev.osuosl.org>; Wed,  8 May 2019 09:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector1-analog-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3oq0gIqipBZriyxeQpa6NYSmnWoyGHaohhxiL2LPJlo=;
 b=XP1A4RIZbLyjzrbsjxhl+XDRPDmFLVn5jxtaRg5fXAbrS0/GXoCkMyUZpMMzpfOJ+eeTGtdl5hHNTUZr/DKtcidyE6MiOPOmH6KLsXPCZqzTGBkFGotCDCAGSkIcehq7cpJ2mZ6UBL4CN1Uj0vOAojNmxEST2IRNLtHpyHBtvKk=
Received: from BY5PR03CA0013.namprd03.prod.outlook.com (2603:10b6:a03:1e0::23)
 by BN3PR03MB2257.namprd03.prod.outlook.com (2a01:111:e400:c5f1::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1856.11; Wed, 8 May
 2019 07:50:10 +0000
Received: from CY1NAM02FT056.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::204) by BY5PR03CA0013.outlook.office365.com
 (2603:10b6:a03:1e0::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1856.11 via Frontend
 Transport; Wed, 8 May 2019 07:50:10 +0000
Authentication-Results: spf=pass (sender IP is 137.71.25.57)
 smtp.mailfrom=analog.com; linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=bestguesspass action=none
 header.from=analog.com;
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 CY1NAM02FT056.mail.protection.outlook.com (10.152.74.160) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1856.11
 via Frontend Transport; Wed, 8 May 2019 07:50:09 +0000
Received: from NWD2HUBCAS8.ad.analog.com (nwd2hubcas8.ad.analog.com
 [10.64.69.108])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x487o8fq011479
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Wed, 8 May 2019 00:50:08 -0700
Received: from NWD2MBX7.ad.analog.com ([fe80::190e:f9c1:9a22:9663]) by
 NWD2HUBCAS8.ad.analog.com ([fe80::90a0:b93e:53c6:afee%12]) with mapi id
 14.03.0415.000; Wed, 8 May 2019 03:50:08 -0400
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "melissa.srw@gmail.com" <melissa.srw@gmail.com>
Subject: Re: [PATCH 2/4] staging: iio: ad7150: use FIELD_GET and GENMASK
Thread-Topic: [PATCH 2/4] staging: iio: ad7150: use FIELD_GET and GENMASK
Thread-Index: AQHVAmZEuvjZKalljUODTfy22uS+XaZd7oYAgAJ7MACAALnZAA==
Date: Wed, 8 May 2019 07:50:07 +0000
Message-ID: <1220395cfe158e2116a1f2826ef6ce96074463b4.camel@analog.com>
References: <cover.1556919363.git.melissa.srw@gmail.com>
 <7f7d36348bca1de25bd70350b7c665be6441250f.1556919363.git.melissa.srw@gmail.com>
 <CA+U=Dso6zSLzhhdiZcc+P4-2zcabxnoMd2539HmofTXrtYoKDQ@mail.gmail.com>
 <179d019c34cc69e50f19499a6089ac94740b59f5.camel@analog.com>
 <20190507204456.wwjjkeuzq44jy7w7@smtp.gmail.com>
In-Reply-To: <20190507204456.wwjjkeuzq44jy7w7@smtp.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.50.1.244]
x-adiroutedonprem: True
Content-ID: <7FA9E8C580B32C428CCE2C9F93B26605@analog.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(376002)(136003)(396003)(39860400002)(2980300002)(189003)(199004)(356004)(4326008)(107886003)(102836004)(446003)(53546011)(436003)(426003)(2351001)(70206006)(478600001)(11346002)(7636002)(7736002)(8936002)(36756003)(23676004)(76176011)(7696005)(2486003)(8676002)(6246003)(246002)(54906003)(118296001)(2501003)(316002)(5640700003)(5660300002)(1361003)(106002)(186003)(26005)(229853002)(7416002)(6116002)(3846002)(336012)(70586007)(47776003)(14444005)(6916009)(14454004)(50466002)(486006)(476003)(126002)(305945005)(2616005)(2906002)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN3PR03MB2257; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a2f487d0-abb9-47c0-cbaa-08d6d389cbc9
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:BN3PR03MB2257; 
X-MS-TrafficTypeDiagnostic: BN3PR03MB2257:
X-Microsoft-Antispam-PRVS: <BN3PR03MB22579CF8F287B7D6E1C1DFEBF9320@BN3PR03MB2257.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0031A0FFAF
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 9S1Sp473BbNxU36JLnFOdZijNZ/dlQkbaJIFPnCx+1V46yoLCZEr9Jb+DmHSOXfkPiEF9+OZSz08tbFw90E8o8MALbl4M2c++/mrbODEDFNob2e4VyVg55rmkzknSKd+8823rOoHCNz/5yE0FS9SA/3W6WnQOpTyW4y41jSLuvb/PcXISgFqxLNPYrQITz2bszV1DBi1X/QmyaOeR4brwWdrC94iF0zptwAc6tncwZquTVdbZI72UJafNPkIxmkFy1tbTYsYTHohLwz0RDcxoPtrqJOxZFyTeUhloSrTTIl04JZdDlxL+mRTsxc89bAWleYMOfPPh17X70jYqZv9FY7v3Up/UUDmfU6OCtI6hkJVJ0sT5YLPILNzdwnHEX6O+DA8l6jwc8w/56yJCGZKoI9fouiYdB0EsLHA0jz45Rk=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 May 2019 07:50:09.5283 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a2f487d0-abb9-47c0-cbaa-08d6d389cbc9
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "lars@metafoo.de" <lars@metafoo.de>, "Hennerich,
 Michael" <Michael.Hennerich@analog.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "21cnbao@gmail.com" <21cnbao@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel-usp@googlegroups.com" <kernel-usp@googlegroups.com>,
 "ardeleanalex@gmail.com" <ardeleanalex@gmail.com>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "Popa, Stefan Serban" <StefanSerban.Popa@analog.com>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2019-05-07 at 17:44 -0300, Melissa Wen wrote:
> [External]
> 
> 
> On 05/06, Ardelean, Alexandru wrote:
> > On Sat, 2019-05-04 at 13:43 +0300, Alexandru Ardelean wrote:
> > > [External]
> > > 
> > > 
> > > On Sat, May 4, 2019 at 1:25 AM Melissa Wen <melissa.srw@gmail.com>
> > > wrote:
> > > > 
> > > > Use the bitfield macro FIELD_GET, and GENMASK to do the shift and
> > > > mask
> > > > in
> > > > one go. This makes the code more readable than explicit masking
> > > > followed
> > > > by a shift.
> > > > 
> > > 
> > > This looks neat.
> > > I'd have to remember to ack it from my work email.
> > 
> > Acked-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
> > 
> > > 
> > > One minor comment inline, which would be the object of a new patch.
> > > 
> > > > Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
> > > > ---
> > > >  drivers/staging/iio/cdc/ad7150.c | 6 +++++-
> > > >  1 file changed, 5 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/staging/iio/cdc/ad7150.c
> > > > b/drivers/staging/iio/cdc/ad7150.c
> > > > index 24601ba7db88..4ba46fb6ac02 100644
> > > > --- a/drivers/staging/iio/cdc/ad7150.c
> > > > +++ b/drivers/staging/iio/cdc/ad7150.c
> > > > @@ -5,6 +5,7 @@
> > > >   * Copyright 2010-2011 Analog Devices Inc.
> > > >   */
> > > > 
> > > > +#include <linux/bitfield.h>
> > > >  #include <linux/interrupt.h>
> > > >  #include <linux/device.h>
> > > >  #include <linux/kernel.h>
> > > > @@ -44,6 +45,9 @@
> > > >  #define AD7150_SN0_REG                         0x16
> > > >  #define AD7150_ID_REG                          0x17
> > > > 
> > > > +/* AD7150 masks */
> > > > +#define AD7150_THRESHTYPE_MSK                  GENMASK(6, 5)
> > > > +
> > > >  /**
> > > >   * struct ad7150_chip_info - instance specific chip data
> > > >   * @client: i2c client for this device
> > > > @@ -136,7 +140,7 @@ static int ad7150_read_event_config(struct
> > > > iio_dev
> > > > *indio_dev,
> > > >         if (ret < 0)
> > > >                 return ret;
> > > > 
> > > > -       threshtype = (ret >> 5) & 0x03;
> > > > +       threshtype = FIELD_GET(AD7150_THRESHTYPE_MSK, ret);
> > > >         adaptive = !!(ret & 0x80);
> > > 
> > > Why not also do something similar for the `adaptive` value ?
> 
> Hi Alexandru,
> 
> Yes, I'm working on it!  However, taking a look at the driver datasheet
> (Table
> 13, page 19), there seems to be a little mistake in choosing the variable
> name
> and its meaning,  since when bit(7) is 1 (true) the threshold is fixed,
> and not
> adaptive. For this reason, I removed it from this patchset to mature the
> solution. I will send it as a bug fix if I prove it's necessary.
> Do you have any advice or feeling about it to share?
> 

Good find.
Since this is a bug-fix, typically it's good to fix the code as-is now
[even if it isn't neat code], and then do the conversions to neat code.

Bug-fixes always take priority over cosmetic changes.
So, I would send the bug-fix as-soon-as-possible, and then update things.


> P.s.: Sorry for having previously sent an email with HTML.
> 
> Melissa
> 
> > > 
> > > > 
> > > >         switch (type) {
> > > > --
> > > > 2.20.1
> > > > 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
