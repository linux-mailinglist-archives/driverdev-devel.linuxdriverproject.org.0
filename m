Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 734AC2303ED
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 09:20:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8C4CE85F5A;
	Tue, 28 Jul 2020 07:20:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jwou4WHrUOXQ; Tue, 28 Jul 2020 07:20:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F02CF85E6D;
	Tue, 28 Jul 2020 07:20:04 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E4081BF293
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 07:20:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 569D486F87
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 07:20:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dqN2j3MJy8xc
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 07:20:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EED26876A6
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 07:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1595920801; x=1627456801;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=GYJILXfwYVRbnzD9xWQVI11QOEch37MuEdNlfOtF0qI=;
 b=19OGnK3gRFJDsOi6VYaSPm+oBmkPxF02gDzvWu2OygMOoJnUKO4AooFC
 4GHLcpUl4e7LlYr3tFCBwglJc6DKusRxueAacCjYBo9qgajsUx/888UrX
 jOplbpLXHX+bV1MwnlHGoPaX2Cyra4YBoWMiAHe5AUyUCwuIEyMGSh864
 caAbnars6D6cLRVp5RA1kNnlOFk4W0gH+bP3As8C0Bk5uSlFPEdwbALho
 F1g8rkd6FFzuv41Rhhd5DOZ9BcKjd4MmKYGY+sJOd4SAqlC8juSrE7SbL
 k5IxeCUSSvboBNafGkrx8CDRKRtgsJKzj8GrhC4+2mlNyvuUpKLdezuZZ g==;
IronPort-SDR: ZsNKZU+u/vt6n2tzOvb6eIVXnBk/y8IXiOAHNwL3qQoQPyhvu5Ew7+qRRioO7Ex5UfKnpQ8ttv
 fV7u+asi76ZX7KgG5aSHMF9txcA9qoMhdWoSlpXEkh3op9+QAzbwGMG4ktO2sw8EKzKz1MI5i9
 o9uj+HKejtQ1Mm/6HzYtR1pLGRwdKmE+PLT+CPlAy+4W9QqyQgaC3KLkQ2Go1LrtQfoZijTdBa
 1pbNhQrykb9NZvbwvrZlmuqvglqYwURAXuk3inSga1m1d+xBSNDykqt3KG6iReWReBkFr3LxBR
 XaU=
X-IronPort-AV: E=Sophos;i="5.75,405,1589266800"; d="scan'208";a="85590111"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 28 Jul 2020 00:20:01 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 28 Jul 2020 00:20:00 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3
 via Frontend Transport; Tue, 28 Jul 2020 00:20:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DhKPTuoQlvfAJSxXeYQz8w4gUjm9zURyQBA5tKIRRrnf2n37jZfzBr45k/Ft+vGiBFw7ZGttAHEH3JVwvrWYN2/JEp+bVypUpedBSN8pyTqXoihPyeioFrK1SzfOIR7npMwymKIseqow63NM9lhnH8fuq9ZktcgZV+aoWJh1XQTGQUW/4BIEcx4fbrBfOjiuPREllRFXpIMF4NkqIqLOh7flF52eLMyaO0fnjhKkhHsV3TdlfoiH11g/2ZHCjRWG4rc32SQPPpYVylOX5rvgKMdn6XAjesETIzwNA4ux56u+HEiuJ6iOlwAWUfFvHLfyFKxx/zmsQLL0/U3cXJ2KWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GYJILXfwYVRbnzD9xWQVI11QOEch37MuEdNlfOtF0qI=;
 b=P+Y8LHSc6XchN1GtnppPf/ll+nbIKk5/ljKBUzJJMtZWvcrBr8CgktZeDHblKaja77jJ7s1qyDo9wC/KYnVdAxvz7JFBxutlyZ2SAFR8BBNjyDHX6alJcIAOwpQeVIc3fi2S6DULqdDfTngBMqM9o17Q+G1JqYKtp4M6u7NPkJXZS6FnhcL9gC7t19QyFHkfvHu/Na119hBN06Umxxi6UxtQGokwr/APH+ZoT3H2SybNsO16SI2k8GV0pfYZTGi6JfpAFNl/NieKvwMZ//+rFGdnrAtpladEF/j02j+xyTSikiq5W19Dw063ukMuQhdgpD+Cak0Y3T9PajgSpuAkfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GYJILXfwYVRbnzD9xWQVI11QOEch37MuEdNlfOtF0qI=;
 b=KrIZKq3Q4APcc7Hlnp+BJV+nnVHchB7Zzebnz/J0k/2wwD5hUDhPIC3ULXX/ltdIvD/zb+SAYAmbVqyJfHTAJzzQSxtu+R58FiBqo0sY/UweXz0KW/zoq8QSWwhHflmFvvihACmznZKuXzJKrfwsvI/9kRzXeth4WWannY9WRmk=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM5PR11MB1929.namprd11.prod.outlook.com (2603:10b6:3:10a::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3216.23; Tue, 28 Jul 2020 07:19:59 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::e8b2:1d82:49d9:f4b]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::e8b2:1d82:49d9:f4b%6]) with mapi id 15.20.3216.033; Tue, 28 Jul 2020
 07:19:59 +0000
From: <Christian.Gromm@microchip.com>
To: <rdunlap@infradead.org>, <gregkh@linuxfoundation.org>
Subject: Re: [RESEND PATCH v5] drivers: most: add USB adapter driver
Thread-Topic: [RESEND PATCH v5] drivers: most: add USB adapter driver
Thread-Index: AQHWY/BDxH5Yo94YUUW0M5xBKSbJ9qkbhROAgAESDYA=
Date: Tue, 28 Jul 2020 07:19:59 +0000
Message-ID: <6e59b35bb21996572164e3ac315989f8054c5d97.camel@microchip.com>
References: <1595838646-12674-1-git-send-email-christian.gromm@microchip.com>
 <616b53fb-3d51-2728-6bf1-a5d5dd0c5b4d@infradead.org>
In-Reply-To: <616b53fb-3d51-2728-6bf1-a5d5dd0c5b4d@infradead.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.30.5-1.1 
authentication-results: infradead.org; dkim=none (message not signed)
 header.d=none;infradead.org; dmarc=none action=none
 header.from=microchip.com;
x-originating-ip: [88.130.65.88]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2f6b149c-d696-4d12-dbd9-08d832c6a35f
x-ms-traffictypediagnostic: DM5PR11MB1929:
x-microsoft-antispam-prvs: <DM5PR11MB19292F96861890C5446A7EA1F8730@DM5PR11MB1929.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:913;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: vBgRkl8ahGVB6piJ1jRjQWL1lV62U+iYvb9+bqPU2+nOz/acMisghcMkecvGwRFCjp+kO5AVoxkcDR35UzEGJTxx/MXfA69efCNDP/AAnXD76CHTAOrK+JQvgtwYr31TSDB6JqJWyQQ1ZkcL5nE+zr4Tz2/iM7s8BeXgULLiOamZwd7Hu7D/gbw6Pt1rPVwkvGEaJRlR4oe5kfk6+YUju+aqVrTYAkouLRcc6kTzXPDuqYMFI6S4OWJyb6TKuO2MIIXI+r7i3QymvvwHBO5ynFK6sZ8jMkzvX+TIlJFFxDcpjJPjA8GiEOGsTI0oyFVO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(396003)(136003)(346002)(376002)(366004)(36756003)(2616005)(6486002)(76116006)(110136005)(91956017)(186003)(2906002)(8676002)(316002)(66946007)(26005)(54906003)(8936002)(6512007)(4326008)(478600001)(64756008)(66556008)(53546011)(86362001)(5660300002)(6506007)(71200400001)(66446008)(66476007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: mRHZeGFSBikXa+uz4/XaskoDqh82hwx6Jqcn8PoBfU/zT0aNS0uEZh/dc1hbZwy096tJJ0qf0YYHIM6ZRlqIhsMAwQPA7oppMULMHC0cq5s9DzA5IlgpKTwFZWOhR0KNctcxoWap4LBA8YdBDYXdQ+BNjDGkPWProQc9aole52XNsgmbPvnEVQlxqSuwCcJbQoulRDJ5j+ywcLfl+DrMMT9XtaxIfLtcWDGoavGbWPU3Qi+qSbL+Lp3eAv+s8Lc0uGFS6zppI589uVNJ/i3DbLuU6fSgxjVpJo5fJ3sYGHapHcyCKcA6UPLLuhQF3ax4TWL0ZeCO5Y/tnwDQXs50MfEwNuaEBjwaKVuGB7O3Be30N6U4LIxh/xm0ykMSJ+WWbm4L5JyYqLGSINfnlLcMQojMn4O2HPlrc41ZDIwSeBRsyhiVpv1k3WmAfP40Z/4DHp5KuY3bRL8aQmPxHxDAbs4inHsmakPwUa+W0r81yr0=
x-ms-exchange-transport-forked: True
Content-ID: <2FA45056D3DF3F4ABF6E432FA6F9120E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f6b149c-d696-4d12-dbd9-08d832c6a35f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2020 07:19:59.8397 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: stgSYmY5T6nOMO00d+iykrP6HaI/AFPM94LcCNJXRUspDnnHBr1wZtaBm3IAK1ECN8bPiK1DoqF1vg9xplquAvuO0O0VB11aA4VR23Clo+Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1929
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

On Mon, 2020-07-27 at 07:59 -0700, Randy Dunlap wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> Hi--
> 
> On 7/27/20 1:30 AM, Christian Gromm wrote:
> > This patch adds the usb driver source file most_usb.c and
> > modifies the Makefile and Kconfig accordingly.
> > 
> > Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> > ---
> > 
> >  drivers/most/Kconfig    |   12 +
> >  drivers/most/Makefile   |    2 +
> >  drivers/most/most_usb.c | 1170
> > +++++++++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 1184 insertions(+)
> >  create mode 100644 drivers/most/most_usb.c
> > 
> > diff --git a/drivers/most/Kconfig b/drivers/most/Kconfig
> > index 58d7999..7b65320 100644
> > --- a/drivers/most/Kconfig
> > +++ b/drivers/most/Kconfig
> > @@ -13,3 +13,15 @@ menuconfig MOST
> >         module will be called most_core.
> > 
> >         If in doubt, say N here.
> > +
> > +if MOST
> > +config MOST_USB_HDM
> > +     tristate "USB"
> > +     depends on USB && NET
> > +     help
> > +       Say Y here if you want to connect via USB to network
> > transceiver.
> > +       This device depends on the networking AIM.
> 
> What does that last sentence above mean?

Nothing. This dependency is obsolete and needs to be removed.
I'll fix this up.

thanks,
Chris


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
