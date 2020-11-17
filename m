Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 960352B5B16
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Nov 2020 09:38:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0F97685BBD;
	Tue, 17 Nov 2020 08:38:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ckq-houucbD; Tue, 17 Nov 2020 08:38:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D03A285F8D;
	Tue, 17 Nov 2020 08:38:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EE27A1BF341
 for <devel@linuxdriverproject.org>; Tue, 17 Nov 2020 08:38:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EA00987104
 for <devel@linuxdriverproject.org>; Tue, 17 Nov 2020 08:38:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pY7i-BWr3Fb6 for <devel@linuxdriverproject.org>;
 Tue, 17 Nov 2020 08:38:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0179A87102
 for <devel@driverdev.osuosl.org>; Tue, 17 Nov 2020 08:38:36 +0000 (UTC)
Received: from coco.lan (ip5f5ad5cc.dynamic.kabel-deutschland.de
 [95.90.213.204])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E6C224671;
 Tue, 17 Nov 2020 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605602316;
 bh=bhWYF4jKpjhdrI34GVPV7kwXAMqL8l607VbvTjslYBw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=wOSj/vB5MvBoER2dul+k29HA9Cxjkr/leSPSXkJ8d+p4x6ZHX1ctLeAnRYyEhbQNj
 fPFo4TIPNFHhwIRjCj6SYyQ9A7dh2FJ1xeDM+7AAkhHvLv9eb2NtyiQ+sVy88A92Fv
 y0HdW2xOxALoqiqQchZCYJChoMJXE+4GkU05TQME=
Date: Tue, 17 Nov 2020 09:38:30 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 4/8] regulator: hi6421v600-regulator: move it from staging
Message-ID: <20201117093830.29861118@coco.lan>
In-Reply-To: <20201116183833.GC4739@sirena.org.uk>
References: <cover.1605530560.git.mchehab+huawei@kernel.org>
 <471362653f22a8748202c55babd2b462056a5797.1605530560.git.mchehab+huawei@kernel.org>
 <20201116183833.GC4739@sirena.org.uk>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Manivannan Sadhasivam <mani@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mayulong <mayulong1@huawei.com>, YueHaibing <yuehaibing@huawei.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linuxarm@huawei.com,
 John Stultz <john.stultz@linaro.org>, mauro.chehab@huawei.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Mon, 16 Nov 2020 18:38:33 +0000
Mark Brown <broonie@kernel.org> escreveu:

> On Mon, Nov 16, 2020 at 01:59:30PM +0100, Mauro Carvalho Chehab wrote:
> 
> > This driver is ready for mainstream. Move it out of staging.  
> 
> There's quite a few issues here, to be honest I'm disappointed some of
> them weren't caught during staging review, this needs fairly substantial
> work and there's signs that this also applies to at least the MFD
> portion.
> 
> This also appears to be missing a DT binding document, binding
> documentation is required for anything with DT support.

The DT binding is documented on patch 3/8, together with MFD.

As there's just one compatible for MFD and regulators altogether,
I opted to have just one DT binding document for both.

> 
> > +config REGULATOR_HI6421V600
> > +	tristate "HiSilicon Hi6421v600 PMIC voltage regulator support"
> > +	depends on MFD_HI6421_SPMI && OF
> > +	depends on REGULATOR  
> 
> This is inside an if REGULATOR block, as with all the other regulator
> drivers it doesn't need a dependency on REGULATOR.

I'll drop it. This was needed while this was inside staging.

> 
> > --- /dev/null
> > +++ b/drivers/regulator/hi6421v600-regulator.c
> > @@ -0,0 +1,478 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Device driver for regulators in Hisi IC  
> 
> Please make the entire comment a C++ one so things look more
> intentional.

Ok.

> 
> > +#include <linux/delay.h>
> > +#include <linux/device.h>
> > +#include <linux/err.h>
> > +#include <linux/io.h>
> > +#include <linux/mfd/hi6421-spmi-pmic.h>
> > +#include <linux/module.h>
> > +#include <linux/of_address.h>
> > +#include <linux/of_device.h>
> > +#include <linux/of.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/regmap.h>
> > +#include <linux/regulator/driver.h>
> > +#include <linux/regulator/machine.h>
> > +#include <linux/regulator/of_regulator.h>
> > +#include <linux/seq_file.h>
> > +#include <linux/slab.h>
> > +#include <linux/spmi.h>
> > +#include <linux/time.h>
> > +#include <linux/uaccess.h>  
> 
> Are we sure about *all* these includes?

I'll double check and do some cleanups.

> 
> > +#define rdev_dbg(rdev, fmt, arg...)	\
> > +		 pr_debug("%s: %s: " fmt, (rdev)->desc->name, __func__, ##arg)  
> 
> If it is useful to copy this then put it in a header rather than
> cut'n'pasting it.  I'm not sure I see a pressing need for most of the
> trace here, it looks to be duplicating a lot of things the core does for
> you.

I'll cleanup the debug messages, and place this on a header.

Due to SPMI bus, the standard debug macros don't work fine on
this file.

> 
> > +static DEFINE_MUTEX(enable_mutex);  
> 
> Drivers shouldn't be declaring global variables, if this is required it
> should be allocated in driver data.

I'll try to see a better place for this, but in this case, the
mutex should be global anyway, as the access to the SPMI bus
should be serialized.

I suspect that a change like that will likely require touching
the SPMI bus core, but I can't foresee the side effects to the
Qualcomm SPMI drivers that would likely have their own ways
to serialize access to the bus.

> 
> > +/*
> > + * helper function to ensure when it returns it is at least 'delay_us'
> > + * microseconds after 'since'.
> > + */
> > +
> > +static int hi6421_spmi_regulator_is_enabled(struct regulator_dev *rdev)  
> 
> The helper function appears to have been removed?

I'll drop the comment.

> 
> > +{
> > +	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
> > +	struct hi6421_spmi_pmic *pmic = sreg->pmic;
> > +	u32 reg_val;
> > +
> > +	reg_val = hi6421_spmi_pmic_read(pmic, rdev->desc->enable_reg);
> > +
> > +	rdev_dbg(rdev,
> > +		 "enable_reg=0x%x, val= 0x%x, enable_state=%d\n",
> > +		 rdev->desc->enable_reg,
> > +		 reg_val, (reg_val & rdev->desc->enable_mask));
> > +
> > +	return ((reg_val & rdev->desc->enable_mask) != 0);
> > +}  
> 
> It looks like it would be less code overall to just implement a regmap
> for the MFD, even if it were only used in this driver - almost
> everything in here is just a carbon copy of standard helpers that the
> core provides for regmap devices.  Doing it in the MFD would be more
> idiomatic for everything though.

I tried to use regmap for this driver while porting it from Linaro's
OOT to upstream, but it turns that adding support for it is not trivial.

I suspect that, just like I2C has their own set of regmap functions
(regmap_init_i2c, devm_regmap_init_i2c), if we want to properly support
regmap, we need first to add a SPMI variant to it, as the locking
should be bus-aware.

> 
> > +static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
> > +{
> > +	struct hi6421v600_regulator *sreg = rdev_get_drvdata(rdev);
> > +	struct hi6421_spmi_pmic *pmic = sreg->pmic;
> > +
> > +	/* cannot enable more than one regulator at one time */
> > +	mutex_lock(&enable_mutex);
> > +	usleep_range(HISI_REGS_ENA_PROTECT_TIME,
> > +		     HISI_REGS_ENA_PROTECT_TIME + 1000);
> > +
> > +	/* set enable register */
> > +	rdev_dbg(rdev,
> > +		 "off_on_delay=%d us, enable_reg=0x%x, enable_mask=0x%x\n",
> > +		 rdev->desc->off_on_delay, rdev->desc->enable_reg,
> > +		 rdev->desc->enable_mask);
> > +
> > +	hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
> > +			     rdev->desc->enable_mask,
> > +			     rdev->desc->enable_mask);  
> 
> This is the one operation which is doing anything unusual and which I'd
> expect to be open coded in the driver - obviously this is a pretty
> simplistic implementation but it will work though as indicated above it
> shouldn't be using a global, the mutex should be in driver data.  I
> guess you could use the mutex to protect a timestamp and use that to
> figure out if a delay is actually needed?

I'll rework this logic.

> > +static int hi6421_spmi_dt_parse(struct platform_device *pdev,
> > +				struct hi6421v600_regulator *sreg,
> > +			 struct regulator_desc *rdesc)
> > +{
> > +	struct device *dev = &pdev->dev;
> > +	struct device_node *np = dev->of_node;
> > +	unsigned int *v_table;
> > +	int ret;
> > +
> > +	ret = of_property_read_u32(np, "reg", &rdesc->enable_reg);
> > +	if (ret) {
> > +		dev_err(dev, "missing reg property\n");
> > +		return ret;
> > +	}
> > +
> > +	ret = of_property_read_u32(np, "vsel-reg", &rdesc->vsel_reg);  
> 
> There is no way this stuff should be being parsed out of DT, we should
> know the register map for the device and what regulators it has based
> purely off knowing what device we have.  Baking the register map into
> the ABI is bad practice, it prevents us from improving our support for
> the hardware without going and updating people's DTs.

Well, I can move the existing registers out of DT, but, as I don't
have any datasheet for this device, it means that I can implement
there only a subset of the available LDOs. So, from the 36 LDOs that
this chip support, we only know the registers for 8 of them:

	ldo3, ldo4, ldo9, ldo15, ldo16, ldo17, ldo33 and ldo34.

> > +	/*
> > +	 * Not all regulators work on idle mode
> > +	 */
> > +	ret = of_property_read_u32(np, "idle-mode-mask", &sreg->eco_mode_mask);
> > +	if (ret) {
> > +		dev_dbg(dev, "LDO doesn't support economy mode.\n");
> > +		sreg->eco_mode_mask = 0;
> > +		sreg->eco_uA = 0;
> > +	} else {
> > +		ret = of_property_read_u32(np, "eco-microamp", &sreg->eco_uA);  
> 
> There's no conditional code to not register the mode operations if the
> mode information is not available (and again this should be done based 
> on knowing the properties of the device, this is unlikely to be system
> dependent).

This is the same case as before: as we don't have any datasheets,
I only know what's there at the DT for just one device (Hikey 970).

Again, we could hardcode those assuming Hikey 970 settings, but,
if some other device using the same chip will ever be added, and
they use some different configuration then we may face some
backward-compatibility issues.

> 
> > +static int hi6421_spmi_regulator_probe_ldo(struct platform_device *pdev,
> > +                                          struct device_node *np,
> > +                                          struct hi6421_spmi_pmic *pmic)
> > +{  
> 
> This probe code looks very different to other regulator drivers, this
> alone should have been a warning that the driver needs some substantial
> refactoring here.  As indicated information about what regulators are
> present on devices and their properties should be in the driver not the
> DT, the driver should just be able to register them unconditionally and
> use of_match and regulators_node to allow the core to find any
> constraints that are provided by the platform.

(already commented on a separate e-mail)

> 
> > +	constraint->valid_modes_mask = REGULATOR_MODE_NORMAL;
> > +	if (sreg->eco_mode_mask) {
> > +		constraint->valid_modes_mask |= REGULATOR_MODE_IDLE;
> > +		constraint->valid_ops_mask |= REGULATOR_CHANGE_MODE;
> > +	}  
> 
> This is absolutely not OK, a regulator driver should *not* be modifying
> the constraints that the machine has set.  If it is safe to change modes
> on a platform and the system integrator wants to do that then they will
> set the constraints appropriately, there is no way the regulator driver
> can tell what is appropriate on a given system.  The fact that the
> driver is including machine.h at all ought to have been an indicator
> that there's an abstraction problem here.

Ok. Where such constraints should be instead? at the Hikey 970 DT
file?

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
