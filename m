Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 91D821DB155
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 May 2020 13:18:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0B9E78687B;
	Wed, 20 May 2020 11:18:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HBpkVGKVAhWp; Wed, 20 May 2020 11:18:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C95AE86A4D;
	Wed, 20 May 2020 11:18:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 62F4F1BF23B
 for <devel@linuxdriverproject.org>; Wed, 20 May 2020 11:18:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 53F7B8639F
 for <devel@linuxdriverproject.org>; Wed, 20 May 2020 11:18:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X0cLEP4GOjMQ for <devel@linuxdriverproject.org>;
 Wed, 20 May 2020 11:18:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D9BBF86365
 for <devel@driverdev.osuosl.org>; Wed, 20 May 2020 11:18:34 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5420E207D3;
 Wed, 20 May 2020 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589973514;
 bh=xmiH2GGliKbCenb8wGbOl9pYxqp6+Trt9CCWyk2HTwI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IhiEU8SY37AE1P/HERI2SLcU+kpzoOmeItXJ2Eln5Ba6O51DNplk1bUkWV/xwjvQr
 asFO7keRVuT36C/KWtC2aqI8XwhX900YdevBzIrGRRYnTufGJdaQXU2MSlZ5hgJc9a
 d3fSCT125YpY1xmZO57i08prruyQ91JM7BZ+N9iU=
Date: Wed, 20 May 2020 13:18:30 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH] media: ipu3: add a module to probe sensors via ACPI
Message-ID: <20200520131830.3ff45919@coco.lan>
In-Reply-To: <20200520082608.GV20066@paasikivi.fi.intel.com>
References: <12fbe3f5c6a16c5f3447adbc09fe27ceb2b16823.1589625807.git.mchehab+huawei@kernel.org>
 <20200517103659.GS17578@paasikivi.fi.intel.com>
 <20200520094400.5137e7f2@coco.lan>
 <20200520082608.GV20066@paasikivi.fi.intel.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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

Em Wed, 20 May 2020 11:26:08 +0300
Sakari Ailus <sakari.ailus@linux.intel.com> escreveu:

> Hi Mauro,
> 
> On Wed, May 20, 2020 at 09:44:00AM +0200, Mauro Carvalho Chehab wrote:
> > Hi Sakari,
> > 
> > Em Sun, 17 May 2020 13:36:59 +0300
> > Sakari Ailus <sakari.ailus@linux.intel.com> escreveu:
> >   
> > > Hi Mauro,
> > > 
> > > Thanks for the patch.  
> > 
> > Thanks for reviewing it.
> >   
> > > 
> > > On Sat, May 16, 2020 at 12:43:39PM +0200, Mauro Carvalho Chehab wrote:  
> > > > On devices without ACPI, or which ACPI is not prepared to
> > > > export sensor data via DT, we need a different probing
> > > > method.
> > > > 
> > > > This little driver adds initial support to probe the
> > > > sensors found on a Dell Latitude 7285.
> > > > 
> > > > For now, it just detects the hardware and use request_module()
> > > > to load a sensor driver.
> > > > 
> > > > In the specific case of this device, the ACPI DTST dable
> > > > describes 2 camera sensors for this module, but the
> > > > current upstream doesn't have yet drivers for such
> > > > sensors. So, this patch just detects the PMIC used on
> > > > this device and tries to load a sensor.
> > > > 
> > > > Once the sensor gets added, some additional code will
> > > > be needed to pass via platform_data other details, like
> > > > callbacks for PMIC's command to turn the sensor on/off
> > > > and other sensor-specific settings.
> > > > 
> > > > The idea of this patch was inspired on how the sensors
> > > > are probed by the staging atomisp driver.
> > > > 
> > > > The current result of this driver with the Dell
> > > > Latitude 7285 is:
> > > > 
> > > > 	ipu3_acpi i2c-INT3477:00: ipu3_acpi_probe: ACPI detected it on bus ID=LNK1, HID=INT3477
> > > > 	ipu3_acpi i2c-INT3477:00: Found DMI entry for 'Latitude 7285' with sensor INT3477
> > > > 	ipu3_acpi i2c-INT3477:00: Loading sensor module ov8858
> > > > 	ipu3_acpi i2c-OVTI9234:00: ipu3_acpi_probe: ACPI detected it on bus ID=LNK2, HID=OVTI9234
> > > > 	ipu3_acpi i2c-OVTI9234:00: Found DMI entry for 'Latitude 7285' with sensor OVTI9234
> > > > 	ipu3_acpi i2c-OVTI9234:00: Loading sensor module ov9234
> > > > 
> > > > Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>    
> > 
> > With regards to the approach this patch took: it is currently
> > incomplete: the I2C core doesn't currently allow to have two 
> > drivers for the same I2C address at the same bus. So, if we end by having
> > some ancillary drivers to help the I2C core to work with media devs,
> > we may need some changes at I2C core (or to use an I2C virtual mux).  
> 
> Are the two really on the same bus with the same address? Both sensors
> support address selection in hardware...

What I tried to do is to have an ACPI-probed driver loading a "normal" 
non-ACPI driver.

> > > > +/*
> > > > + * Should list known sensor devices found at DSDT table as "CAM0", "CAM1", ...
> > > > + *
> > > > + * The table below is probably incomplete. It came from the DSDT table found
> > > > + * at a Dell Latitude 7285 (Method HCID).
> > > > + */
> > > > +static const struct acpi_device_id ipu3_acpi_acpi_match[] = {
> > > > +	{"INT3471"},
> > > > +	{"INT33BE"},
> > > > +	{"INT3476"},
> > > > +	{"INT3477"},
> > > > +	{"INT3474"},
> > > > +	{"INT3473"},
> > > > +	{"INT3475"},
> > > > +	{"INT3478"},
> > > > +	{"INT3479"},
> > > > +	{"INT347A"},
> > > > +	{"INT347B"},
> > > > +	{"OVTI9234"},
> > > > +	{"OVTI9734"},
> > > > +	{"OVTI8856"},
> > > > +	{"OVTIF860"},
> > > > +	{},
> > > > +};
> > > > +MODULE_DEVICE_TABLE(acpi, ipu3_acpi_acpi_match);    
> > > 
> > > Instead of creating a new way to probe drivers on ACPI systems, please add
> > > the appropriate ACPI device IDs to the respective drivers. E.g.
> > > drivers/media/i2c/imx319.c implements this.  
> > 
> > The ACPI code at imx319 is incomplete. I mean, it will only tell the I2C
> > core that the driver should be probed via ACPI, but it tells nothing
> > how to power up the device. It just assumes that the driver will work
> > using pm_runtime support.  
> 
> The driver is complete; this is how it is supposed to work with ACPI.
> 
> Also note that there are systems where this works at the moment, using the
> the above ACPI HIDs. Those must not be broken.

If Atomisp driver would be using the sensor, what's there won't make
it work.

For example, this is the sensor driver for the device I'm using here to
test the atomisp driver:

	https://git.linuxtv.org/media_tree.git/tree/drivers/staging/media/atomisp/i2c/atomisp-ov2680.c

It does contain an ACPI table at the end:

	static const struct acpi_device_id ov2680_acpi_match[] = {
		{"XXOV2680"},
		{"OVTI2680"},
		{},
	};
	MODULE_DEVICE_TABLE(acpi, ov2680_acpi_match);

Which causes the driver to be properly probed via ACPI.

However, this sensor driver (and all other sensor drivers meant to work
with ISP2xxx chipsets) require this ancillary code:

	https://git.linuxtv.org/media_tree.git/tree/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c

Which parses the BIOS shipped on such devices.

The code there needs to identify if one of those I2C PMIC drivers
were also loaded:

	#define PMIC_ACPI_AXP		"INT33F4:00"	/* XPower AXP288 PMIC */
	#define PMIC_ACPI_TI		"INT33F5:00"	/* Dollar Cove TI PMIC */
	#define PMIC_ACPI_CRYSTALCOVE	"INT33FD:00"	/* Crystal Cove PMIC */

As those 3 different PMICs may control the sensor power up/down.
Some devices may also use a regulator driver. The ancillary routines
have some logic to detect the PMIC type (with can very from different
versions of the Atom CPU).

The driver also need to get sensor-specific platform data.

For the sensor I have, it need those:

	{"OVTI2680:00_CsiPort", "1"},
	{"OVTI2680:00_CsiLanes", "1"},
	{"OVTI2680:00_CsiFmt", "15"},
	{"OVTI2680:00_CsiBayer", "0"},
	{"OVTI2680:00_CamClk", "1"},

From some tests and from the comments at the atomisp driver, there are
3 ways used by BIOS developers to store those information:

1) via this EFI variable:

	#define GMIN_CFG_VAR_EFI_GUID EFI_GUID(0xecb54cd9, 0xe5ae, 0x4fdc, \
					        0xa9, 0x71, 0xe8, 0x77,     \
					        0x75, 0x60, 0x68, 0xf7)

2) by reading _DSM from the camera information:

        Device (CAM1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, "OVTI2680")  // _HID: Hardware ID
	...
            Name (C1CD, Buffer (0x0220){})
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg0 == ToUUID ("dc2f6c4f-045b-4f1d-97b9-882a6860a4be")))
                {
                    Local0 = Package (0x12)
                        {
                            "CamId", 
                            "ov2680", 
                            "CamType", 
                            "1", 
                            "CsiPort", 
                            "0", 
                            "CsiLanes", 
                            "1", 
                            "CsiFmt", 
                            "15", 
                            "CsiBayer", 
                            "0", 
                            "CamClk", 
                            "1", 
                            "Regulator1p8v", 
                            "0", 
                            "Regulator2p8v", 
                            "0"
                        }
                    Return (Local0)
                }
	...

   (The current version of atomisp driver doesn't parse it yet)

3) Still, some devices don't have neither of them, so the driver needs
   to have their values hardcoded.

It sounds to me that (2) is actually an evolution of (1). So, older BIOS
would use GMIN_CFG_VAR_EFI_GUID way, while newer would use the _DSM
way, and others may just hardcode it inside the driver or at the
Windows .INF files.

So we need some code to parse device-specific ACPI stuff.

As I mentioned above, in the case of ISP2xxx, a single parser is used
for all atomisp-based devices.

So, except if all BIOS manufacturers started to provide an unified
reliable way to store camera data for IPU3 and newer versions
(with I seriously doubt), we'll need to add a parser for those
ACPI-specific things.

Such code could be added directly at the sensor drivers, but I
suspect that this will generate a lot of code duplication, making
it very painful to maintain.

So, IMHO, we should work on some code that would be parsing it
outside the sensor driver itself.

> 
> > 
> > It also doesn't tell how to get device-specific platform data from
> > the BIOS (with is machine-specific).  
> 
> In some systems that is the case, yes. It means system specific drivers or
> fixups at least to some extent.
> 
> > 
> > Also, at least in the case of the atomisp approach, a single code
> > to parse BIOS for devices with ISP2300/ISP2400/ISP2401/ISP2500 should
> > work with all sensors supported by those models.
> > 
> > Copying those inside all sensor drivers is probably a bad idea.
> > I mean, we should likely need a core support for parsing it, as
> > the code is the same for a given set of PCI IDs.  
> 
> Agreed. The more we can keep that away from the sensor drivers, the better.
> 
> > 
> > -
> > 
> > As the atomisp driver is now minimally working, my plan is to merge
> > it upstream, under staging.  
> 
> How is it "minimally working" for you?

- Atomisp driver probes fine and detects its associated hardware;
- Atomisp firmware code loads and runs properly (as far as we were
  able to test it);
- Sensor and ISP are properly powered up;
- v4l2-ctl and qv4l2 can read from device's controls;
- If set to the sensor resolution and format, streaming causes
  the driver code to receive IRQ as frame buffers arrive;

There are still lots of issues:

- the memory allocation code there is very suspicious, and
  it cause troubles, depending on what userspace does
  (for example, using the scaler);

- right now, VIDIOC_DQBUF doesn't return anything (using
  a very simple app with the absolute minimum set of ioctls
  needed to start streaming).
  Yet, the driver receives IRQs notifying that new frames
  arrived. So, from the chipset PoV, streaming is working.
  I suspect that the current driver is waiting for userspace
  to receive V4L2 events before releasing buffers via DQBUF.

> > Before going ahead and fixing other troubles there at atomisp,
> > I may try to port the needed ACPI bits from the atomisp-ov2880 
> > staging driver into the mainline one. This should be an interesting 
> > exercise to check what's missing there.
> > 
> > Even if the atomisp never gets out of staging, doing that will help
> > to identify what it would take for a sensor to be able to work with
> > more than one different ISP. As as result, we may design something
> > that will properly support ACPI at the media subsystem.  
> 
> Hmm. Generally ACPI based devices are supported, there are no issues as
> such there. The ACPI tables in some systems, though, are a problem.

As I said, the problem is not probing the sensor via ACPI, but, instead,
to be able receive platform-specific data.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
