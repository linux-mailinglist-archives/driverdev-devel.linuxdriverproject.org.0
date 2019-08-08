Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E78B86886
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Aug 2019 20:16:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 723AA20484;
	Thu,  8 Aug 2019 18:16:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mBgDlpsXyzCl; Thu,  8 Aug 2019 18:16:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B41A72046E;
	Thu,  8 Aug 2019 18:16:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6179D1BF38B
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 18:16:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5DED9863C5
 for <devel@linuxdriverproject.org>; Thu,  8 Aug 2019 18:16:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xswE0-K6VWRP for <devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 18:16:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A539F86360
 for <devel@driverdev.osuosl.org>; Thu,  8 Aug 2019 18:16:47 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Adham.Abozaeid@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="Adham.Abozaeid@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Adham.Abozaeid@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Adham.Abozaeid@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: ZfKfz4lvaqIGn1ku7JskxYxtEboWhY4xmIuTZMKxO1uFyqFWLGfyK8Gq3DcEIvSPwENJh4Z2P+
 F/Oibs2I2l9X5VBMqT7oO1Yrubf5jlDAC7RSKfEAmBw7P/Wlexy2UltDRjLeIaDeYfBT5Nb5dA
 xwW17NIQZ0Tz7BpOhQfOF6mNKhOxOnNVWuePWtk9lFPA1z4CKobBFEcbD4MqAORj3xZqJeo5Lx
 wAkUTP5DQ2+xrl2eTn+3zfREaQ8yBIAXqXjFy9PyYycHLwFKoP/hoWm21LVJwU6lUX6+FoSvRv
 mSA=
X-IronPort-AV: E=Sophos;i="5.64,362,1559545200"; d="scan'208";a="44493508"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 08 Aug 2019 11:16:47 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 8 Aug 2019 11:16:46 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 8 Aug 2019 11:16:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E38znTqR+c3i5IQaiekYo7OSex2a/sJBotJ+Xnu+nY2A4NB41fqy64Sryf8DKo26Arsb9o9bMowHQUpPFoYR3P7sCD2atvENsVmJ58qm74POw2y1OT9ZwPdWrjIiMrEC+zzezsEn9O/JUZ8ZofHTeJFbcZnW0QSQfIWXtAB4/9IeTWGiotSNdqGR/Fs0eG+HzTAeTkZlKIgQdG1mlQYHiRVASQOEJ2q902nvQeb+XkNisidyg3lz6nUaN77RJDJNrOl0j6Y9kl3T3ehQV3LV2XGyrwHZwYeAJ4uY67GG28JjmbI5RELzan8G/EKCqJEPMViG+Oezxahq5Q1XbGlblA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kpOSRT2oEoe3hSbaPZ9gIIZ0EypPkSn9v0s5VZ6iPVc=;
 b=WnkE+B9iwOMU5gzv+9n4RsKGn5Wna5LZ9Bq61zcbhl34zCRZQDSqeYEJd/P/jisOpOPlKp+3rGQTmdyn5v2S4SZyaO73Pi4Eot2E+aq2WTZDMXcUZKjVQtjq1mDNZnMeHKKGf9V2jNr2gTQ+4VynklHWLospHa/ICpYsc9/xSQgS4jOBnpyOaKYhJiYg0yyfjwGMrY4/y2BPFvd0Y03J5D1YY4Gb3ZGWtDi0Wj/KwQMGrgPkeptSOUDcrjVsb7EVHy38TCVj7mZQiIvtaWl8ROPzdS2hUi43diP3GU4CEJZzPAmlUOuzFcJ0vneWuzp4FrWEGGzhqP1Z9tyG0U0hcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kpOSRT2oEoe3hSbaPZ9gIIZ0EypPkSn9v0s5VZ6iPVc=;
 b=QIvdUKQq8aFUYKHbrQeVAqfHdnEVFDmzVZVzcOLn656rSWsMZCiVfEsKbym4q/J4l+vDYFIo5hZLW/edOYWx0qiaZG2C3mSvBOCO9TCXVHfXiegxbQTGitfwkGiStSIOmgs8xpjQeM4djVOgEClJp32JwFS3msnrRTL639eKmC0=
Received: from MWHPR11MB1373.namprd11.prod.outlook.com (10.169.234.141) by
 MWHPR11MB1791.namprd11.prod.outlook.com (10.175.53.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15; Thu, 8 Aug 2019 18:16:43 +0000
Received: from MWHPR11MB1373.namprd11.prod.outlook.com
 ([fe80::480d:becc:c567:3336]) by MWHPR11MB1373.namprd11.prod.outlook.com
 ([fe80::480d:becc:c567:3336%2]) with mapi id 15.20.2157.015; Thu, 8 Aug 2019
 18:16:43 +0000
From: <Adham.Abozaeid@microchip.com>
To: <dan.carpenter@oracle.com>
Subject: Re: [PATCH 3/6] staging: wilc1000: remove unused members
Thread-Topic: [PATCH 3/6] staging: wilc1000: remove unused members
Thread-Index: AQHVQzBVmkV0XiIfSkqdQ0TzXZfFVabuI64AgABuv4CAAQbJgIACC0IA
Date: Thu, 8 Aug 2019 18:16:43 +0000
Message-ID: <8a67f8ed-b4f4-4a02-b798-0b3b90ea0d03@microchip.com>
References: <20190725213125.2810-1-adham.abozaeid@microchip.com>
 <20190725213125.2810-4-adham.abozaeid@microchip.com>
 <20190806124656.GH1974@kadam>
 <f0a3701c-39c3-1b95-3148-621b26d3f870@microchip.com>
 <20190807110351.GM1974@kadam>
In-Reply-To: <20190807110351.GM1974@kadam>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.175.253.81]
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.0
x-clientproxiedby: BYAPR01CA0027.prod.exchangelabs.com (2603:10b6:a02:80::40)
 To MWHPR11MB1373.namprd11.prod.outlook.com
 (2603:10b6:300:25::13)
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 17d85a05-e8cd-49f6-b688-08d71c2c9129
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1791; 
x-ms-traffictypediagnostic: MWHPR11MB1791:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB179199EE35B6697CC6FD63A18DD70@MWHPR11MB1791.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 012349AD1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(396003)(39860400002)(366004)(376002)(199004)(189003)(31696002)(81166006)(305945005)(2906002)(81156014)(4326008)(66556008)(66476007)(3846002)(66446008)(6116002)(64756008)(25786009)(66946007)(446003)(6506007)(8676002)(64126003)(7736002)(256004)(14444005)(107886003)(36756003)(6486002)(53936002)(5660300002)(71200400001)(65826007)(6246003)(6512007)(71190400001)(14454004)(478600001)(65806001)(65956001)(66066001)(6436002)(229853002)(86362001)(58126008)(186003)(53546011)(6916009)(26005)(54906003)(99286004)(476003)(386003)(102836004)(486006)(11346002)(31686004)(76176011)(316002)(2616005)(4744005)(8936002)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1791;
 H:MWHPR11MB1373.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /zk0Ol1Cm+Ef0eHc131xdwKHcfHmEUoyesWttPv7IRJKdfwW59RxRvMu4l9gb4AWMqZEk83HOMF4JwJ3MKcJbIs3iX6iylvKpAceb0vmc0FMnlTuN4Irb/Uo1KOqZQ7RtbRIQsIAjUabkBApGed/S7Vn1uHFDpIEiUFFtdxFdYNYluahix2JvQJ16mX4L06FcuPpegdCyOmY7JZFZoln/KPPN0bTcRuih0n7feN8rTRXrd4T+r93//+Oq5rffvJLWkdw7bsxJjl96RlVDuFPVyAo+pbOXkqe1NHV/GcXAToukZEnZ6NKcTWY1aOWhgB1MHrEvl7mGPkmGEYTr6UsPteCFtHATISGMuRkayFAQlXD3tyUjhUD7DY0WGfIcVuh4xfttZv5jPAMPIpQEsmv3QARFeyRczp6saNRWoQ5oAI=
Content-ID: <E7311334B64A8D47A0470AC7AC7986AA@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 17d85a05-e8cd-49f6-b688-08d71c2c9129
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2019 18:16:43.7732 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: znwq0CvbMfCVu88vPbPqrlHOwdHrx3HYwcRxmSJDBcU+7IGJg7OoaEeDF3gL5RY1hquaD79iAmb+jScge6ACFiRfcnxeseXILHAemdEYKng=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1791
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
 Ajay.Kathat@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On 8/7/19 4:03 AM, Dan Carpenter wrote:
> External E-Mail
>
>
> On Tue, Aug 06, 2019 at 07:32:08PM +0000, Adham.Abozaeid@microchip.com wrote:
>> Hi Dan
>>
>> On 8/6/19 5:46 AM, Dan Carpenter wrote:
>>> External E-Mail
>>>
>>>
>>> On Thu, Jul 25, 2019 at 09:31:34PM +0000, Adham.Abozaeid@microchip.com wrote:
>>>> From: Adham Abozaeid <adham.abozaeid@microchip.com>
>>>>
>>>> remove obtaining_ip from struct wilc_vif
>>>>
>>> How is this "unused"?  It looks like it is used to me.
>> The main usage of obtaining_ip was to track the inetadd_notifier status.
>> After removing the notifier and ip address timeout timer in the first and second patch,
>> the remaining usage became meaningless, and could be removed.
> This is exactly the level of detail that I would like in a commit
> description.
>
> regards,
> dan carpenter
>
>

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
