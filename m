Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B6945168F0
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 19:17:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BCD77861BC;
	Tue,  7 May 2019 17:17:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R3cye5aXDwYx; Tue,  7 May 2019 17:17:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0182885109;
	Tue,  7 May 2019 17:17:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 408341BF5B4
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 17:17:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 366E32E1BB
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 17:17:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RBXb0kM8gwI9 for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 17:17:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 6D57D26CAB
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 17:17:16 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id b1so15708185otp.5
 for <devel@driverdev.osuosl.org>; Tue, 07 May 2019 10:17:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=E9wTNkAOK0Q4lAuFt/sfS/LjQKpDg59u0F4E5sd+CsI=;
 b=q49pdu2/sa9ClxmgzNm6zazYEuD8p/NAe7+cJWfRwhwmSs1xPnxuhpsoBtRAU8XERD
 wAv6vDsAtQmrBM7gWEQRzeblzBSzYG9Z/QF7h5MQW1ndd+yuxE990ng+gUSRTt7dnDpr
 ldcERGPYGICy/QsVjyxjNU4P19mRdLcSRHUKz6ouBAXNzF53y6Jw6vXSs3+sG0tRwrVU
 Zoe8lPjZJEl3EiqfvYUTmrfj5NJ8g1D5wmEzU2S/Jf7AzpV2cM42oSsJw0wN7v5R46rf
 V7/UpSx4YjrOk/5RQp2yl/ElkoD+CueDrEkW2LMIR/G2lOF3yrIWsktD2izkjI48yVX8
 Pi5Q==
X-Gm-Message-State: APjAAAWdygtCUX5VrNzjh0eMh5FJNu50NauKJOZwjHgR9Ejmrxv0lpYK
 2YS/bPHt+xYMX1QhTScl5OQ=
X-Google-Smtp-Source: APXvYqx4xD4T9EyjERPdqkpNFarhqKMZJ2bjl+TL0Qi4QVxwmB8ENcE4Li8DoRtFni5wwxEr70A6yA==
X-Received: by 2002:a9d:5882:: with SMTP id x2mr471197otg.49.1557249435730;
 Tue, 07 May 2019 10:17:15 -0700 (PDT)
Received: from sultan-box.localdomain ([107.193.118.89])
 by smtp.gmail.com with ESMTPSA id y18sm2818116otq.36.2019.05.07.10.17.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 10:17:14 -0700 (PDT)
Date: Tue, 7 May 2019 10:17:11 -0700
From: Sultan Alsawaf <sultan@kerneltoast.com>
To: Christian Brauner <christian@brauner.io>
Subject: Re: [RFC] simple_lmk: Introduce Simple Low Memory Killer for Android
Message-ID: <20190507171711.GB12201@sultan-box.localdomain>
References: <20190319221415.baov7x6zoz7hvsno@brauner.io>
 <CAKOZuessqcjrZ4rfGLgrnOhrLnsVYiVJzOj4Aa=o3ZuZ013d0g@mail.gmail.com>
 <20190319231020.tdcttojlbmx57gke@brauner.io>
 <20190320015249.GC129907@google.com>
 <20190507021622.GA27300@sultan-box.localdomain>
 <20190507070430.GA24150@kroah.com>
 <20190507072721.GA4364@sultan-box.localdomain>
 <20190507074334.GB26478@kroah.com>
 <20190507081236.GA1531@sultan-box.localdomain>
 <20190507105826.oi6vah6x5brt257h@brauner.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507105826.oi6vah6x5brt257h@brauner.io>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 Oleg Nesterov <oleg@redhat.com>, Joel Fernandes <joel@joelfernandes.org>,
 Andy Lutomirski <luto@amacapital.net>, Martijn Coenen <maco@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 07, 2019 at 12:58:27PM +0200, Christian Brauner wrote:
> This is work that is ongoing and requires kernel changes to make it
> feasible. One of the things that I have been working on for quite a
> while is the whole file descriptor for processes thing that is important
> for LMKD (Even though I never thought about this use-case when I started
> pitching this.). Joel and Daniel have joined in and are working on
> making LMKD possible.
> What I find odd is that every couple of weeks different solutions to the
> low memory problem are pitched. There is simple_lkml, there is LMKD, and
> there was a patchset that wanted to speed up memory reclaim at process
> kill-time by adding a new flag to the new pidfd_send_signal() syscall.
> That all seems - though related - rather uncoordinated. Now granted,
> coordinated is usually not how kernel development necessarily works but
> it would probably be good to have some sort of direction and from what I
> have seen LMKD seems to be the most coordinated effort. But that might
> just be my impression.

LMKD is just Android's userspace low-memory-killer daemon. It's been around for
a while.

This patch (simple_lmk) is meant to serve as an immediate solution for the
devices that'll never see a single line of PSI code running on them, which
amounts to... well, most Android devices currently in existence. I'm more of a
cowboy who made this patch after waiting a few years for memory management
improvements on Android that never happened. Though it looks like it's going to
happen soon(ish?) for super new devices that'll have the privilege of shipping
with PSI in use.

On Tue, May 07, 2019 at 01:09:21PM +0200, Greg Kroah-Hartman wrote:
> > It's even more odd that although a userspace solution is touted as the proper
> > way to go on LKML, almost no Android OEMs are using it, and even in that commit
> > I linked in the previous message, Google made a rather large set of
> > modifications to the supposedly-defunct lowmemorykiller.c not one month ago.
> > What's going on?
> 
> "almost no"?  Again, Android Go is doing that, right?

I'd check for myself, but I can't seem to find kernel source for an Android Go
device...

This seems more confusing though. Why would the ultra-low-end devices use LMKD
while other devices use the broken lowmemorykiller driver?

> > Qualcomm still uses lowmemorykiller.c [1] on the Snapdragon 845.
> 
> Qualcomm should never be used as an example of a company that has any
> idea of what to do in their kernel :)

Agreed, but nearly all OEMs that use Qualcomm chipsets roll with Qualcomm's
kernel decisions, so Qualcomm has a bit of influence here.

> > If PSI were backported to 4.4, or even 3.18, would it really be used?
> 
> Why wouldn't it, if it worked properly?

For the same mysterious reason that Qualcomm and others cling to
lowmemorykiller, I presume. This is part of what's been confusing me for quite
some time...

> Please see the work that went into PSI and the patches around it.
> There's also a lwn.net article last week about the further work ongoing
> in this area.  With all of that, you should see how in-kernel memory
> killers are NOT the way to go.
> 
> > Regardless, even if PSI were backported, a full-fledged LMKD using it has yet to
> > be made, so it wouldn't be of much use now.
> 
> "LMKD"?  Again, PSI is in the 4.9.y android-common tree, so the
> userspace side should be in AOSP, right?

LMKD as in Android's low-memory-killer daemon. It is in AOSP, but it looks like
it's still a work in progress.

Thanks,
Sultan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
