Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F88722C0A3
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jul 2020 10:28:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A46BC23280;
	Fri, 24 Jul 2020 08:28:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N8lkdiyYy1mo; Fri, 24 Jul 2020 08:28:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A213D200E5;
	Fri, 24 Jul 2020 08:28:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7C4B41BF301
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 08:28:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 79181882E3
 for <devel@linuxdriverproject.org>; Fri, 24 Jul 2020 08:28:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OnSYuhxgs3Vg for <devel@linuxdriverproject.org>;
 Fri, 24 Jul 2020 08:28:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E517C8819C
 for <devel@driverdev.osuosl.org>; Fri, 24 Jul 2020 08:28:08 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 150DB206EB;
 Fri, 24 Jul 2020 08:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595579288;
 bh=HxrBo0cV5eMlY+L4piyrTy6vrY5kjObTbnSnVkWBAKk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G3xt6y5jfIVzw3rPlO/dOAj9i1JU+ymsbEDmuI3BmunTPWayFOsWu3sA29sI0sRD6
 HJLK0NArpfZj68Wa5sj6fCxvIxRuqsEwO+pDCIrVOYVjX+KLo7eT+P48hV7q5P+pc4
 K/L6AWsAbGVmxOTKDFTAJku1/cuE3nr4H99hPx+k=
Date: Fri, 24 Jul 2020 10:28:10 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Rohit Bharadwaj <bharadwaj.rohit8@gmail.com>
Subject: Re: [PATCH v3] staging: nvec: change usage of slave to secondary
Message-ID: <20200724082810.GA3977020@kroah.com>
References: <20200723151511.22193-1-bharadwaj.rohit8@gmail.com>
 <20200724043633.7755-1-bharadwaj.rohit8@gmail.com>
 <ac0f2bb4-7fa1-26a8-a43b-2db427188d4e@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ac0f2bb4-7fa1-26a8-a43b-2db427188d4e@gmail.com>
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
Cc: linux-tegra@vger.kernel.org, devel@driverdev.osuosl.org,
 ac100@lists.launchpad.net, p.zabel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 24, 2020 at 01:44:27PM +0530, Rohit Bharadwaj wrote:
> On 24/07/20 10:06 am, Rohit K Bharadwaj wrote:
> > changed usage of slave (deprecated) to secondary
> > 
> > Signed-off-by: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
> > ---
> > v3: change patch subject, add version history
> > v2: add changelog text in body of mail
> > v1: fix style issues by changing usage of slave to secondary
> > 
> >  drivers/staging/nvec/nvec.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/staging/nvec/nvec.c b/drivers/staging/nvec/nvec.c
> > index 360ec0407740..5d7b66719a39 100644
> > --- a/drivers/staging/nvec/nvec.c
> > +++ b/drivers/staging/nvec/nvec.c
> > @@ -718,7 +718,7 @@ static irqreturn_t nvec_interrupt(int irq, void *dev)
> >  	return IRQ_HANDLED;
> >  }
> >  
> > -static void tegra_init_i2c_slave(struct nvec_chip *nvec)
> > +static void tegra_init_i2c_secondary(struct nvec_chip *nvec)
> >  {
> >  	u32 val;
> >  
> > @@ -744,7 +744,7 @@ static void tegra_init_i2c_slave(struct nvec_chip *nvec)
> >  }
> >  
> >  #ifdef CONFIG_PM_SLEEP
> > -static void nvec_disable_i2c_slave(struct nvec_chip *nvec)
> > +static void nvec_disable_i2c_secondary(struct nvec_chip *nvec)
> >  {
> >  	disable_irq(nvec->irq);
> >  	writel(I2C_SL_NEWSL | I2C_SL_NACK, nvec->base + I2C_SL_CNFG);
> > @@ -784,7 +784,7 @@ static int tegra_nvec_probe(struct platform_device *pdev)
> >  	platform_set_drvdata(pdev, nvec);
> >  	nvec->dev = dev;
> >  
> > -	if (of_property_read_u32(dev->of_node, "slave-addr", &nvec->i2c_addr)) {
> > +	if (of_property_read_u32(dev->of_node, "secondary-addr", &nvec->i2c_addr)) {
> >  		dev_err(dev, "no i2c address specified");
> >  		return -ENODEV;
> >  	}
> > @@ -839,7 +839,7 @@ static int tegra_nvec_probe(struct platform_device *pdev)
> >  	}
> >  	disable_irq(nvec->irq);
> >  
> > -	tegra_init_i2c_slave(nvec);
> > +	tegra_init_i2c_secondary(nvec);
> >  
> >  	/* enable event reporting */
> >  	nvec_toggle_global_events(nvec, true);
> > @@ -913,7 +913,7 @@ static int nvec_suspend(struct device *dev)
> >  	if (!err)
> >  		nvec_msg_free(nvec, msg);
> >  
> > -	nvec_disable_i2c_slave(nvec);
> > +	nvec_disable_i2c_secondary(nvec);
> >  
> >  	return 0;
> >  }
> > @@ -923,7 +923,7 @@ static int nvec_resume(struct device *dev)
> >  	struct nvec_chip *nvec = dev_get_drvdata(dev);
> >  
> >  	dev_dbg(nvec->dev, "resuming\n");
> > -	tegra_init_i2c_slave(nvec);
> > +	tegra_init_i2c_secondary(nvec);
> >  	nvec_toggle_global_events(nvec, true);
> >  
> >  	return 0;
> > 
> Dear All, this message was not delivered to marvin24@gmx.de, I'm getting that The response from the remote server was:
> 554 gmx.net (mxgmx016) Nemesis ESMTP Service not available No SMTP service Reject due to policy restrictions, 

Not a big deal, email address atrophy over time.  That's why you always
cc: a public mailing list for patches.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
