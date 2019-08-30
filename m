Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DC617A3026
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 08:39:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A52072631D;
	Fri, 30 Aug 2019 06:39:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WwodTygZEtYt; Fri, 30 Aug 2019 06:39:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DCC5026295;
	Fri, 30 Aug 2019 06:39:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 833341BF3C6
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 06:39:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 80291204D4
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 06:39:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EUjokTDIua-h for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 06:39:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 712232042D
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 06:39:46 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C431421726;
 Fri, 30 Aug 2019 06:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567147186;
 bh=7/rlq7vaiQOs31GzJFIA6k/xmE5490eBtARLEuRFq7Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NLua+rWZfK61axwTbxetb7LZfM7o5wumj8OLYbaDAq4Dbw4SnLP64ExzXhrtBV6PE
 R4xhiF3XthsZRRTmTKpxP7R+X6necCQY2PuG14kcWtklm4XHPs1zPu7SRbhEZmrmWy
 +wK//lHXUFRzZRT/AhPZ8J9iXo5HGB7ylBYjLv/4=
Date: Fri, 30 Aug 2019 08:39:43 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Peikan Tsai <peikantsai@gmail.com>
Subject: Re: [PATCH] binder: Use kmem_cache for binder_thread
Message-ID: <20190830063943.GH15257@kroah.com>
References: <20190829054953.GA18328@mark-All-Series>
 <20190829064229.GA30423@kroah.com>
 <20190829135359.GB63638@google.com>
 <20190829152721.ttsyfwaeygmwmcu7@wittgenstein>
 <20190829185901.GA4680@mark-All-Series>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829185901.GA4680@mark-All-Series>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, linux-kernel@vger.kernel.org,
 arve@android.com, Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian.brauner@ubuntu.com>, maco@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 30, 2019 at 02:59:01AM +0800, Peikan Tsai wrote:
> On Thu, Aug 29, 2019 at 05:27:22PM +0200, Christian Brauner wrote:
> > On Thu, Aug 29, 2019 at 09:53:59AM -0400, Joel Fernandes wrote:
> > > On Thu, Aug 29, 2019 at 08:42:29AM +0200, Greg KH wrote:
> > > > On Thu, Aug 29, 2019 at 01:49:53PM +0800, Peikan Tsai wrote:
> > > [snip] 
> > > > > The allocated size for each binder_thread is 512 bytes by kzalloc.
> > > > > Because the size of binder_thread is fixed and it's only 304 bytes.
> > > > > It will save 208 bytes per binder_thread when use create a kmem_cache
> > > > > for the binder_thread.
> > > > 
> > > > Are you _sure_ it really will save that much memory?  You want to do
> > > > allocations based on a nice alignment for lots of good reasons,
> > > > especially for something that needs quick accesses.
> > > 
> > > Alignment can be done for slab allocations, kmem_cache_create() takes an
> > > align argument. I am not sure what the default alignment of objects is
> > > though (probably no default alignment). What is an optimal alignment in your
> > > view?
> > 
> > Probably SLAB_HWCACHE_ALIGN would make most sense.
> > 
> 
> Agree. Thanks for yours comments and suggestions.
> I'll put SLAB_HWCACHE_ALIGN it in patch v2.
> 
> > > 
> > > > Did you test your change on a system that relies on binder and find any
> > > > speed improvement or decrease, and any actual memory savings?
> > > > 
> > > > If so, can you post your results?
> > > 
> > > That's certainly worth it and I thought of asking for the same, but spoke too
> > > soon!
> > 
> > Yeah, it'd be interesting to see what difference this actually makes. 
> > 
> > Christian
> 
> I tested this change on an Android device(arm) with AOSP kernel 4.19 and
> observed
> memory usage of binder_thread. But I didn't do binder benchmark yet.
> 
> On my platform the memory usage of binder_thread reduce about 90 KB as
> the
> following result.
>         nr obj          obj size        total
> 	before: 624             512             319488 bytes
> 	after:  728             312             227136 bytes

You have more objects???

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
