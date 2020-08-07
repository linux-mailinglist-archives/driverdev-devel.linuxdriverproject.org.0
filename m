Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5CC23E75B
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Aug 2020 08:34:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EDA5425397;
	Fri,  7 Aug 2020 06:33:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kIAU2FJaTpOK; Fri,  7 Aug 2020 06:33:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4D22520481;
	Fri,  7 Aug 2020 06:33:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B7BEC1BF3CA
 for <devel@linuxdriverproject.org>; Fri,  7 Aug 2020 06:33:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AF21288622
 for <devel@linuxdriverproject.org>; Fri,  7 Aug 2020 06:33:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pxQalaL89pWc for <devel@linuxdriverproject.org>;
 Fri,  7 Aug 2020 06:33:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mailgw01.mediatek.com (unknown [210.61.82.183])
 by hemlock.osuosl.org (Postfix) with ESMTP id BB4F888618
 for <devel@driverdev.osuosl.org>; Fri,  7 Aug 2020 06:33:47 +0000 (UTC)
X-UUID: fa721c8ec5e94bdfa864b17a2a8c59b4-20200807
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=P8lwiU8BvsXEMdbqXkRf1Fm7PHhWjBVy6655AVZVJEU=; 
 b=S9Cu1qZAqe5uthC6E+rffIhohzf1ihU+uDGjzrdPzFb6Ukmr5gvvOnTV2+Ua3Y+Mul7zq8rV9hyCWx6uo4sZyCPUYqf99RfNe3RfgPtaD+94BdWiIGmZ253QNLzRlKE4fa8tIR6j/rrufZdOWNr1gbbG5TxOQTWN4kDFvtD03Do=;
X-UUID: fa721c8ec5e94bdfa864b17a2a8c59b4-20200807
Received: from mtkcas11.mediatek.inc [(172.21.101.40)] by mailgw01.mediatek.com
 (envelope-from <hongxu.zhao@mediatek.com>)
 (Cellopoint E-mail Firewall v4.1.10 Build 0809 with TLS)
 with ESMTP id 944972972; Fri, 07 Aug 2020 14:33:42 +0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 7 Aug 2020 14:33:40 +0800
Received: from [10.15.20.246] (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 7 Aug 2020 14:33:39 +0800
Message-ID: <1596781829.14444.17.camel@mbjsdccf07>
Subject: Re: [PATCH] staging: Add Mediatek High Frequency Manager Framework
From: hongxu.zhao <hongxu.zhao@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Fri, 7 Aug 2020 14:30:29 +0800
In-Reply-To: <20200806105351.GA2829418@kroah.com>
References: <20200804075339.9820-1-hongxu.zhao@mediatek.com>
 <20200804081126.GA1765831@kroah.com> <1596702748.6258.3.camel@mbjsdccf07>
 <20200806105351.GA2829418@kroah.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
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
 Hongxu Zhao <hongxu.zhao@mediatek.com>,
 open list <linux-kernel@vger.kernel.org>,
 Cunliang Du <cunliang.du@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Zhen jiang <zhen.jiang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, "moderated list:ARM/Mediatek SoC
 support" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 2020-08-06 at 12:53 +0200, Greg Kroah-Hartman wrote:
> On Thu, Aug 06, 2020 at 04:32:28PM +0800, hongxu.zhao wrote:
> > On Tue, 2020-08-04 at 10:11 +0200, Greg Kroah-Hartman wrote:
> > > On Tue, Aug 04, 2020 at 03:52:49PM +0800, hongxu.zhao wrote:
> > > > Add a new sensor framework into linux kernel which can support multi client request sensor data.
> > > > There are the following features:
> > > >     1.Ringbuffer between manager and client;
> > > >     2.Kernel space user interface;
> > > >     3.User space user interface with syscall;
> > > >     4.Each client hang detect mechanism;
> > > >     5.Polling timer management in framework no need driver concern;
> > > >     6.Polling kthread work intergrated into a single kthread
> > > >       worker to save system resources in framework no need driver concern;
> > > >     7.Proc file system to show manager device and client details;
> > > >     8.Compitable with android and widely used in many mediatek platform products;
> > > > 
> > > > Change-Id: I6361cdc2d51de50f66eede7df099c4575e7ec473
> > > 
> > > Did you not run checkpatch.pl on this?  :)
> > > 
> > > No need for change-id here.
> > > 
> > > But, most importantly, why is this in drivers/staging?  What keeps it
> > > from being in the "real" part of the kernel?  I need a TODO file in the
> > > directory of the driver listing what remains to be done and who is
> > > responsible for doing this work and reviewing patches.
> > > 
> > > Can you resend this with that file added and the Change-id removed?
> > > 
> > > Also, why not just use the IIO interface, why are you creating
> > > yet-another api for sensors?  We already have 2, making a third seems
> > > like something that guarantees this will never be mergable to the
> > > correct part of the kernel.
> > > 
> > > And finally, /proc/ is not for devices, that is what sysfs is for,
> > > please use that.
> > 
> > I have modified checkpatch issue, but blocked by ARCH=alpha build error
> > and I can't reproduce this build error in mediatek environment. I need
> > spend some time setting up an environment to solve this problem and will
> > send you the latest patch together after solving the problem of alpha
> > build error.
> 
> If you can't easily fix the alpha issue, you can just mark the driver as
> not able to be built there for now.
> 
> > Firstly I want keep it in the real part of kernel and I send mail to
> > community to find the right maintainer, unfortunately, several emails
> > were not answered.
> 
> Pointers to those emails on lore.kernel.org?

I sended mail to linux-kernel@vger.kernel.org

> > Secondly I found iio upstream history it also started from staging at
> > the beginning, maybe staging is the best start until it become mature we
> > can move it to the real part of kernel.
> 
> iio started in staging, but now that the infrastructure is out of it,
> there should not be any reason that new drivers be forced to go into
> staging too.  You only want to do it this way if for some reason you can
> not get the work done on your own.

Yes, I want started in staging and want more sensor driver(vendor
driver) added to high frequency manager framework.

> > Actually, we have already assessed IIO subsystem, but the conclusion is
> > that it doesn't meet our requirement:
> > 1. iio doesn't have sensor manager in kernel space.
> 
> What exactly do you mean by this?  Who needs to be a "manager" here?

From our experience, mediatek have many platforms and different
customers have different requirement.

Firstly customer requirement:
   Kernel space         |           user space
----------------------------------------------------------------
driver -- framework -- syscall -- client get data in process

Face this demand, first architecture have no manager service.

Secondly customer requirement:
    Kernel space         |         user space
---------------------------------------------------------------------
driver -- framework -- syscall -- framework service --IPC -- client A

|--IPC --client B 

Face this demand, second architecture we add a sensor manager framework
as service in user space, receive client's enable disable command and
dispatch data to those clients.
Then second architecture have a sensor manager in user space and through
ipc communicate;

Thirdly customer requirement:
    Kernel space                 |                 user space
--------------------------------------------------------------------------
driver -- framework service -- syscall -- client A get data in process A
                |                      |--client B get data in process B
                |--client C get data in kernel space

Face this demand, sensor manager framework service in user space can't
meet this requirement, so third architecture we put sensor manager
framework service to kernel space; Client A and client B through syscall
communicate with framework service, client c through function call
communicate with framework service. This is our finally architecture, we
called high frequency sensor manager framework, high frequency means
reduce one IPC transfer between framework service and client in user
space, this architecture will have better performance, and no need
manager service in user space through ipc communicate between service
and client.

> > 2. each driver under the iio subsystem needs to create workqueue or
> > kthread by itself, waste system resources.
> 
> workqueues are very light, how many sensors and what type of resources
> are you referring to here?  And adding a whole new user api is not
> exactly "tiny" either :)

Yes, workqueue are very light, but high frequency sensor (gyro accel and
so on care latency) can't use system workqueue, must use high prority
kthread or single thread workqueue. In android system, there are almost
20 - 30 sensor types, one sensor driver user one kthread or single
thread workqueue maybe not good.:)

> > 3. iio doesn't have hang detect mechanism to detect polling thread hang.
> 
> That's userspace's issue, right?

No, in finally architecture, polling thread is not only user space
issue, kernel space also have polling thread to poll sensor data. When
sensor generate an event and through manager framework dispatch to
client A B C, hang detect mechanism will detect which client don't
response to service then service don't dispatch data to this client.:)

> > We need a sensor manager architecture in kernel space to select the best
> > delay and latency that multi-client(user space or kernel space user)
> > requested at the same time, and finally dispatch data to each client.
> 
> Why does that have to be in the kernel?

The reason answered before.

> > We need lower resource comsumption, each driver can poll data by kthread
> > work which intergrated into a single kthread worker to save system
> > resources in framework.
> 
> Again, how many resources are you really saving here with a whole new
> framework?

Assume high frequency manager framework and iio framework the same code
size, but for drivers, each driver use one  kthread or single thread
workqueue compare to N drivers use a kthread worker, which is better?:)

> > We need detect polling thread hang to decide whether to send data to
> > him.
> 
> Data to where?

Data don't send to polling thread who hanged.

> > About proc, proc is only for High Frequency Manager Framework to show
> > manager details and client details, is not for device drivers.
> 
> Then it is not needed :)
> 
> > we recommend device driver(like test/test_app.c) use sysfs which under
> > High Frequency Manager Framework.
> 
> Then you need to document it really well as to what you are doing here.
> 
> But again, please try working with the IIO framework as that is what we
> have today.  Any improvements you make to it will help everyone out.
> 
> Adding a third way to handle sensor data to the kernel is probably not
> going to work well for anyone...

Yes, I approve your ideas, but iio framework is too much more
complicated and widely used, if I improve iio framework maybe not
compatible with old interface. Then I decide add a new framework to
staging. :)

thanks

hognxu zhao

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
