Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F077E14982
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 May 2019 14:25:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AB51685CD8;
	Mon,  6 May 2019 12:25:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s3iPOlGdBOS3; Mon,  6 May 2019 12:25:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 65A93844AF;
	Mon,  6 May 2019 12:25:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 225E01BF39F
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 12:25:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1ED1886A70
 for <devel@linuxdriverproject.org>; Mon,  6 May 2019 12:25:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dWm39pqttawx for <devel@linuxdriverproject.org>;
 Mon,  6 May 2019 12:25:05 +0000 (UTC)
X-Greylist: delayed 02:01:37 by SQLgrey-1.7.6
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr780053.outbound.protection.outlook.com [40.107.78.53])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 641F986A72
 for <devel@driverdev.osuosl.org>; Mon,  6 May 2019 12:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector1-analog-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aZlUxmHAnTfV4fvuRR07OAFwnrB0KNHVpt968yquJ20=;
 b=rv+1FVnApWblORq9qEh+/0QewDuvpmPpEXu2DbGD3JkryITdtvlfILh2Ecwgg4lIVjuVXmcbpE1yPyGhg02bI09ZaDUZilUoWkgUGSLX8kJ3A8+WFh5ILyLl7oUkqdmfIVO7MMQ0BzYAvwgIVWGMcCh4u4vsr0xP070VD//L3OI=
Received: from CY4PR03CA0017.namprd03.prod.outlook.com (2603:10b6:903:33::27)
 by DM2PR03MB560.namprd03.prod.outlook.com (2a01:111:e400:241c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1856.10; Mon, 6 May
 2019 06:51:34 +0000
Received: from SN1NAM02FT050.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::200) by CY4PR03CA0017.outlook.office365.com
 (2603:10b6:903:33::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1856.10 via Frontend
 Transport; Mon, 6 May 2019 06:51:33 +0000
Authentication-Results: spf=pass (sender IP is 137.71.25.55)
 smtp.mailfrom=analog.com; linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=bestguesspass action=none
 header.from=analog.com;
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.55 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.55; helo=nwd2mta1.analog.com;
Received: from nwd2mta1.analog.com (137.71.25.55) by
 SN1NAM02FT050.mail.protection.outlook.com (10.152.72.128) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1856.11
 via Frontend Transport; Mon, 6 May 2019 06:51:33 +0000
Received: from NWD2HUBCAS9.ad.analog.com (nwd2hubcas9.ad.analog.com
 [10.64.69.109])
 by nwd2mta1.analog.com (8.13.8/8.13.8) with ESMTP id x466pWBL021375
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Sun, 5 May 2019 23:51:32 -0700
Received: from NWD2MBX7.ad.analog.com ([fe80::190e:f9c1:9a22:9663]) by
 NWD2HUBCAS9.ad.analog.com ([fe80::44a2:871b:49ab:ea47%12]) with mapi id
 14.03.0415.000; Mon, 6 May 2019 02:51:31 -0400
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "ardeleanalex@gmail.com" <ardeleanalex@gmail.com>, "melissa.srw@gmail.com"
 <melissa.srw@gmail.com>
Subject: Re: [PATCH 2/4] staging: iio: ad7150: use FIELD_GET and GENMASK
Thread-Topic: [PATCH 2/4] staging: iio: ad7150: use FIELD_GET and GENMASK
Thread-Index: AQHVAmZEuvjZKalljUODTfy22uS+XaZd7oYA
Date: Mon, 6 May 2019 06:51:31 +0000
Message-ID: <179d019c34cc69e50f19499a6089ac94740b59f5.camel@analog.com>
References: <cover.1556919363.git.melissa.srw@gmail.com>
 <7f7d36348bca1de25bd70350b7c665be6441250f.1556919363.git.melissa.srw@gmail.com>
 <CA+U=Dso6zSLzhhdiZcc+P4-2zcabxnoMd2539HmofTXrtYoKDQ@mail.gmail.com>
In-Reply-To: <CA+U=Dso6zSLzhhdiZcc+P4-2zcabxnoMd2539HmofTXrtYoKDQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.50.1.244]
x-adiroutedonprem: True
Content-ID: <7C855B05558C3C478658EC39E2C73FC4@analog.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.55; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(979002)(136003)(376002)(346002)(396003)(39860400002)(2980300002)(199004)(189003)(36756003)(356004)(76176011)(23676004)(2486003)(14444005)(118296001)(106002)(70586007)(70206006)(8676002)(5660300002)(246002)(8936002)(7736002)(7636002)(305945005)(47776003)(14454004)(102836004)(6246003)(50466002)(186003)(2501003)(4326008)(6116002)(3846002)(53546011)(26005)(229853002)(7416002)(2616005)(316002)(478600001)(126002)(476003)(486006)(7696005)(54906003)(110136005)(11346002)(2906002)(436003)(426003)(446003)(86362001)(336012)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM2PR03MB560; H:nwd2mta1.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail10.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b786019d-19f4-465b-2d24-08d6d1ef46e1
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:DM2PR03MB560; 
X-MS-TrafficTypeDiagnostic: DM2PR03MB560:
X-Microsoft-Antispam-PRVS: <DM2PR03MB5602EA77DCBE1E8CF87360AF9300@DM2PR03MB560.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-Forefront-PRVS: 0029F17A3F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: A/Vl/Kdfww9B6FU2TsYUhDJU6FUUNIgWED+x9YrpBZja/88Xava3MSy5fGgSD625//ETTNjSeiB1UGl8CDmtdsVELppmxA63+zSkUZHMtR7eiAXwt0OcS4Yl0aFcHy9n4UkQxguYTwsHxYpiYsKH9gOiUF3OgbAXXpcYrNOn3AW/rZLbjmvYF5vfttORqSKUUPe3D2JW9oplSjHwNSGhrfG/BGd61EXaDVRv2Jmd3Bx2yK7ijEoF0/+6OsMwugHKb6zu1gWRbONinrNXMjZsoXGmdgzJlkHBfbwbeIm08iJQQqol3B54l4pgPV8/IlwIl+vsNMSReyu5qt1zDegukvyMQhTjqJ5uW0Yx4dMh3Rzdjch7KSh41tiRqx5tqG3Oe3M7HaK3c/l6hZfDhlLUgZ71rupmj4ko1G9iME1TFeI=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2019 06:51:33.1271 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b786019d-19f4-465b-2d24-08d6d1ef46e1
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.55];
 Helo=[nwd2mta1.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR03MB560
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
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "Popa, Stefan Serban" <StefanSerban.Popa@analog.com>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 2019-05-04 at 13:43 +0300, Alexandru Ardelean wrote:
> [External]
> 
> 
> On Sat, May 4, 2019 at 1:25 AM Melissa Wen <melissa.srw@gmail.com> wrote:
> > 
> > Use the bitfield macro FIELD_GET, and GENMASK to do the shift and mask
> > in
> > one go. This makes the code more readable than explicit masking
> > followed
> > by a shift.
> > 
> 
> This looks neat.
> I'd have to remember to ack it from my work email.

Acked-by: Alexandru Ardelean <alexandru.ardelean@analog.com>

> 
> One minor comment inline, which would be the object of a new patch.
> 
> > Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
> > ---
> >  drivers/staging/iio/cdc/ad7150.c | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/iio/cdc/ad7150.c
> > b/drivers/staging/iio/cdc/ad7150.c
> > index 24601ba7db88..4ba46fb6ac02 100644
> > --- a/drivers/staging/iio/cdc/ad7150.c
> > +++ b/drivers/staging/iio/cdc/ad7150.c
> > @@ -5,6 +5,7 @@
> >   * Copyright 2010-2011 Analog Devices Inc.
> >   */
> > 
> > +#include <linux/bitfield.h>
> >  #include <linux/interrupt.h>
> >  #include <linux/device.h>
> >  #include <linux/kernel.h>
> > @@ -44,6 +45,9 @@
> >  #define AD7150_SN0_REG                         0x16
> >  #define AD7150_ID_REG                          0x17
> > 
> > +/* AD7150 masks */
> > +#define AD7150_THRESHTYPE_MSK                  GENMASK(6, 5)
> > +
> >  /**
> >   * struct ad7150_chip_info - instance specific chip data
> >   * @client: i2c client for this device
> > @@ -136,7 +140,7 @@ static int ad7150_read_event_config(struct iio_dev
> > *indio_dev,
> >         if (ret < 0)
> >                 return ret;
> > 
> > -       threshtype = (ret >> 5) & 0x03;
> > +       threshtype = FIELD_GET(AD7150_THRESHTYPE_MSK, ret);
> >         adaptive = !!(ret & 0x80);
> 
> Why not also do something similar for the `adaptive` value ?
> 
> > 
> >         switch (type) {
> > --
> > 2.20.1
> > 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
