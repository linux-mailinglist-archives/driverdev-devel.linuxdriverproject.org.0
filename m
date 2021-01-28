Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BEF307281
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Jan 2021 10:24:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C76C6873DC;
	Thu, 28 Jan 2021 09:24:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aXEHtIzX9di5; Thu, 28 Jan 2021 09:24:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF0DA873C8;
	Thu, 28 Jan 2021 09:24:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A00861BF417
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 09:24:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9B1538629B
 for <devel@linuxdriverproject.org>; Thu, 28 Jan 2021 09:24:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XSSfQi9yrXBv for <devel@linuxdriverproject.org>;
 Thu, 28 Jan 2021 09:24:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com
 [209.85.216.49])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 861CC86287
 for <devel@driverdev.osuosl.org>; Thu, 28 Jan 2021 09:24:42 +0000 (UTC)
Received: by mail-pj1-f49.google.com with SMTP id a20so3518379pjs.1
 for <devel@driverdev.osuosl.org>; Thu, 28 Jan 2021 01:24:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=mwV3/xQMhtiXtLZ+Mq1qTsQwALfHyXZpg4s1y6TXkNg=;
 b=ZGBv/LYhmLi4zaIKVJ9z9H+geH23aSQG0vsf8FRrIZ+UvcXjQ4lg4455ED6XHqcoP8
 sxJ/johTeXwaXkY6ypXhyJMw6laXAw9xbV0l80IPwKtNeH9UN2qjNg34cY1iu3Osh/Vn
 s/IjvUrgN1r15m+hjCLG5UxqF6aB08Ms82dobBq4x+dCbiVyG6XIGE5YsZL/XYIPGEuv
 57J+VDHvLnZ3MwozH5vvCKZX0dvLosotLjwrCe2cg7UDqDVJkY3mEfiHyVzTzmSmYu8s
 rJ0Kp5qBNKwmRRiHdWUB+BDLxywJdxyNgcSzcFG3mft66hCdL+jPLcEwksAlVppSvbyN
 5/Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=mwV3/xQMhtiXtLZ+Mq1qTsQwALfHyXZpg4s1y6TXkNg=;
 b=K/zf4JZ0vnlQ9TRKqB3cPQVfQ7Y1hyJNcUISmgpFb2dxNMm6H1QpxYSsjnXyAhhI9X
 UzSBai3MFXVReYzslnh+PBY5gs2DZHtt2zwVT5RyBJsd+wJPenQSoXaj0e+VULIKB5jr
 j7rr2OheRlrEA5vueE8/QGGMFtCAq9+OoslRSjOdVNKfPKznrfcrezSDv+kgXQ5WPEyH
 wr8Ka0gpJswSW6oc3g4aULxNKAVPGKO6ZtfT9dDBvrPX3NUrHb3ILhmpK/BjhAgY64UW
 j8XXn2EcSURAU0dl1oTPEC9QkqfCuoWkKnEYfW0EPIdQQO4t/yawPj66fwq87Lv8GCIa
 rgXw==
X-Gm-Message-State: AOAM530mK5cqF2B1haRKYAaFXl6OZSfSYdeOjYLOMSb0/ImcZMdzfJKS
 ls8d6/hAzFhChDfqRLl9J2M=
X-Google-Smtp-Source: ABdhPJwXdincjGRwU8pXhDOX0fgRkLCC4WVwa2zjx2UEI//tJEe1ofb7KgTuw5BL+mqEP1EP7HdgLA==
X-Received: by 2002:a17:90a:2f83:: with SMTP id
 t3mr10324593pjd.128.1611825882057; 
 Thu, 28 Jan 2021 01:24:42 -0800 (PST)
Received: from localhost ([103.220.76.197])
 by smtp.gmail.com with ESMTPSA id gg22sm4538913pjb.24.2021.01.28.01.24.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Jan 2021 01:24:41 -0800 (PST)
Date: Thu, 28 Jan 2021 17:24:35 +0800
From: carlis <zhangxuezhi3@gmail.com>
To: Kari Argillander <kari.argillander@gmail.com>
Subject: Re: [PATCH v10] staging: fbtft: add tearing signal detect
Message-ID: <20210128172435.00005643@gmail.com>
In-Reply-To: <20210128065233.ji4b7ea54ihyu2l5@kari-VirtualBox>
References: <1611754972-151016-1-git-send-email-zhangxuezhi3@gmail.com>
 <20210127223222.3lavtl3roc4cabso@kari-VirtualBox>
 <20210128094258.000012c3@gmail.com>
 <20210128065233.ji4b7ea54ihyu2l5@kari-VirtualBox>
Organization: Tyzmig-ryrjum-8kedto
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
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
 mh12gx2825@gmail.com, gregkh@linuxfoundation.org,
 oliver.graute@kococonnector.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, sbrivio@redhat.com, colin.king@canonical.com,
 zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 28 Jan 2021 08:52:33 +0200
Kari Argillander <kari.argillander@gmail.com> wrote:

> On Thu, Jan 28, 2021 at 09:42:58AM +0800, carlis wrote:
> > On Thu, 28 Jan 2021 00:32:22 +0200
> > Kari Argillander <kari.argillander@gmail.com> wrote:  
> > > >  #include "fbtft.h"
> > > >  
> > > >  #define DRVNAME "fb_st7789v"
> > > > @@ -66,6 +69,32 @@ enum st7789v_command {
> > > >  #define MADCTL_MX BIT(6) /* bitmask for column address order */
> > > >  #define MADCTL_MY BIT(7) /* bitmask for page address order */
> > > >  
> > > > +#define SPI_PANEL_TE_TIMEOUT	400 /* msecs */
> > > > +static struct mutex te_mutex;/* mutex for set te gpio irq
> > > > status */    
> > > 
> > > Space after ;  
> > hi, i have fix it in the patch v11  
> > >   
> 
> Yeah sorry. I accidentally review wrong patch. But mostly stuff are
> still relevant.
> 
> > > > @@ -82,6 +111,33 @@ enum st7789v_command {
> > > >   */
> > > >  static int init_display(struct fbtft_par *par)
> > > >  {
> > > > +	int rc;
> > > > +	struct device *dev = par->info->device;
> > > > +
> > > > +	par->gpio.te = devm_gpiod_get_index_optional(dev,
> > > > "te", 0, GPIOD_IN);
> > > > +	if (IS_ERR(par->gpio.te)) {
> > > > +		rc = PTR_ERR(par->gpio.te);
> > > > +		dev_err(par->info->device, "Failed to request
> > > > te gpio: %d\n", rc);
> > > > +		return rc;
> > > > +	}    
> > > 
> > > You request with optinal and you still want to error out? We could
> > > just continue and not care about that error. User will be happier
> > > if device still works somehow.  
> > You mean i just delete this dev_err print ?!
> > like this:
> > 	par->gpio.te = devm_gpiod_get_index_optional(dev, "te",
> > 0,GPIOD_IN); 
> >         if (IS_ERR(par->gpio.te))
> > 		return PTR_ERR(par->gpio.te);  
> 
> Not exactly. I'm suggesting something like this.
> 
> if (IS_ERR(par->gpio.te) == -EPROBE_DEFER) {
> 	return -EPROBE_DEFER;
> 
> if (IS_ERR(par->gpio.te))
> 	par-gpio.te = NULL;
> 
> This like beginning of your patch series but the difference is that if
> EPROBE_DEFER then we will try again later. Any other error and we will
> just ignore TE gpio. But this is up to you what you want to do. To me
> this just seems place where this kind of logic can work.
> 
> > > > +		if (par->gpio.te) {
> > > > +			set_spi_panel_te_irq_status(par, true);
> > > > +			reinit_completion(&spi_panel_te);
> > > > +			ret =
> > > > wait_for_completion_timeout(&spi_panel_te,
> > > > +
> > > > msecs_to_jiffies(SPI_PANEL_TE_TIMEOUT));
> > > > +			if (ret == 0)    
> > > 
> > > !ret
> > >   
> > > > +				dev_err(par->info->device,
> > > > "wait panel TE time out\n");
> > > > +		}
> > > > +		ret = par->fbtftops.write(par, par->txbuf.buf,
> > > > +					 startbyte_size +
> > > > to_copy
> > > > * 2);
> > > > +		if (par->gpio.te)
> > > > +			set_spi_panel_te_irq_status(par,
> > > > false);
> > > > +		if (ret < 0)
> > > > +			return ret;
> > > > +		remain -= to_copy;
> > > > +	}
> > > > +
> > > > +	return ret;    
> > > 
> > > Do we want to return something over 0? If not then this can be
> > > return 0. And then you do not need to even init ret value at the
> > > beginning.
> > > 
> > > Also wait little bit like Greg sayd before sending new version.
> > > Someone might nack about what I say or say something more.
> > >   
> > hi, i copy fbtft_write_vmem16_bus8 from file fbtft_bus.c and modify
> > it ,just add te wait logic, i will take more time to check this
> > original function.  
> 
> It might be ok or not. You should still check.

hi, i will check more carefully, now i have a new problem, Is there a
way to clear the interrupt pending state before opening it again?



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
