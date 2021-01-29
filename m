Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53894308932
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 13:55:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8CF4E874E3;
	Fri, 29 Jan 2021 12:55:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PPqn42a6bXMw; Fri, 29 Jan 2021 12:55:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 03CF0874DF;
	Fri, 29 Jan 2021 12:55:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 77C461BF34C
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 12:54:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 741EF862D4
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 12:54:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1EJ5IdrQR-cj for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 12:54:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
 [209.85.215.173])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2814786199
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 12:54:54 +0000 (UTC)
Received: by mail-pg1-f173.google.com with SMTP id s23so5332881pgh.11
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 04:54:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :organization:mime-version:content-transfer-encoding;
 bh=hEFtshIJPKNSQZ+CC0supJzNPIjoTkOgp8j1yQcbZhI=;
 b=B49bAVMmMWCyao1WgFn6Dw5fLu30hjmYlejPf1p/6p4S1Nf0Ct6eVyiAcixZ+lC1no
 Nj9NY5K6yxO9eb6xJZyE14yGoVyFHfdahcfSqAS/vovupBiI3QATrR4KJ5w+53btcpqv
 1LFcc7TqeREXy3kYtiPHnpN8ABEp6ACgYRJOmXCW8GJMa/2qBeig9oeFHkpojK03wZUN
 mxdMj0LLyT6U6o6lhgYjFM/hZJZVYipUHvi4WE2i3SPkh/zqs6vuq0rhYY614g073r3r
 T9cGQTS3RKenOAJESbPA3JShLeq3vDs0B4/ZBWCQNadDSRG5nP72sR1HCS9sCx0gp/Bq
 hS5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=hEFtshIJPKNSQZ+CC0supJzNPIjoTkOgp8j1yQcbZhI=;
 b=PYwnkvnvuBmrLt6nwCsvI0nUaSH/TXWFFeo3/k+YXd6Y1RWyl7KJBmZMvycrnA4t+u
 5DOTpqmnIHQnDrqKFj6gxsuMSOAKY+zcnGM5flVv5ZnBPsUd+hLCQtIJUbSntWggK27X
 qm6YkEpFovc/apqlVu9/OcCwLJ9+SdFU7DH6VAWKSEdk5+8RBHdQTOcU1Asq+yQPHTVF
 99UrOw7H2r82CM8fLP6znbsFE7dAMYaS321YIZm3RVWAA//EsutdFMCcrMf8lRxPmfBm
 bGPxPjN20xur7ki2XXTYxejziCG7hpdS7W5vOOPUoWvSR1J0NSeS+NliYfJUTLhjJ06C
 yZ/g==
X-Gm-Message-State: AOAM5315qTYHDl8G1wmLP3OnW8nS6PTVB7PwHH2vyso4GFXY394kSQPA
 TBPPDcX7HjcXlLybrZmP25E=
X-Google-Smtp-Source: ABdhPJyXCt2fIv2Ld4WrkceGfcg/wM0H8EGE5oOM/aWMgQeVI+RaaeUKcdVGuowoyh8ppXslv9Y6BA==
X-Received: by 2002:a63:5014:: with SMTP id e20mr4647413pgb.152.1611924893831; 
 Fri, 29 Jan 2021 04:54:53 -0800 (PST)
Received: from localhost ([103.220.76.197])
 by smtp.gmail.com with ESMTPSA id a2sm8861568pgq.94.2021.01.29.04.54.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Jan 2021 04:54:53 -0800 (PST)
Date: Fri, 29 Jan 2021 20:54:47 +0800
From: carlis <zhangxuezhi3@gmail.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH v12] staging: fbtft: add tearing signal detect
Message-ID: <20210129205447.0000464f@gmail.com>
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
I don't think I have a problem here, if te GPIO is not configured, it
should return NULL, if it is configured, it should be greater than 0 
> 
> >                 par->irq_te = gpiod_to_irq(te);
> >                 gpiod_put(te);
> >  
> 
> >                 if (par->irq_te) {  
> 
> This is wrong.
> 
> >                         rc = devm_request_irq(dev,
> >                                               par->irq_te,
> >                 panel_te_handler,
> >                                               IRQF_TRIGGER_RISING,
> >                 "TE_GPIO", par);  
> 
> Try to use less LOCs.

LOCs???? i can not get you 
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
