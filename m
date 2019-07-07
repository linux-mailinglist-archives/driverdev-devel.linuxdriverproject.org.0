Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A5561438
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Jul 2019 08:57:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E799F87327;
	Sun,  7 Jul 2019 06:57:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id esa5cTHFjAMO; Sun,  7 Jul 2019 06:57:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4886882186;
	Sun,  7 Jul 2019 06:57:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F1271BF2BC
 for <devel@linuxdriverproject.org>; Sun,  7 Jul 2019 06:57:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 757F1847C3
 for <devel@linuxdriverproject.org>; Sun,  7 Jul 2019 06:57:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bLxYyLebZkkC for <devel@linuxdriverproject.org>;
 Sun,  7 Jul 2019 06:57:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CB116842DD
 for <devel@driverdev.osuosl.org>; Sun,  7 Jul 2019 06:57:15 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DDEAB20838;
 Sun,  7 Jul 2019 06:57:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562482635;
 bh=r7wS1s26gDorZ2zRP3iWvFHmMQZjxQ6zYwb+uHakmY8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z1XIFKciUQdMJslAi+gRfdgvWSZ1OPRS6LAPzzXvVCtaYqm0kdhUjA9BUlYeHbto4
 Y0lm+fu6X6K/Nw2DbT/ERc/bFYZHRpdPT3IOl8M+nHTBx74bfqiP7W+7O5w0cbBRtP
 1CFClDc/gn6edwbXon8KJNsp0BXw2MLFZ1ecyZLQ=
Date: Sun, 7 Jul 2019 08:57:10 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Okash Khawaja <okash.khawaja@gmail.com>
Subject: Re: Staging status of speakup
Message-ID: <20190707065710.GA5560@kroah.com>
References: <20190315130035.6a8f16e9@narunkot>
 <20190316031831.GA2499@kroah.com>
 <20190706200857.22918345@narunkot>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190706200857.22918345@narunkot>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, Kirk Reiser <kirk@reisers.ca>,
 Simon Dickson <simonhdickson@gmail.com>, speakup@linux-speakup.org,
 linux-kernel@vger.kernel.org, Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Christopher Brannon <chris@the-brannons.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 06, 2019 at 08:08:57PM +0100, Okash Khawaja wrote:
> On Fri, 15 Mar 2019 20:18:31 -0700
> Greg Kroah-Hartman <gregkh@linuxfoundation.org> wrote:
> 
> > On Fri, Mar 15, 2019 at 01:01:27PM +0000, Okash Khawaja wrote:
> > > Hi,
> > > 
> > > We have made progress on the items in TODO file of speakup driver in
> > > staging directory and wanted to get some clarity on the remaining
> > > items. Below is a summary of status of each item along with the
> > > quotes from TODO file.
> > > 
> > > 1. "The first issue has to do with the way speakup communicates
> > > with serial ports.  Currently, we communicate directly with the
> > > hardware ports. This however conflicts with the standard serial
> > > port drivers, which poses various problems. This is also not
> > > working for modern hardware such as PCI-based serial ports.  Also,
> > > there is not a way we can communicate with USB devices.  The
> > > current serial port handling code is in serialio.c in this
> > > directory."
> > > 
> > > Drivers for all external synths now use TTY to communcate with the
> > > devices. Only ones still using direct communication with hardware
> > > ports are internal synths: acntpc, decpc, dtlk and keypc. These are
> > > typically ISA cards and generally hardware which is difficult to
> > > make work. We can leave these in staging.  
> > 
> > Ok, that's fine.
> > 
> > > 2. "Some places are currently using in_atomic() because speakup
> > > functions are called in various contexts, and a couple of things
> > > can't happen in these cases. Pushing work to some worker thread
> > > would probably help, as was already done for the serial port
> > > driving part."
> > > 
> > > There aren't any uses of in_atomic anymore. Commit d7500135802c
> > > "Staging: speakup: Move pasting into a work item" was the last one
> > > that removed such uses.  
> > 
> > Great, let's remove that todo item then.
> > 
> > > 3. "There is a duplication of the selection functions in
> > > selections.c. These functions should get exported from
> > > drivers/char/selection.c (clear_selection notably) and used from
> > > there instead."
> > > 
> > > This is yet to be done. I guess drivers/char/selection.c is now
> > > under drivers/tty/vt/selection.c.  
> > 
> > Yes, someone should update the todo item :)
> > 
> > > 4. "The kobjects may have to move to a more proper place in /sys.The
> > > discussion on lkml resulted to putting speech synthesizers in the
> > > "speech" class, and the speakup screen reader itself
> > > into /sys/class/vtconsole/vtcon0/speakup, the nasty path being
> > > handled by userland tools."
> > > 
> > > Although this makes logical sense, the change will mean changing
> > > interface with userspace and hence the user space tools. I tried to
> > > search the lkml discussion but couldn't find it. It will be good to
> > > know your thoughts on this.  
> > 
> > I don't remember, sorry.  I can review the kobject/sysfs usage if you
> > think it is "good enough" now and see if I find anything
> > objectionable.
> > 
> > > Finally there is an issue where text in output buffer sometimes gets
> > > garbled on SMP systems, but we can continue working on it after the
> > > driver is moved out of staging, if that's okay. Basically we need a
> > > reproducer of this issue.
> > > 
> > > In addition to above, there are likely code style issues which will
> > > need to be fixed.
> > > 
> > > We are very keen to get speakup out of staging both, for settling
> > > the driver but also for getting included in distros which build
> > > only the mainline drivers.  
> > 
> > That's great, I am glad to see this happen.  How about work on the
> > selection thing and then I can review the kobject stuff in a few
> > weeks, and then we can start moving things for 5.2?
> 
> Hi Greg,
> 
> Apologies for the delay. I de-duplicated selection code in speakup to
> use code that's already in kernel (commit ids 496124e5e16e and
> 41f13084506a). Following items are what remain now:
> 
> 1. moving kobjects location
> 2. fixing garbled text
> 
> I couldn't replicate garbled text but Simon (also in CC list) is
> looking into it.
> 
> Can you please advise on the way forward?

I don't think the "garbled text" is an issue to get this out of staging
if others do not see this.  It can be fixed like any other bug at a
later point if it is figured out.

The kobject stuff does need to be looked at.  Let me carve out some time
next week to do that and I will let you know what I see/recommend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
