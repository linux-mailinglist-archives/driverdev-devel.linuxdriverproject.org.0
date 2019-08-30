Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F33A2FE1
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2019 08:29:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F1BE4878B5;
	Fri, 30 Aug 2019 06:29:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nv6-eS7PGMLU; Fri, 30 Aug 2019 06:29:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AA1F687776;
	Fri, 30 Aug 2019 06:29:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2BD091BF3C6
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 06:29:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 26C048737F
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2019 06:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m9-JHfM0Kq8S for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2019 06:29:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5BDB287361
 for <devel@driverdev.osuosl.org>; Fri, 30 Aug 2019 06:29:13 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A88F120659;
 Fri, 30 Aug 2019 06:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567146553;
 bh=w5gHXGlwtkw2+r0MPL+BJkXamsnvdtNRlH2XT0EHQjQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Zl/htVkwO8o8kRP/crnxSsKBzqX5r1VOcAf2+9z2mTsgV1h127OaVZ+P5pSJgFC4a
 1EjiRvpMeXynfXXQUneSP3UVBl4zFlWzbWlH9RFnc57ehE5WHYYhlyetYUGVNDCw0+
 vAqlhZHwR9xUo18lZSBQuCV8+NA2wh4UTgYe7Dyw=
Date: Fri, 30 Aug 2019 08:29:10 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Tyler Hicks <tyhicks@canonical.com>
Subject: Re: [PATCH AUTOSEL 4.19 11/29] binder: take read mode of mmap_sem in
 binder_alloc_free_page()
Message-ID: <20190830062910.GC15257@kroah.com>
References: <20190829105009.2265-1-sashal@kernel.org>
 <20190829105009.2265-11-sashal@kernel.org>
 <20190829151320.GC27650@elm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829151320.GC27650@elm>
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Todd Kjos <tkjos@android.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 29, 2019 at 10:13:20AM -0500, Tyler Hicks wrote:
> Hello, Sasha!
> 
> On 2019-08-29 06:49:51, Sasha Levin wrote:
> > From: Tyler Hicks <tyhicks@canonical.com>
> > 
> > [ Upstream commit 60d4885710836595192c42d3e04b27551d30ec91 ]
> > 
> > Restore the behavior of locking mmap_sem for reading in
> > binder_alloc_free_page(), as was first done in commit 3013bf62b67a
> > ("binder: reduce mmap_sem write-side lock"). That change was
> > inadvertently reverted by commit 5cec2d2e5839 ("binder: fix race between
> > munmap() and direct reclaim").
> > 
> > In addition, change the name of the label for the error path to
> > accurately reflect that we're taking the lock for reading.
> > 
> > Backporting note: This fix is only needed when *both* of the commits
> > mentioned above are applied. That's an unlikely situation since they
> > both landed during the development of v5.1 but only one of them is
> > targeted for stable.
> 
> This patch isn't meant to be applied to 4.19 since commit 3013bf62b67a
> ("binder: reduce mmap_sem write-side lock") was never brought back to
> 4.19.
> 
> Tyler
> 
> > 
> > Fixes: 5cec2d2e5839 ("binder: fix race between munmap() and direct reclaim")

But this commit is in 4.19.49

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
