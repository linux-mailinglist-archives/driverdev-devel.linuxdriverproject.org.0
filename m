Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAAD1FA3C
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 20:53:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7521D87139;
	Wed, 15 May 2019 18:53:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wZJgTOJc9EMH; Wed, 15 May 2019 18:53:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AE21887086;
	Wed, 15 May 2019 18:53:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 00B2C1BF410
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 18:53:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F1CD922849
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 18:53:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PkVLigvmYdcu for <devel@linuxdriverproject.org>;
 Wed, 15 May 2019 18:53:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 4765C220A2
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 18:53:02 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id g8so1004081otl.8
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 11:53:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=F+uKuYKH8D9C30taRndDf2f3BiyObetVuhxljsMhA+w=;
 b=WkZthfOkPygcR14NocxG6+PdeU28G454VDTPIIKnT7H65iqx1sA8SYq20U+iXctTXR
 Y55MlTLF7CUnPQjKV59WGMZODgql8gibf0SO1/wllZIUpQWPeRW4X3m8oh0JSELNk2BY
 7kNfWEUE7XV89/hG9CZnkLCNAcA8DVJgVtuxxbK2rD7ZVsDvyYju8Vz6/d8xMZKdgO5n
 hCXkhEF7kV6MlaPG7txL6jvkotT334a5Mw+yaOc14kxx1sYygKk3MCE2b4SBG2HybzrL
 F7tmVry+3h1wScNEDBthA06gveYUrg7N1E60hOLDAK63+zlN3SbYs9+sP97ETbttfkfy
 Tu6g==
X-Gm-Message-State: APjAAAUg+OE8ej5s8rq6ihVf3TtpvC1hKo3UqXmS1Xvo1pJBeMRrgqeV
 /pTfDzzVyjTyu4lNgzyphFg=
X-Google-Smtp-Source: APXvYqyB1lZtLwM2VdgPfATea+juZlcCsSuhi3KGqNsEZFCafam8pMbRKx9qHz3/tcPn80X+Dfi0tA==
X-Received: by 2002:a9d:7643:: with SMTP id o3mr17247096otl.129.1557946381574; 
 Wed, 15 May 2019 11:53:01 -0700 (PDT)
Received: from sultan-box.localdomain ([107.193.118.89])
 by smtp.gmail.com with ESMTPSA id h23sm1062735oic.10.2019.05.15.11.52.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 May 2019 11:53:01 -0700 (PDT)
Date: Wed, 15 May 2019 11:52:57 -0700
From: Sultan Alsawaf <sultan@kerneltoast.com>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [RFC] simple_lmk: Introduce Simple Low Memory Killer for Android
Message-ID: <20190515185257.GC2888@sultan-box.localdomain>
References: <20190507021622.GA27300@sultan-box.localdomain>
 <20190507153154.GA5750@redhat.com>
 <20190507163520.GA1131@sultan-box.localdomain>
 <20190509155646.GB24526@redhat.com>
 <20190509183353.GA13018@sultan-box.localdomain>
 <20190510151024.GA21421@redhat.com>
 <20190513164555.GA30128@sultan-box.localdomain>
 <20190515145831.GD18892@redhat.com>
 <20190515172728.GA14047@sultan-box.localdomain>
 <20190515143248.17b827d0@oasis.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515143248.17b827d0@oasis.local.home>
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
 LKML <linux-kernel@vger.kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Tim Murray <timmurray@google.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm <linux-mm@kvack.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Martijn Coenen <maco@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Andy Lutomirski <luto@amacapital.net>,
 Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 15, 2019 at 02:32:48PM -0400, Steven Rostedt wrote:
> I'm confused why you did this?

Oleg said that debug_locks_off() could've been called and thus prevented
lockdep complaints about simple_lmk from appearing. To eliminate any possibility
of that, I disabled debug_locks_off().

Oleg also said that __lock_acquire() could return early if lock debugging were
somehow turned off after lockdep reported one bug. To mitigate any possibility
of that as well, I threw in the BUG_ON() for good measure.

I think at this point it's pretty clear that lockdep truly isn't complaining
about simple_lmk's locking pattern, and that lockdep's lack of complaints isn't
due to it being mysteriously turned off...

Sultan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
