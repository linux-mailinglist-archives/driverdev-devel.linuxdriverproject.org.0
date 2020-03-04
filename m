Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE78178A90
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Mar 2020 07:28:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8488386852;
	Wed,  4 Mar 2020 06:28:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wcENQk5v5aFE; Wed,  4 Mar 2020 06:28:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 768A78677E;
	Wed,  4 Mar 2020 06:28:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 274681BF85D
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 06:28:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 181F285359
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 06:28:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mPICPkYKbVLs for <devel@linuxdriverproject.org>;
 Wed,  4 Mar 2020 06:28:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A4B5E81B69
 for <devel@driverdev.osuosl.org>; Wed,  4 Mar 2020 06:28:00 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0246K80e016918; Wed, 4 Mar 2020 01:27:59 -0500
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2173.outbound.protection.outlook.com [104.47.59.173])
 by mx0a-00128a01.pphosted.com with ESMTP id 2ygm52a05r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 04 Mar 2020 01:27:59 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ll4v6CTEE0e8owjiR7NgqKKKM0P2TCvnrNxFb0Y/vmq8KF5w+prf9tV6CFEsYo/TndJyNsbuZ6Kd19xFOzfjNe4JwVE0ykXueGIQCf8k8TTsPRImpH+GkUTBUWrfzwh40METszlSWIWQelQoqddEly2lw1ItR4gUOx1+qukLfB2xLtL+xMZf+z8V8egmYattc4r5Zq3/eeVQ+Lub6yGrYntINOSMkNyARlEC9MifCYwdDGyiqGTFGxHQY1+ZKIEekg9WUZAXVsf/1arYKZ699KT1vyDgcxLgShZ0j+raMRc470i7gIweY6gUv2MnvYM0NClI9wY28zIyYfxXeD0lWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TY3GOIycQLPT4EfU+yM9JK6BRZCkLdcStR38JNVy7/4=;
 b=kZ9Yl1tbt6IaBJkQUrpBKCDihJx3zBc2hlvYmx/AZt/uPmzLLr1yFhfT4ORy+c7xB1TH7IIQo97AESI2s5HUTD6h+YfToE4ScrGJ9INIgLPE1tUHEV5rPX9dNIdbiX3wM/jCoPk9zkJsQlPT5MzE9wZLN0oFFq+UdSEJhPRqv02Aa5Xy4l5yPiqCISoNXNhsNOji5UKboBmmqe1V566b+W6zdv9jo0akNnQwy6Zih2yvGM5Qr2GqxtgwwrVguGEEAVk5gafBWbzOZyge456IimU52MPzux8rg3Aubd+Ej3a3tRwHt3IrOOsePHH5Vuc1UVOItQ9Z9Y4tn/EXUCL0nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=analog.com; dmarc=pass action=none header.from=analog.com;
 dkim=pass header.d=analog.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TY3GOIycQLPT4EfU+yM9JK6BRZCkLdcStR38JNVy7/4=;
 b=bUo3xDS0fXT1Fawu4ou8L3YYrCjbICSvKlGMQ/GrSrR2GPTabFf6T6cyJQFWhLNHiThPMPA8NZV/6c9Pg6mgo/FxEYvtbaHkk3af2eNKPxvLobj6SfVAI1cKyGWsImz8t5fwJw93PKGS9nX0iUuq/Or9VMCyqNtTFqDroCMYcDQ=
Received: from CH2PR03MB5192.namprd03.prod.outlook.com (2603:10b6:610:90::24)
 by CH2PR03MB5287.namprd03.prod.outlook.com (2603:10b6:610:9e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.15; Wed, 4 Mar
 2020 06:27:57 +0000
Received: from CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::edf0:3922:83f0:3056]) by CH2PR03MB5192.namprd03.prod.outlook.com
 ([fe80::edf0:3922:83f0:3056%4]) with mapi id 15.20.2772.019; Wed, 4 Mar 2020
 06:27:57 +0000
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "nish.malpani25@gmail.com" <nish.malpani25@gmail.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>
Subject: Re: [PATCH] staging: iio: adc: ad7192: Align with parenthesis
Thread-Topic: [PATCH] staging: iio: adc: ad7192: Align with parenthesis
Thread-Index: AQHV8YskXCLmryu+RUCq7CIJDC+TI6g3+duA
Date: Wed, 4 Mar 2020 06:27:57 +0000
Message-ID: <5d9e31ccd98ac5ec062dbad0b97b4bd71da41f3d.camel@analog.com>
References: <20200303183932.7051-1-nish.malpani25@gmail.com>
In-Reply-To: <20200303183932.7051-1-nish.malpani25@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.71.226.54]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5233652b-a4c0-4177-be68-08d7c0052df8
x-ms-traffictypediagnostic: CH2PR03MB5287:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR03MB5287F0279D1C086FC879D176F9E50@CH2PR03MB5287.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 0332AACBC3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(396003)(376002)(346002)(366004)(189003)(199004)(5660300002)(66476007)(64756008)(66446008)(6512007)(6486002)(66556008)(2616005)(26005)(478600001)(186003)(4744005)(76116006)(2906002)(91956017)(66946007)(4326008)(86362001)(110136005)(54906003)(316002)(36756003)(8936002)(81166006)(6506007)(71200400001)(8676002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR03MB5287;
 H:CH2PR03MB5192.namprd03.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: analog.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CrGOStMdJQwilcvhgqJ1DjZc69Npf9yi1BJhca+s49ELPDvxFABbAf9j8OEBpZIjhO0E1ihpF0AULoD9gop5of0N0fpxS6nBF/55Z/nDuXz7GXS7UmnBhuKSJKZPfed3Cdx7j95oBGTGd46fExHM8BgCW4xKdzS6EjpO1xz0GUfS9zeZW4rF8ro+1EdrMlwSkBZNyXKZOGyE6rM3xuABS/E71zFP+0N5i/Ddj2R/NVb6/jMjdDDfTFRAfNvt8L/vRYU3c/xI5KuDUUb6/IvTBbkhsq66h0qBnrkX4bxsSbCDmKBVHwQ8cz9cLeVH9osSjQbecD53icdG6ZktVYM6yRZ6lB/H1SwzBCf5T77ZX6llbetEHeyKtVLtukL5SkfSPDIFCmYF1tQPsJU4gpQ9cYlBzxDswuuuV3eTDDs3PHtr+dYN50oghNDbmzg29M+Y
x-ms-exchange-antispam-messagedata: AlsGPNTxv46/vKrsFv1X+3zN2l801+nt+sU2oYjD/dvlCuuFup3oQ0JHDFfAzS+GOc8ICjdy81VzYsBhfudFSTvOGXD01qyQ8GXKgeRqQPBfZPbs6eFAu2ny+a14wk6Z2SykbYbXPGZrp8Oyu9zp3A==
Content-ID: <6CE1BA009A4CF94897296BCCECED4783@namprd03.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5233652b-a4c0-4177-be68-08d7c0052df8
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2020 06:27:57.2331 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yRYy4rkYieZiR2IE1k6hhSUVxQHVA6tHzO/DvBZ8vwpyorNjtugl3D+VHsqKHAYIIRdcAIP4OR47rwKETeWQWg7gOGbVsyjIsACEyIuodLw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR03MB5287
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-03-03_08:2020-03-03,
 2020-03-03 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 mlxlogscore=999 mlxscore=0 lowpriorityscore=0 clxscore=1011 adultscore=0
 impostorscore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2003040048
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
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jic23@kernel.org" <jic23@kernel.org>,
 "stefan.popa@analog.com" <stefan.popa@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2020-03-04 at 00:09 +0530, Nishant Malpani wrote:
> [External]
> 
> This patch fixes the checkpatch.pl warning:
> 
> CHECK: Alignment should match open parenthesis
> +static void ad7192_get_available_filter_freq(struct ad7192_state *st,
> +                                                   int *freq)
> 

This patch needs to be updated a bit.
The driver has moved out of staging.
Path is now: ./drivers/iio/adc/ad7192.c

> Signed-off-by: Nishant Malpani <nish.malpani25@gmail.com>
> ---
>  drivers/staging/iio/adc/ad7192.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/adc/ad7192.c
> b/drivers/staging/iio/adc/ad7192.c
> index bf3e2a9cc07f..20fe7464da7f 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -477,7 +477,7 @@ static ssize_t ad7192_set(struct device *dev,
>  }
>  
>  static void ad7192_get_available_filter_freq(struct ad7192_state *st,
> -						    int *freq)
> +					     int *freq)
>  {
>  	unsigned int fadc;
>  
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
