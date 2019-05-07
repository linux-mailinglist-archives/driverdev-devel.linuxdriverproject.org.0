Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB56216279
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 12:59:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E2A4987B69;
	Tue,  7 May 2019 10:58:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q9FZeqmQKPWW; Tue,  7 May 2019 10:58:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 614D987B39;
	Tue,  7 May 2019 10:58:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 68CCC1BF853
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 10:58:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 03BCC87B3D
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 10:58:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id czTrkiv+gy7G for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 10:58:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 17F1E87B3C
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 10:58:31 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id w11so18296680edl.5
 for <devel@driverdev.osuosl.org>; Tue, 07 May 2019 03:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1HC/MUgf456zJfRJXUVVgg6o0d0M1B+L7QMi6llJ2Bo=;
 b=E+YVKccV3crljzyzQRgZ+qVmjGAxpSmba/m9j8r8NgrA34RUFop5bvNMjUbDwOuRNB
 b32+Jl/qjNWnlvTDYyTs/KeVx58V71F7zbu28ARzlDJFrza6g9g8Zi8OL55OmDTkgfSl
 1BGDJtAmk2ERpdEdX2xDcrPZ80zvjefZo+oei1Mm2khGrth/UBL1A1VFwvbheFqAlcQ8
 9JSttdgh0BDB+Z/aTtQZkNW6+cetIuH9iCeGfDRIqCOLydg98GdTqe6LAdP4iTh2ppDw
 LsM9hKBQMNpP2ECL1fjkX6fYcURKheF5cqWjXseRus2cycqTaunLSVR2osQqCa3I6n/H
 lrLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1HC/MUgf456zJfRJXUVVgg6o0d0M1B+L7QMi6llJ2Bo=;
 b=jMImiY2WbkTN9KGpjYXzOM5VchSJJKZNsNWQdm6eMuFU8UTFz1mAea5Cndo4+yECmO
 a7e5wE2+EpGWEjxRQ758T1FOHeV6cnln/QNlsGe+xpbkYs1gjO9CQbMDi2vK8Ol4MzBQ
 2csbjn0R/v74bMGrQl5HuFosAq19On+xoeEkF0WOOgqNaI9nSmlYIP34lrHXu9IXyUaH
 nKzmQX7fpwn1a1Ab1qj0RGWli1DlQ4AedaGeZKaFfGbfIhs7uJqz/efXdWORJs+OpKs5
 WqUcIrZ8LHl487Ta3orwf9saq8iYi2pqhAgrouIu4OoqSmvbKFRPAdQqXXAoFA01lAJ2
 JCZw==
X-Gm-Message-State: APjAAAXHF1sHGhDvlq2fFFuUkl/MjUtoVVg1Jmp7/63+CfOTPKgHarWV
 7kM82ZXIcW2eU3jj/ohgnmwxBQ==
X-Google-Smtp-Source: APXvYqyHqFTcJpvyTuty9Yn2Sc9cm+BuGmLDrYq55IuT9aIRo5DWhxH0xy9+mtPoGye/4Y6Cby05tA==
X-Received: by 2002:a50:885b:: with SMTP id c27mr31844820edc.155.1557226709457; 
 Tue, 07 May 2019 03:58:29 -0700 (PDT)
Received: from brauner.io ([178.19.218.101])
 by smtp.gmail.com with ESMTPSA id w14sm4048277eda.18.2019.05.07.03.58.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 07 May 2019 03:58:28 -0700 (PDT)
Date: Tue, 7 May 2019 12:58:27 +0200
From: Christian Brauner <christian@brauner.io>
To: Sultan Alsawaf <sultan@kerneltoast.com>
Subject: Re: [RFC] simple_lmk: Introduce Simple Low Memory Killer for Android
Message-ID: <20190507105826.oi6vah6x5brt257h@brauner.io>
References: <20190318235052.GA65315@google.com>
 <20190319221415.baov7x6zoz7hvsno@brauner.io>
 <CAKOZuessqcjrZ4rfGLgrnOhrLnsVYiVJzOj4Aa=o3ZuZ013d0g@mail.gmail.com>
 <20190319231020.tdcttojlbmx57gke@brauner.io>
 <20190320015249.GC129907@google.com>
 <20190507021622.GA27300@sultan-box.localdomain>
 <20190507070430.GA24150@kroah.com>
 <20190507072721.GA4364@sultan-box.localdomain>
 <20190507074334.GB26478@kroah.com>
 <20190507081236.GA1531@sultan-box.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507081236.GA1531@sultan-box.localdomain>
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
 Daniel Colascione <dancol@google.com>, kernel-team <kernel-team@android.com>,
 Todd Kjos <tkjos@android.com>, Kees Cook <keescook@chromium.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Tim Murray <timmurray@google.com>,
 Michal Hocko <mhocko@kernel.org>, Suren Baghdasaryan <surenb@google.com>,
 linux-mm <linux-mm@kvack.org>,
 Arve =?utf-8?B?SGrDuG5uZXbDpWc=?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 Oleg Nesterov <oleg@redhat.com>, Joel Fernandes <joel@joelfernandes.org>,
 Andy Lutomirski <luto@amacapital.net>, Martijn Coenen <maco@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 07, 2019 at 01:12:36AM -0700, Sultan Alsawaf wrote:
> On Tue, May 07, 2019 at 09:43:34AM +0200, Greg Kroah-Hartman wrote:
> > Given that any "new" android device that gets shipped "soon" should be
> > using 4.9.y or newer, is this a real issue?
> 
> It's certainly a real issue for those who can't buy brand new Android devices
> without software bugs every six months :)
> 
> > And if it is, I'm sure that asking for those patches to be backported to
> > 4.4.y would be just fine, have you asked?
> >
> > Note that I know of Android Go devices, running 3.18.y kernels, do NOT
> > use the in-kernel memory killer, but instead use the userspace solution
> > today.  So trying to get another in-kernel memory killer solution added
> > anywhere seems quite odd.
> 
> It's even more odd that although a userspace solution is touted as the proper
> way to go on LKML, almost no Android OEMs are using it, and even in that commit

That's probably because without proper kernel changes this is rather
tricky to use safely (see below).

> I linked in the previous message, Google made a rather large set of
> modifications to the supposedly-defunct lowmemorykiller.c not one month ago.
> What's going on?
> 
> Qualcomm still uses lowmemorykiller.c [1] on the Snapdragon 845. If PSI were
> backported to 4.4, or even 3.18, would it really be used? I don't really
> understand the aversion to an in-kernel memory killer on LKML despite the rest
> of the industry's attraction to it. Perhaps there's some inherently great cost
> in using the userspace solution that I'm unaware of?
> 
> Regardless, even if PSI were backported, a full-fledged LMKD using it has yet to
> be made, so it wouldn't be of much use now.

This is work that is ongoing and requires kernel changes to make it
feasible. One of the things that I have been working on for quite a
while is the whole file descriptor for processes thing that is important
for LMKD (Even though I never thought about this use-case when I started
pitching this.). Joel and Daniel have joined in and are working on
making LMKD possible.
What I find odd is that every couple of weeks different solutions to the
low memory problem are pitched. There is simple_lkml, there is LMKD, and
there was a patchset that wanted to speed up memory reclaim at process
kill-time by adding a new flag to the new pidfd_send_signal() syscall.
That all seems - though related - rather uncoordinated. Now granted,
coordinated is usually not how kernel development necessarily works but
it would probably be good to have some sort of direction and from what I
have seen LMKD seems to be the most coordinated effort. But that might
just be my impression.

Christian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
