Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A1CE515E31
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 09:27:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 87DF586AFD;
	Tue,  7 May 2019 07:27:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aDshCZZdpCvK; Tue,  7 May 2019 07:27:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E64C486A40;
	Tue,  7 May 2019 07:27:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C43F81BF336
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 07:27:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BDC3E868F4
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 07:27:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d-Hbg7k21Znc for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 07:27:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E5B8E860BF
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 07:27:26 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id l17so4430326otq.1
 for <devel@driverdev.osuosl.org>; Tue, 07 May 2019 00:27:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XByBP7XjRmOOGyhrd0e8L2R6PtcwPlhf6jPxirpwBCU=;
 b=cDU83xXYku0TG4GIgc7QKnb/3IYMGm4A4FB3bC14FjwL2+ToqDu9bZuW3fRhHJUi/9
 sDgExOplU8m7Ek4B4kyikCyuvoiJI7ToxpslHMZIJ22Pfri7Lc1csbqCJg2P2I4wxpEQ
 x8O0nGr3o7UoWrYMPJR5dq+/Lh6jr8S0GqoqxxsvlryMRMSL18AjFe12Sp0g77WOW3BD
 4HSdWQQFAS1RJl8V5hjuviE9yllOOQGXsCMS4DdYj/+iKd3UbQQ6kBJkJrLYHPUNFgOn
 VX6XA4y9xGv+t52zkG7NlXomLWUq+sW5+WeAveGKtVH7vJrHPKXcxvTiRBo5OnB3CX8p
 B+9w==
X-Gm-Message-State: APjAAAUbev0CVNrcoS19P660J2int7DTnIBw4uekBy53hte+A0d951Gf
 l1qa7pL8OYzKSwe69obnA90=
X-Google-Smtp-Source: APXvYqyG6hXWXWpi7XEBI/DlyfoNWcZlsC+PlPheQwnNUwyImO+kZSLDKaxa2x4xmrLvZ3a+smTnDA==
X-Received: by 2002:a9d:6c5a:: with SMTP id g26mr10914341otq.187.1557214046204; 
 Tue, 07 May 2019 00:27:26 -0700 (PDT)
Received: from sultan-box.localdomain ([107.193.118.89])
 by smtp.gmail.com with ESMTPSA id s26sm4968147otk.24.2019.05.07.00.27.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 00:27:25 -0700 (PDT)
Date: Tue, 7 May 2019 00:27:21 -0700
From: Sultan Alsawaf <sultan@kerneltoast.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [RFC] simple_lmk: Introduce Simple Low Memory Killer for Android
Message-ID: <20190507072721.GA4364@sultan-box.localdomain>
References: <20190317114238.ab6tvvovpkpozld5@brauner.io>
 <CAKOZuetZPhqQqSgZpyY0cLgy0jroLJRx-B93rkQzcOByL8ih_Q@mail.gmail.com>
 <20190318002949.mqknisgt7cmjmt7n@brauner.io>
 <20190318235052.GA65315@google.com>
 <20190319221415.baov7x6zoz7hvsno@brauner.io>
 <CAKOZuessqcjrZ4rfGLgrnOhrLnsVYiVJzOj4Aa=o3ZuZ013d0g@mail.gmail.com>
 <20190319231020.tdcttojlbmx57gke@brauner.io>
 <20190320015249.GC129907@google.com>
 <20190507021622.GA27300@sultan-box.localdomain>
 <20190507070430.GA24150@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507070430.GA24150@kroah.com>
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
 Daniel Colascione <dancol@google.com>, Todd Kjos <tkjos@android.com>,
 Kees Cook <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>,
 Martijn Coenen <maco@android.com>, LKML <linux-kernel@vger.kernel.org>,
 Tim Murray <timmurray@google.com>, Michal Hocko <mhocko@kernel.org>,
 Suren Baghdasaryan <surenb@google.com>, linux-mm <linux-mm@kvack.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Steven Rostedt <rostedt@goodmis.org>,
 Oleg Nesterov <oleg@redhat.com>, Joel Fernandes <joel@joelfernandes.org>,
 Andy Lutomirski <luto@amacapital.net>, kernel-team <kernel-team@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 07, 2019 at 09:04:30AM +0200, Greg Kroah-Hartman wrote:
> Um, why can't "all" Android devices take the same patches that the Pixel
> phones are using today?  They should all be in the public android-common
> kernel repositories that all Android devices should be syncing with on a
> weekly/monthly basis anyway, right?
> 
> thanks,
> 
> greg k-h

Hi Greg,

I only see PSI present in the android-common kernels for 4.9 and above. The vast
majority of Android devices do not run a 4.9+ kernel. It seems unreasonable to
expect OEMs to toil with backporting PSI themselves to get decent memory
management.

But even if they did backport PSI, it wouldn't help too much because a
PSI-enabled LMKD solution is not ready yet. It looks like a PSI-based LMKD is
still under heavy development and won't be ready for all Android devices for
quite some time.

Additionally, it looks like the supposedly-dead lowmemorykiller.c is still being
actively tweaked by Google [1], which does not instill confidence that a
definitive LMK solution a la PSI is coming any time soon.

Thanks,
Sultan

[1] https://android.googlesource.com/kernel/common/+/152bacdd85c46f0c76b00c4acc253e414513634c
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
