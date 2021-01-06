Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B982EBD78
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Jan 2021 13:08:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8D1C6852CF;
	Wed,  6 Jan 2021 12:08:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZLx-_WkXHDn1; Wed,  6 Jan 2021 12:08:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 009BB85218;
	Wed,  6 Jan 2021 12:08:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E27A1BF479
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 12:08:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 529CC204BD
 for <devel@linuxdriverproject.org>; Wed,  6 Jan 2021 12:08:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5k8ml0ninvfx for <devel@linuxdriverproject.org>;
 Wed,  6 Jan 2021 12:08:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 06A3E204BB
 for <devel@driverdev.osuosl.org>; Wed,  6 Jan 2021 12:08:19 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 95D7D207AB;
 Wed,  6 Jan 2021 12:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1609934899;
 bh=PEkyn4eQvaV356DyLNA/aHAHQVYpU8ecR5cIuRztiW0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dRfGtIoyIGS77FjfqO/Py+ZBDYDRmg5hBBpa5JAgNHYZjo5ZRctC2tKqYg4rslH/R
 ZGMoT+cJVgWgdEiW3QJUNlMGd7YHzWfJeO9+zpPwN1yLR8FH6dqegcuhM711ZYf6/v
 dIWPrw1V03dycN9WY3IR2RH5oNQASJTcevoV9eaRrEzshv/6d0KzjUsX9EUsquL4Rg
 DM1dXYPT3XrEALOaM/+FKbSNZJk32iA++i5WqN6jU9C8IQQ80doWGKB91grfVTKnJG
 TmJ9jYZV99z2CcC+fvOHO5U+bCH2fSJV/muLh2Qo6HSaBx0pzqW843M4UEt7FfogX8
 916zBoAxLsnNw==
Received: from johan by xi.lan with local (Exim 4.93.0.4)
 (envelope-from <johan@kernel.org>)
 id 1kx7br-0007Ff-Qr; Wed, 06 Jan 2021 13:08:15 +0100
Date: Wed, 6 Jan 2021 13:08:15 +0100
From: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/2] staging: greybus: vibrator: use proper API for
 vibrator devices
Message-ID: <X/WoL7OJLDruXUk7@hovoldconsulting.com>
References: <20210105151903.1761635-1-gregkh@linuxfoundation.org>
 <X/WnNDRx2sIZsKxK@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <X/WnNDRx2sIZsKxK@hovoldconsulting.com>
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
 Alex Elder <elder@kernel.org>, linux-kernel@vger.kernel.org,
 Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jan 06, 2021 at 01:04:04PM +0100, Johan Hovold wrote:
> On Tue, Jan 05, 2021 at 04:19:02PM +0100, Greg Kroah-Hartman wrote:
> > The correct user/kernel api for vibrator devices is the Input rumble
> > api, not a random sysfs file like the greybus vibrator driver currently
> > uses.
> > 
> > Add support for the correct input api to the vibrator driver so that it
> > hooks up to the kernel and userspace correctly.
> > 
> > Cc: Johan Hovold <johan@kernel.org>
> > Cc: Alex Elder <elder@kernel.org>
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > ---
> >  drivers/staging/greybus/vibrator.c | 59 ++++++++++++++++++++++++++++++
> >  1 file changed, 59 insertions(+)
> > 
> > diff --git a/drivers/staging/greybus/vibrator.c b/drivers/staging/greybus/vibrator.c
> > index 0e2b188e5ca3..94110cadb5bd 100644
> > --- a/drivers/staging/greybus/vibrator.c
> > +++ b/drivers/staging/greybus/vibrator.c
> > @@ -13,13 +13,18 @@
> >  #include <linux/kdev_t.h>
> >  #include <linux/idr.h>
> >  #include <linux/pm_runtime.h>
> > +#include <linux/input.h>
> >  #include <linux/greybus.h>
> >  
> >  struct gb_vibrator_device {
> >  	struct gb_connection	*connection;
> > +	struct input_dev	*input;
> >  	struct device		*dev;
> >  	int			minor;		/* vibrator minor number */
> >  	struct delayed_work     delayed_work;
> > +	bool			running;
> > +	bool			on;
> > +	struct work_struct	play_work;
> >  };
> >  
> >  /* Greybus Vibrator operation types */
> > @@ -36,6 +41,7 @@ static int turn_off(struct gb_vibrator_device *vib)
> >  
> >  	gb_pm_runtime_put_autosuspend(bundle);
> >  
> > +	vib->on = false;
> 
> You update but never seem to actually use vib->on.
> 
> >  	return ret;
> >  }
> >  
> > @@ -59,11 +65,48 @@ static int turn_on(struct gb_vibrator_device *vib, u16 timeout_ms)
> >  		return ret;
> >  	}
> >  
> > +	vib->on = true;
> >  	schedule_delayed_work(&vib->delayed_work, msecs_to_jiffies(timeout_ms));
> >  
> >  	return 0;
> >  }
> >  
> > +static void gb_vibrator_play_work(struct work_struct *work)
> > +{
> > +	struct gb_vibrator_device *vib =
> > +		container_of(work, struct gb_vibrator_device, play_work);
> > +
> > +	if (vib->running)
> 
> Is this test inverted?
> 
> > +		turn_off(vib);
> > +	else
> > +		turn_on(vib, 100);
> 
> Why 100 ms?
> 
> Shouldn't it just be left on indefinitely with the new API?
> 
> > +}
> > +
> > +static int gb_vibrator_play_effect(struct input_dev *input, void *data,
> > +				   struct ff_effect *effect)
> > +{
> > +	struct gb_vibrator_device *vib = input_get_drvdata(input);
> > +	int level;
> > +
> > +	level = effect->u.rumble.strong_magnitude;
> > +	if (!level)
> > +		level = effect->u.rumble.weak_magnitude;
> > +
> > +	vib->running = level;
> > +	schedule_work(&vib->play_work);
> > +	return 0;
> > +}
> > +
> > +static void gb_vibrator_close(struct input_dev *input)
> > +{
> > +	struct gb_vibrator_device *vib = input_get_drvdata(input);
> > +
> > +	cancel_delayed_work_sync(&vib->delayed_work);
> > +	cancel_work_sync(&vib->play_work);
> > +	turn_off(vib);
> > +	vib->running = false;
> > +}
> > +
> >  static void gb_vibrator_worker(struct work_struct *work)
> >  {
> >  	struct delayed_work *delayed_work = to_delayed_work(work);
> > @@ -169,10 +212,26 @@ static int gb_vibrator_probe(struct gb_bundle *bundle,
> >  
> >  	INIT_DELAYED_WORK(&vib->delayed_work, gb_vibrator_worker);
> >  
> > +	INIT_WORK(&vib->play_work, gb_vibrator_play_work);
> 
> Hmm. Looks like you forgot to actually allocate the input device...
> 
> > +	vib->input->name = "greybus-vibrator";
> > +	vib->input->close = gb_vibrator_close;
> > +	vib->input->dev.parent = &bundle->dev;
> > +	vib->input->id.bustype = BUS_HOST;
> > +
> > +	input_set_drvdata(vib->input, vib);
> > +	input_set_capability(vib->input, EV_FF, FF_RUMBLE);
> > +
> > +	retval = input_ff_create_memless(vib->input, NULL,
> > +					 gb_vibrator_play_effect);
> > +	if (retval)
> > +		goto err_device_remove;
> > +

Oh, and you forgot to register the input device here too (and deregister
in remove()).

> >  	gb_pm_runtime_put_autosuspend(bundle);
> >  
> >  	return 0;
> >  
> > +err_device_remove:
> > +	device_unregister(vib->dev);
> 
> I know you're removing this in the next patch, but as the class device
> has been registered you need to cancel the delayed work and turn off the
> motor here too (side note: looks like this is done in the wrong order in
> remove()).
> 
> >  err_ida_remove:
> >  	ida_simple_remove(&minors, vib->minor);
> >  err_connection_disable:
 
Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
