Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F00A71C330E
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 May 2020 08:36:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A10B3876EC;
	Mon,  4 May 2020 06:29:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NzwoQ2zBq1-d; Mon,  4 May 2020 06:29:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 149A4876B3;
	Mon,  4 May 2020 06:29:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0421A1BF425
 for <devel@linuxdriverproject.org>; Mon,  4 May 2020 06:29:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 005C18812B
 for <devel@linuxdriverproject.org>; Mon,  4 May 2020 06:29:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id odKGFp7K1QC7 for <devel@linuxdriverproject.org>;
 Mon,  4 May 2020 06:29:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-00128a01.pphosted.com (mx0b-00128a01.pphosted.com
 [148.163.139.77])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B53E9879C2
 for <devel@driverdev.osuosl.org>; Mon,  4 May 2020 06:29:12 +0000 (UTC)
Received: from pps.filterd (m0167090.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0446FAA3016390; Mon, 4 May 2020 02:29:11 -0400
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2176.outbound.protection.outlook.com [104.47.55.176])
 by mx0b-00128a01.pphosted.com with ESMTP id 30s5g7kmjc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 04 May 2020 02:29:11 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oIsj/x7McCvjNmDLSDhMCFNehPXRf/XAT0scXFghoptG81gMyvz6yaH1oVOcRTY6Z5UUkrbGx4poHuHa5Zvt9s9d3c4NSbC88MDyN7wGOmFCH7gdV8aEwgUiFq+sGIO+dW5z/VTAdiAr1veLq5FInnBBwmyZaprdi+OgMm5+zVBkxgyJurbv3ps8Om2IpsFxLtCJoZD+CLKyndhV/nRvohviIowuf5CbrumUVZiHJG9lRz+CZoHBMa26e/zY8JC4Rl2tI89/d/gr+VffO3IFUYcGV8fy1UWpygvVzggLouLnLJsR17ZhcdU/LrBFVzZqm4obJeHftRRgmcacEWWmyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kd1R7+eLPi7ya9j52ChY5UPUGLdJjqtozBidfyS4tM8=;
 b=Gui6/uF581h0tOqq4Z1ANlKl+Qhbg3LqqZEDDHs7HzLkDl3uQNpxKLrIOl8o5+1zGaCMfEZaHpKV9iDcS+ABlNeSiXi09LDuRHjbkD4LTgly/7u8EZ4mjixRapyeMQKOfpyj57KhbIUHSlwu3QG6cZ+qdDEms8MxKlGG/6NfFjKYbJ99qDRWQLr7nGrx3LME8TJA1vpVYo0MHrJW56AouhKw1G1Po7xpYeyVuuY+Lhqb/PCjzIkwefnUs+LVKuN7Xq9nEMN+ZLr38hmtAgeI9ZZ4mILDsOGSi+cSgDwT42OK80rr2WXv5wNEe9d7w/y5wa1zQif3CM6orK031aAC0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kd1R7+eLPi7ya9j52ChY5UPUGLdJjqtozBidfyS4tM8=;
 b=L0sIBjoiFdUs7wu/9miz5hT+QDI36aIAa+hllruhOv1v1orEOwMtocQb+mcrPiqIUnVc4QfC7sPeV9Bhnhe6n5LFiIX3iPM5PlP5lNJc/RRWkv3gCjw6IXeEc/21EaogaCQuoTmsYn9IJUsBon/TUZKxMBy1N/X0qhQC3vwT+SM=
Received: from DM6PR03MB4411.namprd03.prod.outlook.com (2603:10b6:5:10f::14)
 by DM6PR03MB5291.namprd03.prod.outlook.com (2603:10b6:5:229::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19; Mon, 4 May
 2020 06:29:09 +0000
Received: from DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::40df:9aa4:c85a:a020]) by DM6PR03MB4411.namprd03.prod.outlook.com
 ([fe80::40df:9aa4:c85a:a020%4]) with mapi id 15.20.2958.030; Mon, 4 May 2020
 06:29:09 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "jic23@kernel.org" <jic23@kernel.org>
Subject: Re: [PATCH] staging: iio: ad2s1210: Fix SPI reading
Thread-Topic: [PATCH] staging: iio: ad2s1210: Fix SPI reading
Thread-Index: AQHWHfbFvz2rPjYFokKwqczkwMyh86iWQqKAgAE8EQA=
Date: Mon, 4 May 2020 06:29:08 +0000
Message-ID: <893e40040ba819e467f9d3840ba9712c226419a4.camel@analog.com>
References: <20200429072129.81504-1-alexandru.ardelean@analog.com>
 <20200503123753.29ea8be0@archlinux>
In-Reply-To: <20200503123753.29ea8be0@archlinux>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=analog.com;
x-originating-ip: [188.27.130.47]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 52c13d49-4bdd-4407-4e7d-08d7eff473e0
x-ms-traffictypediagnostic: DM6PR03MB5291:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR03MB5291B87675DDEC53A25F5436F9A60@DM6PR03MB5291.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 03932714EB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xhtkXv1suFjrDQfvogrNZTJ9M3vRaxLpC0hvo0UFC+cismRiX4p3NCju+6h19q7Hz0vRjPdWlvukGcgseDCC/kuLiTaoYqu2Wr/1eUfqCwKhq2yb7gGvX2pueyoTcAdCuyfmb5q4pm2byvVdAiXRdjxWASSPy740/4fSNoWVesuUxac5JXyANXCD5b4yE0uQ8YVnkezEatjyHfMp+kwgcEvW4MHIj8q3syPib5C3VIJRoFzD+cLdkeTm77mnr1wZd5r55nn7mQGNBC15TG+EBztaPQyOZ5hpTpTApQMhR4zIZTZbOU4qeBkOV69zv2h2uEjBr+2TErq0oIRFxFyCelOodWLvfFtdF6GogdkIqn5P9yekK4c4sbEzzLcvm1LatclDbZ4JPqfFKQa16KmIRIajEGawMcBjfehx79JK+OrtUR31UtNOVfAGUs4pN1TJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR03MB4411.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(396003)(39850400004)(136003)(346002)(376002)(2616005)(66446008)(64756008)(5660300002)(66556008)(66476007)(66946007)(6916009)(76116006)(91956017)(2906002)(316002)(6486002)(6512007)(54906003)(8936002)(107886003)(86362001)(8676002)(4326008)(71200400001)(478600001)(26005)(6506007)(186003)(36756003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: VL1qwwtN1OhfpMAGJ9Gph37yVLe1wsKcROACvlJZgBpop8RLZO1Z3pi8XOmrcKCO7xiRXZ+xWTNMGil2EfCmH28QvYR1eNIeO4ZrCZFAoMx0jtaFr64yYnJFvwCXTRCdS0Ta+JucoeDVHyJkPi/FBQBqH+SYvLE8en3UkGqFv3gxCOBtIq4Mk6nCBNpwZGoREMNUpbSCaB38T02sF7nk7Kqc4sZqNDIXrRjfob7TFsZWlCyf/8nxjL0efYKAXbEcPMnAkz+gdK4SbqBIFLbgLzM3K6FswfphD3jit3YNd/aUwmt3uSUKVxbQyva5FXrYxjHwWfrQfduoSD+8C13Kv8W37Bfx66sOY2EagZ3Br6TPjvEs2+g/z3l5iiCYe4DnZctEHPBAE2MpcPYh726IHAT883bUVEogLY5Lml1JihX0aC58kzRPTY/swFmq6DR3TnVkbJdcRQQNwmR+sUm8dQWqD7WReR0P3GSV4X7j6Xda8SAkkPgwJm58KeD9f3/+6exMLxRr0XpaYTgb07pOKRLUqmA98nTgpbpSryQNEF6/EWlth5oN2CQskLQrbHFxbhGqf3wpZiMFKJZmpQ87Hs8yuheqyufv8/dU19ZjwIjCcPI23dCWIdBjzuvc4PKnE52ykt9RYBsBIB2YI9z6CtUEdM4FUnh7ga7xjbvV5BLjh+PcKmB18fGViSp6506bWyFkz8fGSuT+HP43x2rm6HZWTID9UfgvxNf1x4NzLew/agnpVCz9OMhVr11Zm/bW2Tc8AYkAqD9DbIqB7prNKRvzgNam2hSjqfjT+SrZUsU=
Content-ID: <0574BBC535A9DB439E4EB41B11969F00@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52c13d49-4bdd-4407-4e7d-08d7eff473e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2020 06:29:08.9524 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hYcOB9MwnpkTembeCkvTJHGX06JGK9mrKFQ9Z+/dhgvEjdqYqM3AttOpapH1TCnO17uXYqQuMRVD/W7gT2fc62kuzyLJWn0i1q5xLjhroeQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB5291
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-05-04_02:2020-05-01,
 2020-05-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 mlxlogscore=999 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015
 bulkscore=0 mlxscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005040054
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
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, "Bogdan,
 Dragos" <Dragos.Bogdan@analog.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2020-05-03 at 12:37 +0100, Jonathan Cameron wrote:
> [External]
> 
> On Wed, 29 Apr 2020 10:21:29 +0300
> Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:
> 
> > From: Dragos Bogdan <dragos.bogdan@analog.com>
> > 
> > If the serial interface is used, the 8-bit address should be latched using
> > the rising edge of the WR/FSYNC signal.
> > 
> > This basically means that a CS change is required between the first byte
> > sent, and the second one.
> > This change splits the single-transfer transfer of 2 bytes into 2 transfers
> > with a single byte, and CS change in-between.
> > 
> > Signed-off-by: Dragos Bogdan <dragos.bogdan@analog.com>
> > Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
> 
> Fixes tag would have been nice. I've had a go by picking a patch where I
> refactored this code, but I think the issue probably predates that one.
> Its in 2011 so I doubt anyone will try going past that with backports ;)
> 

Apologies again for not considering Fixes tag.
At this point, I feel bad for repeating the apology, as it may sound like hollow

words.
But, I guess this could have skipped going through the fixes route.
The patch has been living in our tree for a while.

> Applied to the fixes-togreg branch of iio.git and marked for stable.
> 
> I'm guessing this means you have hardware and hope to get this one out
> of staging shortly? *crosses fingers* :)

Sorry, but not at this point in time.
I just fished this from our tree.
I also handle our kernel upgrades [on our side], and whenever I do an update,
some upstreamed patches disappear from our tree, and some stand-out and I wonder
how come this wasn't sent upstream.
This is one of them.

I don't know if I'll be able to find someone [in the near future] to allocate
this to [for moving out-of-staging].
Right now, the priority [on our side] is the high-speed converters.


> 
> Jonathan
> 
> > ---
> >  drivers/staging/iio/resolver/ad2s1210.c | 17 ++++++++++++-----
> >  1 file changed, 12 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/staging/iio/resolver/ad2s1210.c
> > b/drivers/staging/iio/resolver/ad2s1210.c
> > index 4b25a3a314ed..ed404355ea4c 100644
> > --- a/drivers/staging/iio/resolver/ad2s1210.c
> > +++ b/drivers/staging/iio/resolver/ad2s1210.c
> > @@ -130,17 +130,24 @@ static int ad2s1210_config_write(struct ad2s1210_state
> > *st, u8 data)
> >  static int ad2s1210_config_read(struct ad2s1210_state *st,
> >  				unsigned char address)
> >  {
> > -	struct spi_transfer xfer = {
> > -		.len = 2,
> > -		.rx_buf = st->rx,
> > -		.tx_buf = st->tx,
> > +	struct spi_transfer xfers[] = {
> > +		{
> > +			.len = 1,
> > +			.rx_buf = &st->rx[0],
> > +			.tx_buf = &st->tx[0],
> > +			.cs_change = 1,
> > +		}, {
> > +			.len = 1,
> > +			.rx_buf = &st->rx[1],
> > +			.tx_buf = &st->tx[1],
> > +		},
> >  	};
> >  	int ret = 0;
> >  
> >  	ad2s1210_set_mode(MOD_CONFIG, st);
> >  	st->tx[0] = address | AD2S1210_MSB_IS_HIGH;
> >  	st->tx[1] = AD2S1210_REG_FAULT;
> > -	ret = spi_sync_transfer(st->sdev, &xfer, 1);
> > +	ret = spi_sync_transfer(st->sdev, xfers, 2);
> >  	if (ret < 0)
> >  		return ret;
> >  
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
