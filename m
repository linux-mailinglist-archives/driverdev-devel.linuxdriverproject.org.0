Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC97520AC7C
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 08:47:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 62FA085C28;
	Fri, 26 Jun 2020 06:47:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z6GtL-dnzOI0; Fri, 26 Jun 2020 06:47:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 014EB85C94;
	Fri, 26 Jun 2020 06:47:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5BAE21BF4D8
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 06:47:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 48F508748A
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 06:47:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xHWRJajKbLDu for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 06:47:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5C0E5873C9
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 06:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1593154023; x=1624690023;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ARKgUcNN7zHpsKX5KhiGVDAOHcN/29M8aA9xFW2/KS0=;
 b=l20ANpnbLTMlZ+sKQh0KxzLerU2suBljvGG05oxdvXrflfLGeqQB4qBh
 t8Muno+QMughnaYDdkqEZtT60wxupiLMiHFmclidA4PKV74CeYUzI3S6l
 Epm+YQiw0vmIsi3Vnjrlo9EhRYoa3k1XZzmnnjIcAeMb+2bzN17C7Z5Ki
 6rYrEgVC2xX8WfSARGKDsevKpXCKPAinEm3p8w8HjYAQHxcz5N1OHiu6N
 j4WG2fug2vaT/+JLlPz8BgRIr04hti2o9Cg+uGosr9ICKqsGW2Bo6rawL
 n8xhXxAr0biyCRE88qSzaYI1qsQmsqaSEJIgWuiwb6QOj0YFnPagkyPU3 A==;
IronPort-SDR: 2WRTdirJ7opiC0j5REpDyuv0Q8ieRi4AXHiTe/K5ABBK+I//JyEoSnmCualeOzKvHbBrmz8tIk
 boycBNrKfC9Qwy9Y++LY4PHOKVxP5oy1Oq51VI06aJUd/c3PX0wRe362drpkUSr3lKzJffG/cT
 5GRDHii/9xBkTaTfKrQCwD2L29qeXTESQYK/kU2HXt2xBxFeAwDhLb++ZQdNDvjvTKLI25OG16
 MlZ90YQaImzajLq1PUMoz7dDDu9B8l3/R7QNHJZgrxiUl/comhYmkhhM4AJqBWoHSarcFIcCvX
 9ag=
X-IronPort-AV: E=Sophos;i="5.75,282,1589266800"; d="scan'208";a="81667186"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Jun 2020 23:47:02 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 25 Jun 2020 23:47:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3 via Frontend
 Transport; Thu, 25 Jun 2020 23:46:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XBCHySua3yiqh5yU2UeeskjcYotymfBcX/xyDdJrV57HgiWTUedAON43f080m5NuSzbZpOShzUopTKUTco5bWZVgmcc+xhD6T9uf15mW6r5nghcdVo9XB58kOSn3Ob2Pzg9dn2nqVl/vNFdYt+i1MPNvnJe+v4diXRkb9/W+2e4Er+051Gj8UXabtdBol7XruPHWu2JW7831XmYwFPUODoMLtaYKg7sAJZRMHaf7Z/ArO//dubHLFC3IiM+G4zEt8u9iZcavAYtBNJim34nlCwatzOmbfvPDDmQZVsnM89Uyg28mf6qO0V2VDsGV8CDY9pWrxFjHDQnW9bQibZZxCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ARKgUcNN7zHpsKX5KhiGVDAOHcN/29M8aA9xFW2/KS0=;
 b=TgLQebGEnYbzpgY5KP7LKMyCSN1+5vQEmI1MmFpwwANjrATVeGX8Y4CKkN2a9+b0AtbQY01SvRRStX9BD3Uhz137dcBtuRXyNRgi+y6b54HXzKr8a/3yxIFJrspYQVtPKxsQrqMFeutoqKeH3WmzXe3wSNEqz+S5Kcg1A9QYIkEuaffr46Ea3uRPdY5ID0MXyMkKxjnnd8zSKGPcjbz3498uZ+NwqsAIjQKChKB3m8ZM0BlvzKnoGIB2HLQz9QUyutLWDu9jdHirWoGQhQXUAqGNScOTPUv0AcDkc5F+yt/OrpY+LhWnN+QQoKHtxOU4518aAWgWMKIMQwYEvuJElA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ARKgUcNN7zHpsKX5KhiGVDAOHcN/29M8aA9xFW2/KS0=;
 b=AIguSj8OoRR/Yvcw3i4MuYGSjVT1Sglx01+2PNV399PIu26YwjLz+vondEr0rkiGBB+9WuLuwZXcCUNW9e/4L/jAC3dDk/Y+d6IjRtfz4do4gimiyda4aJ0ieWFKomquWLvUNizZ0WGnjmZjFM7QdoIoLux9RiJHlCHUzqFAuYQ=
Received: from MN2PR11MB4030.namprd11.prod.outlook.com (10.255.181.224) by
 MN2PR11MB4032.namprd11.prod.outlook.com (20.179.149.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.23; Fri, 26 Jun 2020 06:46:58 +0000
Received: from MN2PR11MB4030.namprd11.prod.outlook.com
 ([fe80::3874:6ace:6aec:deed]) by MN2PR11MB4030.namprd11.prod.outlook.com
 ([fe80::3874:6ace:6aec:deed%7]) with mapi id 15.20.3109.027; Fri, 26 Jun 2020
 06:46:57 +0000
From: <Ajay.Kathat@microchip.com>
To: <kvalo@codeaurora.org>
Subject: Re: [PATCH] wilc1000: move wilc driver out of staging
Thread-Topic: [PATCH] wilc1000: move wilc driver out of staging
Thread-Index: AQHWSu1f9HixhD7k+UOCPxtNASiGMqjqZfn4gAAPVgA=
Date: Fri, 26 Jun 2020 06:46:57 +0000
Message-ID: <efd8f137-3709-8a03-67a3-723b2f2980fd@microchip.com>
References: <20200625123712.14156-1-ajay.kathat@microchip.com>
 <87a70qe5na.fsf@tynnyri.adurom.net>
In-Reply-To: <87a70qe5na.fsf@tynnyri.adurom.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
authentication-results: codeaurora.org; dkim=none (message not signed)
 header.d=none;codeaurora.org; dmarc=none action=none
 header.from=microchip.com;
x-originating-ip: [49.207.206.48]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4e47a70b-1a72-4e4f-9686-08d8199cb8d3
x-ms-traffictypediagnostic: MN2PR11MB4032:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB403280E97E2A611F0A3E786BE3930@MN2PR11MB4032.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0446F0FCE1
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jWogBWGLNfLplBcgmNXLdavuCOw3RuM7Ai6FH5aFSZi7O7vhJQU9j7Xjo7ZDYZ62QqflCeRPumJ5uKQi3ZZsh8rzRX+BAUxltz2lpNOtMbI9Ly3UvprCfomL52lGd8k93LPkwbc0f4waA6aC6DuAJWheOCuWe0ehoQcpSG9OJXn/0Z2/n2H3XASy6pvKn0NMz9X95IuHEfWDYduyjgiEfe2xJHuec+HC51iyEZHumHX+u7vIIjJuwCLUrAUYL+VK4JR2ZQtZA0F6OZD1d2FobucXzzYsY94HjvCM7hcZrycoHelw8eOFxdBQKtANlio0nYq5QzJ/lq3Z2K5k6hcalp/u0L/HzUjhQOM8nLbn7Vp3no61S8rzO0/IFnbM5uu26ef1aLKiiDJC58XfK9HrRrX5p55iRxVm389breLCw3Yib5Q2pBgdiWkoecolMPdYh4Es8U9QFRXKkhGzuUBDfA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4030.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(136003)(396003)(346002)(39860400002)(366004)(31696002)(86362001)(26005)(8936002)(71200400001)(36756003)(53546011)(5660300002)(55236004)(186003)(83380400001)(6506007)(66946007)(6512007)(107886003)(6486002)(54906003)(6916009)(76116006)(966005)(91956017)(66476007)(66556008)(4326008)(31686004)(478600001)(8676002)(64756008)(316002)(66446008)(2616005)(2906002)(43740500002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: PIa0FijxklolkXPgDHBh8AjaoKUsuScI9W4dXivkcx9/aj+z+e6H/wDYRG562n8Kn2mSf2neGW22I12n3FcFEnezosXK/dbVlOCaQgUyWYKsqMKiUUqoA9TWFf8EntKfK6vhnZ4DM2sVMDf4qjqOtkUQpoL/TDyoRQc1T7JnF+D1F5dGTM6M6IGNV7LeBHjobaR3N/01gC5gIlnUzEdfZkDcb8vX16vJB7eIwL95zvVTZJB+EPiIp5eQYGrA/wKWkVYDrb2CgPkx5eZxbbQzwhhw9xNhzfs2uVzzpR7I/Rl2zeN73wLuIqOAGr9kVP/7sCba/O+7t21PU1U3P5hokkMZeX6OS2hvY5j2HmNeGiIrHN+MIhPmJYRRx6w297ZIdUBpiqnsmVkrNufpObl4nXopkC3KYd1eJKR/x0QusskwQRrUpbJ0maHaq6HvGsW0iG+fsDu++hUKCVzQKEBkaDdUgkZUDj9N2XSVsgcCO7s=
Content-ID: <14D81E4519837545908062196A203FF8@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e47a70b-1a72-4e4f-9686-08d8199cb8d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2020 06:46:57.8072 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oz85X+B5q3Wz2zAQDEZqOBh1kVYlbNjnwXt/258U/h3vuAbA8WXn+PsvwwvgkqD1EVUDpsGG927+iBALDntnfc4OzmYvta+HFP3f9I89xuw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4032
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
 Sripad.Balwadgi@microchip.com, gregkh@linuxfoundation.org,
 linux-wireless@vger.kernel.org, Nicolas.Ferre@microchip.com,
 johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 26/06/20 11:21 am, Kalle Valo wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> 
> <Ajay.Kathat@microchip.com> writes:
> 
>> From: Ajay Singh <ajay.kathat@microchip.com>
>>
>> WILC1000 is an IEEE 802.11 b/g/n IoT link controller module. The
>> WILC1000 connects to Microchip AVR/SMART MCUs, SMART MPUs, and other
>> processors with minimal resource requirements with a simple
>> SPI/SDIO-to-Wi-Fi interface.
>>
>> WILC1000 driver has been part of staging for few years. With
>> contributions from the community, it has improved significantly. Full
>> driver review has helped in achieving the current state.
>> The details for those reviews are captured in 1 & 2.
>>
>> [1]. https://lore.kernel.org/linux-wireless/1537957525-11467-1-git-send-email-ajay.kathat@microchip.com/
>> [2]. https://lore.kernel.org/linux-wireless/1562896697-8002-1-git-send-email-ajay.kathat@microchip.com/
>>
>> Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
> 
> [...]
> 
>> --- a/drivers/net/wireless/Kconfig
>> +++ b/drivers/net/wireless/Kconfig
>> @@ -47,6 +47,7 @@ source "drivers/net/wireless/st/Kconfig"
>>  source "drivers/net/wireless/ti/Kconfig"
>>  source "drivers/net/wireless/zydas/Kconfig"
>>  source "drivers/net/wireless/quantenna/Kconfig"
>> +source "drivers/net/wireless/microchip/Kconfig"
> 
> This should be in alphabetical order.
> 
>> --- a/drivers/net/wireless/Makefile
>> +++ b/drivers/net/wireless/Makefile
>> @@ -19,6 +19,7 @@ obj-$(CONFIG_WLAN_VENDOR_ST) += st/
>>  obj-$(CONFIG_WLAN_VENDOR_TI) += ti/
>>  obj-$(CONFIG_WLAN_VENDOR_ZYDAS) += zydas/
>>  obj-$(CONFIG_WLAN_VENDOR_QUANTENNA) += quantenna/
>> +obj-$(CONFIG_WLAN_VENDOR_MICROCHIP) += microchip/
> 
> And this as well.
> 
> I fixed these in the topic branch, please double check:


Thanks Kalle.
I just checked the patch and it looks good.

Regards,
Ajay


> 
> https://git.kernel.org/pub/scm/linux/kernel/git/kvalo/wireless-drivers-next.git/commit/?h=wilc1000-move-out-of-staging&id=5625f965d7644b4dc6a71d74021cfe093ad34eea
> 
> I have not pulled that branch yet into master so we can make changes
> still.>
> --
> https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
