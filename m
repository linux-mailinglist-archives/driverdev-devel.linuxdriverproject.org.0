Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D420D10D574
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Nov 2019 13:08:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 72F7F87E23;
	Fri, 29 Nov 2019 12:08:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AuE5H1T-TiOc; Fri, 29 Nov 2019 12:08:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 29CEB87DF6;
	Fri, 29 Nov 2019 12:08:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3F63B1BF308
 for <devel@linuxdriverproject.org>; Fri, 29 Nov 2019 12:08:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3AAFC20387
 for <devel@linuxdriverproject.org>; Fri, 29 Nov 2019 12:08:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g9PkFWdjXyzc for <devel@linuxdriverproject.org>;
 Fri, 29 Nov 2019 12:08:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by silver.osuosl.org (Postfix) with ESMTPS id D96AF20373
 for <devel@driverdev.osuosl.org>; Fri, 29 Nov 2019 12:08:11 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id a67so25522897edf.11
 for <devel@driverdev.osuosl.org>; Fri, 29 Nov 2019 04:08:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pYh4OF7fVecpJQShy7dlLTgKEjADRLBZ2wMKeIZnp+c=;
 b=sLGJCHQh1Ii00vfaWvxz8zLwdfABNxTItE+up4RY4ik3cKyLshn4OlAOTXbemurpTg
 S8xxiFrVKISJPTDbFVqFgE8KyiCPlEFXizAzNK7lrtxtOFyAmG+9OfLl2erO0zijnBCo
 5zWqTsJiz4sOzngC0wSe18Lzn/HMBG+V+c9Sr9b8ZPlIgExtaSxbdw+jcgEAVzwT3tFO
 +bW1uMMRWrHEg4sBhJ582rYkW0GyDfXn0FWn0H2bQseX79SXZbxMe9ZlA+s5mW5EkgUv
 2iyToHoCYRW8uUHFUgRdyR4QBo14hjtJcEbiKDT4i96Y2WIFflnPzYLFwsMad6VsWwdJ
 94YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pYh4OF7fVecpJQShy7dlLTgKEjADRLBZ2wMKeIZnp+c=;
 b=HWaIU426tqVR1ArRR6pcpHjLxaLKXVpwuuhomkY2PaJXS9fd/T6GRaZxeLHE0sWPwb
 oqZEPcENduGdks8j39VHhaUhZqNeD77nBxOR4psNnhaLhzUk6OqBOO/3yiNblg4bucZI
 Gisuk+hDQ4bYnS1jbzS9b/B+RWcI7wcqsWTjsE6VZs3nCagaJ/nC+oaX8m6Yb33jCfp5
 rBT0rDatC/fS9Vb5gi7c1CAvCjsRUksOw7/+IZC8ItNzSmU76TXizl+E7V5w1T5UfWJi
 1XcHqwYKt6dPnzeQOb9NKouiewh3BCRwgYd/77nEtgQom73AbN6vshWAq20lsWv+dxFq
 OI1A==
X-Gm-Message-State: APjAAAVvBKy9E2+CsWFqa2b1Djm/yDnQC7dj1hSpt+C2M0pFIYpWSQI4
 doWs8vmLzS3gWb6njLC0es7TN0EePIh8TxFFZ5k=
X-Google-Smtp-Source: APXvYqzfF1cK0U5U4Uai+ex5wb5S/gF/3ZFT9boQhMY2iqy9QLvZz4J6Rmjpttfz4SalMl4mp+5Jg61VsKdLCcxqE78=
X-Received: by 2002:a17:907:2099:: with SMTP id
 pv25mr40555706ejb.144.1575029289991; 
 Fri, 29 Nov 2019 04:08:09 -0800 (PST)
MIME-Version: 1.0
References: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
 <d9277db2692bb77a41dfed927cfb791bdcced17d.1574922435.git.shubhrajyoti.datta@xilinx.com>
 <20191128074505.GC1781@kadam>
In-Reply-To: <20191128074505.GC1781@kadam>
From: Shubhrajyoti Datta <shubhrajyoti.datta@gmail.com>
Date: Fri, 29 Nov 2019 17:37:57 +0530
Message-ID: <CAKfKVtHpP4j32CNA8ioET=wqYPWtzrQvH-A+4n-pcvj1KZy=fg@mail.gmail.com>
Subject: Re: [PATCH v3 08/10] clk: clock-wizard: Make the output names unique
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mike Turquette <mturquette@baylibre.com>,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-clk@vger.kernel.org,
 =?UTF-8?Q?S=C3=B6ren_Brinkmann?= <soren.brinkmann@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Nov 28, 2019 at 1:15 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Thu, Nov 28, 2019 at 12:06:15PM +0530, shubhrajyoti.datta@gmail.com wrote:
> > From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> >
> > Incase there are more than one instance of the clocking wizard.
> > And if the output name given is the same then the probe fails.
> > Fix the same by appending the device name to the output name to
> > make it unique.
> >
> > Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> > ---
> >  drivers/clk/clk-xlnx-clock-wizard.c | 13 ++++++++-----
> >  1 file changed, 8 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/clk/clk-xlnx-clock-wizard.c b/drivers/clk/clk-xlnx-clock-wizard.c
> > index 75ea745..9993543 100644
> > --- a/drivers/clk/clk-xlnx-clock-wizard.c
> > +++ b/drivers/clk/clk-xlnx-clock-wizard.c
> > @@ -555,6 +555,9 @@ static int clk_wzrd_probe(struct platform_device *pdev)
> >               ret = -ENOMEM;
> >               goto err_disable_clk;
> >       }
> > +     outputs = of_property_count_strings(np, "clock-output-names");
> > +     if (outputs == 1)
> > +             flags = CLK_SET_RATE_PARENT;
> >       clk_wzrd->clks_internal[wzrd_clk_mul] = clk_register_fixed_factor
> >                       (&pdev->dev, clk_name,
> >                        __clk_get_name(clk_wzrd->clk_in1),
> > @@ -566,9 +569,6 @@ static int clk_wzrd_probe(struct platform_device *pdev)
> >               goto err_disable_clk;
> >       }
> >
> > -     outputs = of_property_count_strings(np, "clock-output-names");
> > -     if (outputs == 1)
> > -             flags = CLK_SET_RATE_PARENT;
> >       clk_name = kasprintf(GFP_KERNEL, "%s_mul_div", dev_name(&pdev->dev));
> >       if (!clk_name) {
> >               ret = -ENOMEM;
> > @@ -591,6 +591,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
> >       /* register div per output */
> >       for (i = outputs - 1; i >= 0 ; i--) {
> >               const char *clkout_name;
> > +             const char *clkout_name_wiz;
> >
> >               if (of_property_read_string_index(np, "clock-output-names", i,
> >                                                 &clkout_name)) {
> > @@ -599,9 +600,11 @@ static int clk_wzrd_probe(struct platform_device *pdev)
> >                       ret = -EINVAL;
> >                       goto err_rm_int_clks;
> >               }
> > +             clkout_name_wiz = kasprintf(GFP_KERNEL, "%s_%s",
> > +                                         dev_name(&pdev->dev), clkout_name);
>
> If this kasprintf() crashes then clk_wzrd_register_divf() will fail.
> But that was a headache to review.  Just add a check for NULL.  We need
> a kfree() as well.
>
> One alternative would be to just declare a buffer on the stack and use
> snprintf().  We don't need to keep the name around after the call to
> clk_wzrd_register_divf().

Will fix in next version.

>
> regards,
> dan carpenter
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
