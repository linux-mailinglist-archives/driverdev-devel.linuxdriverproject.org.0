Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CB40EA1BDE
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 15:54:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A5CE887062;
	Thu, 29 Aug 2019 13:54:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sTwuhHef9GZV; Thu, 29 Aug 2019 13:54:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 005DC87252;
	Thu, 29 Aug 2019 13:54:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D71D41BF299
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 13:54:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D3FF287062
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 13:54:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oMvS1iyE1dkq for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 13:54:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 64E9E86FD7
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 13:54:01 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id i30so2088424pfk.9
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 06:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Pf/db+szbYm7dJzEjw6KZt3csHMZhr4jO5xT4UCnNZE=;
 b=RCqHCdBfnJpfcZnScGd1muttY38RJgoi9gHDa1Omn5PBRnmwnAT2EHr/oXc5auS4dS
 gxUK6n3qvAeAhkUb7pFLyw3asgmek8WpG0tsknS4dq/VTEJGR3Yl3NqOeXzdxDX2okk/
 fdyoiaYasK1GrF5x8jDqMzGOuiRQfCvnGNndc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Pf/db+szbYm7dJzEjw6KZt3csHMZhr4jO5xT4UCnNZE=;
 b=Zp8aQaI0P2snLrypk5+s5lkgZFY7/cNJw5LDX5DXQak4AU6y0OUXqEUSFErKfI7znq
 mNPXnYPUnvzFtlAzlV2bgKa9z+BFAEUduoJ2orqezycYGADNymPyoKJlHMsoEILm8WRE
 gEMPW58Ixk7yo0mpIWnjkpSKFJu0P5tnhU7bjuKN6YEj2FAvkIYBdM5OM4lnjpCUA2uw
 2uVink2/Qez9u7H0vZvH2IfS2uKPIRHeF3FKt7xCUdk6qsPC7p52YPmhsQQ6oZPUttvd
 Ybw47KcJ3PLP0ylFz68sDpla1r1l1FCoNMU2CWBVe8XvTzLLPzvPJZvS11YcBGTHjqrS
 AEdA==
X-Gm-Message-State: APjAAAVXB01K5z9+PdG2/b6ZAjc0q5WV4B3ccTVGpKaMGWyFW17flGxu
 cWFrVNyvdij6++mEQsGkjtXPkQ==
X-Google-Smtp-Source: APXvYqzszQZHsQVXQ4zEKWNjF5tJmv6Y0LXpwcNWBVVty+o15HXC4XU4E78Fk8gLqUwh+U36WQZ0cw==
X-Received: by 2002:a63:f401:: with SMTP id g1mr8784816pgi.314.1567086840883; 
 Thu, 29 Aug 2019 06:54:00 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:9c46:e0da:efbf:69cc])
 by smtp.gmail.com with ESMTPSA id 185sm4229503pfd.125.2019.08.29.06.53.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 06:54:00 -0700 (PDT)
Date: Thu, 29 Aug 2019 09:53:59 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] binder: Use kmem_cache for binder_thread
Message-ID: <20190829135359.GB63638@google.com>
References: <20190829054953.GA18328@mark-All-Series>
 <20190829064229.GA30423@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829064229.GA30423@kroah.com>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, arve@android.com,
 linux-kernel@vger.kernel.org, Peikan Tsai <peikantsai@gmail.com>,
 maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 29, 2019 at 08:42:29AM +0200, Greg KH wrote:
> On Thu, Aug 29, 2019 at 01:49:53PM +0800, Peikan Tsai wrote:
[snip] 
> > The allocated size for each binder_thread is 512 bytes by kzalloc.
> > Because the size of binder_thread is fixed and it's only 304 bytes.
> > It will save 208 bytes per binder_thread when use create a kmem_cache
> > for the binder_thread.
> 
> Are you _sure_ it really will save that much memory?  You want to do
> allocations based on a nice alignment for lots of good reasons,
> especially for something that needs quick accesses.

Alignment can be done for slab allocations, kmem_cache_create() takes an
align argument. I am not sure what the default alignment of objects is
though (probably no default alignment). What is an optimal alignment in your
view?

> Did you test your change on a system that relies on binder and find any
> speed improvement or decrease, and any actual memory savings?
> 
> If so, can you post your results?

That's certainly worth it and I thought of asking for the same, but spoke too
soon!

Independent note: In general I find the internal fragmentation with large
kmalloc()s troubling in the kernel :-(. Say you have a 5000 objects of 512
allocation, each 300 bytes. 212 * 5000 is around 1MB. Which is arguably not
neglible on a small memory system, right?

thanks,

 - Joel

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
