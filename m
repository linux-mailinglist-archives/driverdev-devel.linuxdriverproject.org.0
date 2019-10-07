Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E35C8CEC40
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Oct 2019 20:57:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 841EA2154A;
	Mon,  7 Oct 2019 18:57:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yM3Swm9gRJbq; Mon,  7 Oct 2019 18:57:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 17E3B204CF;
	Mon,  7 Oct 2019 18:57:52 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A37571BF3EE
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  7 Oct 2019 18:57:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9B7C92046D
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  7 Oct 2019 18:57:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SLlIXAwoiAJC
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  7 Oct 2019 18:57:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from APC01-SG2-obe.outbound.protection.outlook.com
 (mail-eopbgr1310121.outbound.protection.outlook.com [40.107.131.121])
 by silver.osuosl.org (Postfix) with ESMTPS id D75A7203F7
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  7 Oct 2019 18:57:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cnoAuCuU5iiyu+FvHWOat7bQh+To8Ev2xBkCYFYX2oex0ojAPk9vrg7aJdrdvxw5CkutA6h27zcKX/0toVTnumO1JihOzi9RPoU5b+NxlnbdDQ7BWfBTnmP0Vd7FXjWuRS2Sb/AJ68Z26xcN42AeKpjdMqTPLmuftXC4lEmQ7iP5gwyoxHwCXpgFuZZRCZuMirENDRu1j4Oc5QfbZsMpbIIAL6MjYLk9veDju477Ei4FUEsMbdORTd5bvkQ5UmgHVnZAxMIRpJGyJs5Q/hDUD4i7JCB0oyYsgB9+OYtXqKi83VM2dEzSJjM73GyaVZx+3WWWDRWRTO5A8mlvTKUa4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KxoqGK84eMrAv8yOZ6WvCDlnwhKQS/d7aPRzIFy6ffg=;
 b=bVqQkstc1Ef45sR8jCjszoY/NyPOnNXgGqw9HjmxnQV2SbkVI/1Jbf8DikGloUzd6loWviqIfWJKka8wsQ61U94RxLJlxc4gEvAQdulyaNDmt9/49K4wNXLJNeSkocp6p+xqXdMzowmU4qokj2oFu56jqZ8EYAyJSWCJAbVBIwWPxuQaPvvZ8iCJeKQlPID1ywScOtp+oLvSXxY40Jgk4E9sc7r03YlQwKhURMD3TYjr9AAmPf6UgJs4LWCI3BxRvAPyu66Dfv5x9ljPhL4obD1IIo7gmKboj3M0tFe1+0N86s2vGivmzSK/ZxoaKMytCnAwAfkRo/I4cSNw0OFMhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KxoqGK84eMrAv8yOZ6WvCDlnwhKQS/d7aPRzIFy6ffg=;
 b=bth3kC50hjrl7Tky59UBoBTPVS661UR8BPWFzTFL4OkPyoqKF1ljeDN6yNmUKwaqqQzgEetfrCseRleh948mtLJ2YPcBiXKx5mK9hr4tLtZAigUIpn0gZtuKSAs5fSDFgrdStaoauXQdG0IdntP2q1iqbF15/utsTc9I1orCQFU=
Received: from PU1P153MB0169.APCP153.PROD.OUTLOOK.COM (10.170.189.13) by
 PU1P153MB0203.APCP153.PROD.OUTLOOK.COM (52.133.194.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.11; Mon, 7 Oct 2019 18:57:39 +0000
Received: from PU1P153MB0169.APCP153.PROD.OUTLOOK.COM
 ([fe80::fc44:a784:73e6:c1c2]) by PU1P153MB0169.APCP153.PROD.OUTLOOK.COM
 ([fe80::fc44:a784:73e6:c1c2%7]) with mapi id 15.20.2367.004; Mon, 7 Oct 2019
 18:57:39 +0000
From: Dexuan Cui <decui@microsoft.com>
To: Bjorn Helgaas <helgaas@kernel.org>, "Rafael J. Wysocki"
 <rafael.j.wysocki@intel.com>
Subject: RE: [PATCH v2] PCI: PM: Move to D0 before calling
 pci_legacy_resume_early()
Thread-Topic: [PATCH v2] PCI: PM: Move to D0 before calling
 pci_legacy_resume_early()
Thread-Index: AdVSPER5d22rbcvgTV28JV77HSffhgq1j6kAAAuTThA=
Date: Mon, 7 Oct 2019 18:57:38 +0000
Message-ID: <PU1P153MB016996765F9BB827256D05DEBF9B0@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
References: <KU1P153MB016637CAEAD346F0AA8E3801BFAD0@KU1P153MB0166.APCP153.PROD.OUTLOOK.COM>
 <20191007132414.GA19294@google.com>
In-Reply-To: <20191007132414.GA19294@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=decui@microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-10-07T18:57:35.7748996Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=c4882525-48f5-4a48-9b5c-a0913e3efe36;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=decui@microsoft.com; 
x-originating-ip: [2601:600:a280:7f70:44a6:f3e:a757:ee91]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3abe572f-7505-468e-c5f3-08d74b58398a
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: PU1P153MB0203:|PU1P153MB0203:|PU1P153MB0203:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <PU1P153MB020385FEBA02F7FA8C1F3468BF9B0@PU1P153MB0203.APCP153.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01834E39B7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(396003)(376002)(136003)(346002)(366004)(189003)(199004)(13464003)(54534003)(14444005)(256004)(76116006)(33656002)(99286004)(4326008)(229853002)(71190400001)(71200400001)(66446008)(64756008)(66556008)(6436002)(66476007)(66946007)(9686003)(55016002)(81156014)(81166006)(5660300002)(8936002)(52536014)(6246003)(7416002)(7736002)(305945005)(8676002)(74316002)(54906003)(316002)(22452003)(186003)(6116002)(102836004)(8990500004)(10090500001)(25786009)(6506007)(53546011)(478600001)(486006)(476003)(86362001)(2906002)(46003)(14454004)(446003)(11346002)(7696005)(76176011)(110136005)(10290500003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:PU1P153MB0203;
 H:PU1P153MB0169.APCP153.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a0xm1bFRcZBw6bqIvE+y38Z66eRP1eWgdX4H2yOVXFKN4xQVMz+NmGWVs/gaKuOP9l5CprUnQrzvEqtpSgr9GinGejOq4CyLz9efjRuPYA9P4TeT8yzKdG01J0PbyiaYR4WBQMCNm+Z4LCCty09Fj5819rIFdfS5A6MXMWcww60mRUqAv2aSs2OGg9TpjLYuE5nfNJZBCbeZ2n8dPkU6yHh+owHfT2CNaDDuLJGQecUcTfCTLe+Bg/sgFmFCD0JO4Hq40d437Xdt2MJtnKY7n/JUfnFtMfap5LhUtO56hUQ7JDm2JOnZMsxTQ/vUuc33To9j3iUTn5frwsM4Jyly50Juvm4Soxy95rv7VcTku5j5+6SJ6N48E/xceiv0xrAjXdAfTwJ3mJaG7iYB4qnHqUdnH7rh16vgimxufHvCF3U=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3abe572f-7505-468e-c5f3-08d74b58398a
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2019 18:57:38.6778 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u106Cx2vLaZg/uaamZ+mWDcW/fOpAwG+Tbe4TZ9x5HQq8EFPQ6oClWpBwO1wElq4mvro/iGnFJHgon3BDWrtAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1P153MB0203
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

> -----Original Message-----
> From: Bjorn Helgaas <helgaas@kernel.org>
> Sent: Monday, October 7, 2019 6:24 AM
> To: Dexuan Cui <decui@microsoft.com>
> Cc: lorenzo.pieralisi@arm.com; linux-pci@vger.kernel.org; Michael Kelley
> <mikelley@microsoft.com>; linux-hyperv@vger.kernel.org;
> linux-kernel@vger.kernel.org; driverdev-devel@linuxdriverproject.org; Sasha
> Levin <Alexander.Levin@microsoft.com>; Haiyang Zhang
> <haiyangz@microsoft.com>; KY Srinivasan <kys@microsoft.com>;
> olaf@aepfle.de; apw@canonical.com; jasowang@redhat.com; vkuznets
> <vkuznets@redhat.com>; marcelo.cerri@canonical.com; Stephen Hemminger
> <sthemmin@microsoft.com>; jackm@mellanox.com
> Subject: Re: [PATCH v2] PCI: PM: Move to D0 before calling
> pci_legacy_resume_early()
> 
> On Wed, Aug 14, 2019 at 01:06:55AM +0000, Dexuan Cui wrote:
> >
> > In pci_legacy_suspend_late(), the device state is moved to PCI_UNKNOWN.
> >
> > In pci_pm_thaw_noirq(), the state is supposed to be moved back to PCI_D0,
> > but the current code misses the pci_legacy_resume_early() path, so the
> > state remains in PCI_UNKNOWN in that path. As a result, in the resume
> > phase of hibernation, this causes an error for the Mellanox VF driver,
> > which fails to enable MSI-X because pci_msi_supported() is false due
> > to dev->current_state != PCI_D0:
> >
> > mlx4_core a6d1:00:02.0: Detected virtual function - running in slave mode
> > mlx4_core a6d1:00:02.0: Sending reset
> > mlx4_core a6d1:00:02.0: Sending vhcr0
> > mlx4_core a6d1:00:02.0: HCA minimum page size:512
> > mlx4_core a6d1:00:02.0: Timestamping is not supported in slave mode
> > mlx4_core a6d1:00:02.0: INTx is not supported in multi-function mode,
> aborting
> > PM: dpm_run_callback(): pci_pm_thaw+0x0/0xd7 returns -95
> > PM: Device a6d1:00:02.0 failed to thaw: error -95
> >
> > To be more accurate, the "resume" phase means the "thaw" callbacks which
> > run before the system enters hibernation: when the user runs the command
> > "echo disk > /sys/power/state" for hibernation, first the kernel "freezes"
> > all the devices and creates a hibernation image, then the kernel "thaws"
> > the devices including the disk/NIC, writes the memory to the disk, and
> > powers down. This patch fixes the error message for the Mellanox VF driver
> > in this phase.
> >
> > When the system starts again, a fresh kernel starts to run, and when the
> > kernel detects that a hibernation image was saved, the kernel "quiesces"
> > the devices, and then "restores" the devices from the saved image. In this
> > path:
> > device_resume_noirq() -> ... ->
> >   pci_pm_restore_noirq() ->
> >     pci_pm_default_resume_early() ->
> >       pci_power_up() moves the device states back to PCI_D0. This path is
> > not broken and doesn't need my patch.
> >
> > Signed-off-by: Dexuan Cui <decui@microsoft.com>
> 
> This looks like a bugfix for 5839ee7389e8 ("PCI / PM: Force devices to
> D0 in pci_pm_thaw_noirq()") so maybe it should be marked for stable as
> 5839ee7389e8 was?
> 
> Rafael, could you confirm?
> 
> > ---
> >
> > changes in v2:
> > 	Updated the changelog with more details.
> >
> >  drivers/pci/pci-driver.c | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
> > index 36dbe960306b..27dfc68db9e7 100644
> > --- a/drivers/pci/pci-driver.c
> > +++ b/drivers/pci/pci-driver.c
> > @@ -1074,15 +1074,16 @@ static int pci_pm_thaw_noirq(struct device
> *dev)
> >  			return error;
> >  	}
> >
> > -	if (pci_has_legacy_pm_support(pci_dev))
> > -		return pci_legacy_resume_early(dev);
> > -
> >  	/*
> >  	 * pci_restore_state() requires the device to be in D0 (because of MSI
> >  	 * restoration among other things), so force it into D0 in case the
> >  	 * driver's "freeze" callbacks put it into a low-power state directly.
> >  	 */
> >  	pci_set_power_state(pci_dev, PCI_D0);
> > +
> > +	if (pci_has_legacy_pm_support(pci_dev))
> > +		return pci_legacy_resume_early(dev);
> > +
> >  	pci_restore_state(pci_dev);
> >
> >  	if (drv && drv->pm && drv->pm->thaw_noirq)
> > --
> > 2.19.1
> >

Added Rafael to "To".

Thanks,
-- Dexuan

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
