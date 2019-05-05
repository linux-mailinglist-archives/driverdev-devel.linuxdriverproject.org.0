Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B90B13F7F
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 May 2019 14:59:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D933C863A8;
	Sun,  5 May 2019 12:59:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K8aHrCCa5KCZ; Sun,  5 May 2019 12:59:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2FE01866B1;
	Sun,  5 May 2019 12:59:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3D1ED1BF28B
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 12:59:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3A07321567
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 12:59:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mKkr8kGYxjZD for <devel@linuxdriverproject.org>;
 Sun,  5 May 2019 12:59:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 7956A2152B
 for <devel@driverdev.osuosl.org>; Sun,  5 May 2019 12:59:43 +0000 (UTC)
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ADB492082F;
 Sun,  5 May 2019 12:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557061183;
 bh=OYgI343ZtwZsMYkCCr5+/f4njEWi3WQsFQBAc5e2gCw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=UCMCuu9WXNG8dYbFQCyhkCsmJgm1anx2J8O+kQuQVvmYyXF8GvIzq7HZakKjmeALn
 Rup1nw2pHiwYbdBjvLKeDX3foK6bAlOBDR1p8ahuZdubCtUiPb+lx0OhqBIb/vg2nP
 lOz2nuuLA338iDCf5Dsxe2DW17f/Zb/uinGwlI0k=
Date: Sun, 5 May 2019 13:59:37 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Alexandru Ardelean <ardeleanalex@gmail.com>
Subject: Re: [PATCH 3/4] staging: iio: ad7150: simplify i2c SMBus return
 treatment
Message-ID: <20190505135937.03e7be65@archlinux>
In-Reply-To: <CA+U=DsoYaN_gCc=jcQ9nHHNpC+voPfHCc=RP_ZyQAC497Jx_7A@mail.gmail.com>
References: <cover.1556919363.git.melissa.srw@gmail.com>
 <18725f7ddc3ac42b1c781b1848b05fabd4bd8320.1556919363.git.melissa.srw@gmail.com>
 <CA+U=DsoYaN_gCc=jcQ9nHHNpC+voPfHCc=RP_ZyQAC497Jx_7A@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Lars-Peter Clausen <lars@metafoo.de>,
 Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Barry Song <21cnbao@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 kernel-usp@googlegroups.com, Melissa Wen <melissa.srw@gmail.com>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 4 May 2019 13:36:43 +0300
Alexandru Ardelean <ardeleanalex@gmail.com> wrote:

> On Sat, May 4, 2019 at 1:26 AM Melissa Wen <melissa.srw@gmail.com> wrote:
> >
> > Since i2c_smbus_write_byte_data returns no-positive value, this commit
> > making the treatment of its return value less verbose.
> >
> > Signed-off-by: Melissa Wen <melissa.srw@gmail.com>
> > ---
> >  drivers/staging/iio/cdc/ad7150.c | 10 +++-------
> >  1 file changed, 3 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
> > index 4ba46fb6ac02..3a4572a9e5ec 100644
> > --- a/drivers/staging/iio/cdc/ad7150.c
> > +++ b/drivers/staging/iio/cdc/ad7150.c
> > @@ -201,16 +201,12 @@ static int ad7150_write_event_params(struct iio_dev *indio_dev,
> >         ret = i2c_smbus_write_byte_data(chip->client,
> >                                         ad7150_addresses[chan][4],
> >                                         sens);
> > -       if (ret < 0)
> > +       if (ret)  
> 
> For i2c_smbus_write_byte_data(), checking "ret < 0" or non-zero, is the same.
> Changing this doesn't have any added value.
The slight note I'd add to that is that if you are (and I think you should)
just doing
return i2c_smbus_write_byte_data()
for the last call then that effectively means we are assuming ret is never positive
in some paths and not others.  I'd encourage consistency so would would prefer
this is changed to if (ret).

As in the earlier patch the line between what is noise in a staging (or new
driver) and what is noise in a driver that has been outside staging for years
is different.  Not so good for Alex perhaps if there is a chance Analog will
backport fixes for their drivers, but tough luck :)

> 
> >                 return ret;
> > -
> > -       ret = i2c_smbus_write_byte_data(chip->client,
> > +       else
> > +               return i2c_smbus_write_byte_data(chip->client,
> >                                         ad7150_addresses[chan][5],
> >                                         timeout);  
> 
> The introduction of the "else" branch is a bit noisy.
> The code was a bit neater (and readable) before the else branch, and
> functionally identical.
> 
> Well, when I say neater before, you have to understand, that I (and I
> assume that some other people who write drivers) have a slight
> fixation for this pattern:
> 
> example1:
> ret = fn1();
> 
> if (ret < 0)  // could also be just "if (ret)"
>    return ret;
> 
> ret = fn2();
> if (ret < 0)  // could also be just "if (ret)"
>    return ret;
> 
> example1a:
> +ret = fn3();
> +if (ret < 0)  // could also be just "if (ret)"
> +    return ret;
> 
> 
> Various higher-level programming languages, will discourage this
> pattern in favor of neater patterns.
> 
> I personally, have a few arguments in favor of this pattern:
> 1) it is closer to how the machine code ; so, closer to how a
> low-level instruction looks like
> 2) if (ever) this needs to be patched, the patch could be neat (see
> example1a) ; the examle assumes that it's been added via a patch at a
> later point in time
> 3) it keeps indentation level to a minimum ; this also aligns with
> kernel-coding guidelines
> (https://www.kernel.org/doc/html/v4.10/process/coding-style.html )
>     (indentation seems a bit OCD-like when someone points it out at a
> review, but it has it's value over time)
Nicely laid out argument.  Strongest one is the maintainability and
reviewability aspect of it being how kernel code is done and hence
takes every so slightly less thought ;)

Errors paths are indented, good paths not (in general).

Jonathan


> 
> > -       if (ret < 0)
> > -               return ret;
> > -
> > -       return 0;
> >  }
> >
> >  static int ad7150_write_event_config(struct iio_dev *indio_dev,
> > --
> > 2.20.1
> >  

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
