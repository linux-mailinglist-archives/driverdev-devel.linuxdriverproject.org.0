Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FDF42555EF
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Aug 2020 10:05:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A431E8851D;
	Fri, 28 Aug 2020 08:05:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aTsbazh3keCk; Fri, 28 Aug 2020 08:05:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 171FB884DF;
	Fri, 28 Aug 2020 08:05:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 52B6F1BF9C2
 for <devel@linuxdriverproject.org>; Fri, 28 Aug 2020 08:05:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4EB49884E1
 for <devel@linuxdriverproject.org>; Fri, 28 Aug 2020 08:05:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TgMcXhEPqde5 for <devel@linuxdriverproject.org>;
 Fri, 28 Aug 2020 08:05:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A2803884DF
 for <devel@driverdev.osuosl.org>; Fri, 28 Aug 2020 08:05:15 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D511E2098B;
 Fri, 28 Aug 2020 08:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598601915;
 bh=vMJRZMz2Pa5rB3iLaOPsspQW2sADe0DrKt54oiW5pUI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c9rdK0xQA5nY/JkJ1bHSkXeUVMBdLLLADhXIk2SZaMlOVoZbY5UpfCP4avwBIH4nY
 hnLfwqc/dQBU08288LRom/l+e2DtNDNfqPkOVFF2kEL7kwBKiAU1yrUwkSSM4vswhS
 nuwdhbSf1poDOQn+W3m7zKRAMSze9tYqn5BBNz60=
Date: Fri, 28 Aug 2020 10:05:27 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: John Stultz <john.stultz@linaro.org>
Subject: Re: [PATCH] staging: ion: remove from the tree
Message-ID: <20200828080527.GA1005274@kroah.com>
References: <20200827123627.538189-1-gregkh@linuxfoundation.org>
 <3d8de519-65b3-123b-8ace-e820982884e0@labbott.name>
 <20200827160506.GC684514@kroah.com>
 <CAMi1Hd1Ch1RWvOTnON3tsrucaKThTuGQnwNFo94GqUjufVmnOg@mail.gmail.com>
 <20200827171745.GA701089@kroah.com>
 <CALAqxLVOEBaLtkbL-OENYSK0dUc_PBo-oC=BOBFQbPh-bkWTgQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALAqxLVOEBaLtkbL-OENYSK0dUc_PBo-oC=BOBFQbPh-bkWTgQ@mail.gmail.com>
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
Cc: Amit Pundir <amit.pundir@linaro.org>,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Shuah Khan <shuah@kernel.org>, Todd Kjos <tkjos@android.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, Martijn Coenen <maco@android.com>,
 lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Suren Baghdasaryan <surenb@google.com>, Christoph Hellwig <hch@infradead.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Hridya Valsaraju <hridya@google.com>,
 Laura Abbott <laura@labbott.name>,
 Android Kernel Team <kernel-team@android.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 27, 2020 at 11:54:12AM -0700, John Stultz wrote:
> On Thu, Aug 27, 2020 at 10:17 AM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> > On Thu, Aug 27, 2020 at 10:31:41PM +0530, Amit Pundir wrote:
> > > I don't know what is the right thing to do here. I just want to
> > > highlight that AOSP's audio (codec2) HAL depends on the ION system
> > > heap and it will break AOSP for people who boot mainline on their
> > > devices, even for just testing purpose like we do in Linaro. Right now
> > > we need only 1 (Android specific out-of-tree) patch to boot AOSP with
> > > mainline and Sumit is already trying to upstream that vma naming
> > > patch. Removal of in-kernel ION, will just add more to that delta.
> >
> > As AOSP will continue to rely on ION after December of this year, all
> > you are doing is postponing the inevitable a few more months.
> >
> > Push back on the Android team to fix up the code to not use ION, they
> > know this needs to happen.
> 
> The point though, is your main premise that no one is using this isn't true.

They are using the version of ion in the Android kernel tree, yes, as it
has new features that many people are relying on.

The version that is currently in the kernel tree is crippled, and maybe
works for some use cases, but not the majority, right?

> I'm actively working with Hridya and folks on the codec2 HAL side to
> transition this on the userland side:
>   https://android-review.googlesource.com/c/platform/frameworks/av/+/1368918/3
> 
> I'd like AOSP to not use ION after September (though being external I
> can't promise anything), much less continuing after December.

The android team has said they will be dropping ION use for the "next"
Android release, which is sometime next year from what I recall.
December is probably not going to happen :)

> I want this migration to happen as much as anyone.  But I'd prefer to
> keep ION in staging until after the LTS is announced. Having both
> around helps development for the transition, which helps us have a
> reliable solution, which helps vendors to migrate and be able to do
> comparative performance testing.

I don't understand what having this in the "next" kernel helps us with
here.  And I would really really prefer to NOT have an outdated version
of this code in a kernel tree that I am going to have to support for the
next X number of years, when no one is using that version of the driver.

What is this LTS fixation to keep this code around for?  Who does it
help?

> I do appreciate that keeping it isn't free, but I also don't feel the
> chaos-monkey approach here is really motivational in the way you
> intend.

I don't see it helping anyone to leave this around, except to cause
merge issues for me, and development issues for other developers.

Anyone who really wants this code, can easily revert the deletion and
move on and grab the AOSP copy of the code.  That's what they did when
we deleted other Android features that are still relied on.

Given that the "isn't free" is causing _me_ real pain, and not the
actual users of this code, I am leaning toward wanting to move that
pain/cost to those users, for obvious reasons.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
