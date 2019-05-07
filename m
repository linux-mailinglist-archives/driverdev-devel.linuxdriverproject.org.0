Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D5E16868
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 18:53:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5799587E4C;
	Tue,  7 May 2019 16:53:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nPs0S1ne44ZM; Tue,  7 May 2019 16:53:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C466987D7F;
	Tue,  7 May 2019 16:53:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8BB141BF376
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 16:53:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8897F8614E
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 16:53:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lcxYdHvnRo_b for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 16:53:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CFCA58614A
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 16:53:49 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id r136so4261139oie.7
 for <devel@driverdev.osuosl.org>; Tue, 07 May 2019 09:53:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Les20PwGqp+bpDrgm0vkN1QrGvdMFh2R5hcLIBFlpD8=;
 b=LaN86uJXwMZCzzhGPQTfIjYn1JUl8ZC9QVMvvk93TdSNQkPdcK0r1ejfQ/OB5nUbMd
 2iRmiyJa1n1wwxQOpAWA2/VXbKZxaencwWUbedfdfy7lsUzeVVLORVsj4080hvBm+E8g
 JH+jFrQJ20hmxHhyQc2dWbZFzrkkJlOsMFvQhqhNNfsuAsqu/HVQwCUxVjpb8oajq4o3
 jnWcum3nsJMyGcGQVgkGwPKXGQ0FJZ2u/iRuPuamcpkB2KgIKYamzBGilIXJsRfPkznJ
 rEZIAJdtWdxwKyyxJkS79JtX4hw+JbWyd9S75ASohkxxa9AuyDM/hlsc2dPCQMgGQSnd
 aj5Q==
X-Gm-Message-State: APjAAAV/ewgiGqTqqz+q2zNjLiaDF1e+ozPoTbwaganWfLMspr8KTjsg
 8vwtZknPDU163wAEW5Jqp1w=
X-Google-Smtp-Source: APXvYqx8sIfbI/Yd4+hyeoP6avx/z10Ghv7vpqK+WFrxVb8S2qStm0EBvzmx8aLW1Yx8GgtwfEUHAw==
X-Received: by 2002:aca:bf07:: with SMTP id p7mr785143oif.140.1557248029127;
 Tue, 07 May 2019 09:53:49 -0700 (PDT)
Received: from sultan-box.localdomain ([107.193.118.89])
 by smtp.gmail.com with ESMTPSA id e4sm4538586otr.50.2019.05.07.09.53.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 09:53:48 -0700 (PDT)
Date: Tue, 7 May 2019 09:53:44 -0700
From: Sultan Alsawaf <sultan@kerneltoast.com>
To: Suren Baghdasaryan <surenb@google.com>
Subject: Re: [RFC] simple_lmk: Introduce Simple Low Memory Killer for Android
Message-ID: <20190507165344.GA12201@sultan-box.localdomain>
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

On Tue, May 07, 2019 at 09:28:47AM -0700, Suren Baghdasaryan wrote:
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

Yes, this is mostly for the devices already produced that are forced to suffer
with poor memory management. I can't even convince vendors to fix kernel
memory leaks, so there's no way I'd be able to convince them of trying this
patch, especially since it seems like you're having trouble convincing vendors
to stop using lowmemorykiller in the first place. And thankfully, convincing
vendors isn't my job :)

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

Could you elaborate a bit on why bulk killing isn't good?

> > > I linked in the previous message, Google made a rather large set of
> > > modifications to the supposedly-defunct lowmemorykiller.c not one month ago.
> > > What's going on?
> 
> If you look into that commit, it adds ability to report kill stats. If
> that was a change in how that driver works it would be rejected.

Fair, though it was quite strange seeing something that was supposedly totally
abandoned receiving a large chunk of code for reporting stats.

Thanks,
Sultan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
