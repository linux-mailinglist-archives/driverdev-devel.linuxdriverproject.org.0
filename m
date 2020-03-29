Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC07196C22
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 11:39:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9B919882C4;
	Sun, 29 Mar 2020 09:39:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MrRJN99VJ5VZ; Sun, 29 Mar 2020 09:39:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 09C38882B2;
	Sun, 29 Mar 2020 09:39:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5561D1BF346
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 09:38:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5107D203E0
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 09:38:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fm+NhS5v-0xX for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 09:38:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id E1E382041B
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 09:38:57 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id q3so7004005pff.13
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 02:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=1FjUt0FY4qG4swr3glwUOGPZovJqvh5BcKDS4lGNLW4=;
 b=JTmZm4tANjipQr6DLS3RinvGorU5jef6avNVRWTXMGMOHc5zWJD8xRNxFdvfYAU4My
 dEKmoB/HJdqNKyrKgkKhGvUtY2NYkWNMrIpeZcIPjbvpkgSoKP+IlQUNP6CyEu+b4qGT
 l+YPnkDIixPJwYLwiuhYT1u38s37mYmi54uDWkT7EzzbeLUFYD5j78Upnr/2DGP4+d6m
 fXVTjObFPYSWpVc+/5VbiQy/dyhcRHQTNROPixtBi5Cc7g9PWtN2eezd9eFyd2k8FEjg
 w49fddJ9HlCac53/1mK3H20pfoGxPXiO70i0BlYo5w+3HCm3cV8SOG5GXIG7hlLiOHcB
 hA5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=1FjUt0FY4qG4swr3glwUOGPZovJqvh5BcKDS4lGNLW4=;
 b=lnh18HvvFNHPFNueppCCY6v4g6Eo98Ut+G7TwFQ4N62g1irskq/g1tGS4GGz9kDZTH
 Fvqrj/kCQc3ojs4gwyy3tQMbfGgLos3A4eiow0GNm9+AtZwBkYaeZjDKFhVlHMARlz0v
 6wixON4Z4jTK1qH6Ydz1yCtb6ovLq4+3koZM8qTqofTrtqalkKvxmpBgn6gAJTxRcIou
 iqml8ObZ2s01IRTEsn0tRs4jZXpmnaQ2TiHq7dL4HcrKs7yuXdTtzo/vk9Kgb4PPOFlQ
 69SCfdGDj8AG7jc5Eew2oa+4H5TxzB0xHgD5MB3qRjNzjr+qc5aGjPHhBtGFrQbKT+IF
 WnxA==
X-Gm-Message-State: ANhLgQ2gXk1lahIUCG6rvdlZKkO4cqrr3lxAt8kd/la8QfNNNTmO502t
 OgM4xy6ITZI3tKZaYD1WAM8=
X-Google-Smtp-Source: ADFU+vsho0XarlgM5qxPPJLJ7yrus56xN6a1QzWk0breFr82zriHlE38k99Mh8f7T/KzyYmocphc7Q==
X-Received: by 2002:a62:160b:: with SMTP id 11mr8149948pfw.189.1585474737395; 
 Sun, 29 Mar 2020 02:38:57 -0700 (PDT)
Received: from ManjaroKDE ([47.144.161.84])
 by smtp.gmail.com with ESMTPSA id y29sm7265920pge.22.2020.03.29.02.38.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Mar 2020 02:38:56 -0700 (PDT)
Message-ID: <2fccf96c3754e6319797a10856e438e023f734a7.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Replace udelay with
 preferred usleep_range
From: John Wyatt <jbwyatt4@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Date: Sun, 29 Mar 2020 02:38:51 -0700
In-Reply-To: <alpine.DEB.2.21.2003291127230.2990@hadrien>
References: <20200329092204.770405-1-jbwyatt4@gmail.com>
 <alpine.DEB.2.21.2003291127230.2990@hadrien>
User-Agent: Evolution 3.36.1 
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, outreachy-kernel@googlegroups.com,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2020-03-29 at 11:28 +0200, Julia Lawall wrote:
> 
> On Sun, 29 Mar 2020, John B. Wyatt IV wrote:
> 
> > Fix style issue with usleep_range being reported as preferred over
> > udelay.
> > 
> > Issue reported by checkpatch.
> > 
> > Please review.
> > 
> > As written in Documentation/timers/timers-howto.rst udelay is the
> > generally preferred API. hrtimers, as noted in the docs, may be too
> > expensive for this short timer.
> > 
> > Are the docs out of date, or, is this a checkpatch issue?
> > 
> > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> > ---
> >  drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c
> > b/drivers/staging/fbtft/fb_agm1264k-fl.c
> > index eeeeec97ad27..019c8cce6bab 100644
> > --- a/drivers/staging/fbtft/fb_agm1264k-fl.c
> > +++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
> > @@ -85,7 +85,7 @@ static void reset(struct fbtft_par *par)
> >  	dev_dbg(par->info->device, "%s()\n", __func__);
> > 
> >  	gpiod_set_value(par->gpio.reset, 0);
> > -	udelay(20);
> > +	usleep_range(20, 20);
> 
> usleep_range should have a range, eg usleep_range(50, 100);.  But it
> is
> hard to know a priori what the range should be.  So it is probably
> better
> to leave the code alone.

Understood.

With the question I wrote in the commit message:

"As written in Documentation/timers/timers-howto.rst udelay is the
generally preferred API. hrtimers, as noted in the docs, may be too
expensive for this short timer.

Are the docs out of date, or, is this a checkpatch issue?"

Is usleep_range too expensive for this operation?

Why does checkpatch favor usleep_range while the docs favor udelay?

> 
> julia
> 
> >  	gpiod_set_value(par->gpio.reset, 1);
> >  	mdelay(120);
> >  }
> > --
> > 2.25.1
> > 
> > --
> > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit 
> > https://groups.google.com/d/msgid/outreachy-kernel/20200329092204.770405-1-jbwyatt4%40gmail.com
> > .
> > 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
