Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAAD305617
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 09:48:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2256E867AE;
	Wed, 27 Jan 2021 08:48:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n7dIJ9xz6213; Wed, 27 Jan 2021 08:48:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A95E586747;
	Wed, 27 Jan 2021 08:48:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 132081BF834
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 08:48:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0EF0286FCA
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 08:48:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7BIkLhnlZlNs for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 08:48:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
 [209.85.210.53])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1198D86FC9
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 08:48:20 +0000 (UTC)
Received: by mail-ot1-f53.google.com with SMTP id d1so932492otl.13
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 00:48:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gAKk6Yt/rmV2RLudc2xk6PS0Y1a3qymlWcwiHDkjBr8=;
 b=FSqL17fvL1zCuk83UIArahLmfpXuwKcjHLOA1L7lsAZkvSLUTv0g9uqKnE9VZKZLkg
 gylH2O3tHhXTXyTGo2sJJUuN/lWcqHHmj3O5uvDo8T0qIr3S13dKNuCTXPMsqAK6FXuD
 oSD3OIbhoPjpTJCy6zftoYXxLgw0KA0QK0t707FCO2CZvMYpmLxCv6bq/qz1vfVJK0LO
 IOMXuIlsB7t2uXRJD0Q1yL/OIlPumJOYz2fFSQ9hyV70Uf6h8RjsrZlTWEOQJSnsI/1c
 S3yCSSK7jW+2bOYdUBIfseLO3oQDFAexs6wg3DChR0nDzuwPTb61SAK+GYTTbDqxGDXy
 5faw==
X-Gm-Message-State: AOAM530v34fFoTv3ZeJ4MrMFPofaKbCNNXGcoATwmUFEwiP0TY3D2POC
 7yhqnLUmRdE+ox+2SKIruTx+2pXzPL72Wpg9Zn0=
X-Google-Smtp-Source: ABdhPJySkivwQpGFAZ+Grur9SYXrqqzDLD2UjmL030BacL3j7AyYhWe0zsuxjg9LQwAaq9rS0JKApCeVs56Z0mGYjzQ=
X-Received: by 2002:a05:6830:15cc:: with SMTP id
 j12mr6928590otr.145.1611737299392; 
 Wed, 27 Jan 2021 00:48:19 -0800 (PST)
MIME-Version: 1.0
References: <1611711140-68260-1-git-send-email-zhangxuezhi3@gmail.com>
 <20210127054523.GA2696@kadam> <20210127141927.00004472@gmail.com>
 <20210127064916.GD2696@kadam>
In-Reply-To: <20210127064916.GD2696@kadam>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 27 Jan 2021 09:48:08 +0100
Message-ID: <CAMuHMdVHZWz-9eA9yocTrNfZ5T_j+x5Ymqt262tCjTwQUzMDVw@mail.gmail.com>
Subject: Re: [PATCH v5] fbtft: add tearing signal detect
To: Dan Carpenter <dan.carpenter@oracle.com>, carlis <zhangxuezhi3@gmail.com>
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
Cc: driverdevel <devel@driverdev.osuosl.org>,
 Linux Fbdev development list <linux-fbdev@vger.kernel.org>,
 mh12gx2825@gmail.com, Greg KH <gregkh@linuxfoundation.org>,
 oliver.graute@kococonnector.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Stefano Brivio <sbrivio@redhat.com>, Colin King <colin.king@canonical.com>,
 zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Dan, Carlis,

On Wed, Jan 27, 2021 at 9:32 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> On Wed, Jan 27, 2021 at 02:19:27PM +0800, carlis wrote:
> > hi,i will fix it like below:
> >       par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0,
> > GPIOD_IN); if (IS_ERR(par->gpio.te)) {
> >               rc = PTR_ERR(par->gpio.te);
> >               pr_err("Failed to request  te gpio: %d\n", rc);
> >               par->gpio.te = NULL;
> >       }
>
> I wish you would just copy and paste the code that I sent you instead,
> but this also fixes the crash...

While this fixes the crash, it does not propagate the error condition
(which may be -EPROBE_DEFER) upstream.
Same for devm_request_irq().

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
