Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 957D516AC2
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 20:54:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3591830AA7;
	Tue,  7 May 2019 18:54:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rE+3QKMtcLVf; Tue,  7 May 2019 18:54:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7DFA5304CA;
	Tue,  7 May 2019 18:54:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4D0F61BF364
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 18:54:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 462A33023A
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 18:54:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yRsqmU-PtUeE for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 18:54:28 +0000 (UTC)
X-Greylist: delayed 00:07:34 by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 349C92E331
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 18:54:28 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id d31so8754583pgl.7
 for <devel@driverdev.osuosl.org>; Tue, 07 May 2019 11:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=4K5qiK9vhvmIkn3WHoZK0319QLRlU1KUu0cyFne4DWs=;
 b=oShkY9UoCOJkw+8F+fqEj0Uc9/qHLI+6lOnZ4PmArGpPVfAWOwp3l2pki4mxeVWr2v
 i1/BoCJUiP6IE2hEuHGlPnMC2JT+4iJRQSX+1ftuSwgMBqfHGrHwZeWN1F1lzM9bGAbB
 BpTytT+gqKFiY+9K8QRJWzSXFZlayvNxFar7o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=4K5qiK9vhvmIkn3WHoZK0319QLRlU1KUu0cyFne4DWs=;
 b=SP4CJ6234BlK7fV9vkZEO3BIpfkadvHgvlbdvd/mSWPWsYrGV+nmaEnJpyql6zestc
 xgYM0PJ2F2t1elSOwMnCK7coH6LIq6Ym6mta8fzNovc2fw2QsMEcR8jR2q+YmOFIjjfE
 YcqtSBFh0FPqbmHr+sZywGuMsaQwxinLZQHp6zLBEkAsbuAbkd6sPmWwWFKVMJjrEH4K
 K1QyQB9q1DE3AXUxZo/VoThdxsgiC9iG2VEzegCLzVHy86MrBqYEjlS8S+jFVLxpRKK9
 trdtNI+WtbfQrQrSh1hUp0w6Ec6lJ2TZtn9i+QtT7kvD/jLtv6camJtqrWLlrRkid1E4
 CW5g==
X-Gm-Message-State: APjAAAU3xwc4s8kGbQGEdzSwwKnA3dXGK0pgrHGY5rQn/DRLKCS1FY1B
 0zPNW3QseyENnhUwXMzAsXAOVQ==
X-Google-Smtp-Source: APXvYqxrkWfI22GqtapHzGjSfBpzNe8seCozjCeX6zOdjbNwchSvGqdEtYr/uKJ7o2QPp+DNkaVTXQ==
X-Received: by 2002:a63:ee15:: with SMTP id e21mr41892839pgi.180.1557254813331; 
 Tue, 07 May 2019 11:46:53 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:9c46:e0da:efbf:69cc])
 by smtp.gmail.com with ESMTPSA id p67sm31662140pfi.123.2019.05.07.11.46.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 11:46:52 -0700 (PDT)
Date: Tue, 7 May 2019 14:46:50 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Suren Baghdasaryan <surenb@google.com>
Subject: Re: [RFC] simple_lmk: Introduce Simple Low Memory Killer for Android
Message-ID: <20190507184650.GA139364@google.com>
References: <CAKOZuessqcjrZ4rfGLgrnOhrLnsVYiVJzOj4Aa=o3ZuZ013d0g@mail.gmail.com>
 <20190319231020.tdcttojlbmx57gke@brauner.io>
 <20190320015249.GC129907@google.com>
 <20190507021622.GA27300@sultan-box.localdomain>
 <20190507070430.GA24150@kroah.com>
 <20190507072721.GA4364@sultan-box.localdomain>
 <20190507074334.GB26478@kroah.com>
 <20190507081236.GA1531@sultan-box.localdomain>
 <20190507105826.oi6vah6x5brt257h@brauner.io>
 <CAJuCfpFeOVzDUq5O_cVgVGjonWDWjVVR192On6eB5gf==_uPKw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJuCfpFeOVzDUq5O_cVgVGjonWDWjVVR192On6eB5gf==_uPKw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 Michal Hocko <mhocko@kernel.org>, linux-mm <linux-mm@kvack.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 Oleg Nesterov <oleg@redhat.com>, Sultan Alsawaf <sultan@kerneltoast.com>,
 Andy Lutomirski <luto@amacapital.net>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 07, 2019 at 09:28:47AM -0700, Suren Baghdasaryan wrote:
> From: Christian Brauner <christian@brauner.io>
> Date: Tue, May 7, 2019 at 3:58 AM
> To: Sultan Alsawaf
> Cc: Greg Kroah-Hartman, open list:ANDROID DRIVERS, Daniel Colascione,
> Todd Kjos, Kees Cook, Peter Zijlstra, Martijn Coenen, LKML, Tim
> Murray, Michal Hocko, Suren Baghdasaryan, linux-mm, Arve Hj=F8nnev=E5g,
> Ingo Molnar, Steven Rostedt, Oleg Nesterov, Joel Fernandes, Andy
> Lutomirski, kernel-team
> =

> > On Tue, May 07, 2019 at 01:12:36AM -0700, Sultan Alsawaf wrote:
> > > On Tue, May 07, 2019 at 09:43:34AM +0200, Greg Kroah-Hartman wrote:
> > > > Given that any "new" android device that gets shipped "soon" should=
 be
> > > > using 4.9.y or newer, is this a real issue?
> > >
> > > It's certainly a real issue for those who can't buy brand new Android=
 devices
> > > without software bugs every six months :)
> > >
> =

> Hi Sultan,
> Looks like you are posting this patch for devices that do not use
> userspace LMKD solution due to them using older kernels or due to
> their vendors sticking to in-kernel solution. If so, I see couple
> logistical issues with this patch. I don't see it being adopted in
> upstream kernel 5.x since it re-implements a deprecated mechanism even
> though vendors still use it. Vendors on the other hand, will not adopt
> it until you show evidence that it works way better than what
> lowmemorykilled driver does now. You would have to provide measurable
> data and explain your tests before they would consider spending time
> on this.
> On the implementation side I'm not convinced at all that this would
> work better on all devices and in all circumstances. We had cases when
> a new mechanism would show very good results until one usecase
> completely broke it. Bulk killing of processes that you are doing in
> your patch was a very good example of such a decision which later on
> we had to rethink. That's why baking these policies into kernel is
> very problematic. Another problem I see with the implementation that
> it ties process killing with the reclaim scan depth. It's very similar
> to how vmpressure works and vmpressure in my experience is very
> unpredictable.

Yeah it does seem conceptually similar, good point.
 =

> > > Regardless, even if PSI were backported, a full-fledged LMKD using it=
 has yet to
> > > be made, so it wouldn't be of much use now.
> >
> > This is work that is ongoing and requires kernel changes to make it
> > feasible. One of the things that I have been working on for quite a
> > while is the whole file descriptor for processes thing that is important
> > for LMKD (Even though I never thought about this use-case when I started
> > pitching this.). Joel and Daniel have joined in and are working on
> > making LMKD possible.
> > What I find odd is that every couple of weeks different solutions to the
> > low memory problem are pitched. There is simple_lkml, there is LMKD, and
> > there was a patchset that wanted to speed up memory reclaim at process
> > kill-time by adding a new flag to the new pidfd_send_signal() syscall.
> > That all seems - though related - rather uncoordinated.
> =

> I'm not sure why pidfd_wait and expedited reclaim is seen as
> uncoordinated effort. All of them are done to improve userspace LMKD.

Christian, pidfd_wait and expedited reclaim are both coordinated efforts and
solve different problems related to LMK. simple_lmk is entirely different
effort that we already hesitated about when it was first posted, now we
hesitate again due to the issues Suren and others mentioned.

I think it is a better idea for Sultan to spend his time on using/improving
PSI/LMKd than spending it on the simple_lmk. It could also be a good topic =
to
discuss in the Android track of the Linux plumbers conference.

thanks,

 - Joel

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
