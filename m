Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A30C719C2C8
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 15:37:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D4D06204FD;
	Thu,  2 Apr 2020 13:37:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xi9s4pGs8VZL; Thu,  2 Apr 2020 13:37:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 606D4203BF;
	Thu,  2 Apr 2020 13:37:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 50F151BF9BD
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 13:37:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4D3498705B
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 13:37:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wVgqqyXqpATh for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 13:37:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 699A98703B
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 13:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1585834621; x=1617370621;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=0cRcZzEt4NgDr0UkddGCNHxYlQq0CleKgPAMlVYs2qs=;
 b=NItyBYJp517K+8s0NCeCi+THH280eRtC/QB6Vml7AerpSlbrOh365xWR
 AEBqp9Yck/rnsSlWy8DO2B0ngNZgddDSqzI589xUjvlhHq8vz9VzfTR4k
 p63wlCSzE0kzve6xjoteLfp+MRVTEKPLKKJHvdCHqKmgBilMlGoBIoLV9
 nC9wGVb0GgHQpdmcpvc7jJpHP60Lrqsarr/8XkPvP+aafIZxsNWXU1N0/
 GW7LgEkrDxIgvMfu0ufdWQLH7jjhlzoyNAUKMUYtrQ8gW99pKTxsWAtGd
 FMYILny8XPwj5wFRu7sKCiCOhmmGIODvO88Vrb2KzSiXCZQeAOH4YwdCT w==;
IronPort-SDR: CgOflhd8F8Lnz/zxCVs5I6zl/lzAx/bUx0ewI0gI+dKRg6qZI0lOnS9n7lmozpdHKiJoqVMsH2
 4xgjPimf5E3HWvbqBE4aqbCZO8cHaxLDRrYEtnJcdn42d8RzdEugE7J0+SVw7e8dpVoyAAB219
 3txRBl1pkjG9J7pKYdNH3fCgZzOVeTpXcT2U1pGqSEmCteazb18iwQj4KeSnh0/4BCtwMm3rqK
 /BPJxGdcFonh42STAfutaR7RoFbXCsowp6HQo4/XOOhyQDvEDNvL30/t2p4Q9/R/8qWlkG35jE
 UYY=
X-IronPort-AV: E=Sophos;i="5.72,335,1580799600"; d="scan'208";a="69188552"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Apr 2020 06:37:00 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 2 Apr 2020 06:37:07 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 2 Apr 2020 06:37:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cau3wEn23X462++updQNwYfyIXaE7ALLUh00FjSFei6KDP7tnvPb69CXgZd30szV+lnZTfM3syD7GhCHpshW7cjnbp7Q7XqOtRjhhr0qwYeJw8IwYjSsvjNSdAu5zxkMO1TmN83YhpbBoD43d2JnQusZosC4Q6AK8wLJXdFZmm96Uix8cf7b4ZMJHiMfqD3I12M2+ngkAAXJ0e/esD4QcnZlIk12e7KVLG91SK9hqtWAqCC72f3k0X47FrT6PoiU7E34nHf9Uh+Cmm0pS0pzDAvAjy0tZmvuqfBlZQqhGo8Zdxfhk/ATd9hk0RbX/JDkvZ2eTQcTp9ZemqRtxn6usA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0cRcZzEt4NgDr0UkddGCNHxYlQq0CleKgPAMlVYs2qs=;
 b=DKmHnnnCSMbqupYtpuOO5EnPKo9opWcyM7onDmw0iYKz2yPerkpEdDa+iB59lbVq/QB0O5ojAzRua1BnhHE7iKEoETyJpqiTau14uUKdjUMPnZNPlXGWdXq7fvcMguoWws8TZqaBOcH3wfHl3bVJ7Tg4chJ96RWOelW/Jd6jlFDYVgq7oPYxYzoGGhMzbpPprsjK/vkkHd+pMMoJMXvUyqoGB2pWPPGrkWaxYvFh/dAzIj4saWlzbQGZ78LHEwBcxCrMIs3UuyjnqKxr4hxsttXGgQfgjRVPJPpYqGkRv0haoux+stM7JOa1Vqzyh27Y3113BSki+4L48asvdxsJEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0cRcZzEt4NgDr0UkddGCNHxYlQq0CleKgPAMlVYs2qs=;
 b=j8kWHCa6z1VCvvd9FOilqcnR9PSMsV/orMF3UJ+Zao24+ClpHqEgwltTYfZzn3kx1QcfFw/g16lIyUoXMPL2DB7TI4tVNMEulVGTQjYvi0GiGzHc/wzWeS4xoJKM3nZ43uPsqyVklZSEvKWazXr9EHkJ2pzTrCGU2nZVMXeN6SE=
Received: from BYAPR11MB3125.namprd11.prod.outlook.com (2603:10b6:a03:8e::32)
 by BYAPR11MB2997.namprd11.prod.outlook.com (2603:10b6:a03:8b::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20; Thu, 2 Apr
 2020 13:36:57 +0000
Received: from BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e]) by BYAPR11MB3125.namprd11.prod.outlook.com
 ([fe80::c27:87cf:ca4:d86e%4]) with mapi id 15.20.2856.019; Thu, 2 Apr 2020
 13:36:57 +0000
From: <Ajay.Kathat@microchip.com>
To: <dan.carpenter@oracle.com>
Subject: Re: [PATCH v3] staging: wilc1000: Use crc7 in lib/ rather than a
 private copy
Thread-Topic: [PATCH v3] staging: wilc1000: Use crc7 in lib/ rather than a
 private copy
Thread-Index: AQHWA4KEkW7XFxV0nkCn6WUH3cFHMKhliiaAgABWYYA=
Date: Thu, 2 Apr 2020 13:36:56 +0000
Message-ID: <e418c5e5-df8c-6b0d-ede5-01d2490c68d9@microchip.com>
References: <20200326152251.19094-1-ajay.kathat@microchip.com>
 <20200402082745.GG2001@kadam>
In-Reply-To: <20200402082745.GG2001@kadam>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Ajay.Kathat@microchip.com; 
x-originating-ip: [49.207.49.145]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 79a2dd23-4d68-4161-f957-08d7d70ae9f8
x-ms-traffictypediagnostic: BYAPR11MB2997:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB299792BBD14DA885B18284AEE3C60@BYAPR11MB2997.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0361212EA8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3125.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(396003)(136003)(39860400002)(346002)(366004)(376002)(64756008)(66446008)(8676002)(86362001)(76116006)(66476007)(66556008)(54906003)(66946007)(31686004)(31696002)(71200400001)(6512007)(2616005)(478600001)(26005)(4326008)(8936002)(6506007)(81166006)(6486002)(6916009)(186003)(91956017)(81156014)(2906002)(5660300002)(36756003)(107886003)(53546011)(316002)(55236004);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sOQVjAfwRQEEQabO13vCt45Hklx8lHGi86KrfQDaDnj3/cBCqlUpKn9OrUJSDU4v6zGlxFuSvoXCQ42u3wxxvc+8++fyqs8+tF17TiuNkJeGOv0HUE3dXikZfBQmmaZleFY6EbpIiARil2XSRvwV2jaiyPLXrrj1Yxf6ZqvbttJvlykHBP5vpOMClbudCGlsSEUhWX9E2DOM91pIKJLPCVwyMY8G4SRU+r2dGJ1eQQSrDDR74Ff+73S/Weihz0mdBtUFt3HB45+KqVyFOMW/bUOBbzZOs+66OyPyAVfwL86P7nvkicTiKpc+i1JJ22wdncduFHJ4DUBwUdX6qU65aqnNy33aydNRtbFnkS0X13tBSaqG/qmjw9gRbDm4BRww5BU0yESZg/PKz1cH13kpatWI8LHA8o4aPkZr35Jc3DRF94Xhy8VlObPR3WWyEw+/
x-ms-exchange-antispam-messagedata: dqpYJzH7ib8hwNgGPdOOiXP+1N1JQsTdz44oGs0SSEvFjQvUPgEXZ7tXRXEtnWqjvyl/sNduNyI0PlNKU6UFASUT37GjMY4Wj52Dk1kKqxfVp8YW3GaHBoVw8xRnFJXEGi/aZlGiN8q8507ecpxBtw==
Content-ID: <F9CBE86DAFF177429C11DA1FEE6C9FE8@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 79a2dd23-4d68-4161-f957-08d7d70ae9f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2020 13:36:57.0018 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K1l6KKobyvjmQ51QYpa3caFfUsmj0oV6prdYV5NeTDbsTA5fwL6iySBBz6NALfnIE2lLs7si0RGuSvffrGNTFLTJbdlfv3QrtZdlUynQAhk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2997
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
Cc: devel@driverdev.osuosl.org, lkml@sdf.org, gregkh@linuxfoundation.org,
 linux-wireless@vger.kernel.org, Adham.Abozaeid@microchip.com,
 johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,

On 02/04/20 1:57 pm, Dan Carpenter wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Thu, Mar 26, 2020 at 03:23:36PM +0000, Ajay.Kathat@microchip.com wrote:
>> From: George Spelvin <lkml@SDF.ORG>
>>
>> The code in lib/ is the desired polynomial, and even includes
>> the 1-bit left shift in the table rather than needing to code
>> it explicitly.
>>
>> While I'm in Kconfig, add a description of what a WILC1000 is.
>> Kconfig questions that require me to look up a data sheet to
>> find out that I probably don't have one are a pet peeve.
>>
> 
> I don't know how this patch made it through two versions without anyone
> complaining that this paragraph should be done as a separate patch...
> 

The first two version of patches were not submitted to devel@driverdev
mailing list. I too missed the point to keep the Kconfig changes in
separate patch.

>> Cc: Adham Abozaeid <adham.abozaeid@microchip.com>
>> Cc: linux-wireless@vger.kernel.org
>> Reviewed-by: Ajay Singh <ajay.kathat@microchip.com>
>> Signed-off-by: George Spelvin <lkml@sdf.org>
>> ---
> 
> This should have you Signed-off-by.  The Reviewed-by is kind of assumed
> so you can drop that bit.  But everyone who touches a patch needs to
> add their signed off by.
> 

Thanks, I will make a note of it.

Regards
Ajay
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
