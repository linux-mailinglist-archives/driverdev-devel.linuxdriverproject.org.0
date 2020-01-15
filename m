Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 358DA13C8B3
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 17:05:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B24B687939;
	Wed, 15 Jan 2020 16:04:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZxNu92eYov+V; Wed, 15 Jan 2020 16:04:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3968F877A0;
	Wed, 15 Jan 2020 16:04:54 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3BB921BF2BF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 16:04:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 37D4584155
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 16:04:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JwZI_MaZY-Jd
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 16:04:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1A3D385EB8
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 16:04:36 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 69FJEuNt8Cxk1Q5fNyg60dFmFef8/So5dK1riuKuKLApKNMPQq6sUWXnhgg/mj9kVFXj9sc4Pp
 kAIpDZ2kwiUo1xebQ31ryQeyG7htMpNqx/YUx0nsyMK9d2Vxt4A07VjiU01p6SubQ4MIwhpYQf
 nitXU910MIVuf8MLUNRvkp3PVabz314QTJKTQPDcrdIbb2lobFEU0g+RqNt+DgZELrZkSezjus
 DHTwA7GjvzJKFpcFMIYs7CgPm0BXygNEQsqK1TKkEOpJC959aA6T2X4rffnnQ4oLgf36A8kzTh
 R5c=
X-IronPort-AV: E=Sophos;i="5.70,323,1574146800"; d="scan'208";a="62023935"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Jan 2020 09:04:22 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 15 Jan 2020 09:04:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 15 Jan 2020 09:04:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WnvC1c0roKfGBooRfK2Vb+IjpAMKF9nf7okaat/M30JX21SVO1bD1CZzgcEZWIyRDcVCxhyzzvcWnpnnc1n6kCRCdJ0ipDzpSZ9TnPugD9rriv+lA70tnZtNXoEsp7huwxqwb5Ri86Kz5UgGlGI3rCk/QmRv8WBgomMAAsqyRasaQn/Insm+rxdo1T5C6Dw+sQYmVxJx4fVxC9Sc4lE9XBmTKAw8XF+SNyyvQSnWpU8LcwMgtAYnhEmbfdlHuk1BIBn4LFuiWuifXA8NUeQ0NBOBhNTiYInzWlzOiBdODigFnuYAUL+9JDieCjw5lkRBQLAJl/Al0xi8IRpjOo0Z8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h4HOGAyduNvv5IIw+K8YhRTsSyPvjETVkqsepe1aoBg=;
 b=oIuGeDPLuPYurhnpKNp0dAe2n3Eo7950qRDq36HX7rgcpQBUtR+c/HRSuZ9FZZkecW+vwpGqTw8dUrS4zz/yYrcZkDZk3YzuXNVCs76FHg6Oarxv2RVrD+nz2F59c5JkTYMOJQnHjKh9WMC8on6kTNgC+3ug2wHorUfwSQj83M/rVAhi4kaSHhf/0UPFA6kkaIu2BkNzCukdW7S/4o9mfrEB0BT+vMc3Z6UtKXqeSprnhGdxfLgrtOx7d5RXAK69wFcYRXuM0pw8Np1QRuEUVSrZBqAQmmT2ldJfy+d39a/PmUtG6pNKSRp7B80t8G+Pq+t0hIgx23uOu4G7DiIJEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h4HOGAyduNvv5IIw+K8YhRTsSyPvjETVkqsepe1aoBg=;
 b=A0fVARuD78bekBBzMovC8GeVlStcMIoMxyxeRnjlkq0DhBGign+ZHWWMZzC/KaZzAcw9SN83QNQmExWQ9MW4/zLwlFwXyaR2crGDT5XcFtWrNWtwcPXL1QZtn15MfamsJGm8ujUy8dvgEGE8x2dG5SIgDMpfDDrE9pssVvfzarc=
Received: from MN2PR11MB3710.namprd11.prod.outlook.com (20.178.252.147) by
 MN2PR11MB4430.namprd11.prod.outlook.com (52.135.39.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Wed, 15 Jan 2020 16:04:19 +0000
Received: from MN2PR11MB3710.namprd11.prod.outlook.com
 ([fe80::41f4:f9c9:fca6:8ba2]) by MN2PR11MB3710.namprd11.prod.outlook.com
 ([fe80::41f4:f9c9:fca6:8ba2%4]) with mapi id 15.20.2623.018; Wed, 15 Jan 2020
 16:04:19 +0000
From: <Christian.Gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [PATCH RFC v3 4/9] staging: most: move interface dev to private
 section
Thread-Topic: [PATCH RFC v3 4/9] staging: most: move interface dev to private
 section
Thread-Index: AQHVyvNybiROVHNIrEykAbNgPtOcvKfrpYcAgABAEQA=
Date: Wed, 15 Jan 2020 16:04:19 +0000
Message-ID: <0f71adefe079f5bc1c0ca777c0b8553f46ccea3a.camel@microchip.com>
References: <1579017478-3339-1-git-send-email-christian.gromm@microchip.com>
 <1579017478-3339-5-git-send-email-christian.gromm@microchip.com>
 <20200115121712.GA3394319@kroah.com>
In-Reply-To: <20200115121712.GA3394319@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [62.154.213.229]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1bc26a98-433b-49f8-9cf4-08d799d49477
x-ms-traffictypediagnostic: MN2PR11MB4430:
x-microsoft-antispam-prvs: <MN2PR11MB4430EFDF043ED4BC4FB7FF7EF8370@MN2PR11MB4430.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(366004)(396003)(39860400002)(376002)(199004)(189003)(6512007)(5660300002)(36756003)(2906002)(186003)(26005)(2616005)(71200400001)(66946007)(6506007)(316002)(76116006)(81166006)(8676002)(86362001)(81156014)(66446008)(91956017)(66556008)(4326008)(6916009)(478600001)(64756008)(66476007)(8936002)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4430;
 H:MN2PR11MB3710.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wIBUlIFtJyKpTTTdN/cL4yHrKrzxoPjFqCMPHzKZI8wvUd+qhqviuMbkIXrjxJ8xtg3uk1qyTJKc+A+9f7x5k+rh3P1A1uehQ2PMFxqr9VaKWn6z9J0+DOEE9BhZx1j0eUDpkE3NvIe/JRefQnCfsTv/40Hd42oWCqsY3Kq5eI8Qu4lxR9K5Ji0K8h62p6qCDgDkKFYySQJu2Fh6Cr5MEwoQe/ectYnN7V4sCzi4b8nWwGLr3vR+Kl66KhkrgQNF0qepJ4ZIOGIRbB5oCNwBNNwRkDbS0VXzMz2U+gkLE00TcNU01aT5HuGd7ASDegZGVD80ydoqYjwmp2EcMaPedHC2NgwRfQjwOojolUmKtg2CsE/e0OJH+pufElX0L2YpmEZiDvVfxKG8L9Q+BahlJY2TyRb0czULfBBifc1VgIivLWIJ7QNZqLYrdiAugiob
x-ms-exchange-transport-forked: True
Content-ID: <A845498B033C144BB06CB8D680FCA20E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bc26a98-433b-49f8-9cf4-08d799d49477
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 16:04:19.7169 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a32OBI98yJZQwhxtDVpN92GVGEDbThiY8+dfKex6zSlLD1kOwFrbqx18+s7LfCyuOtYqA6cW4H1kE+UFD0hWMBFJmjzcad6G092KoAVBIes=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4430
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

On Wed, 2020-01-15 at 13:17 +0100, Greg KH wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> On Tue, Jan 14, 2020 at 04:57:53PM +0100, Christian Gromm wrote:
> > This patch moves the struct device of the interface structure to
> > its
> > private section, because only the core should access it directly.
> > For
> > other entities an API is provided.
> 
> This feels "wrong".
> 
> Shouldn't the struct device in this structure be the thing that is
> handling the reference counting and sysfs integration for this
> structure?

Yes, that's right.

>   To put it as a "pointer" in a private section of the
> structure feels like it is now backwards.
> 
> What is this helping with?  Who was messing with the device structure
> here that needed to not mess with it?

Well, it's not that somebody was messing with it. It's just the
fact that somebody could. 

> 
> It's good that you are now releasing the memory for the device
> structure
> properly, but this still feels really wrong.  What is keeping the
> lifetime of this structure now that the device is removed from it?

It's the most_dev structure of the of USB module (or any other lower
adapter driver), which embeds the most_interface sturcture that 
contained the dev struct (which I moved to the private section).

The thing that might be confusing is that the place, where the parent 
structure with the device is being allocated, is not the same where
the device actually gets registered with the kernel. These are two
different kernel modules actually.

thanks,
Chris

> 
> thanks,
> 
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
