Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 054A7211CA9
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 09:24:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B777C2637A;
	Thu,  2 Jul 2020 07:24:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fBGZcXlbf+Kc; Thu,  2 Jul 2020 07:24:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E1C7F2631D;
	Thu,  2 Jul 2020 07:24:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 22D821BF2B5
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 07:24:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0A04A2631D
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 07:24:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xcf57tIaLZKQ for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 07:24:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by silver.osuosl.org (Postfix) with ESMTPS id 659CC252A8
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 07:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1593674677; x=1625210677;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=562KCIfDJxrQmNkKSjXHMsQcKmJhUw082FXFJ1VaHa8=;
 b=18unkjkC5C9EDnODlcx6IvbqMxY4cN4a8Gu8OGS59fm5PrBv17d6E9co
 9R+fWLJq+ZWjqGPVddIWCAVIncAcySvfPCw4lVXpt3Iiq0OzfPUPDpSUp
 w5+DAEBgLXWksvALsaTy6xSIrQFbRggUHqxU8ZQX0yjL4CRmYNrcjLlan
 f9yZubN41/ohxecXHK0Mb7o3ukZnU8sj7QQxUS7ywbBN+/32PaV9o+HFe
 HQ2n8TayUxadwP2GZqdTrm5zQQQHhpOpdCmutWi/p8vZLIiIbAh8qAluT
 cjCePwuiuJCO3IlBORNYqFJoBoR10MklaCcOgmtagS5iopssSuF1+tJ+w A==;
IronPort-SDR: vk6UJaJHsyYTUvIHwnUbdQqkzZps/ziKsbAXgUm9/V/+eV7nSKMdAEvoiBLSiAhLGgUFtN1Ktj
 JtUhxntPaca1xSmBfQzvOJ+lYzlbzjX9jKqzNOmmMjLt+j4JPihOs0GtJWmlXM/o5zab6+wf8R
 bRMRF9V6mvIHq96+Wheqxyx9WBloOeZoHwqmxoCv9Cm1euLLYSniYqd8aAtKJpT5KTvIzlnAht
 Z+QAos25U2oVifaa4tCpRbfkqLQmmvWW8++wzC3Zv+qcx2sJOUFgN1NjiaGHws+mA1jlyrJqZH
 dKI=
X-IronPort-AV: E=Sophos;i="5.75,303,1589266800"; d="scan'208";a="85960831"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Jul 2020 00:24:36 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 2 Jul 2020 00:24:16 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3 via Frontend
 Transport; Thu, 2 Jul 2020 00:24:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JIM6OomBvzJNc2jVX3amLcf4dSv02sb/MeNkpERC7VkE1Z5WgofnaJCZ5fAQyDeN04COg29ca4AlKeprLcdxjArXIwU6BEX56EdAl7Wu2C4AFQRYdtc3fDUq1+c57eSpi+fkGuY4uCi52LqEFNUDoixTLidUbx2PpwP6nX4/c23SbkzblH79cDBIsaj0diqxB3TdMww1Ns4lH/B9Gt+IT3kb8Z6m9RZ/TWsARJnyYjmjxQiRAXwabpkJGsyuoGqpnntamUHV18DuN857Q14/CESiWE4ew7QzxwLsJZjc7wa9yjkKwMfVNIZBg5d6diEVujyKK1QnpHW0cL9GntUTmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=562KCIfDJxrQmNkKSjXHMsQcKmJhUw082FXFJ1VaHa8=;
 b=PU61S8gbLzoQDcT4zLA2JGWHoQpShzuJX4Yfgkb5a7LBAunV9MZqK70Yi/tzwTMFlXDFYiPhOvW7+dsIuAwvVlQxmHVJfjN/dfqzV0WCWMhaxbJzxGtFQT4PbHy2WWtjVVg+3RXDm9KyEZH6K5a5JhQ+IUgmqQRtHgQCl/3kmnoTJVhQfq/DIaCy+yENbZ3WUdzNFNH1oDV5gmJLF2zToPYHB2yjSSyut3N4jWVOfEWcqQKnbeVQlfL7DqV13zjsSdjXB0JAdjRrRb1GRGWAEDmjQ/SPhNS2mFl/xa9wxEKaIEjO9PDjeePXrxWhw+6vTnjTB1DPgFwUPEkBXORdVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=562KCIfDJxrQmNkKSjXHMsQcKmJhUw082FXFJ1VaHa8=;
 b=k2DfMmU/4lcHyCp0n36+adY2tRjFhfZzUYw48AQRoLgcZZryYQl/e71kAlpw2UxXneN39OfpZCt19OK6ejs943ZYg226mgrp84gV5Qgd2zoYmmqv108UaEiVeMIPYloH5Nouxo5KVzdw5i6Uhi6c8m1Si72jvl68uOMzyvMeg5Y=
Received: from MN2PR11MB4030.namprd11.prod.outlook.com (2603:10b6:208:156::32)
 by MN2PR11MB3823.namprd11.prod.outlook.com (2603:10b6:208:f9::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.22; Thu, 2 Jul
 2020 07:24:34 +0000
Received: from MN2PR11MB4030.namprd11.prod.outlook.com
 ([fe80::3874:6ace:6aec:deed]) by MN2PR11MB4030.namprd11.prod.outlook.com
 ([fe80::3874:6ace:6aec:deed%7]) with mapi id 15.20.3131.036; Thu, 2 Jul 2020
 07:24:34 +0000
From: <Ajay.Kathat@microchip.com>
To: <gregkh@linuxfoundation.org>, <kvalo@codeaurora.org>
Subject: Re: [PATCH] wilc1000: move wilc driver out of staging
Thread-Topic: [PATCH] wilc1000: move wilc driver out of staging
Thread-Index: AQHWSu1f9HixhD7k+UOCPxtNASiGMqjz52OQgAAD3ICAAAKOAA==
Date: Thu, 2 Jul 2020 07:24:34 +0000
Message-ID: <cb2299ce-c315-1748-b475-8798165d4111@microchip.com>
References: <20200625123712.14156-1-ajay.kathat@microchip.com>
 <875zb6e6zr.fsf@tynnyri.adurom.net> <20200702071523.GB961982@kroah.com>
In-Reply-To: <20200702071523.GB961982@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
authentication-results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=microchip.com;
x-originating-ip: [49.207.198.61]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fc5c9003-3725-4e1a-753c-08d81e58f836
x-ms-traffictypediagnostic: MN2PR11MB3823:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3823E5C1F941053A038C0E14E36D0@MN2PR11MB3823.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:1388;
x-forefront-prvs: 0452022BE1
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vHhfjJ88wKH0Q9aCcTrSEV3MCDo9ERYBkZsDpTgl/DbNoFO5aAnNk89m5uMh9Q7F09aB2+mzE3PkqTZzTECAJIhj/GP/9g54TjpKVOrU4kq1Q5xcQ5OWhAapowEJgKwcYMRKDiW+FSPt5/Nes4nX+qPTp1jIBNFKrS1Ia1V5MYiWkpiRpbpWJhTKnaJORZGi9CNd6VBBuo5TXL/HnYRYNF0cSEusK072KqUGsRkdgvFABg/VReNDmxoNyyweTuQeJ2zEVMpOFgZ0wIXvr/al8u33m+Hhj2bkVgrKSk7QozvWC9gd2jmVxGvsim2zo2CJ37V5hYlZn30NdvmRRhQV848j2UeHv7sJRgQXKjT2n1GkN0VWfEfqu7lbXYwXJAGR0kCVZr59a80p7AHDv/OYzF0ObjoGxyb3M5rXEQd7rN83Q9Rl4RnT9B4zF1LcvgPpnaXjyITM3zmZrDHOrO685g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4030.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(136003)(346002)(39860400002)(376002)(366004)(66556008)(64756008)(6506007)(478600001)(4326008)(53546011)(55236004)(86362001)(31686004)(8936002)(6512007)(110136005)(316002)(5660300002)(2906002)(8676002)(91956017)(36756003)(54906003)(66946007)(66476007)(76116006)(31696002)(71200400001)(66446008)(2616005)(6486002)(186003)(26005)(966005)(43740500002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: EUrYNTgkQCsNIY7MAhdBWEAr/etQvardPFVkGkrrTfWwJAOoClm46FM9oZpTAWnEhkBJrF5cXAeJwOdzcJtjGqyfxdx7zUrndc0ePwBxB4N/zxAluGXIOOc1jxfxnKOy2ThcRupx3QgpZ5UKU7tCTFSAEGrb861YbElmCIRJ8kduZkfnaP+IspxcPuekQZh7c7X69aNu10gG4ql6fcz7FnGdL2vOjAg5oLAve9+xLQKg47lHtnLr9OcM3n7RX+SRaLCPA6ywemQHQq69X9AnbAalM9D/Ouqxl0HY0xsuZPlL6jzVNFwdZSEEhW/KzkX1CEHHuQ6IJI8/I8DNy3RAijCTZ+gMPVafs/CGoqbSHZA0fNVpS3ppl1y+628nlSNXWLAInEpP8yUrWDdzQ7+u/Zp0LM2CYBMAbmCe5fZVwWEvSqQ61m6z6L5eENBZ4vKkc7/uIrqjNurRlkN40kaK+5MtUEEgKbeZeMFRon5epX8=
Content-ID: <1456E1AB23CD834E8CF4D26FE6363A12@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4030.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc5c9003-3725-4e1a-753c-08d81e58f836
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2020 07:24:34.0750 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SFu5WkjQHuglQ1A4xNHUTFuQjngu1ymIYdAtSXdmtHS/e39OiEHVZCZugz9Q/gMtY0rul1LHO45T8cCdpsZc59/JN7aFYAcqq3eWMFX6UFM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3823
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
Cc: devel@driverdev.osuosl.org, Venkateswara.Kaja@microchip.com,
 linux-wireless@vger.kernel.org, Nicolas.Ferre@microchip.com,
 johannes@sipsolutions.net, Sripad.Balwadgi@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 02/07/20 12:45 pm, Greg KH wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> On Thu, Jul 02, 2020 at 10:00:40AM +0300, Kalle Valo wrote:
>> <Ajay.Kathat@microchip.com> writes:
>>
>>> From: Ajay Singh <ajay.kathat@microchip.com>
>>>
>>> WILC1000 is an IEEE 802.11 b/g/n IoT link controller module. The
>>> WILC1000 connects to Microchip AVR/SMART MCUs, SMART MPUs, and other
>>> processors with minimal resource requirements with a simple
>>> SPI/SDIO-to-Wi-Fi interface.
>>>
>>> WILC1000 driver has been part of staging for few years. With
>>> contributions from the community, it has improved significantly. Full
>>> driver review has helped in achieving the current state.
>>> The details for those reviews are captured in 1 & 2.
>>>
>>> [1]. https://lore.kernel.org/linux-wireless/1537957525-11467-1-git-send-email-ajay.kathat@microchip.com/
>>> [2]. https://lore.kernel.org/linux-wireless/1562896697-8002-1-git-send-email-ajay.kathat@microchip.com/
>>>
>>> Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
>>> ---
>>>
>>> As suggested, keeping all the changes in single commit with file rename
>>> so it's easy to move out of staging [3].
>>>
>>> Please choose whichever option you prefer between the git mv or patch series
>>> sent last Tuesday. The resulting driver is the same as no patch has been
>>> queued in between.
>>>
>>> [3]. https://lore.kernel.org/linux-wireless/20200623110000.31559-1-ajay.kathat@microchip.com/
>>
>> As discussed with Greg I created an immutable branch for this and merged
>> the branch to wireless-drivers-next:
>>
>> 5625f965d764 wilc1000: move wilc driver out of staging
>>
>> Greg, here's the location of the immutable branch:
>>
>> git://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers-next.git wilc1000-move-out-of-staging
> 
> Looks good, I've pulled it into my staging tree as well, but there's
> still a TODO file left in drivers/staging/wilc1000, right?
> 
> I'll just add a patch to my tree to remove that last file.
> 

Yes, TODO file needs to be removed after the driver movement.
Thanks Greg for all your support to move driver out of staging.

Regards,
Ajay
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
