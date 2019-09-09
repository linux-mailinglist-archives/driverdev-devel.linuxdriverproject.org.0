Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 935CEAD843
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Sep 2019 13:50:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 74701875D8;
	Mon,  9 Sep 2019 11:50:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SVXNMqF4nrh3; Mon,  9 Sep 2019 11:50:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D655285C12;
	Mon,  9 Sep 2019 11:50:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0BE271BF398
 for <devel@linuxdriverproject.org>; Mon,  9 Sep 2019 11:50:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 083FB846F4
 for <devel@linuxdriverproject.org>; Mon,  9 Sep 2019 11:50:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yIniIgXs_31c for <devel@linuxdriverproject.org>;
 Mon,  9 Sep 2019 11:50:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7783784691
 for <devel@driverdev.osuosl.org>; Mon,  9 Sep 2019 11:50:08 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id s28so12114222otd.4
 for <devel@driverdev.osuosl.org>; Mon, 09 Sep 2019 04:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tYnsX9gd/pntTIlgQ4B4VyJYL3dGeU36BYiNg93weko=;
 b=Lf7NSQawSCbhe/k3IJI1TCfhjpU0Y50olZ8SjBlQ9hCwUy6fpOWWBbCPNR+hH4nrVz
 Hwxk/Tj2RIJhqJgPHUYalGiHKyto6UmbF7nSjZhaSuTalrDaESOrIi4flyE7pjp00Zmo
 NxUnJaORjgsp6P6ixx7vEhCmzYyCXctFDkPqWKKK1hKrvq6fU4W/vAJqYnXiiucZV4JL
 68bLHtzxBU1oEEaIt+GfrSrh4hsKV4uvo6OUrzebd/+9wWDCOi3nes1rCtyfokF0TQRJ
 vYJdeTYOggNaey5ZVKYmMslDrVxRrzbfGO2rCm2tENMJZik9pQbW5QGQlrJmO+ZAMVvM
 NcPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tYnsX9gd/pntTIlgQ4B4VyJYL3dGeU36BYiNg93weko=;
 b=fGRkMfSr2mam97oTq70caQXEFNuiwKEg23vwQ8VErmOON+yJJJM/muTHSY78FJvK+i
 FUmfeRaJxKCjIlnBfxVBE6oYjvBHfX/2iaZMjdHyiaiAn3tCcpu6vfHFq5jVNwIjiKDi
 jBUfvvuT5Z/X/IphpFBp9zw1r7cfonyuRJZcqDTIOWa1baqbLOFxExIqo+pSFiuqQcPH
 lBOHcKGX5a3zJPQlrhaXh+Wbj+ET3GD+Co8p8uhrbmJfCBqqVmHQBJVZGO/qRZyVzw9Z
 wHVn+08Nuxm/jFR5ZLkMhLZobrqZunzsECpLR1M7hu9eLN4A579uQ13vv/F2bZMwWl4Q
 DP2g==
X-Gm-Message-State: APjAAAWNaW+MuC5WOTgEW7t9o6P1rMipr4TdH77j8svgEiK+B25WO2Dh
 ton8qCxxw5N3QfDj9XqeLyw=
X-Google-Smtp-Source: APXvYqz81/sZ3Pkc0lWDmNidgRCXz5Zv7nL6cj+W80+6srRNn+yisnyhjFJfvIBGQa2+i/z6zOhiWw==
X-Received: by 2002:a9d:3f4b:: with SMTP id m69mr19038806otc.301.1568029807760; 
 Mon, 09 Sep 2019 04:50:07 -0700 (PDT)
Received: from sreeram-MS-7B98 (cpe-173-174-83-82.austin.res.rr.com.
 [173.174.83.82])
 by smtp.gmail.com with ESMTPSA id o4sm5379170otp.43.2019.09.09.04.50.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Sep 2019 04:50:07 -0700 (PDT)
Date: Mon, 9 Sep 2019 06:50:06 -0500
From: Sreeram Veluthakkal <srrmvlt@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] FBTFT: fb_agm1264k: usleep_range is preferred over udelay
Message-ID: <20190909115006.GB3437@sreeram-MS-7B98>
References: <20190909012605.15051-1-srrmvlt@gmail.com>
 <20190909095625.GB17624@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190909095625.GB17624@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 nishadkamdar@gmail.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, payal.s.kshirsagar.98@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 09, 2019 at 10:56:25AM +0100, Greg KH wrote:
> On Sun, Sep 08, 2019 at 08:26:05PM -0500, Sreeram Veluthakkal wrote:
> > This patch fixes the issue:
> > FILE: drivers/staging/fbtft/fb_agm1264k-fl.c:88:
> > CHECK: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
> > +       udelay(20);
> > 
> > Signed-off-by: Sreeram Veluthakkal <srrmvlt@gmail.com>
> > ---
> >  drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
> > index eeeeec97ad27..2dece71fd3b5 100644
> > --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
> > +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
> > @@ -85,7 +85,7 @@ static void reset(struct fbtft_par *par)
> >  	dev_dbg(par->info->device, "%s()\n", __func__);
> >  
> >  	gpiod_set_value(par->gpio.reset, 0);
> > -	udelay(20);
> > +	usleep_range(20, 40);
> 
> Is it "safe" to wait 40?  This kind of change you can only do if you
> know this is correct.  Have you tested this with hardware?
> 
> thanks,
> 
> greg k-h

Hi Greg, No I haven't tested it, I don't have the hw. I dug depeer in to the usleep_range

https://github.com/torvalds/linux/blob/master/kernel/time/timer.c#L1993
	u64 delta = (u64)(max - min) * NSEC_PER_USEC;

 * The @delta argument gives the kernel the freedom to schedule the
 * actual wakeup to a time that is both power and performance friendly.
 * The kernel give the normal best effort behavior for "@expires+@delta",
 * but may decide to fire the timer earlier, but no earlier than @expires.

My understanding is that keeping delta 0 (min=max=20) would be equivalent. 
I can revise the patch to usleep_range(20, 20) or usleep_range(20, 21) for a 1 usec delta.
What do you suggest?

thanks,
Sreeram
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
