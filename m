Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A06B1BF551
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Apr 2020 12:25:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 98E608869A;
	Thu, 30 Apr 2020 10:25:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g7pZqSqeK9Ow; Thu, 30 Apr 2020 10:25:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EBD5A8859D;
	Thu, 30 Apr 2020 10:25:23 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C10E1BF322
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 10:25:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 18AC587CEC
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 10:25:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z+5SrVI5FRTU
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 10:25:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9230487C5B
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 10:25:20 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E67F120787;
 Thu, 30 Apr 2020 10:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588242320;
 bh=ndRICwBiqpBmsUJyc3ZatYWzAXOhH6qy1e7ezsCe7Lk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OQZue3ktHDXlhNxuJQLo0a8cD25bXMKSWG2WFSw955wP7SklLYhAj9WScGD0P4KgP
 uSCrN755Q/vRVwaBsq0oRsUmanveNiK4MoGj7TL4wlLztkCOND+0Shc1rOWUYfQj3B
 ffAFiAAynG4kbYyhO1dLUmuJrr/WtU3+JHfp84JM=
Date: Thu, 30 Apr 2020 12:25:18 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian.Gromm@microchip.com
Subject: Re: [PATCH RFC] staging: most: usb: move USB adapter driver to
 stable branch
Message-ID: <20200430102518.GA2772327@kroah.com>
References: <1588233612-31327-1-git-send-email-christian.gromm@microchip.com>
 <20200430080735.GB2495313@kroah.com>
 <20200430080931.GC2495313@kroah.com>
 <20200430081329.GD2495313@kroah.com>
 <b95735f844eacd04ee4689783e0b664b9e406a2e.camel@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b95735f844eacd04ee4689783e0b664b9e406a2e.camel@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 30, 2020 at 10:09:14AM +0000, Christian.Gromm@microchip.com wrote:
> On Thu, 2020-04-30 at 10:13 +0200, Greg KH wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > know the content is safe
> > 
> > On Thu, Apr 30, 2020 at 10:09:31AM +0200, Greg KH wrote:
> > > On Thu, Apr 30, 2020 at 10:07:35AM +0200, Greg KH wrote:
> > > > On Thu, Apr 30, 2020 at 10:00:12AM +0200, Christian Gromm wrote:
> > > > > This patch moves the MOST USB adapter driver to the stable
> > > > > branch.
> > > > > It is a follow-up to commit <b276527>.
> > > > 
> > > > That's not how to refer to git commit ids.  Please see the
> > > > submitting-patches.rst file for the proper format.
> > > 
> > > Also, you might want to run this driver by the usb mailing list,
> 
> So I just put linux-usb@vger.kernel.org on cc? 

Yes please.

> > >  I don't
> > > think it's been audited by anyone, myself included, for any usb
> > > specific
> > > things.
> 
> Probably not.
> 
> > > 
> > > As proof, I see at least one thing that should be changed...
> > 
> > Ok, lots of little things, I don't think I ever actually read this
> > driver before, sorry about that...
> > 
> > Please post it as a patch that just adds the file,
> 
> And another patch that removes the one from the staging directory?

After we get through everything, and it's all fixed up, then we can
worry about removing it from the staging directory.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
