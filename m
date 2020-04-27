Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E381B9A48
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 10:31:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8B89987B2B;
	Mon, 27 Apr 2020 08:31:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9ScUmcDPXM5l; Mon, 27 Apr 2020 08:31:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CD0D587AF4;
	Mon, 27 Apr 2020 08:31:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD58D1BF379
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 08:31:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D9C13203D7
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 08:31:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s65MYV1PYXNA for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 08:31:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by silver.osuosl.org (Postfix) with ESMTPS id E891C203C4
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 08:31:27 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id p16so12782857edm.10
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 01:31:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WPH5/Zlcqqn9jGHb2A/nk7Bqq0SDpzjFGzAMIfPBowQ=;
 b=mYjyhUXFbxEIMXtgY0vSdYqGUr1EbrvFAIQjTkRr1ALQCGiJvo7s6Bcx4m7NS1IwuB
 uRh/LzJNgY89RlGpRkq+u4mZ6jAvNtGW9rvhAlMDK3pc9dV/b6ruLFaZ32gGsPz3MxFY
 wqhIUEWUwN2ZJ39Y+PYE54BQ1WqmIju37doUrpO/SbUQ0rFO+isDIsgqPacYITyRlk6P
 q2YqHEwIEN3LW8d63Y7TiHgP9P/+RcvcDrhT7bqOzXh378wDK453x8L5j5WZSoqUFOm2
 tzy/rl/kc4V5G7mwbCb2r/fM2uaaK5t8GQGRJw1QXwmNNHKn6b+StnGdM6EPaG4AkJQn
 mwSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WPH5/Zlcqqn9jGHb2A/nk7Bqq0SDpzjFGzAMIfPBowQ=;
 b=rbzcyebtGuh9KqsdBJ+Wvc4ZKNRe2TT9nC4/QsSyYo4w5pZmnBX4KmPd/JRYY7WoT+
 eruokmD4EdmIWE46nVHHUkVqMagH7fD8u34jH5mJyqTozSCsLz6EoJRdgAfkldRa1UlU
 y4OdvI6MnezDUaJweBvCC69fv4cJfk1vDo+duLtmAtoOCRchdIlyZM4X2x+BEjoYOFhd
 diAQTLz0vnfZ9SANvYa6rhTEn85HNl4mmZQWYwc/f5pAsUCPerrTUW9wZW7WBcMPOgOy
 FIoerrOZSbD45YAXCY+ky3bXl/qskeT5VvIOwiJYYj4vSWXAJmIRL+KY4pzrNHramGVq
 KSvg==
X-Gm-Message-State: AGi0PuZkSdm5oCHgzU0ukjSK5fsCvI5v7pRyA+qCqJ2jZm90cbe1bx21
 6z/meESfd0dg+YE959q1KsDKYMSUTP1MQw==
X-Google-Smtp-Source: APiQypJYZ21+xAeHnds1LUPiq55TXGrzfyODDqdoQ37szQSXON7GL+0GbZVJL5ws5i/hPdVWqYs5zQ==
X-Received: by 2002:a50:d98b:: with SMTP id w11mr16355293edj.196.1587976286295; 
 Mon, 27 Apr 2020 01:31:26 -0700 (PDT)
Received: from localhost
 (ipv6-80adf4751ff4da96.ost.clients.hamburg.freifunk.net.
 [2a03:2267:4:0:80ad:f475:1ff4:da96])
 by smtp.gmail.com with ESMTPSA id w4sm2005854eds.92.2020.04.27.01.31.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 Apr 2020 01:31:25 -0700 (PDT)
Date: Mon, 27 Apr 2020 10:31:24 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v1] staging: fbtft: fb_st7789v: enabled inversion
Message-ID: <20200427083124.GC18436@portage>
References: <1586424250-25897-1-git-send-email-oliver.graute@gmail.com>
 <20200409101416.GN2001@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409101416.GN2001@kadam>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
 gregkh@linuxfoundation.org, Oliver Graute <oliver.graute@kococonnector.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 09/04/20, Dan Carpenter wrote:
> On Thu, Apr 09, 2020 at 11:24:05AM +0200, Oliver Graute wrote:
> > From: Oliver Graute <oliver.graute@kococonnector.com>
> > 
> > Enable inversion mode
> > 
> > Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
> > ---
> >  drivers/staging/fbtft/fb_st7789v.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/staging/fbtft/fb_st7789v.c b/drivers/staging/fbtft/fb_st7789v.c
> > index 3c3f387936e8..84c5af2dc9a0 100644
> > --- a/drivers/staging/fbtft/fb_st7789v.c
> > +++ b/drivers/staging/fbtft/fb_st7789v.c
> > @@ -120,6 +120,10 @@ static int init_display(struct fbtft_par *par)
> >  	write_reg(par, PWCTRL1, 0xA4, 0xA1);
> >  
> >  	write_reg(par, MIPI_DCS_SET_DISPLAY_ON);
> > +
> > +	/* enable inversion mode */
> > +	write_reg(par, 0x21);
> 
> Use the define and delete the comment.
> 
> 	write_reg(par, MIPI_DCS_ENTER_INVERT_MODE);

ok, I'll do on next version

Best regards,

Oliver
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
