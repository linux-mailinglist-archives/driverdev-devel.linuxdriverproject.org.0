Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B25013F93
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 May 2019 15:05:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 53FFB23454;
	Sun,  5 May 2019 13:05:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yZmkk-uv9tiC; Sun,  5 May 2019 13:05:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8F222226B3;
	Sun,  5 May 2019 13:05:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AB6E31BF48B
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 13:05:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A58C287535
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 13:05:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GqojHO8wgLqP for <devel@linuxdriverproject.org>;
 Sun,  5 May 2019 13:05:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2609287482
 for <devel@driverdev.osuosl.org>; Sun,  5 May 2019 13:05:17 +0000 (UTC)
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2290C2082F;
 Sun,  5 May 2019 13:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557061517;
 bh=95EBeIviFf9swJX2fSvInvNf28xWjF/NPkKjv1jpAoA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=sc5fiqrISzDZn+waqhVD+Yj03iumm15WrcnZC2lOC+nNmVACv3rV6cbP+C2NcU5rF
 9fb3TU6gUUGF8iaqv/9NK6PgM2BVJe6Jf4ku55JqLlp7inOn6wJ7SdJJVHbCxVPjBC
 SyCJK5eXwmaClzylOqZSqPXKqvaa6uOe/WglTIV4=
Date: Sun, 5 May 2019 14:05:10 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Alexandru Ardelean <ardeleanalex@gmail.com>
Subject: Re: [PATCH 0/4] staging: iio: ad7150: improve driver readability
Message-ID: <20190505140510.62b42abe@archlinux>
In-Reply-To: <CA+U=DsqiRBAdGK0aqp5Chv-AtuL8W47tu+Bq6O_Pc97HYbewkQ@mail.gmail.com>
References: <cover.1556919363.git.melissa.srw@gmail.com>
 <CA+U=DsqiRBAdGK0aqp5Chv-AtuL8W47tu+Bq6O_Pc97HYbewkQ@mail.gmail.com>
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
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Barry Song <21cnbao@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 kernel-usp@googlegroups.com, Melissa Wen <melissa.srw@gmail.com>,
 Stefan Popa <stefan.popa@analog.com>, Hartmut Knaack <knaack.h@gmx.de>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 4 May 2019 14:12:22 +0300
Alexandru Ardelean <ardeleanalex@gmail.com> wrote:

> On Sat, May 4, 2019 at 1:24 AM Melissa Wen <melissa.srw@gmail.com> wrote:
> >
> > This patchset solves readability issues in AD7150 code, such as clarify
> > register and mask definition, fashion improvement of mask uses, reduce
> > tedious operation and useless comments.
> >  
> 
> Hey,
> 
> Two patches seem a bit noisy/un-needed.
> The other 2 are fine from me.
> 
> This driver does need some work to move it out of staging.
> I am not sure what would be a big blocker for it, other than maybe it
> needs a device-tree binding doc (in YAML format).
> Maybe Jonathan remembers.
> 
> Some other low-hanging-fruit ideas would be:
> 1) remove the code for platform_data ; that one seems forgotten from
> some other time; the interrupts should be coming from device-tree,
> from the i2c bindings
> 2) you could do a AD7150_EVENT_SPEC() macro (similar to
> AD7150_TIMEOUT() macro) and use it in the ad7150_events[] list; that
> would reduce a few lines
> 3) similar to 2), you could do a AD7150_CHANNEL(x) macro ;
> 4) in ad7150_event_handler() the checks could be wrapped into a macro,
> or maybe some function ; i am referring to "(int_status &
> AD7150_STATUS_OUT1) && (chip->old_state & AD7150_STATUS_OUT1)" checks
> ; those seem to be repeated
> 5) add of_match_table to the driver
> 
> I (now) suspect that the reason this driver is still in staging is this comment:
> /* Timeouts not currently handled by core */
> 
> I wonder if things changed since then ?
> If not, it would be interesting to implement it in core.
Hmm. Timeouts are 'unusual' to put it lightly.
I'm thinking the ABI needs to perhaps be more specific but not sure what
a good naming is.

Otherwise, I just took a quick look and can't see anything much else
that needs doing.  Obviously something might come up in a thorough
review prior to moving it though!

Jonathan
> 
> Thanks
> Alex
> 
> 
> > Melissa Wen (4):
> >   staging: iio: ad7150: organize registers definition
> >   staging: iio: ad7150: use FIELD_GET and GENMASK
> >   staging: iio: ad7150: simplify i2c SMBus return treatment
> >   staging: iio: ad7150: clean up of comments
> >
> >  drivers/staging/iio/cdc/ad7150.c | 102 ++++++++++++++-----------------
> >  1 file changed, 47 insertions(+), 55 deletions(-)
> >
> > --
> > 2.20.1
> >  

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
