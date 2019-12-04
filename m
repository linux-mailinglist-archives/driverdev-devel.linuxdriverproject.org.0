Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 236FE11238B
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Dec 2019 08:25:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4FD27882FB;
	Wed,  4 Dec 2019 07:25:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RqvnCXiHKHkZ; Wed,  4 Dec 2019 07:25:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6F3F08829A;
	Wed,  4 Dec 2019 07:25:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6CB0F1BF27C
 for <devel@linuxdriverproject.org>; Wed,  4 Dec 2019 07:25:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 650348829A
 for <devel@linuxdriverproject.org>; Wed,  4 Dec 2019 07:25:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ARxOfARfpNiT for <devel@linuxdriverproject.org>;
 Wed,  4 Dec 2019 07:25:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0b-00128a01.pphosted.com (mx0b-00128a01.pphosted.com
 [148.163.139.77])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7E19188191
 for <devel@driverdev.osuosl.org>; Wed,  4 Dec 2019 07:25:34 +0000 (UTC)
Received: from pps.filterd (m0167091.ppops.net [127.0.0.1])
 by mx0b-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB47NTh0023220; Wed, 4 Dec 2019 02:25:33 -0500
Received: from nam04-sn1-obe.outbound.protection.outlook.com
 (mail-sn1nam04lp2056.outbound.protection.outlook.com [104.47.44.56])
 by mx0b-00128a01.pphosted.com with ESMTP id 2wkk2c31rm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 04 Dec 2019 02:25:33 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OXpfZM3gsqGiimiR3CTwNxy8rmYXa1ZlKIFMP19zs4CSvVnk39a3qh66CPewTtFqpFmB+LypmfUflolhGw4a1uf+prD8IQbJX3BKswJNURTsTKfTmfh87NoSSals1huypShuq2xN2eh63ekwyNq4UiOxNaVUFYbSu1cwUeBlwI63Gar40WExpKobCYVcq2H6lddP6xfNpOOfuzgPcaPdozK8l0rAuGcbX2XYl+HQYqotDUtrg/BP6GipaBGnJtcUElQAzFmAN18Md4OKxMmuD+9c/NGHQu2CNIwj9Tr+8NjHRZcaXeuDeQFDdZ7XEad0TZW4T+N8Nzes116BiuYhtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=exUdhg2zD9skF6/FuWi4Mfa1i2sbOmEoRK4K54U6IUM=;
 b=bO4NHE3fTPhAb8mWj/mwkkKRGgVechXhPjrozZEK4us0ZF0MfR8mcn0lZclB4cN2FFQNl8hCcK1p9Oi1Iq3LgP5XIW+hP9AuTuBmupXMFlxfnQ3Sa1I71amstGhk9XTTPjjlMKSL0dD5nQSMEnywEF7ACEnCUmer+AQincGpAhS5huqyY2bvlp4+LhRJpL0V2FuNQYnIChfyqllpWR0J0tP2/PTq5/oeR7wyvjIJRMf9Fdy234BPwbw0aVLrcidt9jc1VHiB9GGnlLa8nLnmnrGnXa/qEdsqYuhAU61re69S8TlIeqZfhMruUDPlaeuq3SYZcIquGZQ+CQyr12dblw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=exUdhg2zD9skF6/FuWi4Mfa1i2sbOmEoRK4K54U6IUM=;
 b=EA2AeJBIVIFP+BsjBHDyv/Fh3bXID9T6or6qX90rcy54IUd1NSDXI7I/yihgp2kVxf6R56cGII/9ZA8eS+ckWB5kahPjif0kITM3rMbJ/VhzJLoGl4IPZbZ+mkub8rmq512xca2GhpFtjUizlTNTtRWfVGXCYTFyJJ2ZsU286As=
Received: from CH2PR03MB5192.namprd03.prod.outlook.com (20.180.12.152) by
 CH2PR03MB5366.namprd03.prod.outlook.com (20.180.14.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.12; Wed, 4 Dec 2019 07:25:29 +0000
Received: from CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::38e7:c7c5:75cc:682c]) by CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::38e7:c7c5:75cc:682c%5]) with mapi id 15.20.2495.014; Wed, 4 Dec 2019
 07:25:29 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "jic23@kernel.org" <jic23@kernel.org>
Subject: Re: [PATCH v5 1/2] staging: iio: accel: adis16240: enforce SPI mode
 on probe function
Thread-Topic: [PATCH v5 1/2] staging: iio: accel: adis16240: enforce SPI mode
 on probe function
Thread-Index: AQHVola+Yj8hDk7DMESHXfIfRLi/aKebhxQAgAms/ACABG+eAA==
Date: Wed, 4 Dec 2019 07:25:29 +0000
Message-ID: <5c7c584cd02f9960600b321a4561406440175873.camel@analog.com>
References: <20191123233510.4890-1-rodrigorsdc@gmail.com>
 <2e62b4fa3ee93909bfcdc4d9b60015e7c22d510c.camel@analog.com>
 <20191201114212.08a068fc@archlinux>
In-Reply-To: <20191201114212.08a068fc@archlinux>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bfc6bb4c-bd8a-4e54-ed68-08d7788b2402
x-ms-traffictypediagnostic: CH2PR03MB5366:
x-ld-processed: eaa689b4-8f87-40e0-9c6f-7228de4d754a,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR03MB536625C0CD91BEEFB27216DBF95D0@CH2PR03MB5366.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0241D5F98C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(39860400002)(136003)(396003)(366004)(199004)(189003)(66946007)(5660300002)(54906003)(2616005)(5640700003)(7416002)(316002)(446003)(11346002)(229853002)(81156014)(81166006)(76116006)(66556008)(6486002)(99286004)(66446008)(25786009)(64756008)(8936002)(8676002)(66476007)(91956017)(2906002)(6116002)(3846002)(6246003)(71200400001)(14454004)(4326008)(6916009)(6512007)(36756003)(478600001)(256004)(2351001)(7736002)(4001150100001)(14444005)(305945005)(6506007)(6436002)(118296001)(26005)(102836004)(76176011)(186003)(86362001)(2501003)(71190400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR03MB5366;
 H:CH2PR03MB5192.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FTVP2EuG28D56ikYsXnhTVFK7AXTLQtWOVMSolDpOWU2zA/b9eC0mvHSUf7rm5iNL1gkANxAko4FpkdU1OgVkQqFMj1E/eMH6FE7zlP77lQk6iMd7jYa9bCkpY5//7bvmhLxnJ8ufA3kQbs1IGiOtt5pJDHWniSKp0TBA8rZk9Uv+MwxqHqT5A2WOaNp5Y9QpqOpxWrU6u5QQDqhN7+LcZhjoZihJY5EobzEk6q2johMvJhnW5g94VjRfcp3tQRVxs+XRLII9dA//QuIrLDBZ4pKnsnw8JB3p5qiImMlhIC9re2txnDeZBev/+x0XJqd7vc/7i2d0RcxTLFVFmaD4hrluuJz/Mhq6vkEuzfdnOgbmZ+E7kdopCaEQ834bRm+bQGizWyEez5hxxTa3lrz0xsvGG5JUPvCsxyWG29EN7Qdc/rtgAYDf67dzyWPPLBB
Content-ID: <A0EDAE27E6392F438AB233E748E079C4@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfc6bb4c-bd8a-4e54-ed68-08d7788b2402
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2019 07:25:29.4480 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6FQ5OIsxkaJWzffBCd7Tid/gx25Y4YaH5uAGjbfAUlvpmlBKQMH5rCYq8WXnCz3ISIcmD731SwQRZLRc3zk5vxckCaV11bRkGmmYLH7g9+w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR03MB5366
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-04_01:2019-12-04,2019-12-03 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 phishscore=0 lowpriorityscore=0 suspectscore=0 mlxlogscore=999 mlxscore=0
 spamscore=0 bulkscore=0 adultscore=0 malwarescore=0 impostorscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1912040055
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lars@metafoo.de" <lars@metafoo.de>, "Hennerich,
 Michael" <Michael.Hennerich@analog.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rodrigorsdc@gmail.com" <rodrigorsdc@gmail.com>,
 "kernel-usp@googlegroups.com" <kernel-usp@googlegroups.com>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "Popa, Stefan Serban" <StefanSerban.Popa@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2019-12-01 at 11:42 +0000, Jonathan Cameron wrote:
> [External]
> 
> On Mon, 25 Nov 2019 07:55:39 +0000
> "Ardelean, Alexandru" <alexandru.Ardelean@analog.com> wrote:
> 
> > On Sat, 2019-11-23 at 20:35 -0300, Rodrigo Carvalho wrote:
> > > [External]
> > > 
> > > According to the datasheet, this driver supports only SPI mode 3,
> > > so we should enforce it and call spi_setup() on probe function.
> > > 
> > > Signed-off-by: Rodrigo Ribeiro Carvalho <rodrigorsdc@gmail.com>
> > > ---
> > > V5:
> > >   - Add this patch to the patchset
> > > 
> > >  drivers/staging/iio/accel/adis16240.c | 7 +++++++
> > >  1 file changed, 7 insertions(+)
> > > 
> > > diff --git a/drivers/staging/iio/accel/adis16240.c
> > > b/drivers/staging/iio/accel/adis16240.c
> > > index 82099db4bf0c..77b6b81767b9 100644
> > > --- a/drivers/staging/iio/accel/adis16240.c
> > > +++ b/drivers/staging/iio/accel/adis16240.c
> > > @@ -400,6 +400,13 @@ static int adis16240_probe(struct spi_device
> > > *spi)
> > >  	indio_dev->num_channels = ARRAY_SIZE(adis16240_channels);
> > >  	indio_dev->modes = INDIO_DIRECT_MODE;
> > >  
> > > +	spi->mode = SPI_MODE_3;  
> > 
> > A generic question from me here, since I am not sure.
> > 
> > Would this limit the configurations of this chip on the board?
> > In case there is some level-inverter [for various weird reasons] on the
> > board, this may not work, because the SPI controller would need CPOL to
> > be
> > 0.
> > 
> > Not sure if this question is valid, or whether we need to care about
> > such
> > configurations.
> 
> It's a good question as this sort of trick is used sometimes. Let's see
> what responses we get to the other branch of this thread before moving
> forwards
> with this.
> 

Coming back here.
Apologies to Rodrigo. I do realize that I delayed this a bit too much.

Let's have this series as-is here, and then we can see about a more generic
SPI Mode Converter driver that rounds-up all these weird boards.
Or, if we don't do any SPI mode converter drivers, then we can handle this
on a case-by-case basis/driver.


> Jonathan
> 
> 
> > Thanks
> > Alex
> > 
> > > +	ret = spi_setup(spi);
> > > +	if (ret) {
> > > +		dev_err(&spi->dev, "spi_setup failed!\n");
> > > +		return ret;
> > > +	}
> > > +
> > >  	ret = adis_init(st, indio_dev, spi, &adis16240_data);
> > >  	if (ret)
> > >  		return ret;  
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
