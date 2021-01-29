Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A784030892E
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 13:47:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 94E05871FF;
	Fri, 29 Jan 2021 12:47:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tRLCu5PMaINv; Fri, 29 Jan 2021 12:47:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A0C4871FB;
	Fri, 29 Jan 2021 12:47:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 449461BF34C
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 12:47:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3E9B92E13D
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 12:47:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gFOVcOSa0Sd3 for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 12:47:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
 [209.85.214.182])
 by silver.osuosl.org (Postfix) with ESMTPS id 98CF42729B
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 12:47:41 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id e9so5179651plh.3
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 04:47:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=gey6ZY0toHv6VOmxg4G7/z9gStOYikqSFh5g6TpL77g=;
 b=vXuqtJc1idgNU9yQCo/fp7Ab+usyyyfz1rSAqGtMgWtscmTnt8AT0BdLItHL2GlrXk
 gkQmfIP6Z4ygt7lY4rgpNd/7dGSgSR7JEiYxoOkcy5wpVlMS0eYu0/UgLLUPxNt1kMLS
 b2E/+9KjqTf9Q9BOZMpWXbC+Hdn1uGfY0NqP4oA7G2kArYNox63IVCU3KqqkVF9TdIWY
 6ukXjx71x12HkKZTJJ2sapPY+W13ItMFJmVurVOiPIuqBc18o4LXBawyUsaNk/SKg8qc
 9+pZHOFFQ7TifaeYRrP4QKIDZU5g4SrAkESSsWNbFKMZ1o2boq4S3tpqHNQVh3nriy8Y
 KgKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=gey6ZY0toHv6VOmxg4G7/z9gStOYikqSFh5g6TpL77g=;
 b=J2EuU1r3X/0YMQHoXaMR6Czds9IaeBbNgyp+DztW2MSMYLpnmJJ7JLOXLmwfdVRpHt
 FR4tSJWBmoOQc5xHr6o+xoamtiGQPmxav/et5fxJz3/gnNyktzlnudj0aUhEOMJzV5Gt
 z4tHrdR9V/eR1lnQZjvqWCJhZxoK5DucrmkF9MvNCRlxYCEtS5peJHU5ERPFYAQcC+UQ
 asb7ln9B05UgAAn2IGWt2N0RluM8I8rdNoHoGOBwo0n6UJv7rs3EE/5CBqI+tqMAq16c
 RGWl8MUXI8py2BisVIfwhbIqKBpaDJi1PdB3y/4oQYYb1H/yJ86zsVAm2dDbGg3n1/wt
 Vv+w==
X-Gm-Message-State: AOAM5310YmZ2j0/zxnX2v6t+W5HFO8TiOfkM0QUfilSoWlQ0oHafEmvM
 gSIF1u3BZjS39jyeiB7DJpw=
X-Google-Smtp-Source: ABdhPJzrUKpZVmxy7aREzbzLAECwsJsp1TVGwWCQ4IACdk/D7pTSz/Vr2FguW3H0pi0FGnZzWRgFdw==
X-Received: by 2002:a17:902:ab93:b029:df:f681:cdf3 with SMTP id
 f19-20020a170902ab93b02900dff681cdf3mr4248655plr.28.1611924461212; 
 Fri, 29 Jan 2021 04:47:41 -0800 (PST)
Received: from localhost ([103.220.76.197])
 by smtp.gmail.com with ESMTPSA id 21sm8415028pfh.56.2021.01.29.04.47.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Jan 2021 04:47:40 -0800 (PST)
Date: Fri, 29 Jan 2021 20:47:33 +0800
From: carlis <zhangxuezhi3@gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH v12] staging: fbtft: add tearing signal detect
Message-ID: <20210129204733.00003954@gmail.com>
In-Reply-To: <CAHp75Vdi4H_zY3+QPSq_wmdf20B9xPeqsOT10JHfMLJESX77gA@mail.gmail.com>
References: <1611838435-151774-1-git-send-email-zhangxuezhi3@gmail.com>
 <CAHp75Vd=ijxnamuSYuxNLeyhGMCod=HaXWrQ0W0+3QCsQAychg@mail.gmail.com>
 <20210129130110.00003bb1@gmail.com>
 <CAHp75Vdi4H_zY3+QPSq_wmdf20B9xPeqsOT10JHfMLJESX77gA@mail.gmail.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 "open list:FRAMEBUFFER LAYER" <linux-fbdev@vger.kernel.org>,
 Deepak R Varma <mh12gx2825@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 oliver.graute@kococonnector.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Stefano Brivio <sbrivio@redhat.com>, Colin King <colin.king@canonical.com>,
 zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 29 Jan 2021 12:23:08 +0200
Andy Shevchenko <andy.shevchenko@gmail.com> wrote:

> On Fri, Jan 29, 2021 at 7:01 AM carlis <zhangxuezhi3@gmail.com> wrote:
> > On Thu, 28 Jan 2021 16:33:02 +0200
> > Andy Shevchenko <andy.shevchenko@gmail.com> wrote:  
> > > On Thu, Jan 28, 2021 at 2:58 PM Carlis <zhangxuezhi3@gmail.com>
> > > wrote:
> > >
> > > Thanks for your contribution, my comments below.
> > >  
> > > > From: zhangxuezhi <zhangxuezhi1@yulong.com>  
> > >
> > > You probably have to configure your Git to use the same account
> > > for author and committer.  
> >
> > hi,you mean like below:
> >         Carlis <zhangxuezhi1@yulong.com>
> > ?  
> 
> I meant that you shouldn't probably have a From: line in the commit
> message.
> 
> ...
> 
> > hi, i have modified it according to your suggestion like below:  
> 
> Please, go again thru my comments and comments from others and
> carefully address all of them everywhere in your contribution. If you
> have questions, ask them in reply in the corresponding context.
> 
> ...
> 
> > /**
> >  * init_tearing_effect_line() - init tearing effect line  
> 
> >  *  
> 
> For example, above was commented on and hasn't been addressed here.
> 
hi,here i can not get you.....
> >  * @par: FBTFT parameter object
> >  *
> >  * Return: 0 on success, < 0 if error occurred.
> >  */
> > static int init_tearing_effect_line(struct fbtft_par *par)
> > {
> >         struct device *dev = par->info->device;
> >         struct gpio_desc *te;
> >         int rc;
> >
> >         te = gpiod_get_optional(dev, "te", GPIOD_IN);
> >         if (IS_ERR(te))
> >                 return dev_err_probe(dev, PTR_ERR(te), "Failed to
> >         request te GPIO\n");
> >  
> 
> >         if (te) {  
> 
> This one is not like I suggested.
Why? My thinking is that if the TE is not configured and NULL is
returned, the initialization can still proceed.....
> 
> >                 par->irq_te = gpiod_to_irq(te);
> >                 gpiod_put(te);
> >  
> 
> >                 if (par->irq_te) {  
> 
> This is wrong.

Why? i have read gpiod_to_irq code, if an error occurs, a negative
value is returned, and zero is not possible,so I need this value to
determine if TE IRQ is configured

> 
> >                         rc = devm_request_irq(dev,
> >                                               par->irq_te,
> >                 panel_te_handler,
> >                                               IRQF_TRIGGER_RISING,
> >                 "TE_GPIO", par);  
> 
> Try to use less LOCs.
> 
> >                         if (rc)
> >                                 return dev_err_probe(dev, rc, "TE
> > IRQ request failed.\n");
> >
> >                         disable_irq_nosync(par->irq_te);
> >                         init_completion(&par->panel_te);  
> 
> >                 } else {
> >                         return dev_err_probe(dev, par->irq_te,
> > "gpiod to TE IRQ failed.\n");
> >                 }  
> 
> Again, it is not what had been suggested.
> 
> >         }
> >
> >         return 0;
> > }  
> 
> The rest is better, but we will see later on when you submit a new
> version (And I feel it won't be last).
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
