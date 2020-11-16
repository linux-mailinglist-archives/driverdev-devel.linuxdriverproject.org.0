Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E84A72B4FEC
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Nov 2020 19:38:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC63A871C1;
	Mon, 16 Nov 2020 18:38:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z5f1-II9-h-v; Mon, 16 Nov 2020 18:38:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F09D4871B5;
	Mon, 16 Nov 2020 18:38:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 03A2B1BF3E5
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 18:38:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 005DD85DA5
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 18:38:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ze2QM9EtfQW6 for <devel@linuxdriverproject.org>;
 Mon, 16 Nov 2020 18:38:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2FF9B85D95
 for <devel@driverdev.osuosl.org>; Mon, 16 Nov 2020 18:38:53 +0000 (UTC)
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 325AB20855;
 Mon, 16 Nov 2020 18:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605551932;
 bh=YTcygU6VKUGc5ktRdis4rGQ4GpHdlfgMSJ6U4wVxquI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H0saQ126FJsFP2yt00nBXeaX92T9NuXH372sUDDiV1zFUypjujRTtGpOu0QPZv7Rb
 1ydonAmSl8FW23Upx1QjmIPAwPWdf9S/58oW9dSFpgQNfrY8eyoi9How2O6r86qqfS
 c8/lgSwblC6NivSE/tToMzXDBjjo4iV75hYW10uk=
Date: Mon, 16 Nov 2020 18:38:33 +0000
From: Mark Brown <broonie@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 4/8] regulator: hi6421v600-regulator: move it from staging
Message-ID: <20201116183833.GC4739@sirena.org.uk>
References: <cover.1605530560.git.mchehab+huawei@kernel.org>
 <471362653f22a8748202c55babd2b462056a5797.1605530560.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
In-Reply-To: <471362653f22a8748202c55babd2b462056a5797.1605530560.git.mchehab+huawei@kernel.org>
X-Cookie: Immanuel doesn't pun, he Kant.
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
Cc: devel@driverdev.osuosl.org, Manivannan Sadhasivam <mani@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mayulong <mayulong1@huawei.com>, YueHaibing <yuehaibing@huawei.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linuxarm@huawei.com,
 John Stultz <john.stultz@linaro.org>, mauro.chehab@huawei.com,
 linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8696146089040860466=="
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--===============8696146089040860466==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Md/poaVZ8hnGTzuv"
Content-Disposition: inline


--Md/poaVZ8hnGTzuv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 16, 2020 at 01:59:30PM +0100, Mauro Carvalho Chehab wrote:

> This driver is ready for mainstream. Move it out of staging.

There's quite a few issues here, to be honest I'm disappointed some of
them weren't caught during staging review, this needs fairly substantial
work and there's signs that this also applies to at least the MFD
portion.

This also appears to be missing a DT binding document, binding
documentation is required for anything with DT support.

> +config REGULATOR_HI6421V600
> +	tristate "HiSilicon Hi6421v600 PMIC voltage regulator support"
> +	depends on MFD_HI6421_SPMI && OF
> +	depends on REGULATOR

This is inside an if REGULATOR block, as with all the other regulator
drivers it doesn't need a dependency on REGULATOR.

> --- /dev/null
> +++ b/drivers/regulator/hi6421v600-regulator.c
> @@ -0,0 +1,478 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Device driver for regulators in Hisi IC

Please make the entire comment a C++ one so things look more
intentional.

> +#include <linux/delay.h>
> +#include <linux/device.h>
> +#include <linux/err.h>
> +#include <linux/io.h>
> +#include <linux/mfd/hi6421-spmi-pmic.h>
> +#include <linux/module.h>
> +#include <linux/of_address.h>
> +#include <linux/of_device.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +#include <linux/regulator/driver.h>
> +#include <linux/regulator/machine.h>
> +#include <linux/regulator/of_regulator.h>
> +#include <linux/seq_file.h>
> +#include <linux/slab.h>
> +#include <linux/spmi.h>
> +#include <linux/time.h>
> +#include <linux/uaccess.h>

Are we sure about *all* these includes?

> +#define rdev_dbg(rdev, fmt, arg...)	\
> +		 pr_debug("%s: %s: " fmt, (rdev)->desc->name, __func__, ##arg)

If it is useful to copy this then put it in a header rather than
cut'n'pasting it.  I'm not sure I see a pressing need for most of the
trace here, it looks to be duplicating a lot of things the core does for
you.

> +static DEFINE_MUTEX(enable_mutex);

Drivers shouldn't be declaring global variables, if this is required it
should be allocated in driver data.

> +/*
> + * helper function to ensure when it returns it is at least 'delay_us'
> + * microseconds after 'since'.
> + */
> +
> +static int hi6421_spmi_regulator_is_enabled(struct regulator_dev *rdev)

The helper function appears to have been removed?

> +{
> +	struct hi6421v600_regulator *sreg =3D rdev_get_drvdata(rdev);
> +	struct hi6421_spmi_pmic *pmic =3D sreg->pmic;
> +	u32 reg_val;
> +
> +	reg_val =3D hi6421_spmi_pmic_read(pmic, rdev->desc->enable_reg);
> +
> +	rdev_dbg(rdev,
> +		 "enable_reg=3D0x%x, val=3D 0x%x, enable_state=3D%d\n",
> +		 rdev->desc->enable_reg,
> +		 reg_val, (reg_val & rdev->desc->enable_mask));
> +
> +	return ((reg_val & rdev->desc->enable_mask) !=3D 0);
> +}

It looks like it would be less code overall to just implement a regmap
for the MFD, even if it were only used in this driver - almost
everything in here is just a carbon copy of standard helpers that the
core provides for regmap devices.  Doing it in the MFD would be more
idiomatic for everything though.

> +static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
> +{
> +	struct hi6421v600_regulator *sreg =3D rdev_get_drvdata(rdev);
> +	struct hi6421_spmi_pmic *pmic =3D sreg->pmic;
> +
> +	/* cannot enable more than one regulator at one time */
> +	mutex_lock(&enable_mutex);
> +	usleep_range(HISI_REGS_ENA_PROTECT_TIME,
> +		     HISI_REGS_ENA_PROTECT_TIME + 1000);
> +
> +	/* set enable register */
> +	rdev_dbg(rdev,
> +		 "off_on_delay=3D%d us, enable_reg=3D0x%x, enable_mask=3D0x%x\n",
> +		 rdev->desc->off_on_delay, rdev->desc->enable_reg,
> +		 rdev->desc->enable_mask);
> +
> +	hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
> +			     rdev->desc->enable_mask,
> +			     rdev->desc->enable_mask);

This is the one operation which is doing anything unusual and which I'd
expect to be open coded in the driver - obviously this is a pretty
simplistic implementation but it will work though as indicated above it
shouldn't be using a global, the mutex should be in driver data.  I
guess you could use the mutex to protect a timestamp and use that to
figure out if a delay is actually needed?

> +static int hi6421_spmi_dt_parse(struct platform_device *pdev,
> +				struct hi6421v600_regulator *sreg,
> +			 struct regulator_desc *rdesc)
> +{
> +	struct device *dev =3D &pdev->dev;
> +	struct device_node *np =3D dev->of_node;
> +	unsigned int *v_table;
> +	int ret;
> +
> +	ret =3D of_property_read_u32(np, "reg", &rdesc->enable_reg);
> +	if (ret) {
> +		dev_err(dev, "missing reg property\n");
> +		return ret;
> +	}
> +
> +	ret =3D of_property_read_u32(np, "vsel-reg", &rdesc->vsel_reg);

There is no way this stuff should be being parsed out of DT, we should
know the register map for the device and what regulators it has based
purely off knowing what device we have.  Baking the register map into
the ABI is bad practice, it prevents us from improving our support for
the hardware without going and updating people's DTs.

> +	/*
> +	 * Not all regulators work on idle mode
> +	 */
> +	ret =3D of_property_read_u32(np, "idle-mode-mask", &sreg->eco_mode_mask=
);
> +	if (ret) {
> +		dev_dbg(dev, "LDO doesn't support economy mode.\n");
> +		sreg->eco_mode_mask =3D 0;
> +		sreg->eco_uA =3D 0;
> +	} else {
> +		ret =3D of_property_read_u32(np, "eco-microamp", &sreg->eco_uA);

There's no conditional code to not register the mode operations if the
mode information is not available (and again this should be done based=20
on knowing the properties of the device, this is unlikely to be system
dependent).

> +static int hi6421_spmi_regulator_probe_ldo(struct platform_device *pdev,
> +                                          struct device_node *np,
> +                                          struct hi6421_spmi_pmic *pmic)
> +{

This probe code looks very different to other regulator drivers, this
alone should have been a warning that the driver needs some substantial
refactoring here.  As indicated information about what regulators are
present on devices and their properties should be in the driver not the
DT, the driver should just be able to register them unconditionally and
use of_match and regulators_node to allow the core to find any
constraints that are provided by the platform.

> +	constraint->valid_modes_mask =3D REGULATOR_MODE_NORMAL;
> +	if (sreg->eco_mode_mask) {
> +		constraint->valid_modes_mask |=3D REGULATOR_MODE_IDLE;
> +		constraint->valid_ops_mask |=3D REGULATOR_CHANGE_MODE;
> +	}

This is absolutely not OK, a regulator driver should *not* be modifying
the constraints that the machine has set.  If it is safe to change modes
on a platform and the system integrator wants to do that then they will
set the constraints appropriately, there is no way the regulator driver
can tell what is appropriate on a given system.  The fact that the
driver is including machine.h at all ought to have been an indicator
that there's an abstraction problem here.

--Md/poaVZ8hnGTzuv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl+yxykACgkQJNaLcl1U
h9AVmwf9Fh0gq1PvguNk/O4RlIH0keSOmokskApjrq3vBNZf13Qryn7XsC5iuIvN
bDsBKlc7wRrLL3xRzT5IG8ycfdzyNsjaBaoVME3PJVVXM6ApoFUHRQAmD8qNZVbT
bNIZ9jbsS9H8LlXdAlPoXp6RjMAqlfO/ueNmFjlGE/mZbuoUlNoLSbOzZaHyGWu1
4ZVH1mzwqO9NPaGaj8gnWgVfPv4eF7Urr0SzVAxU+yjZ6TYWbFHSKUXAxmtEAFlA
YZE02WbxRJhmjyo0gNzOfT3QNGhoxi86LvGl/cV6c+veLcilUbyix4gyyOMl9uMw
mN03xDRzMh5gaJKBHKYOTYbvE6W/Qw==
=Oi77
-----END PGP SIGNATURE-----

--Md/poaVZ8hnGTzuv--

--===============8696146089040860466==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--===============8696146089040860466==--
