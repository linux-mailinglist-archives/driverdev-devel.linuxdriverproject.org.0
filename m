Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8702B17A139
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Mar 2020 09:26:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 256B886A07;
	Thu,  5 Mar 2020 08:26:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gLpbiyLwoYva; Thu,  5 Mar 2020 08:26:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DC95E86A48;
	Thu,  5 Mar 2020 08:26:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 670BD1BF2FB
 for <devel@linuxdriverproject.org>; Thu,  5 Mar 2020 08:26:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6375086059
 for <devel@linuxdriverproject.org>; Thu,  5 Mar 2020 08:26:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rEjaZI3QfmLI for <devel@linuxdriverproject.org>;
 Thu,  5 Mar 2020 08:26:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D2D9985F5D
 for <devel@driverdev.osuosl.org>; Thu,  5 Mar 2020 08:26:26 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id o24so2394923pfp.13
 for <devel@driverdev.osuosl.org>; Thu, 05 Mar 2020 00:26:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=pEatHTWH0KovQUE1IliiOOh+OJO6vJzogkc3LdB4OY0=;
 b=E/kkoPaC2FMeGYEZ+bcmO62AmBz6ioa1QQm9IiXemxyUaA7oKQKDSF84iTdG7NT6m6
 btxAs0G47enywKwVaiVOlSyznVAcx8fSXopz5vsetifC/uyO3YhjiqBsZx3pLve+j76/
 UkzGgSX4JdMpqLgCRi0vjG1HGcBz0K5sn/Qtg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pEatHTWH0KovQUE1IliiOOh+OJO6vJzogkc3LdB4OY0=;
 b=kzi/kmxKBB1Nw5sBZdGHmPsw9Pj63C55IcGuBIQnu50LSTplZgC6pAdg510TS4NjPY
 WdyT3WTs5RHQBZTUN/qwnZSsiiym0m3hB50Hre2mKfMzxIQZqwLm4VzkOr3ZwotpsFIU
 i8IeEAZKe+3juMW1Jj5VKLHHHy2jV9RG4OAVI6dpYs0uFBvjim3rTylTxZJigrFZu872
 6VZTsZXDH1TncqFknc/+jxk6NnLQ62QCtRZuIhcLJlKAumfdPEM6/fNeiIwwyDY09+8N
 d69ZBppRlS4arDcNeF3KOZ4L5lWc36d0EmA4m3uUBS/FtiaDS6qztX2APA31P/Cqt3TV
 Y2Ng==
X-Gm-Message-State: ANhLgQ0J7j6Xq5pSkM9+5RYyRk7+UEW4JkkIDOyilFgnzR1po3T2rUKa
 gH+Cta997cgVdHUTINFs2WWjGg==
X-Google-Smtp-Source: ADFU+vtzSJ2ErVWBCNHqCv68ee7q7/rHaGMcbMhofpwmAUpPHp6vsLSbOD4qp3AIRnc9whaK7cnjSQ==
X-Received: by 2002:a65:468d:: with SMTP id h13mr6418693pgr.359.1583396786314; 
 Thu, 05 Mar 2020 00:26:26 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id 1sm26930783pff.11.2020.03.05.00.26.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 00:26:25 -0800 (PST)
Date: Thu, 5 Mar 2020 00:26:24 -0800
From: Kees Cook <keescook@chromium.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH v2 2/3] binder: do not initialize locals passed to
 copy_from_user()
Message-ID: <202003050010.A1A965BF37@keescook>
References: <20200302130430.201037-2-glider@google.com>
 <0eaac427354844a4fcfb0d9843cf3024c6af21df.camel@perches.com>
 <CAG_fn=VNnxjD6qdkAW_E0v3faBQPpSsO=c+h8O=yvNxTZowuBQ@mail.gmail.com>
 <4cac10d3e2c03e4f21f1104405a0a62a853efb4e.camel@perches.com>
 <CAG_fn=XOyPGau9m7x8eCLJHy3m-H=nbMODewWVJ1xb2e+BPdFw@mail.gmail.com>
 <18b0d6ea5619c34ca4120a6151103dbe9bfa0cbe.camel@perches.com>
 <CAG_fn=U2T--j_uhyppqzFvMO3w3yUA529pQrCpbhYvqcfh9Z1w@mail.gmail.com>
 <20200303093832.GD24372@kadam> <202003040951.7857DFD936@keescook>
 <20200305080756.GB19839@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305080756.GB19839@kadam>
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
 LKML <linux-kernel@vger.kernel.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Alexander Potapenko <glider@google.com>,
 Joe Perches <joe@perches.com>, Dmitriy Vyukov <dvyukov@google.com>,
 Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 05, 2020 at 11:07:56AM +0300, Dan Carpenter wrote:
> On Wed, Mar 04, 2020 at 10:13:40AM -0800, Kees Cook wrote:
> > On Tue, Mar 03, 2020 at 12:38:32PM +0300, Dan Carpenter wrote:
> > > The real fix is to initialize everything manually, the automated
> > > initialization is a hardenning feature which many people will disable.
> > 
> > I cannot disagree more with this sentiment. Linus has specifically said he
> > wants this initialization on by default[1],
> 
> Fine, but as long as it's a configurable thing then we need to manually
> initialize as well or it's still a CVE etc.  It will take a while before
> we drop support for old versions of GCC as well.

Yes, I agree; that's totally true. We need to continue to fix all the
uninitialized flaws we encounter unless this is on by default for all
supported compiler versions (which will be a looong time). (But it's
not relevant to this patch because copy_from_user() does already do
the initialization.)

This set of patches was about dealing with the pathological cases of
auto-init colliding with functions that do, in fact, fully init. Though
I must say, I remain concerned about inventing such markings for fear
they'll be used in places where the "trust me, it's fully initialized"
state does not actually hold[1] but the author thinks it does.

-Kees

[1] https://lore.kernel.org/netdev/1509471094.3828.26.camel@edumazet-glaptop3.roam.corp.google.com/

-- 
Kees Cook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
