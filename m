Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 120451499DC
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jan 2020 10:51:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0E0F620453;
	Sun, 26 Jan 2020 09:51:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JlQWdrVhFtZI; Sun, 26 Jan 2020 09:51:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B376420428;
	Sun, 26 Jan 2020 09:51:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 198121BF358
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 09:51:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 15ADB20418
 for <devel@linuxdriverproject.org>; Sun, 26 Jan 2020 09:51:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nV79c+8bMuON for <devel@linuxdriverproject.org>;
 Sun, 26 Jan 2020 09:51:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id 39AF820403
 for <devel@driverdev.osuosl.org>; Sun, 26 Jan 2020 09:51:38 +0000 (UTC)
Received: from ip5f5bd665.dynamic.kabel-deutschland.de ([95.91.214.101]
 helo=wittgenstein) by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1iveZn-0000sp-Ii; Sun, 26 Jan 2020 09:51:31 +0000
Date: Sun, 26 Jan 2020 10:51:33 +0100
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Dmitry Vyukov <dvyukov@google.com>
Subject: Re: binderfs interferes with syzkaller?
Message-ID: <20200126095132.bq33azq7paqvedzx@wittgenstein>
References: <CACT4Y+bg1UKXzZF4a9y+5CfNYRwBc5Gx+GjPS0Dhb1n-Qf50+g@mail.gmail.com>
 <CACT4Y+bckC4k-EpWiCkD+BBo5ypmkcb2g8Axb62LnBbwJjcqdw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACT4Y+bckC4k-EpWiCkD+BBo5ypmkcb2g8Axb62LnBbwJjcqdw@mail.gmail.com>
User-Agent: NeoMutt/20180716
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Joel Fernandes <joel@joelfernandes.org>,
 Arve =?utf-8?B?SGrDuG5uZXbDpWc=?= <arve@android.com>,
 syzkaller <syzkaller@googlegroups.com>, Hridya Valsaraju <hridya@google.com>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jan 25, 2020 at 07:13:03PM +0100, Dmitry Vyukov wrote:
> On Sat, Jan 25, 2020 at 6:49 PM Dmitry Vyukov <dvyukov@google.com> wrote:
> >
> > Hi binder maintainers,
> >
> > It seems that something has happened and now syzbot has 0 coverage in
> > drivers/android/binder.c:
> > https://storage.googleapis.com/syzkaller/cover/ci-upstream-kasan-gce-root.html
> > It covered at least something there before as it found some bugs in binder code.
> > I _suspect_ it may be related to introduction binderfs, but it's
> > purely based on the fact that binderfs changed lots of things there.
> > And I see it claims to be backward compatible.
> >
> > syzkaller strategy to reach binder devices is to use
> > CONFIG_ANDROID_BINDER_DEVICES to create a bunch of binderN devices (to
> > give each test process a private one):
> > https://github.com/google/syzkaller/blob/master/dashboard/config/upstream-kasan.config#L5671
> >
> > Then it knows how to open these /dev/binderN devices:
> > https://github.com/google/syzkaller/blob/master/sys/linux/dev_binder.txt#L22
> > and do stuff with them.
> >
> > Did these devices disappear or something?
> 
> Oh, I see, it's backwards compatible if it's not enabled, right?

It's backwards compatible.
Let me give a little more detail. The legacy binder interface would
create all devices listed in the module parameter
CONFIG_ANDROID_BINDER_DEVICES. These devices were created using 
misc_register(&binder_device->miscdev);
in the host's devtmpfs mount.
If binderfs is enabled these devices are now created in the binderfs
instance instead.
For full backwards compatibility with old Android versions symlinks (or
bind mounts) can be provided in the host's devtmpfs. This is what I
recommended a few months ago.

> And we enabled it because, well, enabling things generally gives more
> coverage. I guess I will disable CONFIG_ANDROID_BINDERFS for now to

I would at least try to test both somehow. It's likely that binderfs
will replace legacy binder devices so if we could keep testing it
somehow that would be great.

> restore coverage in the binder itself.

I'm not completely sure what you mean here. The binder IPC codepaths are
nearly the same. The difference is mostly in how the device information
is cast out before actual binder-ipc operations take place.
In any case, testing both would obviously be preferred but binderfs
strikes me as more worthy of testing.

Christian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
