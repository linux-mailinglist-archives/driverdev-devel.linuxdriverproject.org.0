Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA2C23E3E4
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Aug 2020 00:15:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DFF1488751;
	Thu,  6 Aug 2020 22:15:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LouvrL2AHPgo; Thu,  6 Aug 2020 22:15:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5AD0988662;
	Thu,  6 Aug 2020 22:15:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 59D5B1BF33C
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 22:15:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 55DC188662
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 22:15:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ofOKqcKhcz+W for <devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 22:15:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CEC628861A
 for <devel@driverdev.osuosl.org>; Thu,  6 Aug 2020 22:15:39 +0000 (UTC)
Received: from localhost (130.sub-72-107-113.myvzw.com [72.107.113.130])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6FA49221E2;
 Thu,  6 Aug 2020 22:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596752139;
 bh=6V+A6F9WaUs3FGFH0cDcq6c0VYlcrNfuScxXobnpo3k=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=fhmU7icYI+Tc7SdZpy0wowfM7RZbgqmTi3wJpP/mfqdrweNF2ylB0kgeJmvGZP+SC
 r6T8pC2+JbWbuIfXwHpyb7GEcnAV5L7TkPgsr2rCnf03hFchFiYc9G78EvO+K8Lugb
 sQim6ONph1cpwxAKr9aO6oLqE148o0w5L0GKqqtg=
Date: Thu, 6 Aug 2020 17:15:37 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH] staging: atomisp: move null check to earlier point
Message-ID: <20200806221537.GA703560@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200730084545.GB1793@kadam>
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
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Cengiz Can <cengiz@kernel.wtf>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 30, 2020 at 11:45:45AM +0300, Dan Carpenter wrote:
> On Wed, Jul 29, 2020 at 06:13:44PM +0300, Andy Shevchenko wrote:
> > On Wed, Jul 29, 2020 at 5:00 PM Cengiz Can <cengiz@kernel.wtf> wrote:
> > >
> > > `find_gmin_subdev` function that returns a pointer to `struct
> > > gmin_subdev` can return NULL.
> > >
> > > In `gmin_v2p8_ctrl` there's a call to this function but the possibility
> > > of a NULL was not checked before its being dereferenced. ie:
> > >
> > > ```
> > > /* Acquired here --------v */
> > > struct gmin_subdev *gs = find_gmin_subdev(subdev);
> > > int ret;
> > > int value;
> > >
> > > /*  v------Dereferenced here */
> > > if (gs->v2p8_gpio >= 0) {
> > >         pr_info("atomisp_gmin_platform: 2.8v power on GPIO %d\n",
> > >                 gs->v2p8_gpio);
> > >         ret = gpio_request(gs->v2p8_gpio, "camera_v2p8");
> > >         if (!ret)
> > >                 ret = gpio_direction_output(gs->v2p8_gpio, 0);
> > >         if (ret)
> > >                 pr_err("V2P8 GPIO initialization failed\n");
> > > }
> > > ```
> > >
> > > I have moved the NULL check before deref point.
> > 
> > "Move the NULL check..."
> > See Submitting Patches documentation how to avoid "This patch", "I", "we", etc.
> 
> I always feel like this is a pointless requirement.  We're turning
> into bureaucrats.

There is a danger of that, and I'm more guilty than most.  But I do
think there's value in consistent style because it allows readers to
focus on the content instead of being distracted by different margins,
grammar ("move vs. moved"), paragraph styles, quoting conventions,
etc.

Ideally we would scan previous commit logs (and the existing code!)
and make new changes fit seamlessly so it looks like everything was
done at the same time by the same person.

But often that doesn't happen.  Sometimes I take the liberty to tweak
things as I apply them to try to avoid trivial rework.

Bjorn
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
