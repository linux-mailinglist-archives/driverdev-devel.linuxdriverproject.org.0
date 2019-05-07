Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 061DF15EE1
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 10:12:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B7A8586B28;
	Tue,  7 May 2019 08:12:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cs9ImZYHCOvq; Tue,  7 May 2019 08:12:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5620F86AD9;
	Tue,  7 May 2019 08:12:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4FF551BF5E6
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 08:12:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4CD9321546
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 08:12:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fq6rTOK3VqaY for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 08:12:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 9709F20791
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 08:12:41 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id i8so4336952oth.10
 for <devel@driverdev.osuosl.org>; Tue, 07 May 2019 01:12:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NQ6dv2i93HZ0YYfKZpbV9MkWY21B58FCrXMAN8Dpx2E=;
 b=hOQUxp2MWSAcZEz/fn/gdxdYJ+BV4wLE+cLEwd1L6GMfIhaMeK/W3elGBfUCygw01K
 Hn2EY4LXJBrrILB3TlYAMd9yP5vC4X4CTs1jEPVueW4FbMpyFoWrn5qEGgqojx47pDku
 jVjiyRSIMnCZTzIAt65AiwtPxW4ELBuVZUpkFrcx0k7YtN9Rzag0ZpEhu/hD328bgTHz
 OKz6eTHCbzHcINpt9BXDh5AwwiG8ETC0FvBS2/96DjsTjg7DhNWlfNH5jcRKfACh5xHi
 wqut1wVPlNJgAIaRsgZ0kHWhYMy9bzhId3AdOaSGo8WdEu+2LXSpYIdasVhIYIwZFZ66
 R1RA==
X-Gm-Message-State: APjAAAXPLSBTmCStthUXJU40sIxgLTE7MTWwsKqema0ui19ZSGp0TNeN
 jzWlbpXAUfLkf56taWnBCXI=
X-Google-Smtp-Source: APXvYqxazZcvVgW8B8Abx61RE3d6GpWO8pSjTz4Bl2xHSbS/zPSIG/vaJXjunEVO9ubN+ITWd3WpFw==
X-Received: by 2002:a9d:6d19:: with SMTP id o25mr3196049otp.151.1557216760884; 
 Tue, 07 May 2019 01:12:40 -0700 (PDT)
Received: from sultan-box.localdomain ([107.193.118.89])
 by smtp.gmail.com with ESMTPSA id k60sm5643992otc.42.2019.05.07.01.12.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 01:12:40 -0700 (PDT)
Date: Tue, 7 May 2019 01:12:36 -0700
From: Sultan Alsawaf <sultan@kerneltoast.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [RFC] simple_lmk: Introduce Simple Low Memory Killer for Android
Message-ID: <20190507081236.GA1531@sultan-box.localdomain>
References: <20190318002949.mqknisgt7cmjmt7n@brauner.io>
 <20190318235052.GA65315@google.com>
 <20190319221415.baov7x6zoz7hvsno@brauner.io>
 <CAKOZuessqcjrZ4rfGLgrnOhrLnsVYiVJzOj4Aa=o3ZuZ013d0g@mail.gmail.com>
 <20190319231020.tdcttojlbmx57gke@brauner.io>
 <20190320015249.GC129907@google.com>
 <20190507021622.GA27300@sultan-box.localdomain>
 <20190507070430.GA24150@kroah.com>
 <20190507072721.GA4364@sultan-box.localdomain>
 <20190507074334.GB26478@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507074334.GB26478@kroah.com>
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
 Peter Zijlstra <peterz@infradead.org>, Suren Baghdasaryan <surenb@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Tim Murray <timmurray@google.com>,
 Michal Hocko <mhocko@kernel.org>, linux-mm <linux-mm@kvack.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 Oleg Nesterov <oleg@redhat.com>, Joel Fernandes <joel@joelfernandes.org>,
 Andy Lutomirski <luto@amacapital.net>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 07, 2019 at 09:43:34AM +0200, Greg Kroah-Hartman wrote:
> Given that any "new" android device that gets shipped "soon" should be
> using 4.9.y or newer, is this a real issue?

It's certainly a real issue for those who can't buy brand new Android devices
without software bugs every six months :)

> And if it is, I'm sure that asking for those patches to be backported to
> 4.4.y would be just fine, have you asked?
>
> Note that I know of Android Go devices, running 3.18.y kernels, do NOT
> use the in-kernel memory killer, but instead use the userspace solution
> today.  So trying to get another in-kernel memory killer solution added
> anywhere seems quite odd.

It's even more odd that although a userspace solution is touted as the proper
way to go on LKML, almost no Android OEMs are using it, and even in that commit
I linked in the previous message, Google made a rather large set of
modifications to the supposedly-defunct lowmemorykiller.c not one month ago.
What's going on?

Qualcomm still uses lowmemorykiller.c [1] on the Snapdragon 845. If PSI were
backported to 4.4, or even 3.18, would it really be used? I don't really
understand the aversion to an in-kernel memory killer on LKML despite the rest
of the industry's attraction to it. Perhaps there's some inherently great cost
in using the userspace solution that I'm unaware of?

Regardless, even if PSI were backported, a full-fledged LMKD using it has yet to
be made, so it wouldn't be of much use now.

Thanks,
Sultan

[1] https://source.codeaurora.org/quic/la/kernel/msm-4.9/tree/arch/arm64/configs/sdm845_defconfig?h=LA.UM.7.3.r1-07400-sdm845.0#n492
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
