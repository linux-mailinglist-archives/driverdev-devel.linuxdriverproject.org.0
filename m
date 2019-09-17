Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9A2B482C
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Sep 2019 09:21:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8F5518508A;
	Tue, 17 Sep 2019 07:21:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wsMIm6PfOKRI; Tue, 17 Sep 2019 07:21:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3FC3584E7C;
	Tue, 17 Sep 2019 07:21:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 295471BF2C2
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 07:21:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 261A38506F
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 07:21:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NYqzdhTsjI35 for <devel@linuxdriverproject.org>;
 Tue, 17 Sep 2019 07:21:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C2EBB84E8F
 for <devel@driverdev.osuosl.org>; Tue, 17 Sep 2019 07:21:09 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Claudiu.Beznea@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="Claudiu.Beznea@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Claudiu.Beznea@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Claudiu.Beznea@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 9KxwFA4X67yDbRzgEOBaz9Hs6Lvs36HBH8Rp+h6o9wzHo5/wOZh+CoF6KtHzXoi7OrCKBCknpt
 j8Iyp+ZFfN165J3V2wzIpjuC2mtNpYV6VZQG/RhOIlziem0r5QT8fJWbdIq3Yr2C17zXVFQt3L
 fuid53ly8eniyFNSf/nCQaWlhieM9J2AqmJNsMXnhG42NMd30hW/QFLxRE93L31aesOxGcxDc0
 DIiDpGL0MD2rVKgD0Lbzz9PsAkwIFnwkakyyUzl/ngFaB8sXi3lgugJQcz4tRLd7hQQHBrbanP
 51E=
X-IronPort-AV: E=Sophos;i="5.64,515,1559545200"; d="scan'208";a="49341418"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Sep 2019 00:20:54 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Sep 2019 00:20:53 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 17 Sep 2019 00:20:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GOBqBHJO19qbkXqwAmf61uYKtMzuIyZVXENFjHJrfp0cWELgC2PLuJHbNyEtA2eaytLeklXRBlH5R+/7F5GKdAvLCkYyO5QojuCJnadF60pUn7U/979Thg6WCVcKH+qde+k4kYB9Xh+ID+swFRPRxsapCWUWcIwtovVrVGxAL3YvMzoS9iaJoU3wPYWwE8RZN2qbc2v0S7oU06cnGHe9U7ICTIZzsVvROTOyBxYtwtN1XHyF48L9jpY/D+dRUn6SKPYMAlrkFMnLuvz/iHMNLQu4Qy/zmZqdaR+5XLGNyK3TmM0kAO326k4uxWtlzLac0+BADSU0dNV+kfZK+ctU2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OPkEbHSkuiktmNPPptLKjATFU7nAs4QSaXHCSU9Alsw=;
 b=aMwpOsmH8t4TbhrwTYMiYcXt1agYSM376FWfBomrs/hhVprUaoMlQSwO86Y7bm6wgrzpX2fMBWg7JgEjgmkV2Mb2Y4ea7+szsOdPCcGf/c939b8l5IHd3FRyhmjOimFQBvCr6/ZhRRCFimSfkYDcQq9FUvm4krWnEae7ZJrtLKNsZfwPIqffiAflA7sjsnzk8TXFTz/riE6dSh1F4PEwazXQmY5ZF9/enbI2BnZYOOwVALPUNcpW+JRaCAdGPXTYgVpdVj5DaAO4BneB24+Iwo/O1Z10erNm183vnur8BPp44PX+vvAGlenxHtxHrQeZ3BOxR26v0NqOToyajgsrCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OPkEbHSkuiktmNPPptLKjATFU7nAs4QSaXHCSU9Alsw=;
 b=GCrZKF3Qvx83Wqf8NBd2X3NuHrr06aMN1BPGTkFaacmidM0w3bpVECtMDa1P12Gk41cuYKk0lnnYedntzeCT+s12tXDV/tJ6p/FP5+jZsD1sX2BJXRz7627QJmx6nSir8BYmXxA2VpO9rMORX66boJAk+ZrFcvcaycsuifRR+/Y=
Received: from MWHPR11MB1549.namprd11.prod.outlook.com (10.172.54.17) by
 MWHPR11MB1774.namprd11.prod.outlook.com (10.175.51.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.21; Tue, 17 Sep 2019 07:20:50 +0000
Received: from MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::e1f5:745f:84b4:7c7c]) by MWHPR11MB1549.namprd11.prod.outlook.com
 ([fe80::e1f5:745f:84b4:7c7c%12]) with mapi id 15.20.2263.023; Tue, 17 Sep
 2019 07:20:50 +0000
From: <Claudiu.Beznea@microchip.com>
To: <Adham.Abozaeid@microchip.com>, <linux-wireless@vger.kernel.org>
Subject: Re: [PATCH] staging: wilc1000: look for rtc_clk clock in spi mode
Thread-Topic: [PATCH] staging: wilc1000: look for rtc_clk clock in spi mode
Thread-Index: AQHVbScl6jIVhd9+50ifu++xL1vFiacvdoSA
Date: Tue, 17 Sep 2019 07:20:50 +0000
Message-ID: <46ffef84-26cf-bc60-3dae-87fd919d6822@microchip.com>
References: <20190916193701.20755-1-adham.abozaeid@microchip.com>
 <33c095f7-57a8-1d80-02af-0195f317bc39@microchip.com>
In-Reply-To: <33c095f7-57a8-1d80-02af-0195f317bc39@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0801CA0089.eurprd08.prod.outlook.com
 (2603:10a6:800:7d::33) To MWHPR11MB1549.namprd11.prod.outlook.com
 (2603:10b6:301:c::17)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20190917102041067
x-originating-ip: [86.120.236.72]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5e448c25-eacc-4594-0e4f-08d73b3f9145
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MWHPR11MB1774; 
x-ms-traffictypediagnostic: MWHPR11MB1774:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB17742ABF844FEBC2D3123220878F0@MWHPR11MB1774.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:663;
x-forefront-prvs: 01630974C0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(396003)(39860400002)(376002)(366004)(189003)(199004)(110136005)(66476007)(478600001)(8936002)(256004)(64756008)(31686004)(66446008)(66556008)(31696002)(14444005)(66066001)(186003)(446003)(76176011)(66946007)(476003)(11346002)(36756003)(2616005)(81166006)(8676002)(81156014)(486006)(52116002)(4326008)(99286004)(316002)(71190400001)(7736002)(6116002)(6486002)(86362001)(3846002)(5660300002)(966005)(54906003)(25786009)(2501003)(6436002)(6512007)(6506007)(305945005)(53546011)(102836004)(71200400001)(6306002)(386003)(2906002)(229853002)(14454004)(6246003)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1774;
 H:MWHPR11MB1549.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: wfBrwIcaxxUlnN71Esr1qM66sOyyfWPbD8QGVC1i0NM8uYM8h02xPexHTMkpp7jyi9FhA4BbFw4C/1ARY6wmyob+2aHUUgmNG8tVHQzOWGBBxD6sdE/AAK+NIzdhoWkT01Lx9SxLLrjMGDwnNmr+czasHN9KNwFiI8KHW0yAizHE9iC6/0VYb8t0FQ1jjhVJ5GjjL2ObCTa1zQcxtan0eAQD2eziDuDhCWLWIRgxvDbJz1avKYmjpCQhaslIYYYyCmTmWBN+/JWf/HdZqsYOv1lWRVmPC0kIHz91C8r07VE87axUAe1AgAvaDNeeNqOoraonE03Qr5tnDRGmzfa26bovfBv3Q/XmYhAi9MdfXH9zLGSf8EMOY9Roeqe9AngA6lz1i+uO5kTQi6j3QEAjgPlDvpA9jotzHA6NPi+2Hjg=
Content-ID: <095183B0227BF14FAC0B8AE39D290D0B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e448c25-eacc-4594-0e4f-08d73b3f9145
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2019 07:20:50.4513 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bejdBYKnrWPgDF2gW4WoBKzH9irduNMKnUh59hq8DHuSTxfy9WkfMrJNxw1vlZWJBurHNZAliqnxW0ghDSAsaZB7TDT9kMNTu0NwuDrZNBY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1774
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Ajay.Kathat@microchip.com, johannes@sipsolutions.net,
 Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Now I see that your patch is for SPI interface, so, it may be necessary.

Sorry for the noise.

On 17.09.2019 10:11, Claudiu.Beznea@microchip.com wrote:
> This is already present in staging-next (see [1] and [2])
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit/drivers/staging/wilc1000?h=staging-next&id=8692b047e86cff448af1564a8bdda770d2deb567
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit/drivers/staging/wilc1000?h=staging-next&id=ae8779e1983d6361620f1f6d3f76064edee733c0
> 
> On 16.09.2019 22:37, Adham.Abozaeid@microchip.com wrote:
>> External E-Mail
>>
>>
>> From: Adham Abozaeid <adham.abozaeid@microchip.com>
>>
>> If rtc_clk is provided from DT, use it and enable it.
>> This is optional.
>> The signal may be hardcoded and no need to be requested,
>> but if DT provides it, use it.
>>
>> Signed-off-by: Adham Abozaeid <adham.abozaeid@microchip.com>
>> ---
>>  drivers/staging/wilc1000/wilc_spi.c | 11 +++++++++++
>>  1 file changed, 11 insertions(+)
>>
>> diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
>> index 3c1ae9e9f9aa..166455a969bf 100644
>> --- a/drivers/staging/wilc1000/wilc_spi.c
>> +++ b/drivers/staging/wilc1000/wilc_spi.c
>> @@ -4,6 +4,7 @@
>>   * All rights reserved.
>>   */
>>  
>> +#include <linux/clk.h>
>>  #include <linux/spi/spi.h>
>>  
>>  #include "wilc_wfi_netdevice.h"
>> @@ -132,6 +133,12 @@ static int wilc_bus_probe(struct spi_device *spi)
>>  	wilc->bus_data = spi_priv;
>>  	wilc->gpio_irq = gpio;
>>  
>> +	wilc->rtc_clk = devm_clk_get(&spi->dev, "rtc_clk");
>> +	if (PTR_ERR_OR_ZERO(wilc->rtc_clk) == -EPROBE_DEFER)
>> +		return -EPROBE_DEFER;
>> +	else if (!IS_ERR(wilc->rtc_clk))
>> +		clk_prepare_enable(wilc->rtc_clk);
>> +
>>  	return 0;
>>  }
>>  
>> @@ -142,6 +149,10 @@ static int wilc_bus_remove(struct spi_device *spi)
>>  	/* free the GPIO in module remove */
>>  	if (wilc->gpio_irq)
>>  		gpiod_put(wilc->gpio_irq);
>> +
>> +	if (!IS_ERR(wilc->rtc_clk))
>> +		clk_disable_unprepare(wilc->rtc_clk);
>> +
>>  	wilc_netdev_cleanup(wilc);
>>  	return 0;
>>  }
>>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
