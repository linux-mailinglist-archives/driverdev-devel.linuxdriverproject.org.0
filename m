Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B2014254BE8
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Aug 2020 19:17:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C2CBB86A95;
	Thu, 27 Aug 2020 17:17:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UUsYvqi0hVwO; Thu, 27 Aug 2020 17:17:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2FB6486A73;
	Thu, 27 Aug 2020 17:17:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1543E1BF280
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 17:17:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1196286AF2
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 17:17:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E-Xt+iG2nSwd for <devel@linuxdriverproject.org>;
 Thu, 27 Aug 2020 17:17:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 109FD86AF0
 for <devel@driverdev.osuosl.org>; Thu, 27 Aug 2020 17:17:33 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 29A452087C;
 Thu, 27 Aug 2020 17:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598548652;
 bh=PltBLwlOgKxxGKPfhP0kyIlXe7QOuvH340zu37AK8pU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qQxS8ZMZsnBv7N611D2Tho2iEQbWLST2pzCypEmgeZ4yEWmdmyTFXZpme3ML7zC/u
 +RNWjiZbFgVSthur1Fyuze+ggvQMEI/K0cncNdNotb0NFxNM3Tk+uU1mjftss79ar6
 7C3vglXoXWoOtYTmN94LSLymGwYwxgH7qzotbOlo=
Date: Thu, 27 Aug 2020 19:17:45 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Amit Pundir <amit.pundir@linaro.org>
Subject: Re: [PATCH] staging: ion: remove from the tree
Message-ID: <20200827171745.GA701089@kroah.com>
References: <20200827123627.538189-1-gregkh@linuxfoundation.org>
 <3d8de519-65b3-123b-8ace-e820982884e0@labbott.name>
 <20200827160506.GC684514@kroah.com>
 <CAMi1Hd1Ch1RWvOTnON3tsrucaKThTuGQnwNFo94GqUjufVmnOg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMi1Hd1Ch1RWvOTnON3tsrucaKThTuGQnwNFo94GqUjufVmnOg@mail.gmail.com>
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
 linaro-mm-sig@lists.linaro.org, Shuah Khan <shuah@kernel.org>,
 Todd Kjos <tkjos@android.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Martijn Coenen <maco@android.com>, lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Suren Baghdasaryan <surenb@google.com>, Christoph Hellwig <hch@infradead.org>,
 Hridya Valsaraju <hridya@google.com>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 John Stultz <john.stultz@linaro.org>, Joel Fernandes <joel@joelfernandes.org>,
 Laura Abbott <laura@labbott.name>,
 Android Kernel Team <kernel-team@android.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 27, 2020 at 10:31:41PM +0530, Amit Pundir wrote:
> On Thu, 27 Aug 2020 at 21:34, Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Thu, Aug 27, 2020 at 09:31:27AM -0400, Laura Abbott wrote:
> > > On 8/27/20 8:36 AM, Greg Kroah-Hartman wrote:
> > > > The ION android code has long been marked to be removed, now that we
> > > > dma-buf support merged into the real part of the kernel.
> > > >
> > > > It was thought that we could wait to remove the ion kernel at a lat=
er
> > > > time, but as the out-of-tree Android fork of the ion code has diver=
ged
> > > > quite a bit, and any Android device using the ion interface uses th=
at
> > > > forked version and not this in-tree version, the in-tree copy of the
> > > > code is abandonded and not used by anyone.
> > > >
> > > > Combine this abandoned codebase with the need to make changes to it=
 in
> > > > order to keep the kernel building properly, which then causes merge
> > > > issues when merging those changes into the out-of-tree Android code=
, and
> > > > you end up with two different groups of people (the in-kernel-tree
> > > > developers, and the Android kernel developers) who are both annoyed=
 at
> > > > the current situation.  Because of this problem, just drop the in-k=
ernel
> > > > copy of the ion code now, as it's not used, and is only causing pro=
blems
> > > > for everyone involved.
> > > >
> > > > Cc: "Arve Hj=F8nnev=E5g" <arve@android.com>
> > > > Cc: "Christian K=F6nig" <christian.koenig@amd.com>
> > > > Cc: Christian Brauner <christian@brauner.io>
> > > > Cc: Christoph Hellwig <hch@infradead.org>
> > > > Cc: Hridya Valsaraju <hridya@google.com>
> > > > Cc: Joel Fernandes <joel@joelfernandes.org>
> > > > Cc: John Stultz <john.stultz@linaro.org>
> > > > Cc: Laura Abbott <laura@labbott.name>
> > > > Cc: Martijn Coenen <maco@android.com>
> > > > Cc: Shuah Khan <shuah@kernel.org>
> > > > Cc: Sumit Semwal <sumit.semwal@linaro.org>
> > > > Cc: Suren Baghdasaryan <surenb@google.com>
> > > > Cc: Todd Kjos <tkjos@android.com>
> > > > Cc: devel@driverdev.osuosl.org
> > > > Cc: dri-devel@lists.freedesktop.org
> > > > Cc: linaro-mm-sig@lists.linaro.org
> > > > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > >
> > > We discussed this at the Android MC on Monday and the plan was to
> > > remove it after the next LTS release.
> >
> > I know it was discussed, my point is that it is actually causing
> > problems now (with developers who want to change the internal kernel api
> > hitting issues, and newbies trying to clean up code in ways that isn't
> > exactly optimal wasting maintainer cycles), and that anyone who uses
> > this code, is not actually using this version of the code.  Everyone who
> > relies on ion right now, is using the version that is in the Android
> > common kernel tree, which has diverged from this in-kernel way quite a
> > bit now for the reason that we didn't want to take any of those new
> > features in the in-kernel version.
> >
> > So this is a problem that we have caused by just wanting to wait, no one
> > is using this code, combined with it causing problems for the upstream
> > developers.
> >
> > There is nothing "magic" about the last kernel of the year that requires
> > this code to sit here until then.  At that point in time, all users
> > will, again, be using the forked Android kernel version, and if we
> > delete this now here, that fork can remain just fine, with the added
> > benifit of it reducing developer workloads here in-kernel.
> >
> > So why wait?
> =

> Hi,
> =

> I don't know what is the right thing to do here. I just want to
> highlight that AOSP's audio (codec2) HAL depends on the ION system
> heap and it will break AOSP for people who boot mainline on their
> devices, even for just testing purpose like we do in Linaro. Right now
> we need only 1 (Android specific out-of-tree) patch to boot AOSP with
> mainline and Sumit is already trying to upstream that vma naming
> patch. Removal of in-kernel ION, will just add more to that delta.

As AOSP will continue to rely on ION after December of this year, all
you are doing is postponing the inevitable a few more months.

Push back on the Android team to fix up the code to not use ION, they
know this needs to happen.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
