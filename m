Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2418C2FA571
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Jan 2021 17:03:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A2DA985A37;
	Mon, 18 Jan 2021 16:03:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0mT8VjE70xuz; Mon, 18 Jan 2021 16:03:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8B17B85754;
	Mon, 18 Jan 2021 16:02:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4BB8E1BF33E
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 16:02:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 482BF855BE
 for <devel@linuxdriverproject.org>; Mon, 18 Jan 2021 16:02:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qp2rPvzKv1-h for <devel@linuxdriverproject.org>;
 Mon, 18 Jan 2021 16:02:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EEB08806F4
 for <devel@driverdev.osuosl.org>; Mon, 18 Jan 2021 16:02:50 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2DC4F22B49;
 Mon, 18 Jan 2021 16:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610985770;
 bh=3M/vvoFedZclJuVsFaENrRMbkyh6UMmQAfselLSVG6I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=FoL/1quOtrqnRQoSL8iO6o9mRWMIvM7bwXmMlI1qAmpIfLun4vjCN0X9mzW5nKW7V
 Wq7OAcoFW2mkXa8vhCgUL6FDYckb8bMYBD47WOxtvSm+6vhAzL2neE5s6IXGzsJPU2
 qqf/kyyPjENuCrYHccjYY27O2X6WitYrPbW1GGj+40BPmUVcPhAL2aT6MxOuUV+Drx
 lhSod1AoaJv623tNQnRU9ypvVtxKa3PjD2Nfwo9bcJ+eaSW1kAEXKWcQPCu/T4eHyH
 CF4xAwE1upW9CpM2yqjTVH5G68r9IQbeTJcCw2Dt1JdwqOp3Nj4ZLPUUUvHxOBM6OZ
 SQESl6/mfh9Ug==
Date: Mon, 18 Jan 2021 17:02:45 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 11/13] regulator: hi6421v600-regulator: move it from
 staging
Message-ID: <20210118170245.1bf5160f@coco.lan>
In-Reply-To: <20210118135440.GM4455@sirena.org.uk>
References: <cover.1610975633.git.mchehab+huawei@kernel.org>
 <d0a7cae3c654d25e01b0c436e00de55a21cd7f64.1610975633.git.mchehab+huawei@kernel.org>
 <20210118135440.GM4455@sirena.org.uk>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Mayulong <mayulong1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Mon, 18 Jan 2021 13:54:40 +0000
Mark Brown <broonie@kernel.org> escreveu:

> On Mon, Jan 18, 2021 at 02:28:12PM +0100, Mauro Carvalho Chehab wrote:
> 
> > index f385146d2bd1..3b23ad56b31a 100644
> > --- a/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
> > +++ b/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
> > @@ -60,6 +60,8 @@ required:
> >    - reg
> >    - regulators
> >  
> > +additionalProperties: false
> > +
> >  examples:
> >    - |
> >      /* pmic properties */  
> 
> Why is this part of this patch?

I'll place on a separate one.

> 
> > +// SPDX-License-Identifier: GPL-2.0
> > +//
> > +// Device driver for regulators in Hisi IC
> > +//
> > +// Copyright (c) 2013 Linaro Ltd.
> > +// Copyright (c) 2011 Hisilicon.
> > +//  
> 
> This looks like it needs an update.

Ok.

> 
> > +// This program is free software; you can redistribute it and/or modify
> > +// it under the terms of the GNU General Public License version 2 as
> > +// published by the Free Software Foundation.
> > +//
> > +// This program is distributed in the hope that it will be useful,
> > +// but WITHOUT ANY WARRANTY; without even the implied warranty of
> > +// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> > +// GNU General Public License for more details.  
> 
> This boilerplate can be removed.

Ok.

> 
> > +static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
> > +{
> > +	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
> > +	struct hi6421_spmi_pmic *pmic = sreg->pmic;
> > +	int ret;
> > +
> > +	/* cannot enable more than one regulator at one time */
> > +	mutex_lock(&sreg->enable_mutex);
> > +	usleep_range(HISI_REGS_ENA_PROTECT_TIME,
> > +		     HISI_REGS_ENA_PROTECT_TIME + 1000);
> > +
> > +	/* set enable register */
> > +	ret = hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
> > +				   rdev->desc->enable_mask,
> > +				   rdev->desc->enable_mask);  
> 
> If for some reason the PMIC is sufficiently fragile to need a delay
> between enables it's not clear why the driver is doing it before
> enabling rather than after, presumably there's issues with the regulator
> ramping up and stabalising its output 

I don't have any datasheets or documentation from this device, except for 
the Linaro's official driver for Kernel 4.9 (from where this driver
was originally ported), and a high-level documentation for this 
hardware at 96boards site, which doesn't cover any details.

-

My understanding is that the issue here seems to be different.

This is the original code (which can be seen on changeset 42f24d9d446a,
already upstream):

	struct timeval last_enabled;

	static void ensured_time_after(struct timeval since, u32 delay_us)
	{
	       struct timeval now;
	       u64 elapsed_ns64, delay_ns64;
	       u32 actual_us32;

	       delay_ns64 = delay_us * NSEC_PER_USEC;
	       do_gettimeofday(&now);
	       elapsed_ns64 = timeval_to_ns(&now) - timeval_to_ns(&since);
	       if (delay_ns64 > elapsed_ns64) {
	               actual_us32 = ((u32)(delay_ns64 - elapsed_ns64) /
	                                                       NSEC_PER_USEC);
	               if (actual_us32 >= 1000) {
	                       mdelay(actual_us32 / 1000); /*lint !e647 */
	                       udelay(actual_us32 % 1000);
	               } else if (actual_us32 > 0) {
	                       udelay(actual_us32);
	               }
	       }
	       return;
	}

	static int hisi_regulator_enable(struct regulator_dev *dev)
	{
	       struct hisi_regulator *sreg = rdev_get_drvdata(dev);
	       struct hisi_pmic *pmic = rdev_to_pmic(dev);

	       /* keep a distance of off_on_delay from last time disabled */
	       ensured_time_after(sreg->last_off_time, sreg->off_on_delay);

	       BRAND_DEBUG("<[%s]: off_on_delay=%dus>\n", __func__, sreg->off_on_delay);

	       /* cannot enable more than one regulator at one time */
	       mutex_lock(&enable_mutex);
	       ensured_time_after(last_enabled, HISI_REGS_ENA_PROTECT_TIME);

	       /* set enable register */
	       hisi_pmic_rmw(pmic, sreg->register_info.ctrl_reg,
                               sreg->register_info.enable_mask,
                               sreg->register_info.enable_mask);
	       BRAND_DEBUG("<[%s]: ctrl_reg=0x%x,enable_mask=0x%x>\n", __func__, sreg->register_info.ctrl_reg,\
        	               sreg->register_info.enable_mask);

	       do_gettimeofday(&last_enabled);
	       mutex_unlock(&enable_mutex);

	       return 0;
	}

What I did here was to play safe. So, I removed the static var and the 
call to gettimeofday() and replaced by just a delay.

As, on this device, the power lines don't change too often: only
the USB power supply changes over time during its reset sequence.

The other power lines are powered during the boot and remain powered
if the hardware is detected.

> > +	/* set enable register to 0 */
> > +	return hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
> > +				    rdev->desc->enable_mask, 0);  
> 
> I'm not sure all these comments are adding anything.

I'll drop on a next version.
> 
> > +	if (unlikely(selector >= rdev->desc->n_voltages))
> > +		return -EINVAL;  
> 
> This should not be a hot path that needs an unlikely() annotation.

I'll drop unlikely().

> > +static unsigned int
> > +hi6421_spmi_regulator_get_optimum_mode(struct regulator_dev *rdev,
> > +				       int input_uV, int output_uV,
> > +				       int load_uA)
> > +{
> > +	struct hi6421_spmi_reg_info *sreg = rdev_get_drvdata(rdev);
> > +
> > +	if (load_uA || ((unsigned int)load_uA > sreg->eco_uA))
> > +		return REGULATOR_MODE_NORMAL;  
> 
> This means that for *any* load at all we select NORMAL - I'm not
> convinced this is intentional?

Indeed this seems to be a bug. Thanks for noticing it!

I'll fix that.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
