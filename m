Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6F0308A17
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 16:52:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2123C86946;
	Fri, 29 Jan 2021 15:52:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aXHChy6uUg2Z; Fri, 29 Jan 2021 15:52:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A366886049;
	Fri, 29 Jan 2021 15:52:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5251E1BF2B5
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 15:52:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4C63586049
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 15:52:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oNE7yhECQNny for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 15:52:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A905D85F44
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 15:52:00 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id A8F9361477;
 Fri, 29 Jan 2021 15:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611935520;
 bh=8xa5zXZllFy9Glnd4VnGSNf5MtM5G/4lnnJG2FwPZ28=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Bcl1sOAB7ZcTKARxZ5lnWKroAegGylwBNqLnIeW2n4WUt5gr/YTzFK8mfdajKu+CC
 tNfM1uycaEVc9YXou68D9L/9vLOibRcNQ0cFJ3lwwsKZ/ALWcuJg8PzjJxAxAIAFvG
 lLIFOO5hsyEEcv11R1GV16KR069LauFwFXv6nTKU=
Date: Fri, 29 Jan 2021 16:51:57 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH 1/2] staging: greybus: vibrator: use proper API for
 vibrator devices
Message-ID: <YBQvHQq5IuxdX2Yf@kroah.com>
References: <20210105151903.1761635-1-gregkh@linuxfoundation.org>
 <X/WnNDRx2sIZsKxK@hovoldconsulting.com>
 <X/WoL7OJLDruXUk7@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <X/WoL7OJLDruXUk7@hovoldconsulting.com>
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 Alex Elder <elder@kernel.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jan 06, 2021 at 01:08:15PM +0100, Johan Hovold wrote:
> On Wed, Jan 06, 2021 at 01:04:04PM +0100, Johan Hovold wrote:
> > On Tue, Jan 05, 2021 at 04:19:02PM +0100, Greg Kroah-Hartman wrote:
> > > The correct user/kernel api for vibrator devices is the Input rumble
> > > api, not a random sysfs file like the greybus vibrator driver currently
> > > uses.
> > > 
> > > Add support for the correct input api to the vibrator driver so that it
> > > hooks up to the kernel and userspace correctly.
> > > 
> > > Cc: Johan Hovold <johan@kernel.org>
> > > Cc: Alex Elder <elder@kernel.org>
> > > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > > ---
> > >  drivers/staging/greybus/vibrator.c | 59 ++++++++++++++++++++++++++++++
> > >  1 file changed, 59 insertions(+)
> > > 
> > > diff --git a/drivers/staging/greybus/vibrator.c b/drivers/staging/greybus/vibrator.c
> > > index 0e2b188e5ca3..94110cadb5bd 100644
> > > --- a/drivers/staging/greybus/vibrator.c
> > > +++ b/drivers/staging/greybus/vibrator.c
> > > @@ -13,13 +13,18 @@
> > >  #include <linux/kdev_t.h>
> > >  #include <linux/idr.h>
> > >  #include <linux/pm_runtime.h>
> > > +#include <linux/input.h>
> > >  #include <linux/greybus.h>
> > >  
> > >  struct gb_vibrator_device {
> > >  	struct gb_connection	*connection;
> > > +	struct input_dev	*input;
> > >  	struct device		*dev;
> > >  	int			minor;		/* vibrator minor number */
> > >  	struct delayed_work     delayed_work;
> > > +	bool			running;
> > > +	bool			on;
> > > +	struct work_struct	play_work;
> > >  };
> > >  
> > >  /* Greybus Vibrator operation types */
> > > @@ -36,6 +41,7 @@ static int turn_off(struct gb_vibrator_device *vib)
> > >  
> > >  	gb_pm_runtime_put_autosuspend(bundle);
> > >  
> > > +	vib->on = false;
> > 
> > You update but never seem to actually use vib->on.
> > 
> > >  	return ret;
> > >  }
> > >  
> > > @@ -59,11 +65,48 @@ static int turn_on(struct gb_vibrator_device *vib, u16 timeout_ms)
> > >  		return ret;
> > >  	}
> > >  
> > > +	vib->on = true;
> > >  	schedule_delayed_work(&vib->delayed_work, msecs_to_jiffies(timeout_ms));
> > >  
> > >  	return 0;
> > >  }
> > >  
> > > +static void gb_vibrator_play_work(struct work_struct *work)
> > > +{
> > > +	struct gb_vibrator_device *vib =
> > > +		container_of(work, struct gb_vibrator_device, play_work);
> > > +
> > > +	if (vib->running)
> > 
> > Is this test inverted?
> > 
> > > +		turn_off(vib);
> > > +	else
> > > +		turn_on(vib, 100);
> > 
> > Why 100 ms?
> > 
> > Shouldn't it just be left on indefinitely with the new API?
> > 
> > > +}
> > > +
> > > +static int gb_vibrator_play_effect(struct input_dev *input, void *data,
> > > +				   struct ff_effect *effect)
> > > +{
> > > +	struct gb_vibrator_device *vib = input_get_drvdata(input);
> > > +	int level;
> > > +
> > > +	level = effect->u.rumble.strong_magnitude;
> > > +	if (!level)
> > > +		level = effect->u.rumble.weak_magnitude;
> > > +
> > > +	vib->running = level;
> > > +	schedule_work(&vib->play_work);
> > > +	return 0;
> > > +}
> > > +
> > > +static void gb_vibrator_close(struct input_dev *input)
> > > +{
> > > +	struct gb_vibrator_device *vib = input_get_drvdata(input);
> > > +
> > > +	cancel_delayed_work_sync(&vib->delayed_work);
> > > +	cancel_work_sync(&vib->play_work);
> > > +	turn_off(vib);
> > > +	vib->running = false;
> > > +}
> > > +
> > >  static void gb_vibrator_worker(struct work_struct *work)
> > >  {
> > >  	struct delayed_work *delayed_work = to_delayed_work(work);
> > > @@ -169,10 +212,26 @@ static int gb_vibrator_probe(struct gb_bundle *bundle,
> > >  
> > >  	INIT_DELAYED_WORK(&vib->delayed_work, gb_vibrator_worker);
> > >  
> > > +	INIT_WORK(&vib->play_work, gb_vibrator_play_work);
> > 
> > Hmm. Looks like you forgot to actually allocate the input device...
> > 
> > > +	vib->input->name = "greybus-vibrator";
> > > +	vib->input->close = gb_vibrator_close;
> > > +	vib->input->dev.parent = &bundle->dev;
> > > +	vib->input->id.bustype = BUS_HOST;
> > > +
> > > +	input_set_drvdata(vib->input, vib);
> > > +	input_set_capability(vib->input, EV_FF, FF_RUMBLE);
> > > +
> > > +	retval = input_ff_create_memless(vib->input, NULL,
> > > +					 gb_vibrator_play_effect);
> > > +	if (retval)
> > > +		goto err_device_remove;
> > > +
> 
> Oh, and you forgot to register the input device here too (and deregister
> in remove()).

Ugh, wow, this patch series is messed up, sorry about that, and thanks
for the review.  I'll fix this up when I next get a chance and resend.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
