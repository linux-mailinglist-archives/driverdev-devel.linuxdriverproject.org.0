Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D3EA1515
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 11:41:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E2F0C885FA;
	Thu, 29 Aug 2019 09:41:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dImhCZFxggCf; Thu, 29 Aug 2019 09:41:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B6D3188625;
	Thu, 29 Aug 2019 09:41:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 093B01BF489
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 09:41:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F232A8847F
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 09:41:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j7GVg686lKgY for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 09:41:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 617C5885E9
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 09:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Q8X8dhA/6vAF+AyI3AiIHVKU1Euyk/tPwqRBlKklicU=; b=Qp4YqrbAp6gmjgNiliwXQIHwt
 nRs8d9FVhhUaeHT6jertsdc2IRcsAE94+0f/Yzww7ZhWVoQ6zaO0NlblC+NkjRsPyDMjf+anQeaZS
 3gmw2BVrEjDCz6tXvW5NG1w9CmYtVRVfKA1Rtxpq1klbArrAWWkAJWZxSxg2w1xLi+3JaR+Dlqw+B
 6hYWRyrV9FFsYUnLh7dQhzvqb2ZvYnJNXTvvPzIbSGrKUiMqpafkO0FM23JzX4B4QiFqjarTc533L
 H5Aoirn2g+OvtQj0FJNi9u2z5ax5EaP6JYGpYsjs2rA1xCYfcHInVyXzIAx94n6WqBv+OcWtHQhNh
 C+fpQ5ZUA==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i3Gvw-0002B9-Ap; Thu, 29 Aug 2019 09:41:36 +0000
Date: Thu, 29 Aug 2019 02:41:36 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190829094136.GA28643@infradead.org>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190828170022.GA7873@kroah.com>
 <20190829062340.GB3047@infradead.org>
 <20190829063955.GA30193@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829063955.GA30193@kroah.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
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
Cc: devel@driverdev.osuosl.org, Sasha Levin <alexander.levin@microsoft.com>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 linux-fsdevel@vger.kernel.org, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 29, 2019 at 08:39:55AM +0200, Greg Kroah-Hartman wrote:
> On Wed, Aug 28, 2019 at 11:23:40PM -0700, Christoph Hellwig wrote:
> > Can we please just review the damn thing and get it into the proper
> > tree?  That whole concept of staging file systems just has been one
> > fricking disaster, including Greg just moving not fully reviewed ones
> > over like erofs just because he feels like it.  I'm getting sick and
> > tired of this scheme.
> 
> For this filesystem, it's going to be a _lot_ of work before that can
> happen, and I'd really like to have lots of people help out with it
> instead of it living in random github trees for long periods of time.

Did you actually look at the thing instead of blindly applying some
pile of crap?

It basically is a reimplementation of fs/fat/ not up to kernel standards
with a few indirections thrown in to also support exfat.  So no amount
of work on this codebase is really going to bring us forward.  Instead
someone how can spend a couple days on this and actually has file
systems to test it just needs to bring the low-level format bits over
to our well tested fs/fat codebase instead of duplicating it.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
