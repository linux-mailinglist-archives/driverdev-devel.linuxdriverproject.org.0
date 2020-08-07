Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FAF123E76C
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Aug 2020 08:45:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 85F9625397;
	Fri,  7 Aug 2020 06:45:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IyxadvLyR02r; Fri,  7 Aug 2020 06:45:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E05EF203C4;
	Fri,  7 Aug 2020 06:45:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 14C721BF3CA
 for <devel@linuxdriverproject.org>; Fri,  7 Aug 2020 06:45:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0FD7E886BA
 for <devel@linuxdriverproject.org>; Fri,  7 Aug 2020 06:45:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3bBhdXG4igfE for <devel@linuxdriverproject.org>;
 Fri,  7 Aug 2020 06:45:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CD932885CE
 for <devel@driverdev.osuosl.org>; Fri,  7 Aug 2020 06:45:44 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 11AD120866;
 Fri,  7 Aug 2020 06:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1596782744;
 bh=I7McqgmwaE1/YCNUWinWwogjHWtnkfeyniuQm5x4YtQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OgsyZM9A7hdOiUE29VMPeTYGNx99PIsukASiLd9Pfwh0dbjyVPNJd/Rtcx3R8HN1y
 H55bZwmCJQUkI3PWj7Xz3JVAs2kWX3fDRVHtR6awQmQvqtb75KMDkmaaNdrMkz60m/
 f/aIVTRffPkI9kGGUc1d8BnChqawWAudMORPfxJI=
Date: Fri, 7 Aug 2020 08:45:41 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "hongxu.zhao" <hongxu.zhao@mediatek.com>
Subject: Re: [PATCH] staging: Add Mediatek High Frequency Manager Framework
Message-ID: <20200807064541.GA980370@kroah.com>
References: <20200804075339.9820-1-hongxu.zhao@mediatek.com>
 <20200804081126.GA1765831@kroah.com>
 <1596702748.6258.3.camel@mbjsdccf07>
 <20200806105351.GA2829418@kroah.com>
 <1596781829.14444.17.camel@mbjsdccf07>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1596781829.14444.17.camel@mbjsdccf07>
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
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Zhen jiang <zhen.jiang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 07, 2020 at 02:30:29PM +0800, hongxu.zhao wrote:
> On Thu, 2020-08-06 at 12:53 +0200, Greg Kroah-Hartman wrote:
> > On Thu, Aug 06, 2020 at 04:32:28PM +0800, hongxu.zhao wrote:
> > > On Tue, 2020-08-04 at 10:11 +0200, Greg Kroah-Hartman wrote:
> > > > On Tue, Aug 04, 2020 at 03:52:49PM +0800, hongxu.zhao wrote:
> > > > > Add a new sensor framework into linux kernel which can support multi client request sensor data.
> > > > > There are the following features:
> > > > >     1.Ringbuffer between manager and client;
> > > > >     2.Kernel space user interface;
> > > > >     3.User space user interface with syscall;
> > > > >     4.Each client hang detect mechanism;
> > > > >     5.Polling timer management in framework no need driver concern;
> > > > >     6.Polling kthread work intergrated into a single kthread
> > > > >       worker to save system resources in framework no need driver concern;
> > > > >     7.Proc file system to show manager device and client details;
> > > > >     8.Compitable with android and widely used in many mediatek platform products;
> > > > > 
> > > > > Change-Id: I6361cdc2d51de50f66eede7df099c4575e7ec473
> > > > 
> > > > Did you not run checkpatch.pl on this?  :)
> > > > 
> > > > No need for change-id here.
> > > > 
> > > > But, most importantly, why is this in drivers/staging?  What keeps it
> > > > from being in the "real" part of the kernel?  I need a TODO file in the
> > > > directory of the driver listing what remains to be done and who is
> > > > responsible for doing this work and reviewing patches.
> > > > 
> > > > Can you resend this with that file added and the Change-id removed?
> > > > 
> > > > Also, why not just use the IIO interface, why are you creating
> > > > yet-another api for sensors?  We already have 2, making a third seems
> > > > like something that guarantees this will never be mergable to the
> > > > correct part of the kernel.
> > > > 
> > > > And finally, /proc/ is not for devices, that is what sysfs is for,
> > > > please use that.
> > > 
> > > I have modified checkpatch issue, but blocked by ARCH=alpha build error
> > > and I can't reproduce this build error in mediatek environment. I need
> > > spend some time setting up an environment to solve this problem and will
> > > send you the latest patch together after solving the problem of alpha
> > > build error.
> > 
> > If you can't easily fix the alpha issue, you can just mark the driver as
> > not able to be built there for now.
> > 
> > > Firstly I want keep it in the real part of kernel and I send mail to
> > > community to find the right maintainer, unfortunately, several emails
> > > were not answered.
> > 
> > Pointers to those emails on lore.kernel.org?
> 
> I sended mail to linux-kernel@vger.kernel.org

And that was it?  You need to at least cc: people involved so we can see
it, no one can keep up with lkml on its own.

> > > Secondly I found iio upstream history it also started from staging at
> > > the beginning, maybe staging is the best start until it become mature we
> > > can move it to the real part of kernel.
> > 
> > iio started in staging, but now that the infrastructure is out of it,
> > there should not be any reason that new drivers be forced to go into
> > staging too.  You only want to do it this way if for some reason you can
> > not get the work done on your own.
> 
> Yes, I want started in staging and want more sensor driver(vendor
> driver) added to high frequency manager framework.

Again, don't add stuff to staging unless there is a good reason it needs
to be there.

> > > Actually, we have already assessed IIO subsystem, but the conclusion is
> > > that it doesn't meet our requirement:
> > > 1. iio doesn't have sensor manager in kernel space.
> > 
> > What exactly do you mean by this?  Who needs to be a "manager" here?
> 
> >From our experience, mediatek have many platforms and different
> customers have different requirement.
> 
> Firstly customer requirement:
>    Kernel space         |           user space
> ----------------------------------------------------------------
> driver -- framework -- syscall -- client get data in process
> 
> Face this demand, first architecture have no manager service.

Why is a "requirement" divided up this way?  Shouldn't the only
requirement be that a specific userspace program get the needed
information?  Other than that, the architecture below it does not have
to be a specific way, right?

> Secondly customer requirement:
>     Kernel space         |         user space
> ---------------------------------------------------------------------
> driver -- framework -- syscall -- framework service --IPC -- client A
> 
> |--IPC --client B 
> 
> Face this demand, second architecture we add a sensor manager framework
> as service in user space, receive client's enable disable command and
> dispatch data to those clients.
> Then second architecture have a sensor manager in user space and through
> ipc communicate;
> 
> Thirdly customer requirement:
>     Kernel space                 |                 user space
> --------------------------------------------------------------------------
> driver -- framework service -- syscall -- client A get data in process A
>                 |                      |--client B get data in process B
>                 |--client C get data in kernel space

Wait, why would a kernel driver need to get data from a sensor?

And if it does, why can't it just call it directly no matter what the
framework is?  Why can't you do that today with IIO?  Wouldn't it be
much simpler to add that addition to IIO instead of creating a whole new
framework that everyone then has to decide which to add their driver
too?

You don't want a driver author having to choose which interface to
support, they should not need to do that at all.  There should only be
one in-kernel api they need to tie into.  To expect everyone to do
duplicate work is not a valid solution at all.

> Face this demand, sensor manager framework service in user space can't
> meet this requirement, so third architecture we put sensor manager
> framework service to kernel space; Client A and client B through syscall
> communicate with framework service, client c through function call
> communicate with framework service. This is our finally architecture, we
> called high frequency sensor manager framework, high frequency means
> reduce one IPC transfer between framework service and client in user
> space, this architecture will have better performance, and no need
> manager service in user space through ipc communicate between service
> and client.

Again, work with IIO to get the missing pieces added there please.

> > > 2. each driver under the iio subsystem needs to create workqueue or
> > > kthread by itself, waste system resources.
> > 
> > workqueues are very light, how many sensors and what type of resources
> > are you referring to here?  And adding a whole new user api is not
> > exactly "tiny" either :)
> 
> Yes, workqueue are very light, but high frequency sensor (gyro accel and
> so on care latency) can't use system workqueue, must use high prority
> kthread or single thread workqueue.

That's fine, we do that today.

> In android system, there are almost
> 20 - 30 sensor types, one sensor driver user one kthread or single
> thread workqueue maybe not good.:)

In an android system we have 4-8 cores so a single workqueue for each
sensor type is trivial :)

> > > 3. iio doesn't have hang detect mechanism to detect polling thread hang.
> > 
> > That's userspace's issue, right?
> 
> No, in finally architecture, polling thread is not only user space
> issue, kernel space also have polling thread to poll sensor data. When
> sensor generate an event and through manager framework dispatch to
> client A B C, hang detect mechanism will detect which client don't
> response to service then service don't dispatch data to this client.:)

I'm sorry, I don't understand this.  Please work with the IIO developers
to resolve any broken issues.

> > > We need a sensor manager architecture in kernel space to select the best
> > > delay and latency that multi-client(user space or kernel space user)
> > > requested at the same time, and finally dispatch data to each client.
> > 
> > Why does that have to be in the kernel?
> 
> The reason answered before.
> 
> > > We need lower resource comsumption, each driver can poll data by kthread
> > > work which intergrated into a single kthread worker to save system
> > > resources in framework.
> > 
> > Again, how many resources are you really saving here with a whole new
> > framework?
> 
> Assume high frequency manager framework and iio framework the same code
> size, but for drivers, each driver use one  kthread or single thread
> workqueue compare to N drivers use a kthread worker, which is better?:)
> 
> > > We need detect polling thread hang to decide whether to send data to
> > > him.
> > 
> > Data to where?
> 
> Data don't send to polling thread who hanged.
> 
> > > About proc, proc is only for High Frequency Manager Framework to show
> > > manager details and client details, is not for device drivers.
> > 
> > Then it is not needed :)
> > 
> > > we recommend device driver(like test/test_app.c) use sysfs which under
> > > High Frequency Manager Framework.
> > 
> > Then you need to document it really well as to what you are doing here.
> > 
> > But again, please try working with the IIO framework as that is what we
> > have today.  Any improvements you make to it will help everyone out.
> > 
> > Adding a third way to handle sensor data to the kernel is probably not
> > going to work well for anyone...
> 
> Yes, I approve your ideas, but iio framework is too much more
> complicated and widely used, if I improve iio framework maybe not
> compatible with old interface. Then I decide add a new framework to
> staging. :)

Again, I can not accept a new framework that requires each driver that
already is supported in IIO to write a new driver, that would be crazy.

If the IIO developers and maintainer agree with your proposal that there
are problems with IIO and that this is the proper solution, that's fine.
But don't try to route around them without working with them first.
That's just rude :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
