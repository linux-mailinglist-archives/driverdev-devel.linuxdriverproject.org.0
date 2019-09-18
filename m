Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E814EB6ADE
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 20:50:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 30CB522008;
	Wed, 18 Sep 2019 18:50:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id str0Y91nu2Xv; Wed, 18 Sep 2019 18:50:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 767A02002D;
	Wed, 18 Sep 2019 18:50:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EDB2A1BF988
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 18:50:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E8023867C0
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 18:50:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LZWAnxJaNP2s for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 18:50:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 25BDD867CC
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 18:50:14 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 85E4921897;
 Wed, 18 Sep 2019 18:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568832613;
 bh=6PhX5srdvtJmEHVj/KpalpakQF+YsaIEeJPCRUAPdoc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jP24yQmJzdVumGF2v7fLA0B87w3NT/5EC4wIhMKzhsbgYCviAYhVNiu0cYlsEGogM
 tJGpW6jbC7jmc/E+4mX2ED4QMR1H4miCsAkCpjPq0jI0I1Ri/og7NtJFTXpuiDlVTr
 /p5jk5iUMw6fKVtFuVGCjxOX9naf4WBjNWhMjVZk=
Date: Wed, 18 Sep 2019 20:50:10 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [GIT PULL] Staging/IIO driver patches for 5.4-rc1
Message-ID: <20190918185010.GA1933470@kroah.com>
References: <20190918114754.GA1899504@kroah.com>
 <20190918182412.GA9924@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190918182412.GA9924@infradead.org>
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org,
 devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 18, 2019 at 11:24:12AM -0700, Christoph Hellwig wrote:
> Just as a note of record:  I don't think either file system move
> is a good idea.  erofs still needs a lot of work, especially in
> interacting with the mm code like abusing page->mapping.

At least it is special-purpose "read only" filesystem currently shipping
on a few million phones, so the fall-out isn't a big deal :)

Also, the erofs developers have been asking for reviews for a very long
time and only now got them.  Which goes back to the issue of vfs reviews
we all discussed last week (see below).

> exfat is just a random old code drop from Samsung hastily picked up,
> and also duplicating the fat16/32 functionality, and without
> consultation of the developes of that who are trying to work through
> their process of contributing the uptodate and official version of it.

Those developers are still yet to be found, we only got a "drop" of the
samsung code _after_ this code was merged, from non-samsung people.  No
samsung developers have said they would actually help with any of this
work, and when asked what differed from the in-tree stuff, I got a list,
but no specifics.  I'll be working through that list over the next month
to resolve those issues.

Also the fat16/32 code is disabled, so that shouldn't be a problem for
anyone.

Again, this is a special-purpose filesystem that will be under heavy
development for a while.  There was no common out-of-tree place that
everyone could actually work on this, just inumerable forks on github,
my own included.  Now we have that common place for this all to be
worked on, and also there is a very good legal benefit for this to be
in-tree, which always is a nice win.

To get back to the meta-problem here, we need a common "vfs/filesystem"
tree somewhere with reviewers.  I'm glad to set up the tree and handle
patches, but I am not a vfs expert by any means (I only understand the
virtual half, not the backing half), so I can't be the only one to do
reviews.  Do you know of anyone that we can drag in as reviewers to help
make it easier for new filesystems to get reviews as well as existing
ones to have their patches collected and forwarded on to Linus at the
proper times?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
