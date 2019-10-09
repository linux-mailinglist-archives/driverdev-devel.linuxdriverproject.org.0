Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03912D04C8
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 02:30:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0166B882E3;
	Wed,  9 Oct 2019 00:30:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X-3au4K1HghN; Wed,  9 Oct 2019 00:30:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E62BB882A1;
	Wed,  9 Oct 2019 00:30:31 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 117F41BF9B4
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 00:30:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C56B01FC71
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 00:30:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id msKh9NiGxcFF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 00:30:27 +0000 (UTC)
X-Greylist: delayed 00:14:09 by SQLgrey-1.7.6
Received: from APC01-HK2-obe.outbound.protection.outlook.com
 (mail-eopbgr1300119.outbound.protection.outlook.com [40.107.130.119])
 by silver.osuosl.org (Postfix) with ESMTPS id 1832022BA3
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 00:30:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FunGi9ms5KsXNGDxZ9FcdKfCQe65NPVlXqjykOImSwhL7+SGZnGmYQXctSwyuOYOrWWZaRmV5XHaES19m5KFoTFuazfaWNBpvOmEEgGFNPpQg+OaCIDIWTMaERQaFSAQoFKByNgmciMWYHUbSAn+6lJy492IrJRsY7yAW+xohx/AaiVCA8lXcOcPQGTKasAo8JKyHUTsmyQZyU1zlIa7X7djzVQGKeDyY2NlcMPGabgzc0qJdU5UKm7u+HT54oX/5hdhWtLlUcqDtnhIPHKPyhbFvtfzlzxPqC6+qMRqTtpfcdMhZE+gdi79pKvcWROFoRCYb4G43XN903W/cI3UZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Okz/dP8GdW4F/ReC1j1fCe7QOcf6UWvSEb3E/+xKlo=;
 b=ZyHw9X6sU416i84v+F5RGjdxl+EenlYhR8p9ym5xXcZOBDrzZOmPoJ9znYz/iAi1/hKmpnSm0qPaPeoxHT5P2TxG4OxN/YjV0yf2pynr3tun5m2w15LGx26Ep/F4UgEvgYo8ErnuqLfqlL3UQ3b6Tl+Ay3+XCd/JWibkCsTKA8pnD4zumW5gWwhx9HOrlT7EHg7JcRHnhWKIwGdG3BlnwsvlrFwTqgDminBcHt/X8o/2/ubihoOT4hKqlXKY9Y/RXu85jIegRLgW6QgGiB2hpks5Qzz1J/IV0f/xHguBTdYPcwLAk41OG9AV4dsgx+zjVQpAXFXFdQXKLN+VOmfi0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Okz/dP8GdW4F/ReC1j1fCe7QOcf6UWvSEb3E/+xKlo=;
 b=GNk+jMG3pO7eVGwYo76DwIiypOwuL+ypc6tIXjQHkPNIVQePvSDhKwI30d5NfZlW3ndsJ28lIrZA32q/h2CrIcjufWLbT09dinPV0C0ceZfdkLpcYpYJrVxoBxK6j38Dc5uxV4zQRLRpb8bqmb0V5zBLgic4BttCudJ2IKVL+Sw=
Received: from PU1P153MB0169.APCP153.PROD.OUTLOOK.COM (10.170.189.13) by
 PU1P153MB0172.APCP153.PROD.OUTLOOK.COM (10.170.189.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.2; Wed, 9 Oct 2019 00:16:05 +0000
Received: from PU1P153MB0169.APCP153.PROD.OUTLOOK.COM
 ([fe80::fc44:a784:73e6:c1c2]) by PU1P153MB0169.APCP153.PROD.OUTLOOK.COM
 ([fe80::fc44:a784:73e6:c1c2%7]) with mapi id 15.20.2367.004; Wed, 9 Oct 2019
 00:16:05 +0000
From: Dexuan Cui <decui@microsoft.com>
To: Bjorn Helgaas <helgaas@kernel.org>, "Rafael J. Wysocki"
 <rafael.j.wysocki@intel.com>
Subject: RE: [PATCH v2] PCI: PM: Move to D0 before calling
 pci_legacy_resume_early()
Thread-Topic: [PATCH v2] PCI: PM: Move to D0 before calling
 pci_legacy_resume_early()
Thread-Index: AQHVfhJ2d22rbcvgTV28JV77HSffhqdRa4KA
Date: Wed, 9 Oct 2019 00:16:05 +0000
Message-ID: <PU1P153MB0169909FAD3032F462F48E9FBF950@PU1P153MB0169.APCP153.PROD.OUTLOOK.COM>
References: <a2d8ad9f-b59d-57e4-f014-645e7b796cc4@intel.com>
 <20191008195624.GA198287@google.com>
In-Reply-To: <20191008195624.GA198287@google.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=decui@microsoft.com;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-10-09T00:16:02.0523304Z;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_ActionId=2b92351c-f491-4b1f-bb63-d2e14e522426;
 MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=decui@microsoft.com; 
x-originating-ip: [167.220.2.148]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bb3e6445-3631-4549-06b7-08d74c4de078
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: PU1P153MB0172:|PU1P153MB0172:|PU1P153MB0172:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <PU1P153MB0172BB72E8716DC34D2596C1BF950@PU1P153MB0172.APCP153.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 018577E36E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(136003)(346002)(366004)(396003)(39860400002)(199004)(189003)(478600001)(76116006)(7416002)(229853002)(26005)(2906002)(186003)(33656002)(5660300002)(10090500001)(66446008)(486006)(64756008)(6246003)(9686003)(446003)(66556008)(11346002)(66476007)(86362001)(256004)(476003)(14444005)(10290500003)(6436002)(66946007)(99286004)(55016002)(14454004)(22452003)(102836004)(3846002)(316002)(4326008)(6116002)(8990500004)(110136005)(8936002)(6506007)(305945005)(8676002)(81166006)(81156014)(71200400001)(71190400001)(7696005)(66066001)(74316002)(52536014)(25786009)(7736002)(54906003)(76176011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:PU1P153MB0172;
 H:PU1P153MB0169.APCP153.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: f6Z9tdBngugsf0ezBsN6NuSpYu3EcG0fKhzwUlW3RoCbphaN3RiNqA79jPS0hl5CaaYlKQhG83T5XiGAAZqgtZWYO++0dOHhjFiYj+YraMnbQYNtG5oBGfP73688wXimJDsnSeY6X9ZCNwcdzegvZZD9uB/jGDLbbjT2HELoDQOMeCh5J57yu8bv9bhLTuiFS2V+Bz9XRRK+tELokfBuIkNE72Cyxru8Z0fwI6FO5/cK+6yItwkavKazgT4gsoLJ3L7wsho5XLs1+wHIOLtoMLn78vvcO4YUX6h4E+Yk3l2/x8kbqpilGfg81wi/bu+jNa2VAdVEN7Rt8khGqM9/E6nsdE27DgJnr5q8G4Kjbi2c67/RmdHnCvA63wRl+sGJZ58Lzs/cJ7me0VGgzXV1UvJlXju/SnLMbLlMiuDmLjQ=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb3e6445-3631-4549-06b7-08d74c4de078
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2019 00:16:05.3382 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HKrm2PxTEL1ykbFyBPVZCpChngspkL/nZvMqgbzec5e2UkUFqlurSwpCDabroCZiJlggJsecFHxDt7EndouN+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1P153MB0172
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
> Sent: Tuesday, October 8, 2019 12:56 PM
> ...
> Wordsmithing nit: what the patch does is not "fix the error message";
> what it does is fix the *problem*, i.e., the fact that we can't
> operate the device because we can't enable MSI-X.  The message is only
> a symptom.

I totally agree. :-)

> IIUC the relevant part of the system hibernation sequence is:
> 
>   pci_pm_freeze_noirq
>   pci_pm_thaw_noirq
>   pci_pm_thaw
> 
> And the execution flow is:
> 
>   pci_pm_freeze_noirq
>     if (pci_has_legacy_pm_support(pci_dev)) # true for mlx4
>       pci_legacy_suspend_late(dev, PMSG_FREEZE)
> 	pci_pm_set_unknown_state
> 	  dev->current_state = PCI_UNKNOWN  # <---
>   pci_pm_thaw_noirq
>     if (pci_has_legacy_pm_support(pci_dev)) # true
>       pci_legacy_resume_early(dev)          # noop; mlx4 doesn't
> implement
>   pci_pm_thaw                               # returns -95
> EOPNOTSUPP
>     if (pci_has_legacy_pm_support(pci_dev)) # true
>       pci_legacy_resume
> 	drv->resume
> 	  mlx4_resume                       # mlx4_driver.resume (legacy)
> 	    mlx4_load_one
> 	      mlx4_enable_msi_x
> 		pci_enable_msix_range
> 		  __pci_enable_msix_range
> 		    __pci_enable_msix
> 		      if (!pci_msi_supported())
> 			if (dev->current_state != PCI_D0)  # <---
> 			  return 0
> 			return -EINVAL
> 		err = -EOPNOTSUPP
> 		"INTx is not supported ..."
> 
> (These are just my notes; you don't need to put them all into the
> commit message.  I'm just sharing them in case I'm not understanding
> correctly.)

Yes, these notes are accurate.

> > > > > When the system starts again, a fresh kernel starts to run, and when the
> > > > > kernel detects that a hibernation image was saved, the kernel
> "quiesces"
> > > > > the devices, and then "restores" the devices from the saved image. In
> this
> > > > > path:
> > > > > device_resume_noirq() -> ... ->
> > > > >    pci_pm_restore_noirq() ->
> > > > >      pci_pm_default_resume_early() ->
> > > > >        pci_power_up() moves the device states back to PCI_D0. This
> path is
> > > > > not broken and doesn't need my patch.
> > > > >
> 
> The cc list suggests that this might be a fix for a user-reported
> problem.  Is there a launchpad or similar link you could include here?

I guess I'm the first one to notice the issue and there is not any bug link AFAIK.

The hibernation process usually saves the states into a local disk (before the
system is powered off), and the Mellanox NIC is not needed during the process,
so it's not a real issue that the NIC can not work between pci_pm_thaw() and 
power_down(). This may explain why nobody else noticed the issue. I happened
to see the error message, and hence investigated the issue.

> Should this be marked for stable?

I think we should do it.
 
> > > > > --- a/drivers/pci/pci-driver.c
> > > > > +++ b/drivers/pci/pci-driver.c
> > > > > @@ -1074,15 +1074,16 @@ static int pci_pm_thaw_noirq(struct device
> > > > *dev)
> > > > >   			return error;
> > > > >   	}
> > > > >
> > > > > -	if (pci_has_legacy_pm_support(pci_dev))
> > > > > -		return pci_legacy_resume_early(dev);
> > > > > -
> > > > >   	/*
> > > > >   	 * pci_restore_state() requires the device to be in D0 (because
> of MSI
> > > > >   	 * restoration among other things), so force it into D0 in case
> the
> > > > >   	 * driver's "freeze" callbacks put it into a low-power state
> directly.
> > > > >   	 */
> > > > >   	pci_set_power_state(pci_dev, PCI_D0);
> > > > > +
> > > > > +	if (pci_has_legacy_pm_support(pci_dev))
> > > > > +		return pci_legacy_resume_early(dev);
> > > > > +
> > > > >   	pci_restore_state(pci_dev);
> > > > >
> > > > >   	if (drv && drv->pm && drv->pm->thaw_noirq)
> > > > > --
> > > > > 2.19.1
> > > > >
> > The patch looks reasonable to me, but the comment above the
> > pci_set_power_state() call needs to be updated too IMO.
> 
> Hmm.
> 
> 1) pci_restore_state() mainly writes config space, which doesn't
> require the device to be in D0.  The only thing I see that would
> require D0 is the MSI-X MMIO space, so to be more specific, the
> comment could say "restoring the MSI-X *MMIO* state requires the
> device to be in D0".
> 
> But I think you meant some other comment change.  Did you mean
> something along the lines of "a legacy drv->resume_early() callback
> and pci_restore_state() both require the device to be in D0"?
> 
> If something else, maybe you could propose some text?
> 
> 2) I assume pci_pm_thaw_noirq() should leave the device in a
> functionally equivalent state, whether it uses legacy PM or not.  Do
> we want something like the patch below instead?  If we *do* want to
> skip pci_restore_state() for legacy PM, maybe we should add a comment.
> 
> 3) Documentation/power/pci.rst says:
> 
>   ... devices have to be brought back to the fully functional
>   state ...
> 
>   pci_pm_thaw_noirq() ... doesn't put the device into the full power
>   state and doesn't attempt to restore its standard configuration
>   registers.
> 
> That doesn't seem consistent, and it looks like pci_pm_thaw_noirq()
> actually *does* put the device in full power (D0) state and restore
> config registers.

I would leave these questions to Rafael.
 
> diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
> index a8124e47bf6e..30c721fd6bcf 100644
> --- a/drivers/pci/pci-driver.c
> +++ b/drivers/pci/pci-driver.c
> @@ -1068,7 +1068,7 @@ static int pci_pm_thaw_noirq(struct device *dev)
>  {
>  	struct pci_dev *pci_dev = to_pci_dev(dev);
>  	struct device_driver *drv = dev->driver;
> -	int error = 0;
> +	int error;
> 
>  	if (pcibios_pm_ops.thaw_noirq) {
>  		error = pcibios_pm_ops.thaw_noirq(dev);
> @@ -1076,9 +1076,6 @@ static int pci_pm_thaw_noirq(struct device *dev)
>  			return error;
>  	}
> 
> -	if (pci_has_legacy_pm_support(pci_dev))
> -		return pci_legacy_resume_early(dev);
> -
>  	/*
>  	 * pci_restore_state() requires the device to be in D0 (because of MSI
>  	 * restoration among other things), so force it into D0 in case the
> @@ -1087,10 +1084,13 @@ static int pci_pm_thaw_noirq(struct device *dev)
>  	pci_set_power_state(pci_dev, PCI_D0);
>  	pci_restore_state(pci_dev);
> 
> +	if (pci_has_legacy_pm_support(pci_dev))
> +		return pci_legacy_resume_early(dev);
> +
>  	if (drv && drv->pm && drv->pm->thaw_noirq)
> -		error = drv->pm->thaw_noirq(dev);
> +		return drv->pm->thaw_noirq(dev);
> 
> -	return error;
> +	return 0;
>  }
> 
>  static int pci_pm_thaw(struct device *dev)

The only real difference from my patch is that you moved

 +	if (pci_has_legacy_pm_support(pci_dev))
 +		return pci_legacy_resume_early(dev);

to after the line "pci_restore_state(pci_dev);"

This change is good to me, and shoud also resolve the error message I saw.

Thanks,
-- Dexuan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
