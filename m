Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F383254DBF
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Aug 2020 21:00:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D2020203F6;
	Thu, 27 Aug 2020 19:00:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id unoEf01PDN3o; Thu, 27 Aug 2020 19:00:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 85D9E203B5;
	Thu, 27 Aug 2020 19:00:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0C53F1BF869
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 19:00:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 08B9F86B47
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 19:00:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GvrlLJjo5vni for <devel@linuxdriverproject.org>;
 Thu, 27 Aug 2020 19:00:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8765285CA8
 for <devel@driverdev.osuosl.org>; Thu, 27 Aug 2020 19:00:22 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id k20so5319177otr.1
 for <devel@driverdev.osuosl.org>; Thu, 27 Aug 2020 12:00:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BWqUveoeKZMIhm3GjalPyEQmnfCWpI1alLQjjqHt+NU=;
 b=SCcrh3qeuy5Pqm6KFI/xAj5Y/ENojt7/jYbC4IkRyQsWuyYTXztzy3Y/JwrtY3NGfK
 VJA5M/PFjjZNQZgCL4ipJNIe/29Icg2ojlK0A2jBoN2fPMa3Ljmy6wP/gwYIhQzI5LFf
 x0xQLnuGiXjWg1XJngPFxg+N/oncHwtwyx/QJ1d2o4CCgIWvNNh2YmvscoicgdTapmkx
 Avigv/QQopdYQ8XfX6SK5xvTrgHlbrIT1J7hzhJtXLWN6NpzInoHSkk2n5mDMmDHnKXh
 nYZv6OIfmGztUzuVBFq6FpcWumyGQO5lvbRrUQpmA06r767ZOPzu2PJXJZFndd22/MmJ
 50mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BWqUveoeKZMIhm3GjalPyEQmnfCWpI1alLQjjqHt+NU=;
 b=MNZcDj+JsThXMmLrElpqRNlvmesm0Klea5AhA6mSLQF3gOa9dyV0ACI4X3zC9beZqq
 K+J5Zh+FZsp0vx0vCgoGLzOCG/VXiP+V/WM1dxPfK51GVVL9h5wKvhj3+W+/7EksiCHf
 ZZ0DiHtE4oyWdcQEuU1iEqCd4yYvKQJ7xGf8n8tGS1svr9R/aKl3EzqHR/6+tFqLaKZN
 qdhDuPj0fs0Ms2NUzcEEUOXXrGOy1mJhIPxGPR/nWU34bW3feJ8DvmL8TkbfBAF+/F+U
 8Rn6n4zPYlE6jMZmPIN1eECJyIvBFJzwAZPaqdv+b9yICQwHmZ71It0tSIzRBDSbsJb0
 NBgw==
X-Gm-Message-State: AOAM532I3L7spxBvEomG9xzYqUegNuJFumYzrPqj1SJfpvo0BpiOyoKJ
 sWNxLKHSBzYLIHmJo1UijFNzGbwN5Aq2BcbbLCPdXNFb1MHrNg==
X-Google-Smtp-Source: ABdhPJy8T8ttMmxpmzdBmMLZEkAuTLQvD2G2liKWH2H+Jb7ky01tXVyV7oYkkXZ8NroZL6tIlOl+3FM2CROEfwK+7xM=
X-Received: by 2002:a4a:aa42:: with SMTP id y2mr9682938oom.88.1598554463803;
 Thu, 27 Aug 2020 11:54:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200827123627.538189-1-gregkh@linuxfoundation.org>
 <3d8de519-65b3-123b-8ace-e820982884e0@labbott.name>
 <20200827160506.GC684514@kroah.com>
 <CAMi1Hd1Ch1RWvOTnON3tsrucaKThTuGQnwNFo94GqUjufVmnOg@mail.gmail.com>
 <20200827171745.GA701089@kroah.com>
In-Reply-To: <20200827171745.GA701089@kroah.com>
From: John Stultz <john.stultz@linaro.org>
Date: Thu, 27 Aug 2020 11:54:12 -0700
Message-ID: <CALAqxLVOEBaLtkbL-OENYSK0dUc_PBo-oC=BOBFQbPh-bkWTgQ@mail.gmail.com>
Subject: Re: [PATCH] staging: ion: remove from the tree
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Hridya Valsaraju <hridya@google.com>,
 Laura Abbott <laura@labbott.name>,
 Android Kernel Team <kernel-team@android.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 27, 2020 at 10:17 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
> On Thu, Aug 27, 2020 at 10:31:41PM +0530, Amit Pundir wrote:
> > I don't know what is the right thing to do here. I just want to
> > highlight that AOSP's audio (codec2) HAL depends on the ION system
> > heap and it will break AOSP for people who boot mainline on their
> > devices, even for just testing purpose like we do in Linaro. Right now
> > we need only 1 (Android specific out-of-tree) patch to boot AOSP with
> > mainline and Sumit is already trying to upstream that vma naming
> > patch. Removal of in-kernel ION, will just add more to that delta.
>
> As AOSP will continue to rely on ION after December of this year, all
> you are doing is postponing the inevitable a few more months.
>
> Push back on the Android team to fix up the code to not use ION, they
> know this needs to happen.

The point though, is your main premise that no one is using this isn't true.

I'm actively working with Hridya and folks on the codec2 HAL side to
transition this on the userland side:
  https://android-review.googlesource.com/c/platform/frameworks/av/+/1368918/3

I'd like AOSP to not use ION after September (though being external I
can't promise anything), much less continuing after December.

I want this migration to happen as much as anyone.  But I'd prefer to
keep ION in staging until after the LTS is announced. Having both
around helps development for the transition, which helps us have a
reliable solution, which helps vendors to migrate and be able to do
comparative performance testing.

I do appreciate that keeping it isn't free, but I also don't feel the
chaos-monkey approach here is really motivational in the way you
intend.

thanks
-john
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
