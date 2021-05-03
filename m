Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2A4371346
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 May 2021 11:57:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CECB160B17;
	Mon,  3 May 2021 09:57:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eSbe4bABwvMz; Mon,  3 May 2021 09:57:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08B436059C;
	Mon,  3 May 2021 09:57:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 88D621BF373
 for <devel@linuxdriverproject.org>; Mon,  3 May 2021 09:57:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 77A314020F
 for <devel@linuxdriverproject.org>; Mon,  3 May 2021 09:57:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U0VfH3J4PgaA for <devel@linuxdriverproject.org>;
 Mon,  3 May 2021 09:57:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C593B400DC
 for <devel@driverdev.osuosl.org>; Mon,  3 May 2021 09:57:05 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 33A7C61157;
 Mon,  3 May 2021 09:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620035825;
 bh=NHIRO3+PyDbLugh6/AIoA+3M25be2L4BL+5JpSuPWs4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EjghMvyXqe4C3XAQOdQia+TDQPIrOeHVFc+Q8X7DOrmSK4v4CVpXxkKoHSt4i+OxA
 o6vf8bsPmcxMwvqfFuQzJJy4nwlSA90T91Fx6JjKGRni3jtd0SX22V1uAuB43pVMHu
 ychRh+6P1rKtZH2ZJR9WDO2fWcKNwZBDwyHPFPcf1VkcPHefgBs2B4x+dD/6ZEfJW2
 3MTLbyvu+eaMmTQ/uNeF5R9+MKJc74sJqS5ByyHTg87xi77mt+gJVRHt/tXcXIVyfz
 7fB/ePUP/53JgxCA49zUXF9JmYbnEG7S3feP3l3RYMUK/petVGjhQ6sUEFWN2nYYOf
 9Jalo8ZkqSzsA==
Received: from johan by xi.lan with local (Exim 4.93.0.4)
 (envelope-from <johan@kernel.org>)
 id 1ldVKF-0004I6-Nv; Mon, 03 May 2021 11:57:16 +0200
Date: Mon, 3 May 2021 11:57:15 +0200
From: Johan Hovold <johan@kernel.org>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Subject: Re: [PATCH v4 23/79] staging: media: ipu3: use
 pm_runtime_resume_and_get()
Message-ID: <YI/I+ztnoNUr+u1T@hovoldconsulting.com>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
 <ab2332b27d0043574a72a42ec8d757fd06279cc6.1619621413.git.mchehab+huawei@kernel.org>
 <20210430180338.00006e62@Huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210430180338.00006e62@Huawei.com>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>,
 mauro.chehab@huawei.com, Bingbu Cao <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Apr 30, 2021 at 06:03:38PM +0100, Jonathan Cameron wrote:
> On Wed, 28 Apr 2021 16:51:44 +0200
> Mauro Carvalho Chehab <mchehab+huawei@kernel.org> wrote:
> 
> > Commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
> > added pm_runtime_resume_and_get() in order to automatically handle
> > dev->power.usage_count decrement on errors.
> > 
> > Use the new API, in order to cleanup the error check logic.
> > 
> > Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> Could add that pm_runtime_put() should have been pm_runtime_put_noidle()
> inorder to not potentially result in a call to runtime suspend when
> we never resumed in the first place.

No, that would never happen anyway and any pm_runtime_put() will do
even if pm_runtime_put_noidle() is the natural choice in this case to
balance the counter.

> Otherwise reasonable cleanup.
> 
> Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> 
> > ---
> >  drivers/staging/media/ipu3/ipu3.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/media/ipu3/ipu3.c b/drivers/staging/media/ipu3/ipu3.c
> > index ee1bba6bdcac..8e1e9e46e604 100644
> > --- a/drivers/staging/media/ipu3/ipu3.c
> > +++ b/drivers/staging/media/ipu3/ipu3.c
> > @@ -392,10 +392,9 @@ int imgu_s_stream(struct imgu_device *imgu, int enable)
> >  	}
> >  
> >  	/* Set Power */
> > -	r = pm_runtime_get_sync(dev);
> > +	r = pm_runtime_resume_and_get(dev);
> >  	if (r < 0) {
> >  		dev_err(dev, "failed to set imgu power\n");
> > -		pm_runtime_put(dev);
> >  		return r;
> >  	}

Johan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
