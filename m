Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D223E30898F
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 15:35:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0479023039;
	Fri, 29 Jan 2021 14:35:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kq-VDEND8daX; Fri, 29 Jan 2021 14:35:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BC9AD22D0D;
	Fri, 29 Jan 2021 14:35:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D53C91BF399
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 14:35:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C87AD1FE49
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 14:35:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VqTTAzY3J5YD for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 14:35:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id EB20122D0D
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 14:35:48 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7629B64E05;
 Fri, 29 Jan 2021 14:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611930948;
 bh=xbFXyaDzkCEvW+hbiYAzI1+iTa8lQ/M75C0djNmGrXA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Ka8c3/hfKJbE4Oaw6xqRLhc/2VOhBig35mJ5zFywZ9qq/MDuQBnse5t8vGqj2cK0u
 o5qS8sjJNQeW+B67ae8oJiFbq45RlNuUez5+Cz4c4EOPc3knN31lIUdAGnRNLqDQK3
 p/I2K2OHKxGEOQFL+78x/d8gC+CNrI9kczAkCh5o44shDbuAl0DbJpEuuhQTIT/XsZ
 rlBNO1tnlUmP8Q2OM0PYQidBvOZA3mdSAvRF+KG5ZOKpt2ISN/bGB19gbIoykcopyW
 jYpBoz2JZu/MAkWdyDbEFJ549nO4ayU5CO57HBpN/XG93lPVJoyGRlQ0CEiIIc+y+b
 tz5EczloNkCeA==
Date: Fri, 29 Jan 2021 15:35:43 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v4 18/21] mfd: hi6421-spmi-pmic: move driver from staging
Message-ID: <20210129153543.52efeb6a@coco.lan>
In-Reply-To: <20210129132910.GP4774@dell>
References: <cover.1611072387.git.mchehab+huawei@kernel.org>
 <e79ffb200c52fc8c8926492cc82ac5dbcda3e3fb.1611072387.git.mchehab+huawei@kernel.org>
 <20210127110537.GI4903@dell> <20210129140348.6b151fcb@coco.lan>
 <20210129132910.GP4774@dell>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Fri, 29 Jan 2021 13:29:10 +0000
Lee Jones <lee.jones@linaro.org> escreveu:

> On Fri, 29 Jan 2021, Mauro Carvalho Chehab wrote:
> 
> > Hi Lee,
> > 
> > Em Wed, 27 Jan 2021 11:05:37 +0000
> > Lee Jones <lee.jones@linaro.org> escreveu:

> 
> > > > +static const struct mfd_cell hi6421v600_devs[] = {
> > > > +	{ .name = "hi6421v600-regulator", },
> > > > +};    
> > > 
> > > Where are the reset of the devices?  
> > 
> > Not sure what you mean here. 
> > 
> > This MFD device provides:
> > 
> > 	- an IRQ handler;
> > 	- several LDO lines used by a regulator driver.
> > 
> > The IRQ handler is properly initialized here, while the
> > regulators are initialized by the regulator driver. The initial
> > state of this device is set up by u-boot.
> > 
> > So, AFAIKT, there's no need to have any reset line
> > attached here.  
> 
> Oh wow!  Sorry about that.  It's a misspelling.
> 
> "Where are the *rest* of the devices?"
> 
> Registering one device does not qualify this as an MFD.

This is a MFD device. The current support has two different functions:

	- it is an IRQ controller
	- it regulator

From the Hikey 970 schematics (pags. 12-14):

	https://www.96boards.org/documentation/consumer/hikey/hikey970/hardware-docs/files/hikey970-schematics.pdf

This chip also has some A/D converts, a battery voltage sensor 
and some clock generators. Those are unused on Hikey 970.

Btw, the initial version of this chipset (without SPMI bus) is
also under drivers/mfd, as hi6421-pmic-core.

> >   
> > > > +static void hi6421_spmi_irq_mask(struct irq_data *d)
> > > > +{
> > > > +	struct hi6421_spmi_pmic *pmic = irq_data_get_irq_chip_data(d);
> > > > +	unsigned long flags;
> > > > +	unsigned int data;
> > > > +	u32 offset;
> > > > +
> > > > +	offset = (irqd_to_hwirq(d) >> 3);    
> > > 
> > > Why 3?   
> > 
> > No idea. I don't have any datasheets from this device.
> >  
> > > Probably better to define these shifts/masks rather than use
> > > magic numbers with no comments.  
> > 
> > I'll change the above to:
> > 
> > 	#define HISI_IRQ_MASK			GENMASK(1, 0)
> > 
> > 	offset = (irqd_to_hwirq(d) >> HISI_IRQ_MASK);  
> 
> This is a shift surely?  Marks are usually &'ed.
> 
> > > > +	regmap_read(pmic->map, offset, &data);
> > > > +	data |= (1 << (irqd_to_hwirq(d) & 0x07));    
> > > 
> > > What are you doing here?
> > > 
> > > Maybe improved defines will be enough.  If not, please supply a
> > > suitable comment.  
> > 
> > Again, no idea. The only documentation I had access to this chip is
> > at:
> > 
> > 	https://www.96boards.org/documentation/consumer/hikey/hikey970/
> > 
> > With doesn't mention any register details.
> > 
> > The driver itself came from the Linaro's 96boards git tree, with also
> > doesn't contain any register mapping.  
> 
> Well that's awkward.
> 
> I'm not keen on merging code that no one knows what it does.
> 
> Maybe I can do some digging.

Hmm... after re-reading the code:

	enum hi6421_spmi_pmic_irq_list {
		OTMP = 0,
		VBUS_CONNECT,
		VBUS_DISCONNECT,
		ALARMON_R,
		HOLD_6S,
		HOLD_1S,
		POWERKEY_UP,
		POWERKEY_DOWN,
		OCP_SCP_R,
		COUL_R,
		SIM0_HPD_R,
		SIM0_HPD_F,
		SIM1_HPD_R,
		SIM1_HPD_F,
		PMIC_IRQ_LIST_MAX,
	};
	...

	#define SOC_PMIC_IRQ_MASK_0_ADDR	0x0202
	#define SOC_PMIC_IRQ0_ADDR		0x0212

	...

	static void hi6421_spmi_irq_mask(struct irq_data *d)
	{
		struct hi6421_spmi_pmic *ddata = irq_data_get_irq_chip_data(d);
		unsigned long flags;
		unsigned int data;
		u32 offset;

		offset = (irqd_to_hwirq(d) >> 3);
		offset += SOC_PMIC_IRQ_MASK_0_ADDR;

		spin_lock_irqsave(&ddata->lock, flags);

		regmap_read(ddata->regmap, offset, &data);
		data |= (1 << (irqd_to_hwirq(d) & 0x07));
		regmap_write(ddata->regmap, offset, data);

		spin_unlock_irqrestore(&ddata->lock, flags);
	}

Actually does this mapping:

	======================  =============   =====
	IRQ			MASK REGISTER 	BIT
	======================  =============   =====
	OTMP			0x0202		bit 0
	VBUS_CONNECT		0x0202		bit 1
	VBUS_DISCONNECT		0x0202		bit 2
	ALARMON_R		0x0202		bit 3
	HOLD_6S			0x0202		bit 4
	HOLD_1S			0x0202		bit 5
	POWERKEY_UP		0x0202		bit 6
	POWERKEY_DOWN		0x0202		bit 7

	OCP_SCP_R		0x0203		bit 0
	COUL_R			0x0203		bit 1
	SIM0_HPD_R		0x0203		bit 2
	SIM0_HPD_F		0x0203		bit 3
	SIM1_HPD_R		0x0203		bit 4
	SIM1_HPD_F		0x0203		bit 5
	======================  =============   =====

The IRQ register itself is the mask register + 0x10:

	static irqreturn_t hi6421_spmi_irq_handler(int irq, void *priv)
	{
		struct hi6421_spmi_pmic *ddata = (struct hi6421_spmi_pmic *)priv;
		unsigned long pending;
		unsigned int in;
		int i, offset;
	
		for (i = 0; i < HISI_IRQ_ARRAY; i++) {
			regmap_read(ddata->regmap, SOC_PMIC_IRQ0_ADDR + i, &in);
			pending = HISI_MASK & in;
			regmap_write(ddata->regmap, SOC_PMIC_IRQ0_ADDR + i, pending);
			...
		}
		return IRQ_HANDLED;
	}

Anyway, it sounds a good idea to have a table like the above on some
comment inside the driver's code.

> > > > +		pr_debug("PMU IRQ address value:irq[0x%x] = 0x%x\n",
> > > > +			 SOC_PMIC_IRQ0_ADDR + i, pending);    
> > > 
> > > Again, is this actually useful to anyone now that the driver is nearly
> > > 10 years old.  Particularly anyone who can't add a quick printk()
> > > during a debug session?  
> > 
> > With regards to the debug stuff, I'm dropping everything.  
> 
> Great.
> 
> > On a side comment, I doubt that the driver has 10 years old ;-)
> > 
> > See, Hikey 970 uses Kirin 970 SoC, which it was launched in Sept, 2017.   
> 
> The header has a copyright from 2011.
> 
>  // Copyright (c) 2013 Linaro Ltd.
>  // Copyright (c) 2011 Hisilicon.
> 
> > The original version of this driver publicly debuted on this tree:
> > 
> > 	https://github.com/96boards-hikey/linux/blob/hikey970-v4.9/drivers/mfd/hisi_pmic_spmi.c
> > 
> > On a commit made on Feb, 2018.
> > 
> > Ok, Hi6421v600 is a separate silicon, probably derivative from
> > Hi6421 (used on Hikey 960). Its copyright mentions 2011, but 
> > that's probably because the code itself came from older generations
> > of the regulator chipset.  
> 
> So we've inherited a copyright from another driver?
> 
> Sounds suspect.

Not really. The non-SPMI version of this chipset
(at drivers/mfd/hi6421-pmic-core.c) has its copyright starting in
2011:

	/*
	 * Device driver for Hi6421 PMIC
	 *
	 * Copyright (c) <2011-2014> HiSilicon Technologies Co., Ltd.
	 *              http://www.hisilicon.com
	 * Copyright (c) <2013-2017> Linaro Ltd.
	 *              https://www.linaro.org

> > Please see the enclosed patch for the new code after fixing the issues
> > you pointed. I'll re-submit it as a series once you're ok with the
> > code.  
> 
> Would you mind just resubmitting please?  We can go from there.

Ok. Will do it on a next spin.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
