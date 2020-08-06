Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 186FC23D9B1
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Aug 2020 13:10:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9943688604;
	Thu,  6 Aug 2020 11:10:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XZJ+oEcDKE0I; Thu,  6 Aug 2020 11:10:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8BC37885E4;
	Thu,  6 Aug 2020 11:10:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 16ADC1BF3E5
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 11:10:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 113A2880FB
 for <devel@linuxdriverproject.org>; Thu,  6 Aug 2020 11:10:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2yOA-1iiprMa for <devel@linuxdriverproject.org>;
 Thu,  6 Aug 2020 11:10:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1E368880F8
 for <devel@driverdev.osuosl.org>; Thu,  6 Aug 2020 11:10:39 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9A7D822CBB;
 Thu,  6 Aug 2020 11:10:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596712238;
 bh=OEb91Ejr5JEtyZgzJD6o2mtTHegdt84CjOCxzu1PrwI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LaSl7aFBP67JYQSOwJImoFOTnSp1zRtRAYwJJvljYR8MME7OgXk5s3c09bk1KyjCa
 GAkR2fOYdD6TtoV5ncAgF6tE1azaghriZ2BxUZTgrGc318xTzu5AxNbst81Vaw7QhG
 j1iARMnMtEHYkxWP59bd4fKSPN6tnCOYlb4jFdY0=
Date: Thu, 6 Aug 2020 12:53:51 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "hongxu.zhao" <hongxu.zhao@mediatek.com>
Subject: Re: [PATCH] staging: Add Mediatek High Frequency Manager Framework
Message-ID: <20200806105351.GA2829418@kroah.com>
References: <20200804075339.9820-1-hongxu.zhao@mediatek.com>
 <20200804081126.GA1765831@kroah.com>
 <1596702748.6258.3.camel@mbjsdccf07>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1596702748.6258.3.camel@mbjsdccf07>
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
 wsd_upstream@mediatek.com, Weiqi Fu <weiqi.fu@mediatek.com>,
 open list <linux-kernel@vger.kernel.org>,
 Cunliang Du <cunliang.du@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Zhen jiang <zhen.jiang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 06, 2020 at 04:32:28PM +0800, hongxu.zhao wrote:
> On Tue, 2020-08-04 at 10:11 +0200, Greg Kroah-Hartman wrote:
> > On Tue, Aug 04, 2020 at 03:52:49PM +0800, hongxu.zhao wrote:
> > > Add a new sensor framework into linux kernel which can support multi client request sensor data.
> > > There are the following features:
> > >     1.Ringbuffer between manager and client;
> > >     2.Kernel space user interface;
> > >     3.User space user interface with syscall;
> > >     4.Each client hang detect mechanism;
> > >     5.Polling timer management in framework no need driver concern;
> > >     6.Polling kthread work intergrated into a single kthread
> > >       worker to save system resources in framework no need driver concern;
> > >     7.Proc file system to show manager device and client details;
> > >     8.Compitable with android and widely used in many mediatek platform products;
> > > 
> > > Change-Id: I6361cdc2d51de50f66eede7df099c4575e7ec473
> > 
> > Did you not run checkpatch.pl on this?  :)
> > 
> > No need for change-id here.
> > 
> > But, most importantly, why is this in drivers/staging?  What keeps it
> > from being in the "real" part of the kernel?  I need a TODO file in the
> > directory of the driver listing what remains to be done and who is
> > responsible for doing this work and reviewing patches.
> > 
> > Can you resend this with that file added and the Change-id removed?
> > 
> > Also, why not just use the IIO interface, why are you creating
> > yet-another api for sensors?  We already have 2, making a third seems
> > like something that guarantees this will never be mergable to the
> > correct part of the kernel.
> > 
> > And finally, /proc/ is not for devices, that is what sysfs is for,
> > please use that.
> 
> I have modified checkpatch issue, but blocked by ARCH=alpha build error
> and I can't reproduce this build error in mediatek environment. I need
> spend some time setting up an environment to solve this problem and will
> send you the latest patch together after solving the problem of alpha
> build error.

If you can't easily fix the alpha issue, you can just mark the driver as
not able to be built there for now.

> Firstly I want keep it in the real part of kernel and I send mail to
> community to find the right maintainer, unfortunately, several emails
> were not answered.

Pointers to those emails on lore.kernel.org?

> Secondly I found iio upstream history it also started from staging at
> the beginning, maybe staging is the best start until it become mature we
> can move it to the real part of kernel.

iio started in staging, but now that the infrastructure is out of it,
there should not be any reason that new drivers be forced to go into
staging too.  You only want to do it this way if for some reason you can
not get the work done on your own.

> Actually, we have already assessed IIO subsystem, but the conclusion is
> that it doesn't meet our requirement:
> 1. iio doesn't have sensor manager in kernel space.

What exactly do you mean by this?  Who needs to be a "manager" here?

> 2. each driver under the iio subsystem needs to create workqueue or
> kthread by itself, waste system resources.

workqueues are very light, how many sensors and what type of resources
are you referring to here?  And adding a whole new user api is not
exactly "tiny" either :)

> 3. iio doesn't have hang detect mechanism to detect polling thread hang.

That's userspace's issue, right?

> We need a sensor manager architecture in kernel space to select the best
> delay and latency that multi-client(user space or kernel space user)
> requested at the same time, and finally dispatch data to each client.

Why does that have to be in the kernel?

> We need lower resource comsumption, each driver can poll data by kthread
> work which intergrated into a single kthread worker to save system
> resources in framework.

Again, how many resources are you really saving here with a whole new
framework?

> We need detect polling thread hang to decide whether to send data to
> him.

Data to where?

> About proc, proc is only for High Frequency Manager Framework to show
> manager details and client details, is not for device drivers.

Then it is not needed :)

> we recommend device driver(like test/test_app.c) use sysfs which under
> High Frequency Manager Framework.

Then you need to document it really well as to what you are doing here.

But again, please try working with the IIO framework as that is what we
have today.  Any improvements you make to it will help everyone out.

Adding a third way to handle sensor data to the kernel is probably not
going to work well for anyone...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
