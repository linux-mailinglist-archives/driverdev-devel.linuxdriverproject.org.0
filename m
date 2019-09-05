Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DF7AA18C
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Sep 2019 13:35:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6D2C6234BB;
	Thu,  5 Sep 2019 11:35:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tMESkgtTY169; Thu,  5 Sep 2019 11:35:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 92F5623735;
	Thu,  5 Sep 2019 11:35:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2CB931BF410
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 11:35:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 28C1A885F6
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 11:35:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4G-hHmAL7kNp for <devel@linuxdriverproject.org>;
 Thu,  5 Sep 2019 11:35:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EA6FA885F1
 for <devel@driverdev.osuosl.org>; Thu,  5 Sep 2019 11:34:59 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Ajay.Kathat@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="Ajay.Kathat@microchip.com"; x-conformance=spf_only;
 x-record-type="v=spf1"; x-record-text="v=spf1 mx
 a:ushub1.microchip.com a:smtpout.microchip.com
 a:mx1.microchip.iphmx.com a:mx2.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Ajay.Kathat@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Ajay.Kathat@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: PtPIRUosD9LyyRb75RUDAqPif8RNDAC6fNYr0P84QzhhFS1w/i2950s2C5u/tdw0Gme8AkG++q
 K6N2OHqQ4VSyYK+REbKpD/t9hd8uPs3zDyc+94HUuXN1sjyCyfkVXc1ogfJmYWqHPEcns//cO5
 GMZPShSYr6DbwE7DW2KVJu1giIfxcK9XgQxkt7W0MuPiPk7e5T3kMbFt8pBlvz+3uEX2LuWByM
 TT3u0EoIJEH87Lryjzj7mp0fsmavTqt1DesiwKRa22PHuy29oYG0KmA0GUm1nFuZljJG9hrU/W
 8fk=
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="47936976"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 Sep 2019 04:34:59 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 5 Sep 2019 04:34:58 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 5 Sep 2019 04:34:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jX4nwhnWSqOgsWso4ocCYETqcb7bIAvC4ap0WbDwM+hDx22vgaFkzhx7g5SLQa4/XbkxjgR+VcXU1y4Qo/hUGGYR1GYNLW8F3fykCfEUB3KWClZY6NTwWtdPVJiJU7eeuTw+yc7DyuRC3RpfPt6h7FFZ8W2gvEU6+fFnnPYH19TqzqS4ubhPOWaTDiVVSxYykf5r2cfJCMf0jI9+jrsPpEpYKpJym5AbjdqNaWunTYw9KfSaQZYDNHomkhsS9GfmD4OgXx34J5BhmlPXLf70NAEGOPFPWKnwHgsGZZVm+Qd8QMCiGHXcJAmSXbNRAbVv2Hy+xw0/8MT3CMX9s5u2yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=29FwnydSVZa44ay7U18Q8Q3QOvBIPCZSaJ2UQrkSOvQ=;
 b=mE+Hw3Zi6ZANcbfAS1D+pjiUrdUdHhBLCRxHGmbjd/CnQekkkL2NDuuzJ0MT79Q4EGhuKP3rCWSDjynr0YzF4tzS9DEx0Y4UvlW5ZcLCP1XiFS/tJXBgkgPeqVvE3ioSvKlicmHKlwxgK9gbaEsWb3OZRy+1oe4kMZ6HsMnIl2znDfS0xZmuRvg4yhheZp6Q0LFXJV0cXW9cOQdEzx2t+hlUJigeXG4XiELt2q/ghaNF6bV5Kbyb0BvWd4Pp7xVXK55GiaDGdWLFFDTf8Sn1rg6v5RSpQOiVhLCQdsTdr3PE0ys34khdo1dX0pNK56DagvsjJVn2qN+wxOAj0b5IrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=29FwnydSVZa44ay7U18Q8Q3QOvBIPCZSaJ2UQrkSOvQ=;
 b=qDpJAt9Y49vLpLu4I4hHGD0IC80I/oFfr8o0tYOuc6yUb3swLCuTojZb/7Fg+WTB+c6MIE1isFaA1fO2/t2h+M/HZphgiIDNhpOEQamLzMspJa0eRUdQecP5O6OgndZNJMQo4mdAx3P81VHSXwzqAR5Jk/u8caCXyeqGx9xxeyo=
Received: from BN6PR11MB3985.namprd11.prod.outlook.com (10.255.129.78) by
 BN6PR11MB1489.namprd11.prod.outlook.com (10.172.22.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.20; Thu, 5 Sep 2019 11:34:56 +0000
Received: from BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::5864:dae1:9b7e:ff83]) by BN6PR11MB3985.namprd11.prod.outlook.com
 ([fe80::5864:dae1:9b7e:ff83%4]) with mapi id 15.20.2220.022; Thu, 5 Sep 2019
 11:34:56 +0000
From: <Ajay.Kathat@microchip.com>
To: <greg@kroah.com>
Subject: Re: [PATCH 1/2] staging: dt-bindings: wilc1000: add optional rtc_clk
 property
Thread-Topic: [PATCH 1/2] staging: dt-bindings: wilc1000: add optional rtc_clk
 property
Thread-Index: AQHVYyVmBkghZ7w+IkiStodl6jvpxKccmquAgAAYcQCAAEJxAA==
Date: Thu, 5 Sep 2019 11:34:56 +0000
Message-ID: <5878d3a6-65b7-0f02-2810-57f5c060b931@microchip.com>
References: <1567603548-13355-1-git-send-email-eugen.hristev@microchip.com>
 <da5ea898-d8da-a6e2-97a0-4662b7d70b31@microchip.com>
 <20190905073700.GA30339@kroah.com>
In-Reply-To: <20190905073700.GA30339@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR05CA0012.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::25) To BN6PR11MB3985.namprd11.prod.outlook.com
 (2603:10b6:405:7b::14)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [121.244.27.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 999e74f4-3326-4f8d-401b-08d731f513c3
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB1489; 
x-ms-traffictypediagnostic: BN6PR11MB1489:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BN6PR11MB14898052B1CBCB84189969C5E3BB0@BN6PR11MB1489.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39850400004)(136003)(376002)(346002)(396003)(189003)(199004)(52116002)(6246003)(53936002)(66066001)(31696002)(86362001)(256004)(6116002)(3846002)(2616005)(229853002)(66446008)(11346002)(64756008)(476003)(446003)(66476007)(305945005)(7736002)(6512007)(6436002)(31686004)(486006)(6306002)(36756003)(66946007)(66556008)(71190400001)(6486002)(81166006)(76176011)(3450700001)(478600001)(14454004)(81156014)(8676002)(5660300002)(6916009)(54906003)(966005)(71200400001)(316002)(2906002)(43066004)(102836004)(53546011)(6506007)(386003)(4326008)(186003)(8936002)(99286004)(25786009)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1489;
 H:BN6PR11MB3985.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: p1CuM5RoWcW0AbAn/paFHiBLK4gZblthm6N43cF4qAD0fQ0JTFTsh6mFvKJGAGhJ8iOOVA0gIPEfcTZkdiknNKUb2dGG3lFwL3/1mU7ajE/GD9kvnrp6W5DAo9fK4YV15LB9y6eF0p9Yt3DsxgTAwoQkrgY37mni1TFpop4UmO7fnEbieOzhEBw9TVZ13OStoz507ud3BfbbHAyu1XSQ2soehh9LLA0L8ypx3KeWm4SK2/qoFdUtF2wfo7hbBcE4JqBgtSoypeKlxJcE2Cetj7yF9PeSqDZo3W+Hi+qoBg5dV+AJ9/yEiDSLKYfUG3m3ycZg9agaBWklc739P2H5osRUFzR5bbO1p3Xz7Z0jp44NOgpvY2Tzi2imiUihoXmtaenq4tn1AXe3VhgrOYWGxgHAKrJQyvNwzWJ0cjENRr8=
Content-ID: <25DBC010746EEB4F8B6A46E4EBFD80F4@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 999e74f4-3326-4f8d-401b-08d731f513c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2019 11:34:56.5745 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0NIB7JrzKfcIfl6b3wTVI7sOEHKf1lmBtIml5WPSbnn/8KAewUZY1GJZwGkd0QSwexcbehS7IfCpbehdLqF7LbS6YqePP0pfM/hZqR496EI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1489
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
Reply-To: Ajay.Kathat@microchip.com
Cc: devel@driverdev.osuosl.org, Eugen.Hristev@microchip.com,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Adham.Abozaeid@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

On 05-Sep-19 1:07 PM, Greg KH wrote:
> On Thu, Sep 05, 2019 at 06:09:43AM +0000, Ajay.Kathat@microchip.com wrote:
>> Hi Eugen,
>>
>> On 04-Sep-19 7:03 PM, Eugen Hristev - M18282 wrote:
>>> From: Eugen Hristev <eugen.hristev@microchip.com>
>>>
>>> Add bindings for optional rtc clock pin.
>>>
>>> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
>>
>> Thanks for sending the patch series. The changes in this series looks
>> good to me.
>>
>> Acked-by: Ajay Singh <ajay.kathat@microchip.com>
> 
> This is good, but, you are adding new features to the driver, when it is
> still in the staging directory.  What's the plan on getting it out of
> here?  What is left to do?
> 

The plan is to get this driver reviewed and identify if there are any
more TODO items. Waiting for the review to complete.

During the last review [1], we have received comment to simplify the
packing of WID commands by avoiding the translation layer. We had done
some improvements in this but still, there are few items under discussion.
But I am not sure if this is a blocker for mainline or can be addressed
later.
At this time, I don't know if there are any more TODO for this driver.
Currently also working on testing and fixing bugs.

[1].
https://lore.kernel.org/linux-wireless/1562896697-8002-1-git-send-email-ajay.kathat@microchip.com/

Regards,
Ajay
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
