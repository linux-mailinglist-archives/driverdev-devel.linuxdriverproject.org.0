Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 661281DAD3F
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 May 2020 10:26:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA69586AB6;
	Wed, 20 May 2020 08:26:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L1P6yKv6zcWs; Wed, 20 May 2020 08:26:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 48B5B86B5A;
	Wed, 20 May 2020 08:26:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 04AFA1BF3BF
 for <devel@linuxdriverproject.org>; Wed, 20 May 2020 08:26:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EE0C9203AE
 for <devel@linuxdriverproject.org>; Wed, 20 May 2020 08:26:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cVk5Nm00VZUI for <devel@linuxdriverproject.org>;
 Wed, 20 May 2020 08:26:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 9ACC8203AB
 for <devel@driverdev.osuosl.org>; Wed, 20 May 2020 08:26:13 +0000 (UTC)
IronPort-SDR: 9CUHGw4unlHDD0a0AaK9zUPhmG72rDt1e2YVrICtbXNyFSRj4QrnqdRFF8xDDzb4KZBq+aHUtL
 EwRt3ZmFFdrQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 01:26:12 -0700
IronPort-SDR: fOdyvZfFoxSsjCLz4GVlgnbsT5Bb9Q9WY5a1hxnX0Ns8PwopbUhSxCNCSEBC4r31H5+87bt0r1
 ZFX3WF85w8Pw==
X-IronPort-AV: E=Sophos;i="5.73,413,1583222400"; d="scan'208";a="253532669"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 01:26:11 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 06D4D20CEF; Wed, 20 May 2020 11:26:09 +0300 (EEST)
Date: Wed, 20 May 2020 11:26:08 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH] media: ipu3: add a module to probe sensors via ACPI
Message-ID: <20200520082608.GV20066@paasikivi.fi.intel.com>
References: <12fbe3f5c6a16c5f3447adbc09fe27ceb2b16823.1589625807.git.mchehab+huawei@kernel.org>
 <20200517103659.GS17578@paasikivi.fi.intel.com>
 <20200520094400.5137e7f2@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520094400.5137e7f2@coco.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, Bingbu Cao <bingbu.cao@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tian Shu Qiu <tian.shu.qiu@intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Mauro,

On Wed, May 20, 2020 at 09:44:00AM +0200, Mauro Carvalho Chehab wrote:
> Hi Sakari,
> 
> Em Sun, 17 May 2020 13:36:59 +0300
> Sakari Ailus <sakari.ailus@linux.intel.com> escreveu:
> 
> > Hi Mauro,
> > 
> > Thanks for the patch.
> 
> Thanks for reviewing it.
> 
> > 
> > On Sat, May 16, 2020 at 12:43:39PM +0200, Mauro Carvalho Chehab wrote:
> > > On devices without ACPI, or which ACPI is not prepared to
> > > export sensor data via DT, we need a different probing
> > > method.
> > > 
> > > This little driver adds initial support to probe the
> > > sensors found on a Dell Latitude 7285.
> > > 
> > > For now, it just detects the hardware and use request_module()
> > > to load a sensor driver.
> > > 
> > > In the specific case of this device, the ACPI DTST dable
> > > describes 2 camera sensors for this module, but the
> > > current upstream doesn't have yet drivers for such
> > > sensors. So, this patch just detects the PMIC used on
> > > this device and tries to load a sensor.
> > > 
> > > Once the sensor gets added, some additional code will
> > > be needed to pass via platform_data other details, like
> > > callbacks for PMIC's command to turn the sensor on/off
> > > and other sensor-specific settings.
> > > 
> > > The idea of this patch was inspired on how the sensors
> > > are probed by the staging atomisp driver.
> > > 
> > > The current result of this driver with the Dell
> > > Latitude 7285 is:
> > > 
> > > 	ipu3_acpi i2c-INT3477:00: ipu3_acpi_probe: ACPI detected it on bus ID=LNK1, HID=INT3477
> > > 	ipu3_acpi i2c-INT3477:00: Found DMI entry for 'Latitude 7285' with sensor INT3477
> > > 	ipu3_acpi i2c-INT3477:00: Loading sensor module ov8858
> > > 	ipu3_acpi i2c-OVTI9234:00: ipu3_acpi_probe: ACPI detected it on bus ID=LNK2, HID=OVTI9234
> > > 	ipu3_acpi i2c-OVTI9234:00: Found DMI entry for 'Latitude 7285' with sensor OVTI9234
> > > 	ipu3_acpi i2c-OVTI9234:00: Loading sensor module ov9234
> > > 
> > > Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>  
> 
> With regards to the approach this patch took: it is currently
> incomplete: the I2C core doesn't currently allow to have two 
> drivers for the same I2C address at the same bus. So, if we end by having
> some ancillary drivers to help the I2C core to work with media devs,
> we may need some changes at I2C core (or to use an I2C virtual mux).

Are the two really on the same bus with the same address? Both sensors
support address selection in hardware...

> 
> > ...
> > 
> > > +/*
> > > + * Should list known sensor devices found at DSDT table as "CAM0", "CAM1", ...
> > > + *
> > > + * The table below is probably incomplete. It came from the DSDT table found
> > > + * at a Dell Latitude 7285 (Method HCID).
> > > + */
> > > +static const struct acpi_device_id ipu3_acpi_acpi_match[] = {
> > > +	{"INT3471"},
> > > +	{"INT33BE"},
> > > +	{"INT3476"},
> > > +	{"INT3477"},
> > > +	{"INT3474"},
> > > +	{"INT3473"},
> > > +	{"INT3475"},
> > > +	{"INT3478"},
> > > +	{"INT3479"},
> > > +	{"INT347A"},
> > > +	{"INT347B"},
> > > +	{"OVTI9234"},
> > > +	{"OVTI9734"},
> > > +	{"OVTI8856"},
> > > +	{"OVTIF860"},
> > > +	{},
> > > +};
> > > +MODULE_DEVICE_TABLE(acpi, ipu3_acpi_acpi_match);  
> > 
> > Instead of creating a new way to probe drivers on ACPI systems, please add
> > the appropriate ACPI device IDs to the respective drivers. E.g.
> > drivers/media/i2c/imx319.c implements this.
> 
> The ACPI code at imx319 is incomplete. I mean, it will only tell the I2C
> core that the driver should be probed via ACPI, but it tells nothing
> how to power up the device. It just assumes that the driver will work
> using pm_runtime support.

The driver is complete; this is how it is supposed to work with ACPI.

Also note that there are systems where this works at the moment, using the
the above ACPI HIDs. Those must not be broken.

> 
> It also doesn't tell how to get device-specific platform data from
> the BIOS (with is machine-specific).

In some systems that is the case, yes. It means system specific drivers or
fixups at least to some extent.

> 
> Also, at least in the case of the atomisp approach, a single code
> to parse BIOS for devices with ISP2300/ISP2400/ISP2401/ISP2500 should
> work with all sensors supported by those models.
> 
> Copying those inside all sensor drivers is probably a bad idea.
> I mean, we should likely need a core support for parsing it, as
> the code is the same for a given set of PCI IDs.

Agreed. The more we can keep that away from the sensor drivers, the better.

> 
> -
> 
> As the atomisp driver is now minimally working, my plan is to merge
> it upstream, under staging.

How is it "minimally working" for you?

> 
> Before going ahead and fixing other troubles there at atomisp,
> I may try to port the needed ACPI bits from the atomisp-ov2880 
> staging driver into the mainline one. This should be an interesting 
> exercise to check what's missing there.
> 
> Even if the atomisp never gets out of staging, doing that will help
> to identify what it would take for a sensor to be able to work with
> more than one different ISP. As as result, we may design something
> that will properly support ACPI at the media subsystem.

Hmm. Generally ACPI based devices are supported, there are no issues as
such there. The ACPI tables in some systems, though, are a problem.

-- 
Regards,

Sakari Ailus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
