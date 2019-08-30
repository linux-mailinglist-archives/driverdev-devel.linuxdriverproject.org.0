Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CC6A367C
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 14:14:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6948986F52;
	Fri, 30 Aug 2019 12:14:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3_-hf3h2QTmi; Fri, 30 Aug 2019 12:14:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 00DE986EE4;
	Fri, 30 Aug 2019 12:14:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 40CC51BF25B
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 12:14:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3D78A87FC4
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 12:14:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g6mp-9nV50lo for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 12:14:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 289CF87FC1
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 12:14:39 +0000 (UTC)
Received: from [213.220.153.21] (helo=wittgenstein)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <christian.brauner@ubuntu.com>)
 id 1i3flt-0003iW-0H; Fri, 30 Aug 2019 12:12:53 +0000
Date: Fri, 30 Aug 2019 14:12:52 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] binder: Use kmem_cache for binder_thread
Message-ID: <20190830121251.rvdhohyykekhh25r@wittgenstein>
References: <20190829054953.GA18328@mark-All-Series>
 <20190829064229.GA30423@kroah.com>
 <20190829135359.GB63638@google.com>
 <20190829152721.ttsyfwaeygmwmcu7@wittgenstein>
 <20190830063851.GG15257@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830063851.GG15257@kroah.com>
User-Agent: NeoMutt/20180716
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
 Joel Fernandes <joel@joelfernandes.org>, maco@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 30, 2019 at 08:38:51AM +0200, Greg KH wrote:
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
> 
> This isn't memory accessing hardware, so I don't think it would, right?

I was more thinking of cacheline bouncing under contention. But maybe
that's not worth it in this case...
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
