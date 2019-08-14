Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 127968CC1F
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Aug 2019 08:56:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B6DC121537;
	Wed, 14 Aug 2019 06:56:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vI8zZO3S5eoG; Wed, 14 Aug 2019 06:56:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3F26F21507;
	Wed, 14 Aug 2019 06:56:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 343B01BF426
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2019 06:56:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3105586084
 for <devel@linuxdriverproject.org>; Wed, 14 Aug 2019 06:56:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4zsmroaqV1zP for <devel@linuxdriverproject.org>;
 Wed, 14 Aug 2019 06:56:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-00128a01.pphosted.com (mx0a-00128a01.pphosted.com
 [148.163.135.77])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CA5AF85F67
 for <devel@driverdev.osuosl.org>; Wed, 14 Aug 2019 06:56:23 +0000 (UTC)
Received: from pps.filterd (m0167088.ppops.net [127.0.0.1])
 by mx0a-00128a01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7E6rXaS009034; Wed, 14 Aug 2019 02:56:23 -0400
Received: from nam02-cy1-obe.outbound.protection.outlook.com
 (mail-cys01nam02lp2055.outbound.protection.outlook.com [104.47.37.55])
 by mx0a-00128a01.pphosted.com with ESMTP id 2uc0whhsdc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 14 Aug 2019 02:56:22 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nKKE4kej61LSyR//Qc39ZXnqZpTdsan1K0GT9CkgAl1M9twDBk3DWrGP2qS+SXoKtixc9zJbAkoPzowg9Ly35+Zz8tnAyJU3FhxgBPrjXKA6HaO50vfyzCoprDXXv/4DCXCRt38Jnd9uC5PTqYNvNFItQ+iY+O+FgX6CUSVq01+855DkQ55wMtOiVAOnOij3q+HPzQcnqunVLMud+bqOv/3VYYm++4o1b5znLzfnFZ7bk0nDa6Wq1g4LVxEpfPI2RMYJfOgu1zJVaEp0Ic/w4kmTcH6p18JKn9k+QjbrwFS2yvodVyD/R8ZZ7OZ5WtCghDfjoFugd/sZGC/kPy+8nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NIwUMvLo1s8tG+DoBqsBKC+2kV7Og0PzsQJI2lwahdM=;
 b=mgy9ihmxNInv0Fm3StL+KEFytpXGp9vp7PIeblxKt+OOROOXrgyNINe6PCbkbvtgk/c/Xz4+8LqS67561ggDC6NBMcdPPosuwQOZoNP08bHii7GAsgoRGah20b6Lt4OwjuoEiuDFwpVUZH2JaoDQjeuDx1EGL3Guhru6lg7L2Ezozqezlv12vkqxZmHYPtM3ZX0kqXU0vy661ucRmoDGB5odHdmFMvdzUd8FbMFaFiltzr0id+jmbJie2DXJHHxaA60W/Qo1j6E/KEk9MS7P8uesCmhLCAUFg33xSw32iMW6MTo1IAT8xfUnrDzSj9/fWgznzFPrdsEHdP9Y+V65pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 137.71.25.57) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=analog.com;
 dmarc=bestguesspass action=none header.from=analog.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector2-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NIwUMvLo1s8tG+DoBqsBKC+2kV7Og0PzsQJI2lwahdM=;
 b=FkZyoaSRBkJCVyigXKE62H9tJFZx/nxcPaeU2w4+QfH/5iAj340yVehk9Cb991cXSOHB6eVjpXzTw2vucyvFzWwSAzeDsIDDcs2nuGs94TKxkegHRoTovlA8tcJNT2/kRozr7w1PXty1ibdU8cT31Tnf9hYmOQ7eNyPaepWabYk=
Received: from CH2PR03CA0029.namprd03.prod.outlook.com (2603:10b6:610:59::39)
 by BLUPR0301MB2084.namprd03.prod.outlook.com
 (2a01:111:e400:c474::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.16; Wed, 14 Aug
 2019 06:56:21 +0000
Received: from SN1NAM02FT064.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::207) by CH2PR03CA0029.outlook.office365.com
 (2603:10b6:610:59::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.15 via Frontend
 Transport; Wed, 14 Aug 2019 06:56:20 +0000
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 SN1NAM02FT064.mail.protection.outlook.com (10.152.72.143) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2157.15
 via Frontend Transport; Wed, 14 Aug 2019 06:56:20 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x7E6uJGN012658
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Tue, 13 Aug 2019 23:56:19 -0700
Received: from NWD2MBX7.ad.analog.com ([fe80::190e:f9c1:9a22:9663]) by
 NWD2HUBCAS7.ad.analog.com ([fe80::595b:ced1:cc03:539d%12]) with mapi id
 14.03.0415.000; Wed, 14 Aug 2019 02:56:19 -0400
From: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
To: "Popa, Stefan Serban" <StefanSerban.Popa@analog.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "jic23@kernel.org" <jic23@kernel.org>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "Hennerich, Michael" <Michael.Hennerich@analog.com>,
 "lars@metafoo.de" <lars@metafoo.de>,
 "rodrigorsdc@gmail.com" <rodrigorsdc@gmail.com>, "pmeerw@pmeerw.net"
 <pmeerw@pmeerw.net>
Subject: Re: [PATCH v2] staging: iio: accel: adis16240: Improve readability
 on write_raw function
Thread-Topic: [PATCH v2] staging: iio: accel: adis16240: Improve readability
 on write_raw function
Thread-Index: AQHVUg27ho7Fo7+PkkmXku6NXNI65qb6eawA
Date: Wed, 14 Aug 2019 06:56:18 +0000
Message-ID: <28dda97db73c56fbaf746aa52eb63faaf02b15d7.camel@analog.com>
References: <20190813193101.26867-1-rodrigorsdc@gmail.com>
In-Reply-To: <20190813193101.26867-1-rodrigorsdc@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.48.65.113]
x-adiroutedonprem: True
Content-ID: <DF30E5D4A3E6D54980D844CFF442E35F@analog.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(39860400002)(136003)(2980300002)(189003)(199004)(4326008)(426003)(229853002)(14454004)(6246003)(8676002)(2501003)(50466002)(356004)(11346002)(7636002)(54906003)(86362001)(436003)(7416002)(305945005)(336012)(7736002)(5660300002)(2486003)(23676004)(110136005)(47776003)(446003)(2906002)(6116002)(3846002)(316002)(36756003)(486006)(476003)(126002)(246002)(70586007)(118296001)(186003)(7696005)(106002)(2616005)(70206006)(2201001)(26005)(102836004)(76176011)(8936002)(478600001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR0301MB2084; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 633cf9ca-a6e1-4923-2e3e-08d72084835b
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328)(7193020);
 SRVR:BLUPR0301MB2084; 
X-MS-TrafficTypeDiagnostic: BLUPR0301MB2084:
X-Microsoft-Antispam-PRVS: <BLUPR0301MB20848D18702677BA012470C1F9AD0@BLUPR0301MB2084.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-Forefront-PRVS: 01294F875B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: SWult33XP65Ll2GPRKmLEsZ9i8iJIIvn1lUfGlzqDQWiIQvgtB+r5K/M9g4xmOaf1AEkmWK5n+/pZk0E0NCoJH9SbG3rqD1q4FsC2YZVmVGjdHP0/wy8hn163D5i7Z3J5iQtx5HGDY3p3LMi0uJe8HX1MKayu1JsZvDFMllc7IAQXIqLMl12AIgbuL8rka4CqSgLVNzN4vPbGJayPaMwBcmObAFLQ2CKyeWuPbxM43zCzmYgy4djpMVo2UfitqlOna0KOzg/Z5x7i0i2HQI2TMK6mkOdGdYcYC8WGj9YKjyRyGdWGC3QXTNN8v9wQvgXuwj2jMb3aa46DDk0eq3aBCilnLP9BKH6wefTedgU8/N9J2WTMskMGibJ1btrm8J9GmEHzL3Slx2JLYDH7UCEKFEY70+7cR41HaipTz0hUhc=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2019 06:56:20.2953 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 633cf9ca-a6e1-4923-2e3e-08d72084835b
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR0301MB2084
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-14_02:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908140065
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
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel-usp@googlegroups.com" <kernel-usp@googlegroups.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2019-08-13 at 16:31 -0300, Rodrigo Ribeiro wrote:
> [External]
> 
> Replace shift and minus operation by GENMASK macro and remove the local
> variables used to store intermediate data.
> 

Reviewed-by: Alexandru Ardelean <alexandru.ardelean@analog.com>

> Signed-off-by: Rodrigo Ribeiro Carvalho <rodrigorsdc@gmail.com>
> ---
> v2:
>    - Leave switch statement instead of replace by if statement
>  drivers/staging/iio/accel/adis16240.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/iio/accel/adis16240.c b/drivers/staging/iio/accel/adis16240.c
> index 62f4b3b1b457..82099db4bf0c 100644
> --- a/drivers/staging/iio/accel/adis16240.c
> +++ b/drivers/staging/iio/accel/adis16240.c
> @@ -309,15 +309,12 @@ static int adis16240_write_raw(struct iio_dev *indio_dev,
>  			       long mask)
>  {
>  	struct adis *st = iio_priv(indio_dev);
> -	int bits = 10;
> -	s16 val16;
>  	u8 addr;
>  
>  	switch (mask) {
>  	case IIO_CHAN_INFO_CALIBBIAS:
> -		val16 = val & ((1 << bits) - 1);
>  		addr = adis16240_addresses[chan->scan_index][0];
> -		return adis_write_reg_16(st, addr, val16);
> +		return adis_write_reg_16(st, addr, val & GENMASK(9, 0));
>  	}
>  	return -EINVAL;
>  }
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
