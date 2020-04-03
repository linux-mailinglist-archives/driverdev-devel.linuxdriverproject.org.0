Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A39C19D125
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Apr 2020 09:24:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F3DA388227;
	Fri,  3 Apr 2020 07:24:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yPkuUTsFmtSx; Fri,  3 Apr 2020 07:24:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 05C098814C;
	Fri,  3 Apr 2020 07:24:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 661E21BF5A2
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 07:24:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 62FEA85E24
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 07:24:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MHZWu3wd6oIm for <devel@linuxdriverproject.org>;
 Fri,  3 Apr 2020 07:24:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E805185E09
 for <devel@driverdev.osuosl.org>; Fri,  3 Apr 2020 07:24:32 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 49A5B206F8;
 Fri,  3 Apr 2020 07:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585898672;
 bh=PZzf2oNMDzLElQE0/RA3BNR6PJu62ZJBwzRvyvupSF0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=V7FdQBm39SBrHISYK8LKNwYqF5v4hXkP5x1yx91z9NFVGMtAQMG50r1QLype5Xckq
 /BWWjto2zCDF2dJdogESnHErVX7NFAu2XljztpPscnqwWPb2MGEKCAs59LazEUj8dX
 weygf2rYV4G7Uq8hrqUPS4NsNqaru/+bPlJ72JJg=
Date: Fri, 3 Apr 2020 09:24:30 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH 1/2] staging: gasket: Fix 4 over 80 char warnings
Message-ID: <20200403072430.GC3405737@kroah.com>
References: <20200402053617.826678-1-jbwyatt4@gmail.com>
 <20200402053617.826678-2-jbwyatt4@gmail.com>
 <5d35084fcc0476fc2f43e3cf371f5078c0fbeeab.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d35084fcc0476fc2f43e3cf371f5078c0fbeeab.camel@perches.com>
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
Cc: devel@driverdev.osuosl.org, "John B. Wyatt IV" <jbwyatt4@gmail.com>,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Apr 01, 2020 at 10:54:17PM -0700, Joe Perches wrote:
> On Wed, 2020-04-01 at 22:36 -0700, John B. Wyatt IV wrote:
> > Fix 4 over 80 char warnings by caching long enum values into local
> > variables.
> > 
> > All enums are only used once inside each function (and once inside
> > the entire file).
> > 
> > Reported by checkpatch.
> > 
> > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> > ---
> >  drivers/staging/gasket/apex_driver.c | 13 +++++++++----
> >  1 file changed, 9 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
> > index 46199c8ca441..f48209ec7d24 100644
> > --- a/drivers/staging/gasket/apex_driver.c
> > +++ b/drivers/staging/gasket/apex_driver.c
> > @@ -253,6 +253,8 @@ static int apex_get_status(struct gasket_dev *gasket_dev)
> >  /* Enter GCB reset state. */
> >  static int apex_enter_reset(struct gasket_dev *gasket_dev)
> >  {
> > +	int idle_gen_reg = APEX_BAR2_REG_IDLEGENERATOR_IDLEGEN_IDLEREGISTER;
> > +
> 
> This indirection only makes the code more difficult to understand.

I agree, this patch does not improve the readability of the driver at
all, which should always be the primary goal of any coding style
cleanup.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
