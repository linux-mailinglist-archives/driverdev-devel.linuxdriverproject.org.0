Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F441CF201
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 May 2020 11:58:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DE610884D3;
	Tue, 12 May 2020 09:58:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F3rRbif9IOeV; Tue, 12 May 2020 09:58:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0896588464;
	Tue, 12 May 2020 09:58:26 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2A4071BF3CA
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 12 May 2020 09:58:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2681D88C19
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 12 May 2020 09:58:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RnxOnBvqZCwI
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 12 May 2020 09:58:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 384DD88802
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 12 May 2020 09:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589277503; x=1620813503;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=qciApqpZ+qyoyo/ey8GQex6wrj7xkMOu2J6u8mOSVlE=;
 b=Zez9lNs6g30o4n7BKEbApQJ0uJwAwkiix/1SqZ665OKZgwU76TID5z/m
 +Q5jmrfuBZsrPHvEeLfZ1zoD+q5arL11pi/fUpKSGbyRjUoG9ZlRBenOS
 aAn9MCFF++JUG1SfooOrm1nqh5w6adpw/ARhwKRtVx3TSu9cIhX2m4fej
 6UxpNbtzZvWx/AbIoffoThLqgXzC39KtbJAjZvQhXx+q7iuxNfC9595MO
 xn2JSsmTkeVzvYtyvSTc6p+QQNKgYBljMjjQhmhlVcPAKw39fnCqASwiT
 3mmAJmbud//rreHGqn0g5Wyc6YILFc84K0dsSNs7cvY+W0Zj0jrTFSOxh A==;
IronPort-SDR: ziB7ogrKjd5iOAtsCcEBIPId72vyI99DTXSvJcHsmCKSgbKR2HF0l1T17DxraNXtcmVrd07QtE
 cR1G+NQB+TPFDAsfpLE1kVP8SCRHTwkLekT3sTiq9dV0Z0laneYgf6GMKG/gdtc2XcQvKGKdld
 Zlzal97GinZ4qp6Hkg73wCSnpXtXe9DRxYDaoR6aUeGCzfd9voqJ/ILtxf4riv0X+epbgbBzXW
 TUdlFPykLbWVTyJrprDhCbV7pSEZa7773uD17EUNfvtjr0YDUKEOPLIkT6RQKd6FnqY0PtiIXb
 994=
X-IronPort-AV: E=Sophos;i="5.73,383,1583218800"; d="scan'208";a="73139572"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 May 2020 02:58:22 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 12 May 2020 02:58:21 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Tue, 12 May 2020 02:58:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FfqLRfs8647WRvzB7ZSyq1ZqLdF9M808YJimiKu/9iT4Gu2PZF4+7KKv92pP8h2juAMOrMFEam9kJzPZYIGlr7ry571RPGvNGSem8S1/LapQkLieF2RfCvJvpopgdhOE4hz1DhJiRlHC6Mj4QDl9TfZCW97q2pyPSaL8sZ/LEScD2d5OyNhHwDl3tFTDzH7rRdSsy7Dw21S1jbH1GgteG9I37CiLyJo12fgSzUMZdg06h9GIdFvLM6PfdPyXr0N5BqZTuiTdjK01qUNH3QRxMwp5Kru2puisiYHS3RjevET9Jyg1XYOzC1Ip5cx1kCjR9JAD4AAAui2+6bX5uKY6eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qciApqpZ+qyoyo/ey8GQex6wrj7xkMOu2J6u8mOSVlE=;
 b=UNEXc7o6W0PcR6beIGvzX+j/CPYQF8xP7xNJNtWhFetNSkekYQm67CEIXhVNfvXo9lsDIdiEk2KW/yuldovlOPa+xefCxecfPpcNou0Mghe1svsx1/ti5NzS9huOgolufi85YlmBgbhYa/4JJnXwrClpaVa2KeN76gcVy3M1Syxx/OToeXZKYZIg3JFWXm6ccB4preCKhdV8+YxJjo0kRzKPXNmC8qUWIApe1nuL9v+ZmY40BK8RAwmSH7UAh56PYaeluDPsMeJ+4zH0Xy52+Mq9bB020FTKgqKpt+KHhp1vgypxJkhoBLJcbJq8NePV7HKBxx9I5dWKPTejImXJxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qciApqpZ+qyoyo/ey8GQex6wrj7xkMOu2J6u8mOSVlE=;
 b=NhTjVo5sfhXPf7B6saK/f64EhD0YdrgkjZ/014BwrCMEl9fMGW7sfJYMMtTi+670zumWQTWFlbQKcCKeBDDLI8D+CAgxFUXxpYrn1trE9wTlHPEZ/sh5f/swtPzQ3Dhe5z6Xf3g581mA7s6bZYBjx81ogZYrd6KAPiI2Uh5akpI=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM6PR11MB3754.namprd11.prod.outlook.com (2603:10b6:5:146::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.33; Tue, 12 May 2020 09:58:19 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::e8fd:29e5:1fa6:c01d]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::e8fd:29e5:1fa6:c01d%5]) with mapi id 15.20.2979.033; Tue, 12 May 2020
 09:58:19 +0000
From: <Christian.Gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [PATCH RFC] drivers: most: add USB adapter driver
Thread-Topic: [PATCH RFC] drivers: most: add USB adapter driver
Thread-Index: AQHWJ3m/SSj+ohK2lE+ATVgBizbxZKiixN6AgAAyOICAAB3YAIABIscA
Date: Tue, 12 May 2020 09:58:18 +0000
Message-ID: <0b7b32260012cf6a16d575315b6dd09cf7bdafb9.camel@microchip.com>
References: <1589190675-21145-1-git-send-email-christian.gromm@microchip.com>
 <20200511114713.GA1671075@kroah.com>
 <266714a09283d7b5cc9f0720415db7e86bf18387.camel@microchip.com>
 <20200511163346.GA2236392@kroah.com>
In-Reply-To: <20200511163346.GA2236392@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.30.5-1.1 
authentication-results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=microchip.com;
x-originating-ip: [88.130.69.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 49c2576c-e6cc-445a-366e-08d7f65aff8a
x-ms-traffictypediagnostic: DM6PR11MB3754:
x-microsoft-antispam-prvs: <DM6PR11MB37544896D7EA5FEF96D5136DF8BE0@DM6PR11MB3754.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:499;
x-forefront-prvs: 0401647B7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i7GvgIYIcEkCRopHj9ggRoB2CsP/hnlWj4pDaXIwPg4AHk+nNgXlP75ltpxXPysF4yjb5CoxPItHJneuU2rRq0kB9X4m54ocBkl+pA9g4nY97MTUUtj5/X3f/cozVt64GHPB8wGq2drRs0gke56sgCMFggQ3ikKvGpCVoPtquC5GCwxll4o5O9/N3YOh9XZOfJ/1lPmyViIe4xb7n6IUd/vY+XBQRUlheDF21wrMDOwy9U1j6BxnGGzU8o7e1Eu6Df4u7dY/lflakePI7emwZCQblOE27gBJr6KR73I5vIZXFGOkr7FjjlKTA1Ddu6niRQmmTJA26YvIbI54R4DrKpT38xnWmakp5gnLD0rUk4fBGjC7Uq0q/E3Z4MeH/8sVWOTxBkfPNDz9JSeQTY8p4dJqyym0ebV6accq4CrbxjkzGqV2TiGDSzSBDpAsdbl+bJmoHSYAnIJx9br5JVCK4PM1wAj+nI62U4r7zrIde4+KBsyPkaklS50m/hb037TI2/lfWCcq7ecKY54K3XiWUg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(346002)(376002)(366004)(396003)(136003)(33430700001)(2906002)(33440700001)(4326008)(86362001)(66946007)(316002)(2616005)(76116006)(66476007)(91956017)(71200400001)(54906003)(478600001)(5660300002)(66556008)(66446008)(6916009)(64756008)(6512007)(186003)(8676002)(8936002)(26005)(6486002)(6506007)(36756003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Pqfp3u39pQqf72F6k+lZj3J5JGR+G1TLi1EOKKCfqbzRhPd+nYl4YyKZ+wzpxkNHUAjkceSQGcWxCouCHlMfhO/5SVUlecErRXNqNpfCtaax/hvAArm+YZUsxPqdkRmUwFFLQJaqhtkam8YTFCAagE9FkMrmeKCV5H7VcdwSS6BPzKD2BLPo3ze98tFND30HmFfvmUjqD9FsYq8UIUpdKEXUXfanmJ8ygezAE55la8PULiD9W3gDcnYCy+xJadFrmcUoPfUfNH6iSJKDCBb5L0UmGuaIYKUvf9uXGjmsRmIhY5gAf9yS8XJReM8wKa0xRMxA9WU8QIDVq+0q50tBV7PdFKF52oxgggcKkd07E5zVjlUtr7EMHuW/KXmMbBN3GtEdu/AgPIe3BABedkoVscOYGKMDj4Nf0SiNRyDuexHXalnqD/dTb+qB6tDKvkCLrLTTOIbhp/sVvpcW5PAffO7XJMISDTDwlDpFxqkdoec=
x-ms-exchange-transport-forked: True
Content-ID: <8DEBE93DF2434843BE449C814EA84673@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 49c2576c-e6cc-445a-366e-08d7f65aff8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2020 09:58:19.0032 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J9NAmj8j0qcrb58fIYOAGRbKbp1ch2DjAlEvRIo0pVH8nH9LqnvDioEqNTz3WxN55U8plF4Vh3wdLAbtjj0W2ccIwX9RR1qC0Poeejp5Crg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3754
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
Cc: driverdev-devel@linuxdriverproject.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2020-05-11 at 18:33 +0200, Greg KH wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> On Mon, May 11, 2020 at 02:46:58PM +0000, 
> Christian.Gromm@microchip.com wrote:
> > On Mon, 2020-05-11 at 13:47 +0200, Greg KH wrote:
> > > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > > know the content is safe
> > > 
> > > On Mon, May 11, 2020 at 11:51:15AM +0200, Christian Gromm wrote:
> > > > This patch adds the MOST USB adapter driver to the stable
> > > > branch.
> > > > This is
> > > > a follow-up to commit <b276527>.
> > > 
> > > I do not understand the "a follow-up..." sentance.  Always use
> > > the
> > > format of:
> > >         b27652753918 ("staging: most: move core files out of the
> > > staging area")
> > > when writing kernel commits in changelogs.
> > > 
> > > Also, that commit doesn't really mean anything here, this is a
> > > stand-alone driver for the most subsystem.  This changelog needs
> > > work.
> > 
> > Purpose was sharing the information that this is patch is
> > only one part of moving the complete driver stack. That a
> > first step has alread been done and others are to follow.
> > But you're probably right and nobody realy needs to know.
> > 
> > I'll skip this.
> > 
> > > > Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> > > > ---
> > > >  drivers/most/Kconfig          |    6 +
> > > >  drivers/most/Makefile         |    2 +
> > > >  drivers/most/usb/Kconfig      |   14 +
> > > >  drivers/most/usb/Makefile     |    4 +
> > > >  drivers/most/usb/usb.c        | 1262
> > > > +++++++++++++++++++++++++++++++++++++++++
> > > 
> > > Why not just call this file most-usb.c so you don't have to do
> > > the
> > > 2-step Makefile work.  Also, why a whole subdir for a single .c
> > > file?
> > 
> > To keep the staging layout.
> 
> No need to do that, this is a new layout :)
> 
> > > > +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> > > 
> > > You shouldn't need any pr_*() calls because this is a driver and
> > > you
> > > always have access to the struct device * it controls.  So drop
> > > this
> > > and
> > > fix up the remaining pr_*() calls to be dev_*() instead.
> > 
> > There are helper functions that actually don't have access to the
> > struct device and it felt like an overhead to pass the device
> > pointer just for logging purposes.
> 
> pr_* calls show almost nothing when it comes to the actual
> device/driver
> being affected.  That's why the dev_*() functions are there, please
> use
> them.
> 
> > > > +/**
> > > > + * struct most_dci_obj - Direct Communication Interface
> > > > + * @kobj:position in sysfs
> > > > + * @usb_device: pointer to the usb device
> > > > + * @reg_addr: register address for arbitrary DCI access
> > > > + */
> > > > +struct most_dci_obj {
> > > > +     struct device dev;
> > > 
> > > Wait, why is a USB driver creating something with a separate
> > > struct
> > > device embedded in it?  Shouldn't the most core handle stuff like
> > > this?
> > 
> > The driver adds an ABI interface that belongs to USB only. This
> > keeps
> > the core generic.
> 
> So this same type of thing is also needed in the other bus
> controllers
> (serial, i2c, etc.)?
> 
> Creating a new device implies it lives on a bus, and almost always
> the
> bus code for creating/managing that code lives in a single place, not
> in
> the individual drivers.  Why doesn't the most core handle this?  What
> does the most core do?  :)

The core module manages the buffers, routing, configuration,
sysfs/configfs and user space interface (via its component modules)
for common communication channels. The DCI interface is only available
when the hardware is connected via USB. Other connections do not
provide this.

That's why I want the module that actually introduces such an
interface (and has all the necessary information about it) to be in
charge. This keeps the core code simpler, as USB isn't always used.

Also, a new device is needed to create the desired sysfs layout,
in which the dci interface is represented with a new sub directory.


thanks,
Chris
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
