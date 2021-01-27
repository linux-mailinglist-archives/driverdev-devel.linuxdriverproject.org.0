Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3F8305315
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 07:19:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1454A20554;
	Wed, 27 Jan 2021 06:19:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EzjModEU4LDt; Wed, 27 Jan 2021 06:19:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 004282052F;
	Wed, 27 Jan 2021 06:19:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B17911BF85D
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 06:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ADD7B84FDD
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 06:19:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gUfVpv2spoLy for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 06:19:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
 [209.85.214.177])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4621784FD5
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 06:19:35 +0000 (UTC)
Received: by mail-pl1-f177.google.com with SMTP id q2so473222plk.4
 for <devel@driverdev.osuosl.org>; Tue, 26 Jan 2021 22:19:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=+AVxzGfMqYMx9RPIgoRtcct2VE1ZRqZ1PBLR8znjyvQ=;
 b=jQGw6IpPbNt4L5SXLZ6/mKlNuFjt5RROmiIjibyXO+me3dqe6+J9AGUFDjNXYKkqjM
 qVqGmLPPpkmYWNenr063FwvG7ZWOeVOWPsTZKPLvvAlS9mEfSXmVJrMbXwrvbx10D90s
 SZve8a4DPC8Kw8nuQ8qXCH2yYbdXUJ6nnS9LIS3kggQWUWhBY9eY/LYZJa6HWIMJ3vw8
 02Yd6E8icfCEJ4S49jZK9N8X9c/T/rrT2u1yDMkPM5Psp9pW2PcI/eiDINV0f/FFuBAc
 VVNRbdC4Kph5tndKiflPXfs179eMyxaCC3Rb27VPIkTw7utVRzoeY+qg9h9ax+2gJ/f8
 xpQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=+AVxzGfMqYMx9RPIgoRtcct2VE1ZRqZ1PBLR8znjyvQ=;
 b=TxPJhZhJomGUJ4Xvt6gtcIsHzkRLZpU+V7stQDKDL3kIJnc6tH0ULs0pD/dToA7/GY
 LcnwVNRSRWI8RRfkWaTdwdQxQQxdQIQ531P4by8z6FsA+O82kTcickKxx0X/eFXwfv3e
 HJwY1brKtbokpKFKKVD1yngodsDXjKg01uttb2I/04Emir2hN8rARbdhytM7nQB3Xbnh
 CrBRHwpJ+29Tszpj8pU70xrBZe5teVJOiOBftlfx0w/Dc1BoBeH83jlDr7kAyClWmAGd
 CIElEe5VCWf4EP0Lmgl9zMs9lGI8XBE8djdqs4mrR4WEwZCrPd3jtDemtsqCEn9VKhA2
 gSQw==
X-Gm-Message-State: AOAM530MJq3R4sjt7FVVS6Le4xFDFz+xAbr7tLmmIeNTQSjPPOrKtmkD
 6UDz1JhvDfgKZKYGAechu8c=
X-Google-Smtp-Source: ABdhPJw3xTWutH1s20TQixwXD6pOjBaO3Uam1zSz+Lc9n84CDHMRzzsMAr0X6sMA+/isS4YpBnlbFA==
X-Received: by 2002:a17:903:22c2:b029:dd:f952:e341 with SMTP id
 y2-20020a17090322c2b02900ddf952e341mr9583056plg.67.1611728374922; 
 Tue, 26 Jan 2021 22:19:34 -0800 (PST)
Received: from localhost ([103.220.76.197])
 by smtp.gmail.com with ESMTPSA id i7sm1057917pfc.50.2021.01.26.22.19.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Jan 2021 22:19:34 -0800 (PST)
Date: Wed, 27 Jan 2021 14:19:27 +0800
From: carlis <zhangxuezhi3@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v5] fbtft: add tearing signal detect
Message-ID: <20210127141927.00004472@gmail.com>
In-Reply-To: <20210127054523.GA2696@kadam>
References: <1611711140-68260-1-git-send-email-zhangxuezhi3@gmail.com>
 <20210127054523.GA2696@kadam>
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

On Wed, 27 Jan 2021 08:45:23 +0300
Dan Carpenter <dan.carpenter@oracle.com> wrote:

> On Wed, Jan 27, 2021 at 09:32:20AM +0800, Carlis wrote:
> > @@ -82,6 +111,29 @@ enum st7789v_command {
> >   */
> >  static int init_display(struct fbtft_par *par)
> >  {
> > +	int rc;
> > +	struct device *dev = par->info->device;
> > +
> > +	par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0,
> > GPIOD_IN);
> > +	if (par->gpio.te) {
> > +		init_completion(&spi_panel_te);
> > +		mutex_init(&te_mutex);
> > +		rc = devm_request_irq(dev,
> > +				      gpiod_to_irq(par->gpio.te),
> > +				     spi_panel_te_handler,
> > IRQF_TRIGGER_RISING,
> > +				     "TE_GPIO", par);
> > +		if (rc) {
> > +			pr_err("TE request_irq failed.\n");
> > +			devm_gpiod_put(dev, par->gpio.te);
> > +			par->gpio.te = NULL;
> > +		} else {
> > +
> > disable_irq_nosync(gpiod_to_irq(par->gpio.te));
> > +			pr_info("TE request_irq completion.\n");
> > +		}
> > +	} else {
> > +		pr_info("%s:%d, TE gpio not specified\n",
> > +			__func__, __LINE__);
> > +	}  
> 
> I'm sorry that I was not clear before.  This code will crash if
> devm_gpiod_get_index_optional() returns an error.  You *NEED* to check
> for error pointers and return the error code.  Write it exactly like
> this:
> 
> 	par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0,
> GPIOD_IN); if (IS_ERR(par->gpio.te))
> 		return PTR_ERR(par->gpio.te);
> 
> 	if (par->gpio.te) {
> 		init_completion(&spi_panel_te);
> 
> 
> regards,
> dan carpenter
> 

hi,i will fix it like below:
	par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0,
GPIOD_IN); if (IS_ERR(par->gpio.te)) {
		rc = PTR_ERR(par->gpio.te);
		pr_err("Failed to request  te gpio: %d\n", rc);
		par->gpio.te = NULL;
	}
	if (par->gpio.te) {
		init_completion(&spi_panel_te);
		mutex_init(&te_mutex);
		rc = devm_request_irq(dev,
				      gpiod_to_irq(par->gpio.te),
				     spi_panel_te_handler,
IRQF_TRIGGER_RISING, "TE_GPIO", par);
		if (rc) {
			pr_err("TE request_irq failed.\n");
			devm_gpiod_put(dev, par->gpio.te);
			par->gpio.te = NULL;
		} else {
			disable_irq_nosync(gpiod_to_irq(par->gpio.te));
			pr_info("TE request_irq completion.\n");
		}
	} else {
		pr_info("%s:%d, TE gpio not specified\n",
			__func__, __LINE__);
	}

regards,
zhangxuezhi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
