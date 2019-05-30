Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B341D30638
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 May 2019 03:28:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3638188543;
	Fri, 31 May 2019 01:28:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QQwfyCdwC4Ft; Fri, 31 May 2019 01:28:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B66B2884F4;
	Fri, 31 May 2019 01:28:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 903941BF98C
 for <devel@linuxdriverproject.org>; Fri, 31 May 2019 01:28:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8D7BF88501
 for <devel@linuxdriverproject.org>; Fri, 31 May 2019 01:28:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9aWFVFa7fYqv for <devel@linuxdriverproject.org>;
 Fri, 31 May 2019 01:28:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
 (mail-eopbgr800075.outbound.protection.outlook.com [40.107.80.75])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D6AA1884F4
 for <devel@driverdev.osuosl.org>; Fri, 31 May 2019 01:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=daktronics.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5g9ZwTLXGjepc9eOg/poUrw+d5nxerqqHIj9Je2W+/g=;
 b=olgOCW6cnS+J3M7uxe07VHVB/xFdhIKF75ENcCLOLqpwfAknYIm6yHkFekE2YMX4Lv3ku6OQTT/jsYtWVtjlF0jNCXEJm+eMOL1mFR9sHRHeJNJyGSz1McCYjbbc5AO1r389pVHkVIgZYsTLnnSNyhwgtsG4ZcgHH9ywY91QzbM=
Received: from SN6PR02MB4016.namprd02.prod.outlook.com (52.135.69.145) by
 SN6PR02MB4174.namprd02.prod.outlook.com (52.135.70.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.16; Thu, 30 May 2019 22:57:09 +0000
Received: from SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::60d8:13ef:ed32:4a6f]) by SN6PR02MB4016.namprd02.prod.outlook.com
 ([fe80::60d8:13ef:ed32:4a6f%5]) with mapi id 15.20.1922.021; Thu, 30 May 2019
 22:57:09 +0000
From: Matt Sickler <Matt.Sickler@daktronics.com>
To: Greg KH <gregkh@linuxfoundation.org>, =?iso-8859-1?Q?Simon_Sandstr=F6m?=
 <simon@nikanor.nu>
Subject: RE: [PATCH 1/4] staging: kpc2000: add spaces around operators in
 core.c
Thread-Topic: [PATCH 1/4] staging: kpc2000: add spaces around operators in
 core.c
Thread-Index: AQHVEiEBEpaijJrwzEWx+f59/zurvaaEMrIAgAAb5vA=
Date: Thu, 30 May 2019 22:57:09 +0000
Message-ID: <SN6PR02MB4016139989144F6C08CD4BDAEE180@SN6PR02MB4016.namprd02.prod.outlook.com>
References: <20190524110802.2953-1-simon@nikanor.nu>
 <20190524110802.2953-2-simon@nikanor.nu> <20190530210558.GA21455@kroah.com>
In-Reply-To: <20190530210558.GA21455@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Matt.Sickler@daktronics.com; 
x-originating-ip: [63.85.214.4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ee045381-928e-4e6d-8d07-08d6e5522539
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:SN6PR02MB4174; 
x-ms-traffictypediagnostic: SN6PR02MB4174:
x-microsoft-antispam-prvs: <SN6PR02MB4174DB60026617B91EA52668EE180@SN6PR02MB4174.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 00531FAC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(366004)(39860400002)(396003)(189003)(199004)(81156014)(8936002)(71190400001)(53936002)(5660300002)(81166006)(446003)(476003)(3846002)(11346002)(71200400001)(478600001)(66446008)(66574012)(7736002)(76116006)(486006)(6246003)(73956011)(66946007)(68736007)(66556008)(64756008)(25786009)(66476007)(8676002)(256004)(26005)(4326008)(52536014)(74316002)(86362001)(14444005)(305945005)(186003)(76176011)(102836004)(9686003)(33656002)(55016002)(99286004)(229853002)(6506007)(54906003)(110136005)(6116002)(6436002)(7696005)(66066001)(14454004)(316002)(2906002)(72206003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4174;
 H:SN6PR02MB4016.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: daktronics.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6xkqsidjrTcET8Arn8LOB8/7Cq2kjAfJ8vme4jZmLYo3EP1bzm6MIU6HKeKNRFjN0CcmGZzRT7neySRUunFs40oTVLMEkxUJs0HmVHU+jJoPxJBWrmfnF/lWtpT4QxnYDwTsHv/DWUZ/B4PE5B6ZDbGbki9K2QZe7qk0hG7x6mBCCzxXpgiFdFy066L5IJf2HPHRz7WWN08AdMXhQlRmPfFZJ8TgkLEPTAaQf0KjY4pouxAdw8HLQ9PXS3CZLcKWtex5rszoPbev3yHH5b3BUfwM7lhABmn5SW106ayjmM1vUzfV4YmpbPZIJTZxTGNQLL3MeHLMiZzWHvH09BD7C8zMOadFZ4Vvu3Lr/OouFebY6WZmzQViDmL7ifR8btx+3eOVhV/NtpWvX1fZRjYu1vQ1VB/VHDQUzu+GKLujvpk=
MIME-Version: 1.0
X-OriginatorOrg: daktronics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee045381-928e-4e6d-8d07-08d6e5522539
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2019 22:57:09.2872 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: be88af81-0945-42aa-a3d2-b122777351a2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: matt.sickler@daktronics.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4174
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

>From: devel <driverdev-devel-bounces@linuxdriverproject.org> On Behalf Of
>Greg KH
>On Fri, May 24, 2019 at 01:07:59PM +0200, Simon Sandstr=F6m wrote:
>> --- a/drivers/staging/kpc2000/kpc2000/core.c
>> +++ b/drivers/staging/kpc2000/kpc2000/core.c
>> @@ -276,18 +276,18 @@ static ssize_t kp2000_cdev_read(struct file *filp,
>
>This whole function just needs to be deleted, it's a horrible hack.

From the outside, I would definitely agree with you.  On the inside though,=
 we
rely on this function to quickly identify what kind and version is running =
on
a given piece of hardware.  Since that same information is provided by an i=
octl,
I could be convinced to remove this API and write a userspace application t=
hat
uses the ioctl to get the information and pretty prints it.
I'd be more inclined to agree with the deletion if it means the whole char =
dev
interface can be removed from the kpc2000 driver.  That won't be straightfo=
rward
as the ioctl is exposed through this interface.  We could remove the ioctl,=
 but
we'd need to ensure that all the same information is exposed via sysfs.  Our
userspace side is all funneled through a single class, so changing it to use
sysfs wouldn't be too difficult.  I'd support that change if someone wants =
to make it.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
