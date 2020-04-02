Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE5619C6AD
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 18:04:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6267F85DF9;
	Thu,  2 Apr 2020 16:04:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1OGI0w3eyLQS; Thu,  2 Apr 2020 16:04:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4989985D55;
	Thu,  2 Apr 2020 16:04:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8ECC91BF592
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 16:04:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 825912670B
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 16:04:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f6YTtjOty+cm for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 16:04:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id ABB44203AB
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 16:04:05 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id a25so4931755wrd.0
 for <devel@driverdev.osuosl.org>; Thu, 02 Apr 2020 09:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=qBVTjaLThJfumgo5ABo1WV3ZM7MbrBwLw7tmH+TZCSg=;
 b=kwmzilWpIVyO9RPctO+cX7UWmlcn0TxAF4fL+FpQSQJURfsVu2xLot/+y9d15PTkQE
 XWMzw1q9PtSSWuH9hxOuPR1bWKbxlAjy69znqTsRccXjq82wBemkSMvkxPHtF2AABG7x
 ifDlbdzrutQIByLyb8Q+EJi0TOXk1u4qnssc8dTMeGuJ8eBHvjw8jsPKyI873qd1/dVS
 WIb9YjrgdHF/Ad2SPQUNMwuU3WP8RY14JiuOpvT1Sbj1+5lKxYieQCum3oFl+CjmWv6j
 TM7pbWWr1WdE/1fxPqwC6FOpQl2s5X7KHFl8XJnarjar5fqrhf/6Ic+/57zKk8hqQx3Q
 frmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qBVTjaLThJfumgo5ABo1WV3ZM7MbrBwLw7tmH+TZCSg=;
 b=GBX4bjSjVSd4Ew1vQUDb2FBus9jeDjXEEARcwWsRdZcccl38QEqJVo443ce1LzvclW
 IrTOqh0K/gyA7Uu59svg6ql3QejVb0+A4ExytAac9M3i2M4dt8VemLKkX4LdEdNCGsVO
 fiWM/98gkuTWJYDixdj59txqGbm7kX8echBaZ1Hk9eGMBx+9nsQMnH2eb9PfQRkHp60m
 4Hc8bi1MkKrDW8jo6XOnUqfj6C6n6vHxOmw7M/RVSyL8JJJsZ/tJ01wRmhnxC9XUVLOI
 NNmfq0VvdhJYauYH+CaD2oI1u/nOQEHegjAug2KAJsSpwvmRlce0Md4zLI/CIp1kpTpP
 M3ng==
X-Gm-Message-State: AGi0PuY4XCpvppX7+lUAGe6+WD8sB/gwzLDexHHAZmF3XY4HBGbSwAOG
 sqjBancyv0ZKs1U2/X8mvCA=
X-Google-Smtp-Source: APiQypKxE40isqGXPYBa29scB1z8vPhNWxo1K4pgf8KCxsrh4y/cdK44Lrxa6WgqgtI8QdSesWLArg==
X-Received: by 2002:a5d:4602:: with SMTP id t2mr4567354wrq.347.1585843444033; 
 Thu, 02 Apr 2020 09:04:04 -0700 (PDT)
Received: from arch-thunder.localdomain (a109-49-46-234.cpe.netcabo.pt.
 [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id y16sm7988816wrp.78.2020.04.02.09.04.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Apr 2020 09:04:03 -0700 (PDT)
Date: Thu, 2 Apr 2020 17:04:00 +0100
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH -next] staging: greybus: fix a missing-check bug in
 gb_lights_light_config()
Message-ID: <20200402160400.cvgvd3da75x2f4qe@arch-thunder.localdomain>
References: <20200401030017.100274-1-chenzhou10@huawei.com>
 <20200402122228.GP2001@kadam>
 <20200402131618.653dkeuz7c2vuujf@arch-thunder.localdomain>
 <20200402142237.GT2001@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402142237.GT2001@kadam>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org,
 Chen Zhou <chenzhou10@huawei.com>, gregkh@linuxfoundation.org,
 johan@kernel.org, linux-kernel@vger.kernel.org, greybus-dev@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,
On Thu, Apr 02, 2020 at 05:22:37PM +0300, Dan Carpenter wrote:
> On Thu, Apr 02, 2020 at 02:16:18PM +0100, Rui Miguel Silva wrote:
> > > > --- a/drivers/staging/greybus/light.c
> > > > +++ b/drivers/staging/greybus/light.c
> > > > @@ -1026,7 +1026,8 @@ static int gb_lights_light_config(struct gb_lights *glights, u8 id)
> > > >  
> > > >  	light->channels_count = conf.channel_count;
> > > >  	light->name = kstrndup(conf.name, NAMES_MAX, GFP_KERNEL);
> > > > -
> > > > +	if (!light->name)
> > > > +		return -ENOMEM;
> > > >  	light->channels = kcalloc(light->channels_count,
> > > >  				  sizeof(struct gb_channel), GFP_KERNEL);
> > > >  	if (!light->channels)
> > > 
> > > The clean up in this function is non-existant.  :(
> > 
> > Yeah, this have a central point to do the cleanups, gb_lights_release,
> > since we may have other lights already configured at this point, we
> > could cleanup this specific one here, but than would need to make sure
> > all other already configure got clean also.
> 
> Central clean up functions never work correctly.

I agree.

> 
> For example, we allocate "cdev->name" in gb_lights_channel_config()
> before we register the channel later in gb_lights_register_all(glights);.
> Now imagine that the register fails.  Then when we're freeing it in
> __gb_lights_led_unregister() we see that the ->is_registered is false
> so we don't kfree(cdev->name).
> 
> That's just a small memory leak.  But there are going to be tons of
> little bugs like that.

Yeah, when I have some cycles I'll go over that error codes paths and
mitigate this kind of issues.

> 
> Anyway it doesn't affect this patch so it's fine.

Yeah, thanks.

------
Cheers,
     Rui
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
