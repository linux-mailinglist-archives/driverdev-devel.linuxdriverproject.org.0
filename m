Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 104D5254C25
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Aug 2020 19:23:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A22658849C;
	Thu, 27 Aug 2020 17:23:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ETP8p4z0ZC0H; Thu, 27 Aug 2020 17:23:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 044F987FFF;
	Thu, 27 Aug 2020 17:23:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 51D621BF280
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 17:23:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1B7562266C
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 17:23:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lPoxXLPboBu1 for <devel@linuxdriverproject.org>;
 Thu, 27 Aug 2020 17:23:00 +0000 (UTC)
X-Greylist: delayed 00:06:01 by SQLgrey-1.7.6
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 73A98204CE
 for <devel@driverdev.osuosl.org>; Thu, 27 Aug 2020 17:23:00 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id z2so1094409qtv.12
 for <devel@driverdev.osuosl.org>; Thu, 27 Aug 2020 10:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=/sinItkw0fMiz5k7wOtwmeJNSHN2dJzPeRRCsjiQAtw=;
 b=ShdT1Amb8cFBk7QoerCq9MBv460dUKx9sasPl2jpNbpvbgSAPVWV1LNx4tNYqtQl9s
 a8HdJGAP5RIyyGO7e0efjwna6tgvCBDt7cWACvicGcPSuDwwtI31DAPAR1z+iz0qFt+v
 0/SjLFZFPIMFXTXQj50g4wJaPpgsQqv825O8k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=/sinItkw0fMiz5k7wOtwmeJNSHN2dJzPeRRCsjiQAtw=;
 b=mS81KhrGHvxzz6NWUKjv8liXvp4xacaF8TVcCSkUoHt2mJ+YulafpZTCgN4aEcQKfr
 BY25MBCZyuIJnV7/0kUOoU3lEhN2WKIsCt8SRGbufc9Du7yeh/S9HUiyop/9uG7SZsUA
 b6WqAgYgBnPYLfyqcGK8rKRZmNTqhfv5WxI5Xns37IVxfL/qDOxW38EulApAm3p5qu/q
 bCVOTMoUA49AFv7qzOQGB539sv/EUqbRRLRkBJ1LqT1O1vnNU3dO34LhnRTLtzFbm/C0
 gSYs2pOVcdio654IEJ5EMOi7hgQBwF8+gXK/hZazVI+PVrqkDC6Rpqe3M2pbxzPTe+nk
 onnQ==
X-Gm-Message-State: AOAM532sOT5TU0jTCLprQ8yVW2gU9c7lCYBjRCeuaHAoeIXDLNorBqF1
 eovo1aD8CJgMg/DllB8ZRsgg837sl+X/SA==
X-Google-Smtp-Source: ABdhPJxuoVfZ2k+iph3eNvKD2GUzguirA7HTRHhpEpY4GfJL7dVTt29kDuTvD8xTRmBEMbzNMNsKkQ==
X-Received: by 2002:ac8:4e49:: with SMTP id e9mr18870259qtw.91.1598548617909; 
 Thu, 27 Aug 2020 10:16:57 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:cad3:ffff:feb3:bd59])
 by smtp.gmail.com with ESMTPSA id k48sm2441720qtk.44.2020.08.27.10.16.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Aug 2020 10:16:57 -0700 (PDT)
Date: Thu, 27 Aug 2020 13:16:56 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Amit Pundir <amit.pundir@linaro.org>
Subject: Re: [PATCH] staging: ion: remove from the tree
Message-ID: <20200827171656.GA3090278@google.com>
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
 Christoph Hellwig <hch@infradead.org>,
 Android Kernel Team <kernel-team@android.com>, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Martijn Coenen <maco@android.com>, lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, Hridya Valsaraju <hridya@google.com>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 John Stultz <john.stultz@linaro.org>, Suren Baghdasaryan <surenb@google.com>,
 Laura Abbott <laura@labbott.name>, Shuah Khan <shuah@kernel.org>,
 Sumit Semwal <sumit.semwal@linaro.org>,
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

So that means you now have to carry 2 patches instead of 1, right? That's n=
ot
that bad :-D.

BTW, why doesn't your mainline testing use dmabuf already?

AFAIK, upstream has inertia catching up to products etc, so sooner its
removed the better if it is mostly dead (Before it turns into ashmem which
nobody can remove). My 2c.

thanks,

 - Joel

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
