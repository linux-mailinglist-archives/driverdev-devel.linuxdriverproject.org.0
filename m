Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 916D529978
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 15:55:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 476AC88C3A;
	Fri, 24 May 2019 13:55:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5PMfPKzdWgED; Fri, 24 May 2019 13:55:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1842A88C2B;
	Fri, 24 May 2019 13:54:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EBC781BF330
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 13:54:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E7D5F88C26
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 13:54:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HZq9fAN+N8a6 for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 13:54:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr780087.outbound.protection.outlook.com [40.107.78.87])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B839F88C15
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 13:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector1-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EhsQ9Zmu7jpHhDDaEuu4j/MgVT8yY29rZQaLXOwM/Ac=;
 b=znzXftnz5rM5j7ooxg+o1zToFQUjSfA8e2NaLEhouIONvxTUID+GYj5qKsY4+AicHupJ2Ql/FeL6UXqSWq3Xlyt0AgfW2x4JMdo4BNJRERgA2CpNgsC+E86bK+kEVOrwypTvAf6wOKbKW8akKQxvjNY3/dCQQeRTf8qVQRdCFt0=
Received: from CY4PR03CA0078.namprd03.prod.outlook.com (2603:10b6:910:4d::19)
 by BL2PR03MB546.namprd03.prod.outlook.com (2a01:111:e400:c24::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1900.16; Fri, 24 May
 2019 13:54:51 +0000
Received: from BL2NAM02FT004.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::207) by CY4PR03CA0078.outlook.office365.com
 (2603:10b6:910:4d::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16 via Frontend
 Transport; Fri, 24 May 2019 13:54:50 +0000
Authentication-Results: spf=pass (sender IP is 137.71.25.55)
 smtp.mailfrom=analog.com; linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=bestguesspass action=none
 header.from=analog.com;
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.55 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.55; helo=nwd2mta1.analog.com;
Received: from nwd2mta1.analog.com (137.71.25.55) by
 BL2NAM02FT004.mail.protection.outlook.com (10.152.76.168) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1922.16
 via Frontend Transport; Fri, 24 May 2019 13:54:50 +0000
Received: from NWD2HUBCAS8.ad.analog.com (nwd2hubcas8.ad.analog.com
 [10.64.69.108])
 by nwd2mta1.analog.com (8.13.8/8.13.8) with ESMTP id x4ODsoTd030068
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Fri, 24 May 2019 06:54:50 -0700
Received: from NWD2MBX7.ad.analog.com ([fe80::190e:f9c1:9a22:9663]) by
 NWD2HUBCAS8.ad.analog.com ([fe80::90a0:b93e:53c6:afee%12]) with mapi id
 14.03.0415.000; Fri, 24 May 2019 09:54:49 -0400
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "marcelo.schmitt1@gmail.com" <marcelo.schmitt1@gmail.com>,
 "ardeleanalex@gmail.com" <ardeleanalex@gmail.com>
Subject: Re: [PATCH] staging: iio: adis16240: add of_match_table entry
Thread-Topic: [PATCH] staging: iio: adis16240: add of_match_table entry
Thread-Index: AQHVEfq6uvppH90jDke8Urfy897lKKZ6jmuAgAABL4A=
Date: Fri, 24 May 2019 13:54:49 +0000
Message-ID: <11a0315e01b80a3a9eb4e81e1b018a2bff7ae559.camel@analog.com>
References: <20190524032950.2398-1-rodrigorsdc@gmail.com>
 <CA+U=DspqLFBMrRcV6VmypHOpE6Qs7OqmiDzWAd6pxpA7B=4S4g@mail.gmail.com>
 <20190524135034.u2mbtq2jwhp6ent7@smtp.gmail.com>
In-Reply-To: <20190524135034.u2mbtq2jwhp6ent7@smtp.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.50.1.244]
x-adiroutedonprem: True
Content-ID: <BCDA9C1FD24472459D4D2FD0595CCA79@analog.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.55; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(136003)(396003)(39860400002)(376002)(2980300002)(189003)(199004)(11346002)(86362001)(356004)(70586007)(5660300002)(2501003)(305945005)(47776003)(36756003)(118296001)(14454004)(478600001)(70206006)(229853002)(2616005)(7636002)(7736002)(476003)(50466002)(4326008)(126002)(486006)(2906002)(76176011)(53546011)(110136005)(26005)(106002)(186003)(8676002)(6246003)(426003)(436003)(14444005)(336012)(54906003)(246002)(316002)(3846002)(6116002)(102836004)(7416002)(7696005)(2486003)(23676004)(8936002)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL2PR03MB546; H:nwd2mta1.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail10.analog.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 70cafc7d-562d-41cf-f36f-08d6e04f6431
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328)(7193020);
 SRVR:BL2PR03MB546; 
X-MS-TrafficTypeDiagnostic: BL2PR03MB546:
X-Microsoft-Antispam-PRVS: <BL2PR03MB546730183EE5E096874724BF9020@BL2PR03MB546.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1850;
X-Forefront-PRVS: 0047BC5ADE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: ljrquUm2wqFKy9FA6Ss17Ib6kSGCTjV26qgP3fzqoBQIuoHWTcwsjZ8tV6dswC2UyFh0wEkxcS9vHFHZF1YBbCJhDzBVhW8L8+MedIF4S9szSdI+EbT7zZ94EMDgq5bpcHVGOpqFVR/+R6ox+Vs6qJdjabhQwJNAEfGmFdNwhu/BqL8cT4kSIB4LHdGjla50Vh9MJmVANocLP7t4MDZhtrA1LHTH/zpSuc9NpaWPqqWefkfc4dNMWk6VyS3oZ0j9m5sRCYBT/MhoV/4D1d2ljEh6kGOPQzjFRH7MbHUo9sxNmH0QbWJc3OIxyRIW1AQdxiTFA5eZbZqYb+mrn+9+vRqsZMP4YPKT0e0ZNZsC7CPHLkjPKuRLM6qCqcc6Cii105g9kOLJkcTrAsH+pHSnqWzia9pHzm1Z5cvLyp7hk3Q=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 May 2019 13:54:50.6606 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 70cafc7d-562d-41cf-f36f-08d6e04f6431
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.55];
 Helo=[nwd2mta1.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2PR03MB546
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rodrigorsdc@gmail.com" <rodrigorsdc@gmail.com>,
 "kernel-usp@googlegroups.com" <kernel-usp@googlegroups.com>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "Popa, Stefan Serban" <StefanSerban.Popa@analog.com>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 2019-05-24 at 10:50 -0300, Marcelo Schmitt wrote:
> [External]
> 
> 
> Hi Alexandru,
> 
> On 05/24, Alexandru Ardelean wrote:
> > On Fri, May 24, 2019 at 6:30 AM Rodrigo Ribeiro <rodrigorsdc@gmail.com> wrote:
> > > 
> > > This patch adds of_match_table entry in device driver in order to
> > > enable spi fallback probing.
> > > 
> > > Signed-off-by: Rodrigo Ribeiro <rodrigorsdc@gmail.com>
> > > Reviewed-by: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
> > > ---
> > >  drivers/staging/iio/accel/adis16240.c | 1 +
> > >  1 file changed, 1 insertion(+)
> > > 
> > > diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
> > > index 8c6d23604eca..b80c8529784b 100644
> > > --- a/drivers/staging/iio/accel/adis16240.c
> > > +++ b/drivers/staging/iio/accel/adis16240.c
> > > @@ -444,6 +444,7 @@ MODULE_DEVICE_TABLE(of, adis16240_of_match);
> > >  static struct spi_driver adis16240_driver = {
> > >         .driver = {
> > >                 .name = "adis16240",
> > > +               .of_match_table = adis16240_of_match,
> > 
> > This patch is missing the actual table.
> 
> Struct with compatible devices table was included separately in a
> previous patch at commit d9e533b6c0a26c7ef8116b7f3477c164c07bb6fb.
> Yeah, I also thought it was missing the match table the first time I was
> this patch. It's really confusing when we have two patches, one
> depending on another, that are not part of the same patch set. We're
> trying to avoid things like this the most but that slipped out from our
> internal review. We're sorry about that.

No worries.

It happens to me too.

Thanks
Alex

> 
> > 
> > >         },
> > >         .probe = adis16240_probe,
> > >         .remove = adis16240_remove,
> > > --
> > > 2.20.1
> > > 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
