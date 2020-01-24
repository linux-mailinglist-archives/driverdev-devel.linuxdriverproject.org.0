Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7021479D0
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jan 2020 09:57:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A088422795;
	Fri, 24 Jan 2020 08:57:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3logr4-89ZX9; Fri, 24 Jan 2020 08:57:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 33FDF2275F;
	Fri, 24 Jan 2020 08:57:05 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DAD571BF33A
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Jan 2020 08:57:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D79AA86C5E
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Jan 2020 08:57:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Glxz9ySZOQ4z
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Jan 2020 08:57:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1DADB86C37
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Jan 2020 08:57:02 +0000 (UTC)
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: JKCoS9FfDd9cs6xi6RHWdb7sEP99yo8JfsOqBID8rPxqaKWCK2gAWZKFHe8tt9J5EdoajkYLuQ
 8cyKGRVnTGVVzcp9rKWWtsk8qxwib5vil+u300m85eInm4+f3MJVq5OK/mXgR6Oyo54suUG6Qf
 V0wwcpGW47eZfDQICO7EiOtNeONNry8qIOtbYTztROYdpPcJkJZ9zVUCnHQktEeesza1CsZH7q
 iV8ntRq33tPNkE+BvPPJulFsBWk3/+vgVyWGU2W/NPkqHgtuPtB7onK5cri+bZPYQjXDd51+FR
 4Qo=
X-IronPort-AV: E=Sophos;i="5.70,357,1574146800"; d="scan'208";a="65871531"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Jan 2020 01:57:01 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 24 Jan 2020 01:57:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 24 Jan 2020 01:56:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DOaxNDmjgFbq/Z6Oln3+kqAVV4fOMDLqdIF2FMZBGvN5Wfk8HlI8xK/LIBKqZ2VIHqNYFtwfkkvHyTwL8S6dwTEnFGzr7eVPIQ+q3I7JRUdkjVkGggoB/8lRUfrruaW/6h0eiTUS2x/yUx5OrKpW5SntPblI56qUpNmBtnlh+sX3W3HMTqt5P4WoD6kxYaobzQZ7mCOwZ61Rh6QRvoeK0OsvjyAp1wUwLe0cyn0FcsuSOMxzeaROuONghr0qYaWKqmJVGwahaJKLUkPve5WpkiQYi6mx3qcX+03cVJlinqDyl59gcYpE3/+ntqgbSqKrHQQ9ANuatxaDuj4f8O0zHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bKYUPU3AxR9xBdwe0flJXN3uzSndMQWoKEIIx/HYJMg=;
 b=JEpbWa1pUI1rV4A+s1V8qgtP/A5z7ASv7tihYTtNqyGqjr6xx1bmJ4Ou7eCaBo8iyJWuo3Bx6lgPBxYj2minB43N9y6ppGg5ylM2kTG+JrmHpsJvCMjDbAODxkBeayM4n0w43VcCjjVn8BqSnqJpPPnINJkOuxkmtQE25VNknocuv9oS+E3J2y66jYK7HsoZmohVKyf5CnRbuLxXGBnpXk43Dyam0MI+Il2xKkQHM0lCM/OmH6MDs5g9UvDuIz9gt8lYLMuD9cMA6TsiLPQqypxZ/cltdTOr/R8FuTjm9v+FfwjP+IGKolK1AYF3JCo013828aRC5azP5ry3iDT2Og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bKYUPU3AxR9xBdwe0flJXN3uzSndMQWoKEIIx/HYJMg=;
 b=UZhydD5vQIB0nssNMBz1qsMKU44iXYmjzjJI1NIGdhmQ8qO8JnihqX+csXSuYilxMMjCH8pYujIkac788lkW8bwYNoZt0zNCWKb4DLVIF0aAwJJzHM7wlYxSt2Z0K3bemKHTozBzFa9zZas+nhcJWm8TBGbrn6IRdWoyFt3CgKI=
Received: from DM6PR11MB3705.namprd11.prod.outlook.com (20.178.229.143) by
 DM6PR11MB4250.namprd11.prod.outlook.com (52.132.250.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.20; Fri, 24 Jan 2020 08:56:57 +0000
Received: from DM6PR11MB3705.namprd11.prod.outlook.com
 ([fe80::ddfb:d69:dd8d:70a4]) by DM6PR11MB3705.namprd11.prod.outlook.com
 ([fe80::ddfb:d69:dd8d:70a4%5]) with mapi id 15.20.2665.017; Fri, 24 Jan 2020
 08:56:57 +0000
From: <Christian.Gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4 01/10] staging: most: remove device from interface
 structure
Thread-Topic: [PATCH v4 01/10] staging: most: remove device from interface
 structure
Thread-Index: AQHV0gMy+cfYshKLdEaAbagaEunRb6f4jwmAgAD17gA=
Date: Fri, 24 Jan 2020 08:56:56 +0000
Message-ID: <2dc825b7ff12cf90de21f9f2486952a935401dba.camel@microchip.com>
References: <1579793906-5054-1-git-send-email-christian.gromm@microchip.com>
 <1579793906-5054-2-git-send-email-christian.gromm@microchip.com>
 <20200123181837.GA1927902@kroah.com>
In-Reply-To: <20200123181837.GA1927902@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [62.154.213.229]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f1b43a58-9ae0-4da1-3001-08d7a0ab5e05
x-ms-traffictypediagnostic: DM6PR11MB4250:
x-microsoft-antispam-prvs: <DM6PR11MB425085365B86564E5981B504F80E0@DM6PR11MB4250.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 02929ECF07
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(39860400002)(346002)(136003)(376002)(396003)(199004)(189003)(6916009)(86362001)(5660300002)(2906002)(76116006)(91956017)(66946007)(66556008)(66446008)(66476007)(64756008)(6512007)(2616005)(81166006)(71200400001)(8676002)(316002)(8936002)(81156014)(6486002)(6506007)(36756003)(478600001)(4326008)(26005)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB4250;
 H:DM6PR11MB3705.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qrCgGdxggTXnlnPLFM2S/ZG0Kfmm8+9w7ulAAmc8BQiA1lonchNJOuDO5KC7H1tH/BKVvF0zVhifWpINf1QqjETo0QkL/CjHCqJevgz+vKsnHeaR8xNVnoRKci+UUNe/6Xz1xtuAu/ZfBPOBk00bbczXACCJu9pene3YURUr8VXMUaTXpsiGTV9z+Ra3sEDDQAipHSOjZsJTI/i72bnNB84RKsZalLrMtrFFBkBYq3hqV7o1WGhIuKDWLwPRM/aPVp3aIJac9aH7FOpybEINh8XdZorpeI5kF6JcANg+QloU8LBcOXoNAbXpc8BRPcqm2lluVzmuQqwaRSdFlNeexkryqdzq+dqq2wGu40ZmRWpDXszcFaor4t6b7X3VHDv2xyeH9Es1pjocYSjYA9v80I0+jXFa7vu9jBvEVIggtkuqfWa+mB/OGEadFOOv5JNC
x-ms-exchange-antispam-messagedata: DWkoOxAKldW6eD4OBVgjuSW2SJS+AyuyjGZmvAutrLDXiHarkZSz8oExc4Y2YkzK0FZ6iugJ6uof/6Unifor/6trOnyQF9WCdoQyP8rOLB3AfyVNj9nr6qnPdONM59zQgsL/mPbYodWtAJIWUj4w/w==
x-ms-exchange-transport-forked: True
Content-ID: <6885DDA4DE907E44BCE132C2F25D8E97@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f1b43a58-9ae0-4da1-3001-08d7a0ab5e05
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2020 08:56:56.9776 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LauoI5VzUJ2zqR7yOhqpBND1RqewYUU1a5g7DaE+wvYp0A54S+301IjJFOs3sYiv9fcTDNWyxySjZNOaZxowIp1R2Q37ua39Ek/X3I2ZAkI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4250
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 2020-01-23 at 19:18 +0100, Greg KH wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> On Thu, Jan 23, 2020 at 04:38:17PM +0100, Christian Gromm wrote:
> > This patch makes the adapter drivers use their own device
> > structures
> > when registering a most interface with the core module.
> > With this the module that actually operates the physical device is
> > the
> > owner of the device.
> 
> Ick, why?  The interface should be part of sysfs, right, and now it
> isn't?

It still is. What has changed is that the device that actually
represents the attached hardware is used (see probe function of
the USB adapter driver for instance).

> Who handles the lifetime rules of these interfaces now?  Why
> remove this?

The struct device that is allocated when attaching a MOST device is
handling the lifetime and the struct most_interface is
representing this device in the kernel. Hence, registered with sysfs.

This ensures that the device is present in the kernel until its
physical stature is being detached from the system.
The core driver is just the man in the middle that registers the
bus and itself as the driver and organizes the configfs, sysfs and
communication paths to user space.

> 
> Why isn't the interface dynamically created properly?  That should
> solve
> the lifetime rules here, right?

The interface is dynamically allocated. This happens inside the 
USB, DIM2, I2C etc. drivers. The struct most_interface is part of
the container struct there.

thanks,
Chris

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
