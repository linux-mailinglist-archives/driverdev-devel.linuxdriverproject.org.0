Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D39A11DC
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 08:40:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A1BDC88656;
	Thu, 29 Aug 2019 06:40:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pa104LmzCJOB; Thu, 29 Aug 2019 06:40:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A164D8857B;
	Thu, 29 Aug 2019 06:40:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D43D11BF2B6
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 06:39:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D15FB88586
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 06:39:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Ld15TcTy3Oa for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 06:39:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4729B8857B
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 06:39:58 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 86B682073F;
 Thu, 29 Aug 2019 06:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567060798;
 bh=VNuUc6IyKWx85KyY61iMOgz8tWUh22jdpJcnZlZWmt8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WoridwAuLrsfYOsar6PHvzlckR8Kx9ShOS0CE1gdrXsTtUSNcUeU2RwVKRHkBEvjT
 o1/KkXc7Ocj9Hg2uaHsCSxe8HvHyV0r5vyHVtZ/scTcMklU6Ss9z5UjIrPiN1bTHtU
 0QwzQ0A0YbSfQTVEynKjAQ3t/QxbEjRNJiu1C2yQ=
Date: Thu, 29 Aug 2019 08:39:55 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190829063955.GA30193@kroah.com>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190828170022.GA7873@kroah.com>
 <20190829062340.GB3047@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829062340.GB3047@infradead.org>
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
Cc: devel@driverdev.osuosl.org, linux-fsdevel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 28, 2019 at 11:23:40PM -0700, Christoph Hellwig wrote:
> Can we please just review the damn thing and get it into the proper
> tree?  That whole concept of staging file systems just has been one
> fricking disaster, including Greg just moving not fully reviewed ones
> over like erofs just because he feels like it.  I'm getting sick and
> tired of this scheme.

For this filesystem, it's going to be a _lot_ of work before that can
happen, and I'd really like to have lots of people help out with it
instead of it living in random github trees for long periods of time.

Putting it in the kernel lets all of the people that have been spending
time on this work together in one place.

Given that the vfs apis change so infrequently, I don't really
understand the objection here.  If you change apis in the rest of the
kernel, don't worry about anything in drivers/staging/ I will fix that
up.  This code has a much smaller api-interaction-level than lots of the
drivers that are currently living in staging.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
