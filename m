Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5D9170ABB
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Feb 2020 22:44:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A194487814;
	Wed, 26 Feb 2020 21:44:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nqq1j4Z+Y2ox; Wed, 26 Feb 2020 21:44:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C71D38781C;
	Wed, 26 Feb 2020 21:44:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BC5471BF2CA
 for <devel@linuxdriverproject.org>; Wed, 26 Feb 2020 21:44:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B82B122115
 for <devel@linuxdriverproject.org>; Wed, 26 Feb 2020 21:44:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QJCWLBfDQub0 for <devel@linuxdriverproject.org>;
 Wed, 26 Feb 2020 21:44:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by silver.osuosl.org (Postfix) with ESMTPS id AD284220FB
 for <devel@driverdev.osuosl.org>; Wed, 26 Feb 2020 21:44:50 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id r137so1124641oie.5
 for <devel@driverdev.osuosl.org>; Wed, 26 Feb 2020 13:44:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fP0tNHNzNE15OtS2AbGyvhqta9C8lwxN6nKmz+EZZAs=;
 b=T1lImieFWxjRixBZwDP/BJvaGyP3nbQhiHpJr0dw4V0wfEbxooDqVEvcovrBoPLll8
 d2xzEQItiBRSeoh2h+J4/oPYv0LPqXJiZhe5bB/HAvLBhO+ubcsmWZ/bbMcLN+lmSlUv
 1aJMN4A9rfT7K2XlUVTRLb2pyLlYRzTurO+IQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fP0tNHNzNE15OtS2AbGyvhqta9C8lwxN6nKmz+EZZAs=;
 b=q0d/gJhcHvZzXGR30cq4aEyBUayz4rwXKakkvrVywbtegBBObDEw1rSlKCU4+4qYRA
 LKVNCbS8vcyWBxyXYC6CwI9aHMszxfe3FMzhi8f1fpEqUoIw5L7kYH8Ev/CxqV6/0hAi
 iVwHuya+W5a4Ha1RLDlHMcvJuHu1kvfrhKodvoXAky6Ci+c/tFagqsQ2PJAIb7/CLriZ
 5HaDpn84HPT7PqeV2eAmdOqUaUIVG021l5dK0SXq741/7S5yzapjNtJvH1yhSCM3PXJS
 eIaJY1O6HWBPhgKnXjqCS0CPlKL7VNiS7HlyzA5UaUPnRhN9eVE9D8Tad+8KrqKTvLjH
 a8Xg==
X-Gm-Message-State: APjAAAUxYn+tVifKr6VHbthWz1+K2P5ZZyBmEHv3stRFpnFVPGskW8Yv
 0chzhVIFv3SCn8RaB9KDJUvZbCUvlPE=
X-Google-Smtp-Source: APXvYqwMogfBOU3vbSnvU8KrogKa9Ly/PLhhzsj4Z+11ijZsC4Cz5t93CnoKAENk2lxx1KotNAd6Cg==
X-Received: by 2002:a17:90a:c388:: with SMTP id
 h8mr1110272pjt.83.1582753030725; 
 Wed, 26 Feb 2020 13:37:10 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id q7sm3761830pgk.62.2020.02.26.13.37.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 13:37:09 -0800 (PST)
Date: Wed, 26 Feb 2020 13:37:09 -0800
From: Kees Cook <keescook@chromium.org>
To: Alexander Potapenko <glider@google.com>
Subject: Re: [PATCH 2/3] binder: do not initialize locals passed to
 copy_from_user()
Message-ID: <202002261336.DBF622F65@keescook>
References: <20200224153501.60040-1-glider@google.com>
 <20200224153501.60040-2-glider@google.com>
 <202002242017.0817EEA8@keescook>
 <CAG_fn=WoBZL4_Zzg_EL45MWyccXt9JVBdXyxfEdkaoMVKOhhaQ@mail.gmail.com>
 <CAG_fn=XXWLrt2f=6ha+9F3geSwG=4uqr8P4Qq5UJxyqK+-7qaw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG_fn=XXWLrt2f=6ha+9F3geSwG=4uqr8P4Qq5UJxyqK+-7qaw@mail.gmail.com>
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
 Jann Horn <jannh@google.com>, Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Dmitriy Vyukov <dvyukov@google.com>,
 Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 26, 2020 at 03:58:41PM +0100, Alexander Potapenko wrote:
> On Tue, Feb 25, 2020 at 4:24 PM Alexander Potapenko <glider@google.com> wrote:
> >
> > On Tue, Feb 25, 2020 at 5:18 AM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > On Mon, Feb 24, 2020 at 04:35:00PM +0100, glider@google.com wrote:
> > > > Certain copy_from_user() invocations in binder.c are known to
> > > > unconditionally initialize locals before their first use, like e.g. in
> > > > the following case:
> > > >
> > > >       struct binder_transaction_data tr;
> > > >       if (copy_from_user(&tr, ptr, sizeof(tr)))
> > > >               return -EFAULT;
> > > >
> > > > In such cases enabling CONFIG_INIT_STACK_ALL leads to insertion of
> > > > redundant locals initialization that the compiler fails to remove.
> > > > To work around this problem till Clang can deal with it, we apply
> > > > __do_not_initialize to local Binder structures.
> > >
> > > It should be possible to write a Coccinelle script to identify all these
> > > cases. (i.e. a single path from struct declaration to copy_from_user())
> > > and apply the changes automatically. This script could be checked into
> > > scripts/coccinelle/ to help keep these markings in sync...
> >
> > The following script:
> >
> > =================================
> > @local_inited_by_cfu@
> > attribute name __no_initialize;
> > identifier var;
> > type T;
> > statement stmt;
> > @@
> > T var
> > +__no_initialize
> > ;
> > if (copy_from_user(&var,..., sizeof(var))) stmt
> > =================================
> >
> > seems to do the job, but this transformation isn't idempotent: it
> > inserts __no_initialize every time Coccinelle is invoked.
> > It's hard to work around this problem, as attributes may only be parts
> > of +-lines (i.e. I cannot write a rule that matches "T var
> > __no_initialize")
> 
> This one:
> 
> ============================
> @match@
> type T;
> identifier var;
> statement stmt;
> fresh identifier var_noinit = var##" __no_initialize";
> @@
> -T var;
> +T var_noinit;
> ...
> if (copy_from_user(&var,..., sizeof(var))) stmt
> ============================
> is better, because it:
>  - uses a "fresh identifier" hack instead of dealing with attributes
> (which aren't supported by spatch 1.0.4)
>  - seems to be idempotent because of that hack.
> 
> I'll regenerate the binder patch using that script and will look into
> enhancing it and committing it to scripts/coccinelle.

Cool; sounds good!

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
