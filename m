Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A7214A0BA
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 10:28:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 25E898776C;
	Mon, 27 Jan 2020 09:28:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3PKrehofGwoh; Mon, 27 Jan 2020 09:28:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4B2ED875DA;
	Mon, 27 Jan 2020 09:28:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D5D4B1BF3CB
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 09:28:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D1DF384426
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 09:28:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lEvOui_WpWhr for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 09:28:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4D959836BE
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 09:28:36 +0000 (UTC)
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 -exists:%{i}.spf.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: tWqGSKwFF8eM0EiQ0tnOgTJZ6qY1XtSGWCoGXRQBUzber2Fksg50++pCcAWhDyc6C9cykeKMJi
 3KmycayIrI0VhNRKzZZXhDR0Y4qLquWw+w395SlCNp/zChT92k9wywdP687DMK8nbeM0gyYY5I
 3Zu69Bp0b/IFnk8Mps8SS1J4geWuuIWzAkPYy5VSDuHTSQ4urOPU0h5WxTkpYxJG+2pG5cO2YI
 5+cbMKn2u6X1p0/gwKxAnpvXIURd3joCNjFJ4NmHhlQDEhTpiVxHxlX2e4c5RnceGCSCxQVs1f
 cFs=
X-IronPort-AV: E=Sophos;i="5.70,369,1574146800"; d="scan'208";a="66108897"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Jan 2020 02:28:34 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 27 Jan 2020 02:28:34 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 27 Jan 2020 02:28:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HkxVsvizrl37leoChkF27NMc9JpBEc6+5LOxBgwpX1YDZg/W1IgQ6oqNgaew0qo6b6xKAkI3D5B/8JHPPzJ0gyUvN/Wd15xFmmu3uyCq03mJ0Qs0bi6F98BohG2qOavk5OxABS/NFTnjvHI9nt9VqimESz7Er4bgf5AcEntU7CWwiMBqQLKmGLNWurjPS5Ye6OmHgPcuyCucgaE/4zyLA6XNglZ7Mh7j6gFevuUmETPsi6GPrJR4bWNzPabG56dNfQ/Iv8EkZxwBxlRoWWfRvqMCzNbyB50IXIhKWA8RVniYxi6jJVcc2IDiympLBnLNE4ICntVt4nwXNrfiqTmmNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ms3i0zOqinvB9kQqoQrW6F/r0zdfNWAOxebZ//zfoi8=;
 b=YvVkcvLA+X/xDkxI2MUhRECUq2gF5cK67igN0WSf6aSEhrtupeQOW9uoVezSnsitTR3/zXTj0sfalB2nyMKwp+lpad66hGHFeO4Vub3ZGOX+0ZAciHAD6H4y1XIQMBS2x6YL1tMPWxAKRd4J0asTkYas5mw7mtYjfeRSsEhtgZTHL4qe+iNtLChfIXWJAQJGoohwr+REEdaw71ISBqIhBvzhiM2CARIYOlV8/mApOlokHS7Iv4S7gXnpMId+pUVS3Q+7cgwloufuvpPbn2k13ab3LE6NF6+Bg7ui2ScLq0+jmGz0uqTTDAc55UQSPytmzYPBVeHAVvOL29uZ9BWMJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ms3i0zOqinvB9kQqoQrW6F/r0zdfNWAOxebZ//zfoi8=;
 b=ROKB2D7u7eVUoHz1+F2/fdeF10ZoCcwyCaOqtqZHRGSQQbU4B9rCIwyHgtYZz1EObvj1cMjG/szNgUOuwo+iffVy+PeHX3hZV1vkT2mU4h4RLTpBqJSujzArFtn9mKlalYU5D5AxxDDR2x/ZmNjvmJ8sUG/XFkZjix8CotyhW64=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (10.255.129.78) by
 BN6PR11MB1938.namprd11.prod.outlook.com (10.175.100.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.20; Mon, 27 Jan 2020 09:28:30 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::584d:cea5:1dfc:7e61]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::584d:cea5:1dfc:7e61%3]) with mapi id 15.20.2665.017; Mon, 27 Jan 2020
 09:28:30 +0000
From: <Ajay.Kathat@microchip.com>
To: <dan.carpenter@oracle.com>
Subject: Re: [PATCH 1/2] staging: wilc1000: return zero on success and
 non-zero on function failure
Thread-Topic: [PATCH 1/2] staging: wilc1000: return zero on success and
 non-zero on function failure
Thread-Index: AQHV0eu8bTZ/RdN5BkGJQfFUn4Ja4qf+JUiAgAB7XYA=
Date: Mon, 27 Jan 2020 09:28:30 +0000
Message-ID: <5e0a781c-aa46-c41b-374f-566ed5630be8@microchip.com>
References: <20200123182129.4053-1-ajay.kathat@microchip.com>
 <20200127073701.GP1847@kadam>
In-Reply-To: <20200127073701.GP1847@kadam>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cfe8752d-1909-4328-0171-08d7a30b45d1
x-ms-traffictypediagnostic: BN6PR11MB1938:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB19389075529703E2C865FCBCE30B0@BN6PR11MB1938.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(136003)(346002)(366004)(396003)(376002)(199004)(189003)(107886003)(91956017)(4326008)(31696002)(6916009)(81156014)(64756008)(66556008)(8936002)(66446008)(66946007)(81166006)(66476007)(2616005)(76116006)(6512007)(36756003)(186003)(6506007)(53546011)(2906002)(8676002)(5660300002)(86362001)(6486002)(26005)(54906003)(316002)(31686004)(71200400001)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1938;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yrJ5a549Yr7ggRc8heqAttyTSvOEvB8ujh3ePT5J+Ghi5fV5V7+F8VodTd/70MMdKq+8U6fOOZ/bo191qikyeUdalu3KjUf1Fx/WjPPUiLta+uQz/eVKkyvNOg37SSFK5MvhzmVzIQbHx+FgxIvHHctlOdKzSUEDxAk8naTJogd+Xm6jCztpkJ70/nkf0CHScaJ+l6qj70uugAsjR7sBmqHuqhIir06liCNIApnuB/FhHN+joLoUIxFcZkT7kNT6TUiI2qxHhYKSGuO3RDVkV9az9sEEshA5lAsNc+N4J2J/XJxBXmoXLv+iGOw7pNYt2YKCUArBxL5lFlQ8cL8pk/hQ0jO8nWpfQtw11GfOqMXbCs5rB7ssSb1koM2+j8kxYKZfeOHt8H6kus2canoMXDRq50KQN5G8mWwBvkeEENV5wfUwhC/oNw7ev7wDinyD
x-ms-exchange-antispam-messagedata: PO68DNxMLD7UGXA2RHZceOJfjuNTIWO2wBuP3Diyh4Y+qYUqXVyX1wC8HbJkZXp6x1Xz4enlkf9GH++kvTwbbf7JPgzYMMxMiHNJEI8NQcs2Fy0VGc1wFHIj43k/weIFR4mZDl0exGSKRiywu1hpRA==
Content-ID: <6658EF7714D5AB42A43AA3CDCC79AB8F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: cfe8752d-1909-4328-0171-08d7a30b45d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 09:28:30.5638 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7cNxH0VKJ0y+F5e6mf7v6R6QBptWrq9mekZIfQocmv0FSA+oMFsSJNzG6jTx/01fKKe+Z3Mjj4WFR+/2ZZi9inAPxARVr8xiQN1HJRMYQiI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1938
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
 johannes@sipsolutions.net, linux-wireless@vger.kernel.org,
 Adham.Abozaeid@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan,

On 27/01/20 1:07 pm, Dan Carpenter wrote:
> 
> Looks good.
> 
> Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
> On Thu, Jan 23, 2020 at 12:50:47PM +0000, Ajay.Kathat@microchip.com wrote:
>> @@ -384,19 +378,18 @@ static int wilc_sdio_write_reg(struct wilc *wilc, u32 addr, u32 data)
>>               cmd.address = addr;
>>               cmd.data = data;
>>               ret = wilc_sdio_cmd52(wilc, &cmd);
>> -             if (ret) {
>> +             if (ret)
>>                       dev_err(&func->dev,
>>                               "Failed cmd 52, read reg (%08x) ...\n", addr);
>> -                     goto fail;
>> -             }
> 
> Please don't resend, but try to avoid this sort of anti-pattern in the
> future.  You're treating the last failure condition in the function as
> special.  In this case it's particularly difficult to read because we
> are far from the bottom of the function, but even if we were right at
> the bottom, I would try to avoid it.
> 
> I am extreme enough that I would avoid even things like:
> 
>         ret = frob();
>         if (ret)
>                 printf("ret failed\n");
>         return ret;
> 
> Instead I would write:
> 
>         ret = frob();
>         if (ret) {
>                 printf("ret failed\n");
>                 return ret;
>         }
>         return 0;
> 
> It's just nice to have the error path at indent level 2 and the
> success path at indent level 1.  And the other thing that I like is the
> BIG BOLD "return 0;" at the end of the function.  Some functions return
> positive numbers on success so if I see "return result;" then I have to
> look back a few lines to see if "result" can be positive.
> 
> The other anti-pattern which people often do is success handling
> (instead of error handling) for the last error condition in a function.
> 
>         ret = one();
>         if (ret)
>                 return ret;
>         ret = two();
>         if (ret)
>                 return ret;
>         ret = three();
>         if (!ret)
>                 ret = four();
>         return ret;
> 

Thanks for your useful advice to avoid anti-pattern. I shall keep these
points in mind while working on future patches.

Regards,
Ajay
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
