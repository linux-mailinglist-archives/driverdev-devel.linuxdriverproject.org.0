Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D3186B40
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Aug 2019 22:18:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BC6B58652A;
	Thu,  8 Aug 2019 20:18:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PQYZGttCREgH; Thu,  8 Aug 2019 20:18:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2DA4F86204;
	Thu,  8 Aug 2019 20:18:48 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 407DF1BF275
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 20:18:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3657F875BE
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 20:18:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DptPsthQAcjc
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 20:18:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from APC01-PU1-obe.outbound.protection.outlook.com
 (mail-eopbgr1320127.outbound.protection.outlook.com [40.107.132.127])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8214285787
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  8 Aug 2019 20:18:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bnyg+XL+OMC9qjDzhlF9VHiXDXzyhBjtYUn0DiG+PEK8sIkqIcAhPtpg7XXQuZJvyZiEDJu+nbzXMddEztle9ENHByHA5I9KR7dOEn34rDPBKg9RTueF9YhjRRkwQ1iQN652/vw/JmmlQ6limUc7Mo7TPR87DpI/Y/EEKQN9m0B4zUswV72YO5sBmSHzxSPn5kLMPjjay2PhL1lYayIg8goPgQdOq1uQFdBMLrXfcMIOEe4G44XecuLtfN77QkZnH4fXU19v+mu2PNVSviAo+l/4l1HouVON+VK3foDjWHdCJjWj2YwPy8Hs17LremQ8LlVNImG6cZOn2L5H6SVCtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A497bBQh64LjItPHc5XDsOj3qDgI6kdo9DRaBR0wwOY=;
 b=PGe0GYNHSpT6DfJ52sMPP+8VkhJPWYQgZCx7T59d0WBFYuwCObMnNMBRgZJ+nWAm8O1q3HX5oNY4SAKJhw/3t2t3FJqZ5t6UB8oMHbLgPaSsbrJK1pT58gLtrJANjcwpNX3IfQUQ10CWugSqfAqD1PYk0KDyFcmW47FalXYfL6WSeZyNM2GpudTuR1IKE2cmzkQqZsG1hM730FZn8BPxi9e0L4l2ceQJwB5zCQuG9EnBRSTejxt+dJsWinPhgX1HFyHCrrbhApwYH9O7RIlmiV7q/6zTmwdWF2nAoHh6InkA5Zcv5DPYOJinHuFofuVi87fxgUJcDNBK8BLpqi+VfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A497bBQh64LjItPHc5XDsOj3qDgI6kdo9DRaBR0wwOY=;
 b=hqZmR0UDQ0LmXbGnDR4k+eQPAPEzWAs4yG82EUm/uvRmQMFdAAUHCnjNi0HW+O+i6rEI6Cp0N5jtzvL5IBTsStg9pMUhLWXcV0llrM7/G+y6X8PKc3qUOdDjfjPneNVAES+hklcZQCfMEcQfWhjtmjctSYsFqPh6lCdQtPajnyc=
Received: from PU1P153MB0169.APCP153.PROD.OUTLOOK.COM (10.170.189.13) by
 PU1P153MB0106.APCP153.PROD.OUTLOOK.COM (10.170.188.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.2; Thu, 8 Aug 2019 20:02:37 +0000
Received: from PU1P153MB0169.APCP153.PROD.OUTLOOK.COM
 ([fe80::d44e:57b7:d8fc:e91c]) by PU1P153MB0169.APCP153.PROD.OUTLOOK.COM
 ([fe80::d44e:57b7:d8fc:e91c%7]) with mapi id 15.20.2157.001; Thu, 8 Aug 2019
 20:02:37 +0000
From: Dexuan Cui <decui@microsoft.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: RE: [PATCH] PCI: PM: Also move to D0 before calling
 pci_legacy_resume_early()
Thread-Topic: [PATCH] PCI: PM: Also move to D0 before calling
 pci_legacy_resume_early()
Thread-Index: AdVOGUCbZsj/msiiS0u0Knw2VZMQCQABOjuAAABxRyA=
Date: Thu, 8 Aug 2019 20:02:36 +0000
Message-ID: <PU1P153MB0169252B65E2131C29858074BFD70@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
References: <PU1P153MB01695867B01987A8C239A8CCBFD70@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
 <20190808191913.GI151852@google.com>
In-Reply-To: <20190808191913.GI151852@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=decui@microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-08-08T20:02:33.0775966Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=28748fa0-13f3-47b7-bbbc-798fd4b93757;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=decui@microsoft.com; 
x-originating-ip: [2001:4898:80e8:9:c9ac:49d6:29e2:b6ef]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 03efe7b5-0f51-49dd-3669-08d71c3b5c4a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600156)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:PU1P153MB0106; 
x-ms-traffictypediagnostic: PU1P153MB0106:|PU1P153MB0106:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <PU1P153MB0106AF1B233D4333A686F3AABFD70@PU1P153MB0106.APCP153.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 012349AD1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(376002)(39860400002)(396003)(366004)(346002)(189003)(199004)(99286004)(46003)(10090500001)(7696005)(76176011)(7416002)(86362001)(11346002)(486006)(8990500004)(14444005)(52536014)(102836004)(476003)(64756008)(7736002)(53546011)(446003)(6116002)(71190400001)(74316002)(66446008)(33656002)(53936002)(10290500003)(478600001)(22452003)(66476007)(55016002)(305945005)(76116006)(256004)(14454004)(54906003)(6246003)(81156014)(8676002)(25786009)(186003)(229853002)(66946007)(81166006)(4326008)(71200400001)(6916009)(6506007)(8936002)(66556008)(5660300002)(6436002)(316002)(2906002)(9686003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:PU1P153MB0106;
 H:PU1P153MB0169.APCP153.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Ut+JeE+S8Mh9dz0FyJWVzrh36EIHTTgHfvBAaOZ+JDRVljWLQqwYIKMURaco3CEjkMS3MgyM/239BCh53epmQJJXnuuTG7zgqj+Ty4G3+Av0clcw4t1r2rozDhlhaKjCqD0jHZmJcA4bQkIh9iTf69nsxFg3mcAdfBh22f9twby2ka1yjaJ8i+K/W7t5aEvIb8rHekmIlolm8bP7JmYCFpElsGirigLogU59Nq3GKQ8q1s6nLrXbLMDxllBLg0zBopZFnR3wHD34+WkKHqz24YDkuiWamfgaPEDxlGllvimE7sJWySErY6QSGRbabUfUed87YvQlGLkMPeG29ITcq/8cZgrn2X6Imcy1+SKSQKjqXkqYVxWRWG9yv9ijWqxERs4RI8JY3meVkDEfMeOjNiVp19sOQR1UpcmW9oxfOB4=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03efe7b5-0f51-49dd-3669-08d71c3b5c4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2019 20:02:36.8942 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HxDl2jG4N0xKz9VvpqJY8vRCVlDOuj+eBgQLfQmf5WaccJyZKu6Numm6eLh/oU8pMumShgCjRKVQeA+BGCnI5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1P153MB0106
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
Cc: "linux-hyperv@vger.kernel.org" <linux-hyperv@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 "driverdev-devel@linuxdriverproject.org"
 <driverdev-devel@linuxdriverproject.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Michael Kelley <mikelley@microsoft.com>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 "marcelo.cerri@canonical.com" <marcelo.cerri@canonical.com>,
 "olaf@aepfle.de" <olaf@aepfle.de>, "apw@canonical.com" <apw@canonical.com>,
 vkuznets <vkuznets@redhat.com>, "jasowang@redhat.com" <jasowang@redhat.com>,
 "jackm@mellanox.com" <jackm@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> From: Bjorn Helgaas <helgaas@kernel.org>
> Sent: Thursday, August 8, 2019 12:19 PM
> To: Dexuan Cui <decui@microsoft.com>
> 
> On Thu, Aug 08, 2019 at 06:46:51PM +0000, Dexuan Cui wrote:
> >
> > In pci_legacy_suspend_late(), the device state is moved to PCI_UNKNOWN.
> > In pci_pm_thaw_noirq(), the state is supposed to be moved back to PCI_D0,
> > but the current code misses the pci_legacy_resume_early() path, so the
> > state remains in PCI_UNKNOWN in that path, and during hiberantion this
> > causes an error for the Mellanox VF driver, which fails to enable
> > MSI-X: pci_msi_supported() is false due to dev->current_state != PCI_D0:
> 
> s/hiberantion/hibernation/

Thanks for spoting this typo! :-)
 
> Actually, it sounds more like "during *resume*, this causes an error",
> so maybe you want s/hiberantion/resume/ instead?

Yes, it's during "resume", and to be more accurate, it happens during the
"resume" of the "thaw" phase: when we run "echo disk > /sys/power/state",
first the kernel "freezes" all the devices and create a hibernation image, then
the kernel "thaws" the devices including the disk/NIC, and writes the memory
to the disk and powers down. This patch fixes the error message for the
Mellanox VF driver in this phase. 

When the system starts again, a fresh kernel starts to run, and when the kernel
detects that a hibernation image was saved, the kernel "quiesces" the devices,
and "restores" the devices from the saved image. Here device_resume_noirq()
-> ... -> pci_pm_restore_noirq() -> pci_pm_default_resume_early() ->
pci_power_up() moves the device states back to PCI_D0. This path is not broken
and doesn't need my patch. 

Thanks,
-- Dexuan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
