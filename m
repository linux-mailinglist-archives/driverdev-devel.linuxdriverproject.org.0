Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 663BE1DB5B5
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 May 2020 15:54:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 72F3486DE8;
	Wed, 20 May 2020 13:54:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AwdUAkRhMf4D; Wed, 20 May 2020 13:54:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D30986D92;
	Wed, 20 May 2020 13:54:13 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BDC8D1BF477
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 20 May 2020 13:54:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B7AB42048B
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 20 May 2020 13:54:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id olTBLdlNFHjy
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 20 May 2020 13:54:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by silver.osuosl.org (Postfix) with ESMTPS id 84BB52039B
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 20 May 2020 13:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589982850; x=1621518850;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=kRUk5JnWB5WGxoEuGKTv9vuZhdS/XdPv82GVyl70rMQ=;
 b=iYucQgsxM0vdO2lHLAKFFlHf3d0sfnl0mni1OJzZocX0OdA9UyDpk5Vi
 g9avfZqNTuZ/dQDb/V7FrTUSKJ91Dar93RyAE/i7UwN8mp4ZZXe4AHG1j
 DwQuyQmhgf4f6P9dpUzTgtYjLMj6VeZqOe0xJIACrb0YVwFLYgjTkhR6F
 lfG4gWUybRe9i0bIUlt9uKXZpz5hl7CC2YWf1EL02H7RA/+YRylZp9xep
 GEDv0AGtxFvgJDsusb6g+XrKy4iivZpPkv9ElY2JWl/NpgG2ppKwVlqOX
 zl3QkYrgRjB+7CPP1a0jKPextvSGcfuoTogjXFYSaplefnaSl/2bRy6qf A==;
IronPort-SDR: Qd6mPjKyWpwYVybhym1Qu/HGB1jiFYR3IP40WjoZoi2VJLQgJxMZzBdzdE0gQVMrYbILWvbTuG
 HGOY8CZuHyLTfVg29CB6k4PXfpHI5WKriqMzfOBAIZPz1wOkI/kDykrR95NmaVaEVJmaJnaPqk
 bPBJi1Ln5Jm/jKb6VCUsUDftQSbAZED3mOya+hLXmUyWwK7d4JWdlFNw2oKERsd8MPWDiuoGh7
 bwE7PDxbi8IeLS98k4OfHJxYEDNQFIgYTjrdCeRTgA6EwJuCIOnbZSUz3RrEHeJVxbi+YMDXTL
 RkM=
X-IronPort-AV: E=Sophos;i="5.73,414,1583218800"; d="scan'208";a="12985629"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 May 2020 06:54:09 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 20 May 2020 06:54:09 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 20 May 2020 06:54:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hVPqkpZ3KPGCiUB58AFj0CRo8yzXA0EvSFWwObNdXnl46AtrRIOd11PN/w6+8kY/bsIjQPotZ1B0lgMvvoU1fvDBGEnIJMM0EWVICDLiKdzTmjiovra6FZZd4Jx6mlrsMjtXBo2P+YzqQ22z9AkTBUthRiyOaeed1moN9flXuEADGUZLZA88NQs6+RXVV+rU6FyplwidQv2CJ/c4euSUZCqQyOWV+HXw9DQTiQTUvCfPbOjkhnBAdE6EDdz4gXY4owJhrvA5ISDHRJS7UP26BvwgpQGRsy8qQE6DKlmIKf7+G9ZECiu3cZJhK7ltAjzmR2LVA//MNbffMxGIQnlXCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kRUk5JnWB5WGxoEuGKTv9vuZhdS/XdPv82GVyl70rMQ=;
 b=WUq+tXaFOhn43Aa1pgdKTKXPI1PGA2LIqkvYkxn5d8VB+G0rj4Mg02wQCIg12mIxve4++s6oYRCEBI4qLOVd0ExmbJOOGjcB2MuhqZByK1WpXPb4eSO6DVZ6p+u5e0z+lyrJdYKl/LYrGDQllIs2MuK21JSniop1BufiAo7jJQzlmAgSkgD6rZky3+T7X/JFO1WDyHf0kncMbzgW3XmxaA6ZmxjgtBCNrBBKxM1XpFyypwQst+0O8U94glPVBkge7KLYGEHhgWzkCwUJaCBec9B4TZ2CMatnXC3/v4jFPrckMfwlx9ZJlsgcLxx3P2ZfNpqWaR/X1EJv7KFnDxrALQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kRUk5JnWB5WGxoEuGKTv9vuZhdS/XdPv82GVyl70rMQ=;
 b=FqUrh/MXBc1M3fD0HLYyqY5EvbI0yOIJlLJq6yxrjS3Ommag2oPcmWSJWNz21vv8UW10hINVKWNM26RLtYLdOvJ53SPEGioiphcd2if9ZTCqX/OemZg42UXABvMbe+C2TnsKNFw78Viruvo01gYcybmffqgAVPFyK3RKsEFHRvU=
Received: from DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) by
 DM6PR11MB2697.namprd11.prod.outlook.com (2603:10b6:5:c3::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.24; Wed, 20 May 2020 13:54:07 +0000
Received: from DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::e8fd:29e5:1fa6:c01d]) by DM6PR11MB3420.namprd11.prod.outlook.com
 ([fe80::e8fd:29e5:1fa6:c01d%5]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 13:54:07 +0000
From: <Christian.Gromm@microchip.com>
To: <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2 1/8] drivers: most: add usb adapter driver
Thread-Topic: [PATCH v2 1/8] drivers: most: add usb adapter driver
Thread-Index: AQHWKdV8kIdQpzA+vEmZxc66TslXC6iw/mgAgAAKLgA=
Date: Wed, 20 May 2020 13:54:07 +0000
Message-ID: <9f448ee4453003f4d92ff854146efa8e8d6b3a67.camel@microchip.com>
References: <1589449976-11378-1-git-send-email-christian.gromm@microchip.com>
 <1589449976-11378-2-git-send-email-christian.gromm@microchip.com>
 <20200520131740.GR2078@kadam>
In-Reply-To: <20200520131740.GR2078@kadam>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.30.5-1.1 
authentication-results: oracle.com; dkim=none (message not signed)
 header.d=none;oracle.com; dmarc=none action=none header.from=microchip.com;
x-originating-ip: [46.142.77.56]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 31093a12-36bc-49ea-c3cd-08d7fcc543dc
x-ms-traffictypediagnostic: DM6PR11MB2697:
x-microsoft-antispam-prvs: <DM6PR11MB269745296408B11FEC9FA810F8B60@DM6PR11MB2697.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:1360;
x-forefront-prvs: 04097B7F7F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2fbGAsV9UuozD7yEjLKn6XRw6qomstlouQJnm/v0ZsQsZ+ntSN0R3QeMLX/dGw79JMxUJx/A0MiHlt2IX91ixr9EMSN62YqPIYs2sp+UM95WO3CyKGnEudTzsRtgrB2B47Z71ubdTscp6we3mWrPllxKZG80dVruFG+ZC3nkcBLauxueS3U542XD+4epsfBXUyCdkUbPuxiJpeHonOX/hvcLTBc2esVK0dWkRUeq5mu32T8VG8u6gGEejXwBIYIcZiaRCNQIHuikUbeHFLhbvBuNR1Wp/nYgIKU9FYF9nVO3cwGOpMu0LBj2IfkmBNKk
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(39860400002)(346002)(396003)(136003)(376002)(6506007)(478600001)(2906002)(6916009)(66446008)(4326008)(8676002)(66556008)(6512007)(64756008)(66476007)(66946007)(71200400001)(86362001)(91956017)(76116006)(6486002)(26005)(2616005)(316002)(5660300002)(186003)(54906003)(8936002)(36756003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: 5Cd5czXvSPy3NDRoHvQ1d3/Aad6mTemMwxApdRg5l5xlAwCjsDU8JUW6QYz7BPYBdBUWlHKkaBGnz0m8ajnaJgkbslVBFIZnA5FDshPkX7aFUjUGLbqN/C7Cgxq0yeQ12LfCqb2s05M6wLbGqWOHOGa1lqXERFFNvEYcwUMvIOHYJnO1p9SxarE1T5xbFsUuE/ejcj1G4NIy6IYVALnssRzsrUO+R+/QqYlsQKuGJ6U2St+OBrAyF+wwXnN2e37tD5XZ0ddIAkSqIeGHc9wLK0oxTgKgWm3R7Co2iHd+CvOL1/VyHlXUKdtPaquHIRxP9OpMkrv1NNIuQBRYGMoozNHTP2jD/ptPO1XzmXsWjLUKZakNcfNiTxQ2M8B3p8F/Qohj06D4s5aR9GtWuSm1T3W/IkstPGgSxlSx36II1QWoOkQY7+C/rEQICAQVHSM1NBqh+TK5EHpNmQBpzd6VXF4zucfZQTpc3YYuhygzRY0=
x-ms-exchange-transport-forked: True
Content-ID: <0E846A039FF6644BB6562A6F27DF2E01@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 31093a12-36bc-49ea-c3cd-08d7fcc543dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2020 13:54:07.2323 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WvyXyhfpqyefxBqfxbv7GxQTH+qbKJrH7CDHqWfoQfRGtm3nPf54IUiv9waCqGenD5Pie8CkYehgdIfqXM55+8xnzj9YBA+5s9g/0DVDptQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2697
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
Cc: gregkh@linuxfoundation.org, driverdev-devel@linuxdriverproject.org,
 linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 2020-05-20 at 16:17 +0300, Dan Carpenter wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> On Thu, May 14, 2020 at 11:52:49AM +0200, Christian Gromm wrote:
> > This patch adds the usb driver source file most_usb.c and
> > modifies the Makefile and Kconfig accordingly.
> > 
> > Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> > ---
> > v2:
> > Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> >       - don't remove usb driver from staging area
> >       - don't touch staging/most/Kconfig
> >       - remove subdirectory for USB driver and put source file into
> >         drivers/most
> > 
> >  drivers/most/Kconfig    |   12 +
> >  drivers/most/Makefile   |    2 +
> >  drivers/most/most_usb.c | 1262
> > +++++++++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 1276 insertions(+)
> >  create mode 100644 drivers/most/most_usb.c
> > 
> > 

There is already a v3 out there that has some of your concerns
already addressed. I'll take your comments and fix them in the
next version of the patch.

thanks,
Chris




_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
