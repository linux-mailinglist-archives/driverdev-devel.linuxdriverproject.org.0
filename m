Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A980108991
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 Nov 2019 08:55:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 83208204D8;
	Mon, 25 Nov 2019 07:55:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HZTe+N0vUsWc; Mon, 25 Nov 2019 07:55:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5194E204BE;
	Mon, 25 Nov 2019 07:55:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 621151BF2B5
 for <devel@linuxdriverproject.org>; Mon, 25 Nov 2019 07:55:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5B90C204C3
 for <devel@linuxdriverproject.org>; Mon, 25 Nov 2019 07:55:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3gcvyUJ+fSbf for <devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 07:55:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by silver.osuosl.org (Postfix) with ESMTPS id 0AD90204BE
 for <devel@driverdev.osuosl.org>; Mon, 25 Nov 2019 07:55:41 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAP7rDm8015773; Mon, 25 Nov 2019 02:55:41 -0500
Received: from nam05-dm3-obe.outbound.protection.outlook.com
 (mail-dm3nam05lp2059.outbound.protection.outlook.com [104.47.49.59])
 by mx0a-00128a01.pphosted.com with ESMTP id 2wf005c71p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 25 Nov 2019 02:55:40 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a9Uj3zXgBWt4YXfbIGnsCBfngP0qMO8ty+f6r5z4BJAdSBm6dLN4AAAVodyz+sV17wXyBRa9OasCZOHwCBw/nZGV4mmfGtQYhOwJApoixFwkGtyppiR0LDcXuieA3QpI00IRhm48DH+MZ5hKMHMJFq5qzzt86Q/rF+BiUPJuw6hQO4nnO23hwIdrJRDFy4Jc7wJHAhf+VsjBJu8HbaPF3h4xJam4hiIODxRL1jasX299ETdeCDf+OBQBPlLANc9RYliqic7HXGYrLbfH/nMScEWeTTJzC/aEPe4PGloAFRIF0ovlU9f2Tnrl4RMOxKN/Znv/VmrbiI8TOF2NMfuzLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=03VqBUYM148e+OC9VBKDWOGS8+mWyKNK10joLFMYves=;
 b=dnDpWwgR3xTZTo2xkYJ9klRHRse+Y8II//XTAb/71GGWcMqqnbrxt4ntURsMWWyFqtR4VRioaZS34Na9mV7vVS6CYQbaOMDcNQrf89lXbIn0tu/d1G7mscviUzzYNMPvvEXkZomBkOV7Oi2EyLkKpqyuCaVKh2ao1nf+Tzh5aTkInqN7fhn3/VdYEi8+TJbxJ0siQQpt4fWnTMTDYlpA6S5UICZ4hDNB6ae6EWnAkvdnpP19FZfqkgyjmwNYWiqHI5r08u/40Ozwka4WSp9bG9rtfT1whmkg/UsiNWj5FlPrluDHZ/Xfw9WQFRkvL/vcGK7jFUagrFBqlI7Vmaq6Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=03VqBUYM148e+OC9VBKDWOGS8+mWyKNK10joLFMYves=;
 b=6od0YxwpGDY0GRviAh1PsiUfpCHHSfFi2LBkHgyXSCMyq1dIHPSAD3OJ+bMhH/Uj55LoacMj6IaA6pZb1VxLQglQCuc66HaFVuS/HliyJCTWOR68ieXviklRdLkmO9ua2LmNGqTd/2C0Hx9XzztJxYGy2HLdRK77/K/NmmJKNmw=
Received: from CH2PR03MB5192.namprd03.prod.outlook.com (20.180.12.152) by
 CH2PR03MB5223.namprd03.prod.outlook.com (20.180.15.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.22; Mon, 25 Nov 2019 07:55:39 +0000
Received: from CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::38e7:c7c5:75cc:682c]) by CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::38e7:c7c5:75cc:682c%5]) with mapi id 15.20.2474.023; Mon, 25 Nov 2019
 07:55:39 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "Popa, Stefan Serban" <StefanSerban.Popa@analog.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jic23@kernel.org" <jic23@kernel.org>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "Hennerich, Michael" <Michael.Hennerich@analog.com>,
 "lars@metafoo.de" <lars@metafoo.de>,
 "rodrigorsdc@gmail.com" <rodrigorsdc@gmail.com>, "pmeerw@pmeerw.net"
 <pmeerw@pmeerw.net>
Subject: Re: [PATCH v5 1/2] staging: iio: accel: adis16240: enforce SPI mode
 on probe function
Thread-Topic: [PATCH v5 1/2] staging: iio: accel: adis16240: enforce SPI mode
 on probe function
Thread-Index: AQHVola+Yj8hDk7DMESHXfIfRLi/aKebhxQA
Date: Mon, 25 Nov 2019 07:55:39 +0000
Message-ID: <2e62b4fa3ee93909bfcdc4d9b60015e7c22d510c.camel@analog.com>
References: <20191123233510.4890-1-rodrigorsdc@gmail.com>
In-Reply-To: <20191123233510.4890-1-rodrigorsdc@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3f3d540a-7717-4189-3c4a-08d7717cdd08
x-ms-traffictypediagnostic: CH2PR03MB5223:
x-ld-processed: eaa689b4-8f87-40e0-9c6f-7228de4d754a,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR03MB5223C83F161C99D598CAAE42F94A0@CH2PR03MB5223.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0232B30BBC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(136003)(376002)(346002)(396003)(189003)(199004)(6506007)(76176011)(6486002)(7416002)(2201001)(2906002)(102836004)(6246003)(99286004)(6116002)(3846002)(2501003)(446003)(478600001)(118296001)(4001150100001)(26005)(14444005)(256004)(5660300002)(25786009)(76116006)(8936002)(8676002)(6512007)(110136005)(66066001)(71190400001)(71200400001)(11346002)(305945005)(54906003)(229853002)(186003)(66556008)(66476007)(66946007)(66446008)(64756008)(86362001)(4326008)(2616005)(6436002)(81156014)(81166006)(36756003)(316002)(7736002)(14454004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR03MB5223;
 H:CH2PR03MB5192.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: em7qJuYlJ9XZbBxQdQW+udb/K+/xCVpHzJgb4fiTO2Mr1fijRwhIyaamj85avmRcNF+N1DSdTYGHK0eIA0pHp2wvVM3u5vU6LU+xItYat4JOF4fAk1dQsnoU6WOC95Z/qpe1nRzb7JgQuTG+//s9vaotY33uPDHmB96kqFp6UXUUUiF60/8AA7rG+ea/tkG8+uMFAAzK0iiOUHiYfChagliJ0waQfw2gR4rWkchcEw8zDl2UVetibLl5QXlEE6EodD4U3H/SBDH4Vug4NRbXADqP0zJ5a27DQM6pLUfNBCKHAhZ5MRzxTdS0PewIEdiHmh5Lhh8/7hQaqjimMlQc2IRwvLKiGRdWw5KBlGSJIg+XVVc/hmW46s4oiZCu9W/PwN2KPh6b1NCkJK9CUR/mccFgtC+Dp+0bSzdIXIgrmpxGRvu/TbDF4tUQ2rXQwrx/
Content-ID: <FE1147C6AAA6DB4E8397D1EEF48897B8@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f3d540a-7717-4189-3c4a-08d7717cdd08
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Nov 2019 07:55:39.3605 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 24D2OQfrIcp1kGp1uLBGr4RHk0D0nm4N8ZSvXdhOXXGq6uf7HJTKNVo6+hc4JsQNffIR2ezlyKx3gya3NGu3KN8ny90WGRkr2q1S0CEybyw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR03MB5223
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-25_01:2019-11-21,2019-11-25 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0
 mlxlogscore=999 malwarescore=0 mlxscore=0 lowpriorityscore=0 clxscore=1015
 spamscore=0 suspectscore=0 impostorscore=0 priorityscore=1501 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1910280000
 definitions=main-1911250073
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "kernel-usp@googlegroups.com" <kernel-usp@googlegroups.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 2019-11-23 at 20:35 -0300, Rodrigo Carvalho wrote:
> [External]
> 
> According to the datasheet, this driver supports only SPI mode 3,
> so we should enforce it and call spi_setup() on probe function.
> 
> Signed-off-by: Rodrigo Ribeiro Carvalho <rodrigorsdc@gmail.com>
> ---
> V5:
>   - Add this patch to the patchset
> 
>  drivers/staging/iio/accel/adis16240.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/staging/iio/accel/adis16240.c
> b/drivers/staging/iio/accel/adis16240.c
> index 82099db4bf0c..77b6b81767b9 100644
> --- a/drivers/staging/iio/accel/adis16240.c
> +++ b/drivers/staging/iio/accel/adis16240.c
> @@ -400,6 +400,13 @@ static int adis16240_probe(struct spi_device *spi)
>  	indio_dev->num_channels = ARRAY_SIZE(adis16240_channels);
>  	indio_dev->modes = INDIO_DIRECT_MODE;
>  
> +	spi->mode = SPI_MODE_3;

A generic question from me here, since I am not sure.

Would this limit the configurations of this chip on the board?
In case there is some level-inverter [for various weird reasons] on the
board, this may not work, because the SPI controller would need CPOL to be
0.

Not sure if this question is valid, or whether we need to care about such
configurations.

Thanks
Alex

> +	ret = spi_setup(spi);
> +	if (ret) {
> +		dev_err(&spi->dev, "spi_setup failed!\n");
> +		return ret;
> +	}
> +
>  	ret = adis_init(st, indio_dev, spi, &adis16240_data);
>  	if (ret)
>  		return ret;
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
