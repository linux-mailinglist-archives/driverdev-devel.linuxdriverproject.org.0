Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D651A2691
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 20:59:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 27FAF89342;
	Thu, 29 Aug 2019 18:59:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S9pW7l4u3joz; Thu, 29 Aug 2019 18:59:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A0F75891DB;
	Thu, 29 Aug 2019 18:59:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F8081BF20D
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 18:59:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1C1AB891EE
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 18:59:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mQj68f2srNj3 for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 18:59:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2F8CA891DB
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 18:59:06 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id g2so2710463pfq.0
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 11:59:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=R3qNdsy+RA8q5xEKIekaterX1FMMD41w6Pyv+N6rQvM=;
 b=Ryr4eWHNakM79Uz5IF+shdCAGHLvxz+qHwYhVYS5GxwXavW6MOFOTSUealV+NvDYen
 PHrOFCF21p1YXkfFXnXaLBro1auhCw9R6KnpLk9lAdLVu5OJGGVhM03AosfNbuTn/kyz
 v4B5PzKt/ZhHkQR58J6/umPhXhxfih3PctvYD6BO7X18UI/9HFTkxtM94rMcAPyO6vNn
 KBFVnwVlkumWteaX1t17ehT6FWvNuWZVUq6e+to4qTaDHYXOOCFFlUEqNZl9VRKamTvS
 SeD1Il092xMIrn+n6AlCRxVVDx0U/P9w763tTH+vIPBJcIGMlDV7pvEk8AwLxidWvDF0
 lyOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=R3qNdsy+RA8q5xEKIekaterX1FMMD41w6Pyv+N6rQvM=;
 b=K4ZmBfXwUgrp/c5DBEelfno3l0BCl4KCzpJ4WPp7nFFB9N+EXH03pJ6wpBY9RhMu5f
 hKEl47SJIZLC32mND5TYv/z2NPUD/5d1HV0bCwRraOY4x8ROA/RyNoUFSInMszV7NxKT
 Lak5y0taZ0PJo6ieX9M9VLcmc7xWChs5n9rsGSGKOk3tlY9BNeL/Yb85WC5192iUXYyo
 US4rC9+yMeVnkYd8ghoRUnGT3iDoapPGPrCYA0E6pgmnGESRg7DJcAjA9dahxaHEhmk0
 PKZdsbsJ/FyhTqYCdHQOLoW20hufxn1IXbFq5Ivor5TPlMCySmVfpPidsZ0p+W+2nHia
 SjIg==
X-Gm-Message-State: APjAAAW7devvqUYFCypnMq532C2GOCCicZ1BAZ9HsPgNyBKMDJ/uoP+s
 /9j0ZVMB+DCe8GeNmLZAag==
X-Google-Smtp-Source: APXvYqxAgO1aXnb8LpUxDik+ZPEub6ZSujBoieCX5UO9w0IcvSYwK7FUPYEVitI6Mld6z8OxPlBGRA==
X-Received: by 2002:a63:6146:: with SMTP id v67mr10147635pgb.271.1567105145753; 
 Thu, 29 Aug 2019 11:59:05 -0700 (PDT)
Received: from mark-All-Series (114-32-231-59.HINET-IP.hinet.net.
 [114.32.231.59])
 by smtp.gmail.com with ESMTPSA id b3sm4623185pfp.65.2019.08.29.11.59.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 29 Aug 2019 11:59:04 -0700 (PDT)
Date: Fri, 30 Aug 2019 02:59:01 +0800
From: Peikan Tsai <peikantsai@gmail.com>
To: Christian Brauner <christian.brauner@ubuntu.com>
Subject: Re: [PATCH] binder: Use kmem_cache for binder_thread
Message-ID: <20190829185901.GA4680@mark-All-Series>
References: <20190829054953.GA18328@mark-All-Series>
 <20190829064229.GA30423@kroah.com>
 <20190829135359.GB63638@google.com>
 <20190829152721.ttsyfwaeygmwmcu7@wittgenstein>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829152721.ttsyfwaeygmwmcu7@wittgenstein>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 arve@android.com, Joel Fernandes <joel@joelfernandes.org>, maco@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 29, 2019 at 05:27:22PM +0200, Christian Brauner wrote:
> On Thu, Aug 29, 2019 at 09:53:59AM -0400, Joel Fernandes wrote:
> > On Thu, Aug 29, 2019 at 08:42:29AM +0200, Greg KH wrote:
> > > On Thu, Aug 29, 2019 at 01:49:53PM +0800, Peikan Tsai wrote:
> > [snip] 
> > > > The allocated size for each binder_thread is 512 bytes by kzalloc.
> > > > Because the size of binder_thread is fixed and it's only 304 bytes.
> > > > It will save 208 bytes per binder_thread when use create a kmem_cache
> > > > for the binder_thread.
> > > 
> > > Are you _sure_ it really will save that much memory?  You want to do
> > > allocations based on a nice alignment for lots of good reasons,
> > > especially for something that needs quick accesses.
> > 
> > Alignment can be done for slab allocations, kmem_cache_create() takes an
> > align argument. I am not sure what the default alignment of objects is
> > though (probably no default alignment). What is an optimal alignment in your
> > view?
> 
> Probably SLAB_HWCACHE_ALIGN would make most sense.
> 

Agree. Thanks for yours comments and suggestions.
I'll put SLAB_HWCACHE_ALIGN it in patch v2.

> > 
> > > Did you test your change on a system that relies on binder and find any
> > > speed improvement or decrease, and any actual memory savings?
> > > 
> > > If so, can you post your results?
> > 
> > That's certainly worth it and I thought of asking for the same, but spoke too
> > soon!
> 
> Yeah, it'd be interesting to see what difference this actually makes. 
> 
> Christian

I tested this change on an Android device(arm) with AOSP kernel 4.19 and
observed
memory usage of binder_thread. But I didn't do binder benchmark yet.

On my platform the memory usage of binder_thread reduce about 90 KB as
the
following result.
        nr obj          obj size        total
	before: 624             512             319488 bytes
	after:  728             312             227136 bytes

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
