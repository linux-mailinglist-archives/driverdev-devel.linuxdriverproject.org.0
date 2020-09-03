Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8511B25C5AE
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Sep 2020 17:48:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5CC3D87407;
	Thu,  3 Sep 2020 15:48:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lea8sVgFFvIm; Thu,  3 Sep 2020 15:48:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C69298725F;
	Thu,  3 Sep 2020 15:48:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0683C1BF423
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 15:48:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 02C7D86855
 for <devel@linuxdriverproject.org>; Thu,  3 Sep 2020 15:48:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1+hL2QUNVeST for <devel@linuxdriverproject.org>;
 Thu,  3 Sep 2020 15:48:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 45E438669E
 for <devel@driverdev.osuosl.org>; Thu,  3 Sep 2020 15:48:45 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id c15so3722813wrs.11
 for <devel@driverdev.osuosl.org>; Thu, 03 Sep 2020 08:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=OPj9d30CAARqGx+bikPSsEnUWXOcRX7Mxe5aMa8ahCE=;
 b=Fv+ELy+K8p1TzkuFzHURU8ULrabjLy/GA+gzrVslyT9VOYD/zzcxlCRarBUx24WKrr
 j5Zr67a5zMLy7bfYFOfwlVMhz0E9e2ZT1vbriU7KZwnmIfrI+Vvgk/eBjxqJ5U60a7n8
 8qXKrhUyNu+W5a3GLvwkqwPEcZoFmGBsfTsLAVqsgZS0j4L2k9ovbYqObZHMpPMoDAYG
 bxUfk47jrPQJXDXj//x4zgv++hYgtm05jEFuPueuVK4kNvaM8ywNZyeWHHhRnP7ji5oW
 Gy4tjKcYBr1v93ZJTIKinzVU8XXLMKlP2jGlJ2JLd3wPZMjg1lyL3vvEmGRB9/0ZM7C2
 5w3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=OPj9d30CAARqGx+bikPSsEnUWXOcRX7Mxe5aMa8ahCE=;
 b=uiA9nTTUQu4hmg0WaArENCwJNxuRqTydagVCsfdAzPi2p5cdaopfrRwrmn96WS2c2L
 xL0l6aZ/6W3r0UY2uw3/tEKw9EB4MwCoTQSLVu7BnIPXUfu050mKTuGomUV+OMM/5j6G
 3QJ0SV+1pIlYA1GGxDX/8C1gmMP2IwrKbPwAbxFf6XEOBhYf1zKy3V3GkEC0/Cbdsgyz
 FB8ibnuUN/OqEebzk5MmSJntc9cL0uZSHxT75b6xEYGuU3GVjOMYkgCzMy+gLeOego5r
 7XMwDvbvKj3T5N1YZsQvyghpMGyBmbej37oAB1yi6yGQUes/LwUqBChcFqEG8Pn8uDYP
 eA8w==
X-Gm-Message-State: AOAM533Asyu0tJcyXbrynhhJEq4PGxNq+o2b6oIEnMgji3TkB0a6Fki/
 Bvt/Bwyuj8XWni5sfRI2iF4=
X-Google-Smtp-Source: ABdhPJzoUWMY/x3nAOJw9Pgg2IVnTKHb2nEiyUuAELHzrPUZ4WLFr/xkMOPobcmcW7xqeTvOZwlHsA==
X-Received: by 2002:adf:f78c:: with SMTP id q12mr3157273wrp.6.1599148123691;
 Thu, 03 Sep 2020 08:48:43 -0700 (PDT)
Received: from medion (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net.
 [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id x24sm5546173wrd.53.2020.09.03.08.48.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Sep 2020 08:48:42 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
X-Google-Original-From: Alex Dewar <alex.dewar@gmx.co.uk>
Date: Thu, 3 Sep 2020 16:48:41 +0100
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: media: atomisp: Fix error path in lm3554_probe()
Message-ID: <20200903154841.w5rppm325jobimud@medion>
References: <20200902184207.479525-1-alex.dewar90@gmail.com>
 <20200903121134.GB8299@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200903121134.GB8299@kadam>
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
Cc: devel@driverdev.osuosl.org, Alan Cox <alan@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Dewar <alex.dewar90@gmail.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Good point about the timer!

> >  
> > -	err = lm3554_gpio_init(client);
> > -	if (err) {
> > +	ret = lm3554_gpio_init(client);
> > +	if (ret) {
> >  		dev_err(&client->dev, "gpio request/direction_output fail");
> > -		goto fail2;
> > +		goto err_cleanup_entity;
> >  	}
> >  	return atomisp_register_i2c_module(&flash->sd, NULL, LED_FLASH);
> 
> If atomisp_register_i2c_module() fails then we need to call
> lm3554_gpio_uninit(client) and do other cleanup.

I'm probably showing my ignorance here, but I can't see what cleanup we
need. Inside lm3554_gpio_init we have:

	ret = gpiod_direction_output(pdata->gpio_reset, 0);
	if (ret < 0)
		return ret;
	dev_info(&client->dev, "flash led reset successfully\n");

	if (!pdata->gpio_strobe)
		return -EINVAL;

	ret = gpiod_direction_output(pdata->gpio_strobe, 0);
	if (ret < 0)
		return ret;

I'm not sure how you "undo" a call to gpiod_direction_output, but I'm
thinking you won't need to do anything because it should be ok to leave
a gpio to output 0... right?

Alex

> 
> > -fail2:
> > +
> > +err_cleanup_entity:
> >  	media_entity_cleanup(&flash->sd.entity);
> > +err_free_ctrl_handler:
> >  	v4l2_ctrl_handler_free(&flash->ctrl_handler);
> 
> regards,
> dan carpenter
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
