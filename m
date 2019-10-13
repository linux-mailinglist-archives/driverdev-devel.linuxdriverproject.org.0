Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF70D5776
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Oct 2019 20:54:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9B83921503;
	Sun, 13 Oct 2019 18:54:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5HCtG8mCO+56; Sun, 13 Oct 2019 18:54:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4233820785;
	Sun, 13 Oct 2019 18:54:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 50CDE1BF2A3
 for <devel@linuxdriverproject.org>; Sun, 13 Oct 2019 18:54:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4D45784B01
 for <devel@linuxdriverproject.org>; Sun, 13 Oct 2019 18:54:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i5qAb3dSqNwW for <devel@linuxdriverproject.org>;
 Sun, 13 Oct 2019 18:54:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5E39584993
 for <devel@driverdev.osuosl.org>; Sun, 13 Oct 2019 18:54:36 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id j11so17164468wrp.1
 for <devel@driverdev.osuosl.org>; Sun, 13 Oct 2019 11:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=tqsXr9fhBmWkymaUtYPOa1KUp2T9gWdbbOi7v6RICyE=;
 b=e3Ogq3tDcHYRmDXvKY9LQuff9bout4EkuwMXlYAAcrsttguls8KMu8vsVoZEjVnMAH
 NhsyavnBvYbLZH/RA/+j3byv1NXTxcSVrkVJI720XNeW98d94CJtaS9v/PndhghijXx9
 7/skz27sxvHOnxS7ROVPAAFT+2AavDu73LsJ2CH4Gvm6cwKZ8MHfmZNz7LRD07hWFVy3
 R/RzY+8mSMtGJoZL8cN0g7licYApRQ+0CkbZRoy/a60aZJTedB6IBmYsbPuVUVyqA37D
 ANVUuj8MlOcylXGcw3G/tnJxDIMtdGcWMmbYsETqbQPa0qWBLmj92jrT3z3snrqMWJal
 I5hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=tqsXr9fhBmWkymaUtYPOa1KUp2T9gWdbbOi7v6RICyE=;
 b=U8S4yd9l57uiFbr/XEqC6ymFFWiLMR0FQRBdGrvcVCFXKNVEUv1+cFXjfyYxN1krNm
 PyPR2kw9jEVcDo3VXz5P7x5PuJwD9ESoFRTi5yt9frM7xNyoNJ9odNPK8lAmUmdj7Phw
 vRoqzosyxFkY+mgC5sWKAivUCg8/mH8HAhT9gz0jDgPSXc7GF+ZIrkdZ0nNNHmL8PAkf
 D7f+n8y7n/ruU6dUABomKj2tvh1uqo3tNeP1dZELis1cBd3UYMupFhphA9nS0bo4lKBq
 7p3fNbkVW2HP28mmcxJs+oyT1OlqePHji7f9F2DY2B7z9K0Wey54VKPAzKoh6TYUSr1X
 rPoA==
X-Gm-Message-State: APjAAAUVw21T6k7YLSh8bL0NCxBiLSDjb1bU4LaDeAuRMCq7SJs5vtXa
 DegrYCPyzLpWc0/9ofiVmtm4uapHbVL9Mw==
X-Google-Smtp-Source: APXvYqwRgG0AqakseOajpuYCgvajUVizgTjQ2UAUWC3pGItKxEBHB8BMtahI2oGueApYcJ8lWqsolQ==
X-Received: by 2002:a5d:6787:: with SMTP id v7mr8237032wru.392.1570992874814; 
 Sun, 13 Oct 2019 11:54:34 -0700 (PDT)
Received: from wambui ([197.237.61.225])
 by smtp.gmail.com with ESMTPSA id 90sm23340176wrr.1.2019.10.13.11.54.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 11:54:34 -0700 (PDT)
Date: Sun, 13 Oct 2019 21:54:28 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: use DIV_ROUND_UP
 helper macro
Message-ID: <20191013185428.GA390@wambui>
References: <20191013180033.31882-1-wambui.karugax@gmail.com>
 <alpine.DEB.2.21.1910132005330.2565@hadrien>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910132005330.2565@hadrien>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Reply-To: alpine.DEB.2.21.1910132005330.2565@hadrien.osuosl.org
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Oct 13, 2019 at 08:06:14PM +0200, Julia Lawall wrote:
> 
> 
> On Sun, 13 Oct 2019, Wambui Karuga wrote:
> 
> > Use the DIV_ROUND_UP macro to replace open-coded divisor calculation
> > to improve readability.
> > Issue found using coccinelle:
> > @@
> > expression n,d;
> > @@
> > (
> > - ((n + d - 1) / d)
> > + DIV_ROUND_UP(n,d)
> > |
> > - ((n + (d - 1)) / d)
> > + DIV_ROUND_UP(n,d)
> > )
> >
> > Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
> > ---
> >  drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > index 87535a4c2e14..74312e8bb32e 100644
> > --- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> > @@ -4158,7 +4158,8 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
> >
> >  			/*  The value of ((usNavUpper + HAL_NAV_UPPER_UNIT_8723B - 1) / HAL_NAV_UPPER_UNIT_8723B) */
> >  			/*  is getting the upper integer. */
> 
> It's a nice change.  Maybe the above comment could also be dropped, since
> the code is more understandable now.
> 
> julia
> 
Ok, I agree. Will update this.

wambui karuga
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
