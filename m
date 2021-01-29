Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C30FD3087C5
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 11:23:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E72D887496;
	Fri, 29 Jan 2021 10:23:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f9pI-H-sKlcc; Fri, 29 Jan 2021 10:23:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E763E87487;
	Fri, 29 Jan 2021 10:23:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1C0BB1BF379
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 10:23:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 05BDD22D0D
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 10:23:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pt+iZ2YyosQS for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 10:23:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com
 [209.85.210.182])
 by silver.osuosl.org (Postfix) with ESMTPS id 99060228AC
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 10:23:25 +0000 (UTC)
Received: by mail-pf1-f182.google.com with SMTP id w18so5947018pfu.9
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 02:23:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1yJOa9cCZqrpekGVxy3im++BvB26IIFrQ7p67xz4bWU=;
 b=JItl3w9RUXsrlQMdTdeSeE9VBrTpEoACcm6QZPtalecMUES/uswc8XnfoqLQ7CZRaw
 Bxvntx2atyAtdGs616fHZGRboBerITSzM0/rDnrNylVyFMZfdhgSuCWLrroO+9FZbUhT
 +kBqrJPQJZ3mFuLkbW5pfVMIiKCMg9jsLSPOCOAQSEire7oJ2LrZJuXhFSm6fHNTksgB
 IpP7spHvaFEXfCRLPq5hr6lEeWAU2LXCeoI3yRx54c9FMckVtTcfwqqN2Js75ZKUWLW7
 qcLFTQ1RrGKhNxqjZpxMcvsag7S2B81bvf0cykSxYjExfWhHHdSVhn7m/TvLGK5S3xmM
 Gg7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1yJOa9cCZqrpekGVxy3im++BvB26IIFrQ7p67xz4bWU=;
 b=P5gkQr+KVQIzx+sbFsfC2hARomVDsU+Xu0rCK2w2ymEI+hGwCUyGfhyIa3L6JAXA4m
 DKYasVymCr2kNnkSPZpR8xIRrtFjQx5KpEag0kcXKGGukAd4lKykvR3iSw+Ii/VPusQw
 nj7Wqpyuu77+sXZOAvHHk8nMIkNluhyOoGuHd2VLmceAxfNDN+Iv6STHMFrPmlyAtjFC
 viMa7tSDZubbJzVhmMcVO5aewBQLDxPzBBsH2Jby0UQdAymsYmVOiO2lPmtNgmIYcDu9
 IlMnqj2TWzLO0DG1lmnGTJQLMHt12I+DmgvbWPO/MggYkWdVX9Aj1j2ROjCx5qL3EFfC
 VmBQ==
X-Gm-Message-State: AOAM53112mdQM4AZMg5VWC9ww80McY5EAGOoeu0w8ryC4tnXzTPpo27u
 nWeO8SH9zyO5z0f4dpEmn/ln4k7QEWJfUJ3r+7A=
X-Google-Smtp-Source: ABdhPJzZPmiIy1i6+oWh62iX8kptMK1v3q70xltdxURXcNI2yQymGXHBS4//dugEb39m/ZKQUFoE+w0P3eCtMBpXBGA=
X-Received: by 2002:a65:644b:: with SMTP id s11mr4173241pgv.4.1611915805200;
 Fri, 29 Jan 2021 02:23:25 -0800 (PST)
MIME-Version: 1.0
References: <1611838435-151774-1-git-send-email-zhangxuezhi3@gmail.com>
 <CAHp75Vd=ijxnamuSYuxNLeyhGMCod=HaXWrQ0W0+3QCsQAychg@mail.gmail.com>
 <20210129130110.00003bb1@gmail.com>
In-Reply-To: <20210129130110.00003bb1@gmail.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 29 Jan 2021 12:23:08 +0200
Message-ID: <CAHp75Vdi4H_zY3+QPSq_wmdf20B9xPeqsOT10JHfMLJESX77gA@mail.gmail.com>
Subject: Re: [PATCH v12] staging: fbtft: add tearing signal detect
To: carlis <zhangxuezhi3@gmail.com>
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

On Fri, Jan 29, 2021 at 7:01 AM carlis <zhangxuezhi3@gmail.com> wrote:
> On Thu, 28 Jan 2021 16:33:02 +0200
> Andy Shevchenko <andy.shevchenko@gmail.com> wrote:
> > On Thu, Jan 28, 2021 at 2:58 PM Carlis <zhangxuezhi3@gmail.com> wrote:
> >
> > Thanks for your contribution, my comments below.
> >
> > > From: zhangxuezhi <zhangxuezhi1@yulong.com>
> >
> > You probably have to configure your Git to use the same account for
> > author and committer.
>
> hi,you mean like below:
>         Carlis <zhangxuezhi1@yulong.com>
> ?

I meant that you shouldn't probably have a From: line in the commit message.

...

> hi, i have modified it according to your suggestion like below:

Please, go again thru my comments and comments from others and
carefully address all of them everywhere in your contribution. If you
have questions, ask them in reply in the corresponding context.

...

> /**
>  * init_tearing_effect_line() - init tearing effect line

>  *

For example, above was commented on and hasn't been addressed here.

>  * @par: FBTFT parameter object
>  *
>  * Return: 0 on success, < 0 if error occurred.
>  */
> static int init_tearing_effect_line(struct fbtft_par *par)
> {
>         struct device *dev = par->info->device;
>         struct gpio_desc *te;
>         int rc;
>
>         te = gpiod_get_optional(dev, "te", GPIOD_IN);
>         if (IS_ERR(te))
>                 return dev_err_probe(dev, PTR_ERR(te), "Failed to
>         request te GPIO\n");
>

>         if (te) {

This one is not like I suggested.

>                 par->irq_te = gpiod_to_irq(te);
>                 gpiod_put(te);
>

>                 if (par->irq_te) {

This is wrong.

>                         rc = devm_request_irq(dev,
>                                               par->irq_te,
>                 panel_te_handler,
>                                               IRQF_TRIGGER_RISING,
>                 "TE_GPIO", par);

Try to use less LOCs.

>                         if (rc)
>                                 return dev_err_probe(dev, rc, "TE IRQ
>                 request failed.\n");
>
>                         disable_irq_nosync(par->irq_te);
>                         init_completion(&par->panel_te);

>                 } else {
>                         return dev_err_probe(dev, par->irq_te, "gpiod
>                         to TE IRQ failed.\n");
>                 }

Again, it is not what had been suggested.

>         }
>
>         return 0;
> }

The rest is better, but we will see later on when you submit a new
version (And I feel it won't be last).

-- 
With Best Regards,
Andy Shevchenko
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
