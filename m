Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CB728124CDE
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Dec 2019 17:13:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B8556228EF;
	Wed, 18 Dec 2019 16:13:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v1E7972GwGo6; Wed, 18 Dec 2019 16:13:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4552920527;
	Wed, 18 Dec 2019 16:13:06 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 94D281BF41C
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 16:13:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9115884AB8
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 16:13:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nlRCGhByqQMh
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 16:13:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3ECE084D6E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 16:13:03 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: zbRm33p07ujRWeBUkzq2uhYqCtoJvJDQApyd1jpIo3InYOHmuuWFyLG7bS6s0rnXG/WQCi7Eoz
 Pz/zAqsshvyxObChFWvpU/u8l48NkUlrzFB+nqyu3Dx8vE7fSoPhliRYfP99+KOJ960gk+3M/E
 N1eZDpCt0OX273F6OkYGh5KYN7Sy/OFMbHJvi1FyYjrd1XOcD1snYsEa8ekfXDPdlNWdt/7B75
 DFzXCJYbzzemvwxavrNQL0zBRjpvzOfd/xd+tj6A91QiKrbp+8RQCra4IsmWfnQNosC7/2KMNo
 Pow=
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="60811649"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Dec 2019 09:13:01 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Dec 2019 09:13:01 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 18 Dec 2019 09:13:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=csklRQQq6Nzy1NPe+DK1WRhfBV+VqIynYve68xqRzak9oF9+Yj083zIIFI2gu/vho9EjU5h/yWzW74XFG/HriIrQZmS8Yq+SfYU7UnkRGTfVBGVHjR3Jd3xp9gj94daCG2o96JlUtwwIHWDOCzJSVkYVMUoJa1sbKatsMxBJZiDuEpDU0yTeLcWJMJM2/OQkSP2va53bw5khbWKqbdtCpGegI0DTDPXykKKKekvyAb3OSE3gFXYhUJdTZ8jufAaBmWD1BQOyusp7PQR5EBOSwD5eEPyYXaWlu+/horFgsJ7MqOs922IbAIX5kOSf/8KQaJ8hmqbPc9gbw5RKL0uC2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Er6vDERV8r2NUoex2RfoDypsKrvc0rKumM4iqKBlWSo=;
 b=N1RN/oVY9jQeTs05SjJMwj2U8qqFuSbBKq6pFu33Qtff24rSDslza6vZvi0HeBjvGnxgMx7+dAjkQ1WcsXY95WHfPjE/YWQPvcYixkOIOx5TFkE63aEPUh5GzfvnQxBV1kTUFsn4Hy5vArTtkJfnYyBAEqTJ+0T/uz3THp7TPrmQMQQ8A+X61JtCSMhJ+rVU/SVTebkDtQabnruhc8e6omB6NcV/CHlt3wlVuXWfm5MN80gCIjzm8g+2IAPqo1Emzm3XZm69soualYGg6YS27IHARX+yxXVy2sPGUvrP0o/bHvj3EHPRN2CkC4F4mVE9WnRLi3ohZrrIIbxrNMM2Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Er6vDERV8r2NUoex2RfoDypsKrvc0rKumM4iqKBlWSo=;
 b=ox3VVjs+kVr9xGVkNhFowxU4/kL0w2NpSptNgUnpwcVCwHp/eJ4jKZtMu8mu3MyOzXV9Wh6irYfnGmbtgXElkuBXh4tCSCYrMwtkZKAUviQOGDoH7Fo3wIr3YlrPsQAeONu8Nb0VJ/TT4TeQifnLWdpK+CXS/ep+VjRYGGhOpKU=
Received: from MN2PR11MB3710.namprd11.prod.outlook.com (20.178.252.147) by
 MN2PR11MB4094.namprd11.prod.outlook.com (10.255.180.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Wed, 18 Dec 2019 16:12:57 +0000
Received: from MN2PR11MB3710.namprd11.prod.outlook.com
 ([fe80::6525:fc5b:ffbb:acd]) by MN2PR11MB3710.namprd11.prod.outlook.com
 ([fe80::6525:fc5b:ffbb:acd%3]) with mapi id 15.20.2538.019; Wed, 18 Dec 2019
 16:12:57 +0000
From: <Christian.Gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [PATCH RFC v2 7/9] staging: most: move core files out of the
 staging area
Thread-Topic: [PATCH RFC v2 7/9] staging: most: move core files out of the
 staging area
Thread-Index: AQHVsa2n5xJpSzPzn0qztCi6rUw4Dae+UgsAgAGijYCAAAFaAIAADAOAgAADCYCAABP9gA==
Date: Wed, 18 Dec 2019 16:12:57 +0000
Message-ID: <1dbe471036c7e539d3d75d1b78435513d9820205.camel@microchip.com>
References: <1576238662-16512-1-git-send-email-christian.gromm@microchip.com>
 <1576238662-16512-8-git-send-email-christian.gromm@microchip.com>
 <20191217130548.GA3227907@kroah.com>
 <553516df78dcb750d107ad35bd56a164e7fe7e72.camel@microchip.com>
 <20191218140842.GA234539@kroah.com>
 <a1544f39e1849f0db2809a93f226bb107423d485.camel@microchip.com>
 <20191218150233.GA428016@kroah.com>
In-Reply-To: <20191218150233.GA428016@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [62.154.213.229]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2aef3b1a-3187-470a-da83-08d783d52593
x-ms-traffictypediagnostic: MN2PR11MB4094:
x-microsoft-antispam-prvs: <MN2PR11MB409429750608EEF1CA3B4363F8530@MN2PR11MB4094.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(39860400002)(346002)(376002)(396003)(52314003)(199004)(189003)(6486002)(4001150100001)(66946007)(66556008)(316002)(64756008)(66446008)(6506007)(71200400001)(76116006)(6512007)(91956017)(6916009)(2906002)(4326008)(36756003)(186003)(5660300002)(66476007)(26005)(8936002)(478600001)(86362001)(81166006)(8676002)(81156014)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4094;
 H:MN2PR11MB3710.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SmAjsdSjedSzGQ+EizIxSxWkdr83V/6LrA+W0IzfFox5rY74tlckcF4lYdM8Ze05h6zAXFjZJQ89JbOGaHuhhlPBI/qX+GhF4iiGUGw4XghrZaqExdnoBiPrRQzlcsQmCur3T2mUq+tCf8SFh7JZrWSQ5p348PVjmGUizi3A5YNl6chtONtbSdk09S066b8/eSgQu07ALEACwcE5HEjbjUcEBD81CiW1GHWNDMekA8GTqv7D3G+729/cT0Vmw77vAmroBuFfyDtYsCgjo5kK4iLZGjh/7u872PjgUI0/Hps7lBw4ix5vt/Kz2e+zvbEe95EMFXKvOW7luBhh8ctT1xDr11CI7c5Kwrpo0WDxkDFAJ8d3puCglFDQ9OrO2nhYG6Y5RR9ZhJ8w5K101tm9DSzi4StmpavTmt+Bw1dWkOra+OYC1yMsTW1AuHYKf5RCvRXAFNgqPknyLNYSBXopYDyXjwpVJKHnI9oP63Nk4bWoNwh0M7zHkhrAVghKJUe8
x-ms-exchange-transport-forked: True
Content-ID: <27A29F855D6D654AADEB813152CACA4B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2aef3b1a-3187-470a-da83-08d783d52593
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 16:12:57.7334 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lOLd4FPBSGeZtBJtydHEK109WEy8135l+STiY+fIRA90OlH9afMwRZVUanX1sRmEgwQqpoDPfmphpalFxUjcijZX5Y/bVrIYZ8bevC/Ue4E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4094
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

On Wed, 2019-12-18 at 16:02 +0100, Greg KH wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> On Wed, Dec 18, 2019 at 02:50:32PM +0000, 
> Christian.Gromm@microchip.com wrote:
> > On Wed, 2019-12-18 at 15:08 +0100, Greg KH wrote:
> > > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > > know the content is safe
> > > 
> > > On Wed, Dec 18, 2019 at 02:02:43PM +0000,
> > > Christian.Gromm@microchip.com wrote:
> > > > On Tue, 2019-12-17 at 14:05 +0100, Greg KH wrote:
> > > > > EXTERNAL EMAIL: Do not click links or open attachments unless
> > > > > you
> > > > > know the content is safe
> > > > > 
> > > > > On Fri, Dec 13, 2019 at 01:04:20PM +0100, Christian Gromm
> > > > > wrote:
> > > > > > This patch moves the core module to the /drivers/most
> > > > > > directory
> > > > > > and makes all necessary changes in order to not break the
> > > > > > build.
> > > > > > 
> > > > > > Signed-off-by: Christian Gromm <
> > > > > > christian.gromm@microchip.com>
> > > > > 
> > > > > I've applied the patches up to this one in the series, but I
> > > > > still
> > > > > have
> > > > > questions about the file you are trying to move here.
> > > > > 
> > > > > It's not in this patch, but I'll just quote from the file
> > > > > drivers/staging/most/core.c directly:
> > > > > 
> > > > >  * Copyright (C) 2013-2015 Microchip Technology Germany II
> > > > > GmbH &
> > > > > Co.
> > > > > KG
> > > > > 
> > > > > You've touched this file since 2015 :)
> > > > > 
> > > > > #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> > > > > 
> > > > > No need for this, You have drivers here, no need to use any
> > > > > pr_*
> > > > > calls,
> > > > > as you always have a device structure.
> > > > > Along with that, almost all of your pr_info() calls are
> > > > > really
> > > > > errors/warnigns, so use dev_err() or dev_warn() instead
> > > > > please.
> > > > > 
> > > > > The one:
> > > > > pr_info("registered new core component %s\n", comp->name);
> > > > > 
> > > > > Should at best be a dev_info() line, but really, you don't
> > > > > need
> > > > > to be
> > > > > loud if all goes well, right?
> > > > > 
> > > > > pr_info("deregistering component %s\n", comp->name);
> > > > > 
> > > > > Should be dev_dbg().
> > > > > 
> > > > > static void release_interface(struct device *dev)
> > > > > {
> > > > >         pr_info("releasing interface dev %s...\n",
> > > > > dev_name(dev));
> > > > > }
> > > > > 
> > > > > static void release_channel(struct device *dev)
> > > > > {
> > > > >         pr_info("releasing channel dev %s...\n",
> > > > > dev_name(dev));
> > > > > }
> > > > > 
> > > > > How did I miss this before?
> > > > > 
> > > > > The driver core documentation used to have a line saying I
> > > > > was
> > > > > allowed
> > > > > to make fun of programmers who did this, but that had to be
> > > > > removed
> > > > > :(
> > > > > 
> > > > > Anyway, this is totally wrong, first off, delete the
> > > > > debugging
> > > > > lines.
> > > > > Secondly how are you really releasing anything?
> > > > 
> > > > Allocated memory is being freed inside the deregister*
> > > > functions,
> > > > once a device is detached from the system or the physical
> > > > adapter
> > > > driver has been removed. There a loop frees all channels and
> > > > interfaces
> > > > and the devices are unregistered with the kernel.
> > > > 
> > > > I can move this to the release functions.
> > > 
> > > It has to go there, as you have no idea if someone else has a
> > > reference
> > > to those structures.  You have to abide by the fact that they are
> > > dynamic reference-counted structures, and that means you never
> > > "know"
> > > what the reference count is :)
> > > 
> > > > > You have to free the
> > > > > memory here.  You can not have an "empty" release function,
> > > > > the
> > > > > driver
> > > > > core requires you to actually do something here.
> > > > > 
> > > > > Same for release_most_sub() and anywhere else I missed in my
> > > > > review.
> > > > 
> > > > Here no memory has been allocated dynamically. What am I
> > > > supposed
> > > > to
> > > > free up?
> > > 
> > > You have a structure that is reference counted, it had to be
> > > allocated
> > > dynamically, otherwise why is there a release function?
> > 
> > Actually, no! The release function is there, because I have
> > a struct device embedded. And the kernel prints this
> > "scary complaint", when I try to register it with no release
> > function assigned. :)
> 
> Stop and think _why_ someone (i.e. me) took the time and energy to
> write
> code to have the kernel print out that scary complaint.  It wasn't
> just
> because I had nothing better to do...
> 
> I wrote that code in order to tell people "hey, your code is buggy,
> fix
> it properly!"  I didn't do that to tell people, "hey, provide an
> empty
> release function to quiet this foolish warning that I should never
> have
> added!"
> 
> When the kernel complains about something, don't try to work around
> it.
> It is complaining for a good reason.
> 

Got your point. I'll rethink this...

> You owe me 5 recitations of Documentation/driver-api/driver-model/*
> and
> Documentation/kobject.txt :)

Sorry! Can I buy you a beer next ELCE?

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
