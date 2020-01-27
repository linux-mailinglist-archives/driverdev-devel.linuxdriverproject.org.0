Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E9D14A91B
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 18:35:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 42C5C8642E;
	Mon, 27 Jan 2020 17:35:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vcd+2-hOgKWJ; Mon, 27 Jan 2020 17:35:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EB5FE8634E;
	Mon, 27 Jan 2020 17:35:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E72A1BF283
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 17:35:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 57A522038A
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 17:35:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rvzMZY2fEE94 for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 17:35:24 +0000 (UTC)
X-Greylist: delayed 00:15:54 by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by silver.osuosl.org (Postfix) with ESMTPS id DC89F20362
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 17:35:23 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id t26so10925081ioi.13
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 09:35:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XsWyww+QgbXklC8MxgHKR4SlweUpSlsMS025zYGjX0o=;
 b=me+nHO+RJJ9pwknvGMxNKY4E+IIq2rfX81uDSJep64/JNvaqDYDa7kfwa5++7pg6Qc
 9qBxYeCKnArlG4B9+YtIuqZL8vsEJ5u1Ve8INj+sdQMjZ986c8lrmZafuE4Lg5h/H5oS
 tL1QvrBbFhgf9wPlM7BniGAn/nU7M9lQ70hdnBieA257ntb2JE3szZlI1EHsp6GoaV48
 3w0ns7UQ+ky4syC0xGMztwp786ZkcVq6GNGSU7pqOEreCBgzFqIBxlqhZXZCHeaZjg72
 A8cQzmR0i0cncpMm+ifTbo4l/ZMmlVWdFpgkrcBi/ceyOOx2NCTkZoGZbOvB4eSlgc/h
 E7Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XsWyww+QgbXklC8MxgHKR4SlweUpSlsMS025zYGjX0o=;
 b=DWInJ/Utp9IH4WxxxYXu/LH+m1nTGawBgcB/cO9XBDRPpd8GrQKYn/xUPuvTFSzz9E
 4AQsAag/ybGq8K65aQMh5CPEbBKmzy3+Jow/tjQYS2HSSK3ZoR+rS0A+82KMoLiP4N9c
 PPPeVHZH+9wIZkyhx45gy5YoerwZ5c3Mxh3dxTlf7FlbGyaEreN3ORFcaYJ1wZPPazmN
 bEYz9U5cqx7ldbaB270uKCbdJEqaaO96o/g3sl6OJOEJ2wIapMtQI82WLYhuYI6TJOFI
 bRlMcmS87iuC9xlb+k0V6IhrCBQmL+7XDGcVjdH1VpurChA+fxTJhUwCV2BI6RtAWhnd
 zzmQ==
X-Gm-Message-State: APjAAAXf+6I0EC69/DIHxvY1cBjr/NTN5FoeX8bTcGIimqdutPsPQw5k
 Fl89FjzlyQtZc5j+hiFdwe8jMnd768/ozv55RtMRMgX0tZ8=
X-Google-Smtp-Source: APXvYqy5VT6LPP1sTcdJXPvGsFwol8OQElSUlAhWZheS+bJq22dM6OyWwO3nO6ssFpbLCp4wFxPtJv7ZkLGtKtOiTvg=
X-Received: by 2002:ac8:340c:: with SMTP id u12mr16371700qtb.257.1580145074290; 
 Mon, 27 Jan 2020 09:11:14 -0800 (PST)
MIME-Version: 1.0
References: <CACT4Y+bg1UKXzZF4a9y+5CfNYRwBc5Gx+GjPS0Dhb1n-Qf50+g@mail.gmail.com>
 <CACT4Y+bckC4k-EpWiCkD+BBo5ypmkcb2g8Axb62LnBbwJjcqdw@mail.gmail.com>
 <20200126095132.bq33azq7paqvedzx@wittgenstein>
In-Reply-To: <20200126095132.bq33azq7paqvedzx@wittgenstein>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Mon, 27 Jan 2020 18:11:02 +0100
Message-ID: <CACT4Y+ZNJY9D3xmk21M7qaBjbD+1_GeigA1Z1FGHwC+3MNT-gw@mail.gmail.com>
Subject: Re: binderfs interferes with syzkaller?
To: Christian Brauner <christian.brauner@ubuntu.com>
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
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 syzkaller <syzkaller@googlegroups.com>, Hridya Valsaraju <hridya@google.com>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jan 26, 2020 at 10:51 AM Christian Brauner
<christian.brauner@ubuntu.com> wrote:
>
> On Sat, Jan 25, 2020 at 07:13:03PM +0100, Dmitry Vyukov wrote:
> > On Sat, Jan 25, 2020 at 6:49 PM Dmitry Vyukov <dvyukov@google.com> wrote:
> > >
> > > Hi binder maintainers,
> > >
> > > It seems that something has happened and now syzbot has 0 coverage in
> > > drivers/android/binder.c:
> > > https://storage.googleapis.com/syzkaller/cover/ci-upstream-kasan-gce-root.html
> > > It covered at least something there before as it found some bugs in binder code.
> > > I _suspect_ it may be related to introduction binderfs, but it's
> > > purely based on the fact that binderfs changed lots of things there.
> > > And I see it claims to be backward compatible.
> > >
> > > syzkaller strategy to reach binder devices is to use
> > > CONFIG_ANDROID_BINDER_DEVICES to create a bunch of binderN devices (to
> > > give each test process a private one):
> > > https://github.com/google/syzkaller/blob/master/dashboard/config/upstream-kasan.config#L5671
> > >
> > > Then it knows how to open these /dev/binderN devices:
> > > https://github.com/google/syzkaller/blob/master/sys/linux/dev_binder.txt#L22
> > > and do stuff with them.
> > >
> > > Did these devices disappear or something?
> >
> > Oh, I see, it's backwards compatible if it's not enabled, right?
>
> It's backwards compatible.
> Let me give a little more detail. The legacy binder interface would
> create all devices listed in the module parameter
> CONFIG_ANDROID_BINDER_DEVICES. These devices were created using
> misc_register(&binder_device->miscdev);
> in the host's devtmpfs mount.
> If binderfs is enabled these devices are now created in the binderfs
> instance instead.
> For full backwards compatibility with old Android versions symlinks (or
> bind mounts) can be provided in the host's devtmpfs. This is what I
> recommended a few months ago.
>
> > And we enabled it because, well, enabling things generally gives more
> > coverage. I guess I will disable CONFIG_ANDROID_BINDERFS for now to
>
> I would at least try to test both somehow. It's likely that binderfs
> will replace legacy binder devices so if we could keep testing it
> somehow that would be great.
>
> > restore coverage in the binder itself.
>
> I'm not completely sure what you mean here. The binder IPC codepaths are
> nearly the same. The difference is mostly in how the device information
> is cast out before actual binder-ipc operations take place.
> In any case, testing both would obviously be preferred but binderfs
> strikes me as more worthy of testing.

I've reverted CONFIG_ANDROID_BINDERFS to "is not set" for now as the
easiest option. We've got 35% coverage of binder.c again.

By "restore coverage" I meant that even if the IPC codepaths are
nearly the same tests knew to open /dev/binderN and these disappeared,
so no test could open any binder device and get any coverage in binder
code.

If anybody wants to try to test both, you are very welcome ;)
If you are hinting that I should do it, a single person can't test all
2000 subsystems in kernel, and testing each of them requires quite
some domain expertise. This really requires involvement of developers
of the code. I am sure there is lots to improve in the IPC codepaths
as well.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
