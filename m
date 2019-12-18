Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F854124A35
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Dec 2019 15:51:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B29AD8633E;
	Wed, 18 Dec 2019 14:51:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cPU52ezxXql9; Wed, 18 Dec 2019 14:51:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 673FC8653D;
	Wed, 18 Dec 2019 14:51:10 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7DDF71BF299
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 14:51:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 77B3886BAE
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 14:51:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kcnjlpmA0lfc
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 14:51:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B070A86C06
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 14:50:36 +0000 (UTC)
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
IronPort-SDR: RA+z6JceyHpUr7+8yt2tonfMgSAfB9QZtiqxu1GpAKedprByrqYXWrxArSvF3sca3IKHZ2cI6B
 6RtQEk94F+rTWOrqLppRqp70Gc/XQHjeo5c7A2cqfDXMTdeYUOnqbqbZKoZPhw5jvGw2rofK0P
 Xx+Nq0yUsgkMdxJzS+tcAGLmsmxONVCqJ7Z/xdgOEma32Yp/wk7Qd1FayAnbd5crQ5TQ1ARbo+
 SCBergCm+1atMmX7EjsdnDY6c6JVxyQNuLvjg/9uUUj2c9kPZwnlwH0bfcvg5tY00ZIS563XP6
 XH0=
X-IronPort-AV: E=Sophos;i="5.69,329,1571727600"; d="scan'208";a="62178220"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Dec 2019 07:50:35 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Dec 2019 07:50:37 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 18 Dec 2019 07:50:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OoEpeq4/e9C5Pf4UK7lH6UhuwJsc6EHQD9oKOFXcUvCqAdvLOG/v3siO/pNn0eSI0CSvuS2J9sx5HMEFy4koYsSQ3OakHkp7vIleKoHitxN8huEBbRmY8b3bbs+L3fnmPcjvY1E50Wdq2aXAJu2MkHhO2W9ZKljbGeFFPYpzZJai2zbX+NljO31sqscA1OAz6ACoAHufjrU1QV62KaAfv9lYlqE7g4XxnYzp1r4KKVBU6wC8LYwGP+TX7zoKleqBSMyK0PdCWbWbppXTiS7M5XeNHxVrY64OKCTB7YVbbFXMuMIMylMqaSCzDLbhFkGbad08G9A/JTltTfiFq4PLLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TAapI+DXguIyutHmCszYjVZxB8+8ICFIxVaPySE7Xi8=;
 b=C8TQPQ+7WHJzN1dgTb05o2mm800ybhsMS3v04NmB7Ha7kNHpQ+79+0KdMnH71dy2+jGceTw/+KUY0CWLNEUmxoSTzuQLrnJpoRAZYS0IilVCznh4SI/pnlxv170q2Ot6x2ad5mkwBn40J4fb4EpXcSKe+T56fPYDQWDfq8yDI5ZBS+12OkZd3z1wN3jdaEkkRiEsQs8KUUlLsac8PPXLtRzj5ryxx5besMaRby4GcTKVALyJ6HbFme1E1Z94ZHXYqwdQaeeajwchowNmsl44lwndG/NXG68n08hHQ5G496kpb+ePyu7yyNR/D1LPmn0W/eK8ImxfL/b0B7Hb2baBVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TAapI+DXguIyutHmCszYjVZxB8+8ICFIxVaPySE7Xi8=;
 b=AsNQRWSCCWM2jE6d/v2rb6xu5jJ7DWqyDTvZrIjfwkCyQLS6BtESgrzs6NK86Af4Tiz2JqJhyTEmHpefz58V9B+hccXhc+ibSaTUoQI/YR7++y7B056a2A0xFpIl4tDtcYzFpMFUEitULUx/xONqj9oGZZoArjMf8dc56+eO0SI=
Received: from MN2PR11MB3710.namprd11.prod.outlook.com (20.178.252.147) by
 MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Wed, 18 Dec 2019 14:50:32 +0000
Received: from MN2PR11MB3710.namprd11.prod.outlook.com
 ([fe80::6525:fc5b:ffbb:acd]) by MN2PR11MB3710.namprd11.prod.outlook.com
 ([fe80::6525:fc5b:ffbb:acd%3]) with mapi id 15.20.2538.019; Wed, 18 Dec 2019
 14:50:32 +0000
From: <Christian.Gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [PATCH RFC v2 7/9] staging: most: move core files out of the
 staging area
Thread-Topic: [PATCH RFC v2 7/9] staging: most: move core files out of the
 staging area
Thread-Index: AQHVsa2n5xJpSzPzn0qztCi6rUw4Dae+UgsAgAGijYCAAAFaAIAADAOA
Date: Wed, 18 Dec 2019 14:50:32 +0000
Message-ID: <a1544f39e1849f0db2809a93f226bb107423d485.camel@microchip.com>
References: <1576238662-16512-1-git-send-email-christian.gromm@microchip.com>
 <1576238662-16512-8-git-send-email-christian.gromm@microchip.com>
 <20191217130548.GA3227907@kroah.com>
 <553516df78dcb750d107ad35bd56a164e7fe7e72.camel@microchip.com>
 <20191218140842.GA234539@kroah.com>
In-Reply-To: <20191218140842.GA234539@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [62.154.213.229]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d0e81ee8-3cb5-4b60-6870-08d783c9a23a
x-ms-traffictypediagnostic: MN2PR11MB4448:
x-microsoft-antispam-prvs: <MN2PR11MB44487037978CB702958BCD27F8530@MN2PR11MB4448.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(39860400002)(346002)(136003)(376002)(52314003)(189003)(199004)(91956017)(76116006)(66446008)(64756008)(66556008)(5660300002)(66946007)(66476007)(4001150100001)(2616005)(71200400001)(8676002)(86362001)(6512007)(316002)(8936002)(81156014)(2906002)(81166006)(6506007)(478600001)(26005)(4326008)(6916009)(6486002)(36756003)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4448;
 H:MN2PR11MB3710.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vVs5AFGCobveSeWjxLYwBFOq6pfZtgvc7tsFvAM7RUu4KmyVXq+cXzpG434VT0DcosQPqctoUNuFgEHn9brlDzN09aD+8FsmLHbAuJ7coSQd5ZJ2c3ZnMWJm49a8toKJTtOQhg4wFajWHyDeCpx06XWApMvTomt8jQXE1YpqUu+YJal2JvhklVatdQifJVfFoezUgfkERMYPm/xJ4qNMetfsAulzMnllWRUFe9rbJ64hQ2oxLkeovVHld1+Vno5jRJQe76hqLeJsllWkk6kRfWh7TAXwES81BBQSegnsu1YlNUUMpTe8a4EFB9rzx6+9fALLrILMtQMXfRvc/2eUIQlU76NJ5N3Som8NpLDSyifXzganAOZiCVqvGbn4GoZcSlw83kfuDt/ld7/bQE1f9PO1OcCXThkEqPYQHI4rjjzLDKHlw5zktd3kgmj5ngkT8+p8HL0p29w/ibLYyJJ97z6Wj8LBezUoY7ctIFiTM+roFkNOCbuUALcUqM6FY+oB
x-ms-exchange-transport-forked: True
Content-ID: <C64A996CE8A243459F05D1FD423CFE0D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d0e81ee8-3cb5-4b60-6870-08d783c9a23a
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 14:50:32.8157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S5WN5CcBbm19Jh77aQWh0My6Kq3A7ZgjIm2zuiY+kgU5GnDEPeXbUf3cVWfIB82WCwB2zvt1AB+75iB+laeJ8hz+9CYbm6cgUSkHx/tAxYo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4448
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

On Wed, 2019-12-18 at 15:08 +0100, Greg KH wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> On Wed, Dec 18, 2019 at 02:02:43PM +0000, 
> Christian.Gromm@microchip.com wrote:
> > On Tue, 2019-12-17 at 14:05 +0100, Greg KH wrote:
> > > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > > know the content is safe
> > > 
> > > On Fri, Dec 13, 2019 at 01:04:20PM +0100, Christian Gromm wrote:
> > > > This patch moves the core module to the /drivers/most directory
> > > > and makes all necessary changes in order to not break the
> > > > build.
> > > > 
> > > > Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> > > 
> > > I've applied the patches up to this one in the series, but I
> > > still
> > > have
> > > questions about the file you are trying to move here.
> > > 
> > > It's not in this patch, but I'll just quote from the file
> > > drivers/staging/most/core.c directly:
> > > 
> > >  * Copyright (C) 2013-2015 Microchip Technology Germany II GmbH &
> > > Co.
> > > KG
> > > 
> > > You've touched this file since 2015 :)
> > > 
> > > #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> > > 
> > > No need for this, You have drivers here, no need to use any pr_*
> > > calls,
> > > as you always have a device structure.
> > > Along with that, almost all of your pr_info() calls are really
> > > errors/warnigns, so use dev_err() or dev_warn() instead please.
> > > 
> > > The one:
> > > pr_info("registered new core component %s\n", comp->name);
> > > 
> > > Should at best be a dev_info() line, but really, you don't need
> > > to be
> > > loud if all goes well, right?
> > > 
> > > pr_info("deregistering component %s\n", comp->name);
> > > 
> > > Should be dev_dbg().
> > > 
> > > static void release_interface(struct device *dev)
> > > {
> > >         pr_info("releasing interface dev %s...\n",
> > > dev_name(dev));
> > > }
> > > 
> > > static void release_channel(struct device *dev)
> > > {
> > >         pr_info("releasing channel dev %s...\n", dev_name(dev));
> > > }
> > > 
> > > How did I miss this before?
> > > 
> > > The driver core documentation used to have a line saying I was
> > > allowed
> > > to make fun of programmers who did this, but that had to be
> > > removed
> > > :(
> > > 
> > > Anyway, this is totally wrong, first off, delete the debugging
> > > lines.
> > > Secondly how are you really releasing anything?
> > 
> > Allocated memory is being freed inside the deregister* functions,
> > once a device is detached from the system or the physical adapter
> > driver has been removed. There a loop frees all channels and
> > interfaces
> > and the devices are unregistered with the kernel.
> > 
> > I can move this to the release functions.
> 
> It has to go there, as you have no idea if someone else has a
> reference
> to those structures.  You have to abide by the fact that they are
> dynamic reference-counted structures, and that means you never "know"
> what the reference count is :)
> 
> > > You have to free the
> > > memory here.  You can not have an "empty" release function, the
> > > driver
> > > core requires you to actually do something here.
> > > 
> > > Same for release_most_sub() and anywhere else I missed in my
> > > review.
> > 
> > Here no memory has been allocated dynamically. What am I supposed
> > to
> > free up?
> 
> You have a structure that is reference counted, it had to be
> allocated
> dynamically, otherwise why is there a release function?

Actually, no! The release function is there, because I have
a struct device embedded. And the kernel prints this
"scary complaint", when I try to register it with no release
function assigned. :)

> 
> > I've seen code in the kernel that does host empty release
> > functions.
> 
> Where?  I'll go yell at them :)

drivers/usb/gadget/udc/core.c
drivers/media/platform/vicodec/vicodec-core.c

maybe more...

thanks,
Chris
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
