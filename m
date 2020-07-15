Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEB622068E
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jul 2020 09:58:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8CE6B8A88A;
	Wed, 15 Jul 2020 07:58:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GCeg-oatdQ02; Wed, 15 Jul 2020 07:58:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0C37E8A661;
	Wed, 15 Jul 2020 07:58:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C6C8F1BF40F
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 07:58:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4D156888EB
 for <devel@linuxdriverproject.org>; Wed, 15 Jul 2020 07:58:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tcpXvAOu4HHP for <devel@linuxdriverproject.org>;
 Wed, 15 Jul 2020 07:57:59 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DB1DC888EA
 for <devel@driverdev.osuosl.org>; Wed, 15 Jul 2020 07:57:59 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2DDC92064C;
 Wed, 15 Jul 2020 07:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594799879;
 bh=d+zWYLUlj6gMr9z1u5H7/iRQ1ApMDWHLyq8vpIJWQ/U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YH9KxqV+VW3QrvUFhDbuPJoTpjbrjotyRGdB/yTxYZg86DNucztTjgoVqna4lxZBz
 6JIqapvZEeW9M/LsFc0bOKbp5HcrrH05hKjnkxwMDAOCj9lc8BPvkcrsFbpnEOBFz/
 /mzjsSS422SjoLRxGsG5AqEETtXf6YW+8QnI7pdg=
Date: Wed, 15 Jul 2020 09:57:55 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH v2] staging: gasket: core: Fix a coding style issue in
 gasket_core.c
Message-ID: <20200715075755.GA2516028@kroah.com>
References: <20200617161127.32006-1-zhixu001@126.com>
 <20200714234440.27009-1-zhixu001@126.com>
 <20200715071748.GC2305231@kroah.com>
 <23ef3ca9616418b702df891443d0f4864edd58ff.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <23ef3ca9616418b702df891443d0f4864edd58ff.camel@perches.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Zhixu Zhao <zhixu001@126.com>, rcy@google.com, rspringer@google.com,
 toddpoynor@google.com, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 15, 2020 at 12:24:22AM -0700, Joe Perches wrote:
> On Wed, 2020-07-15 at 09:17 +0200, Greg KH wrote:
> > On Wed, Jul 15, 2020 at 07:44:40AM +0800, Zhixu Zhao wrote:
> > > On Thu, Jun 18, 2020 at 12:11:27AM +0800, Zhixu Zhao wrote:
> > > > A coding alignment issue is found by checkpatch.pl.
> > > > Fix it by using a temporary for gasket_dev->bar_data[bar_num].
> > > > 
> > > > Signed-off-by: Zhixu Zhao <zhixu001@126.com>
> > > 
> > > Hi, there~
> > > 
> > > Does anybody have any further comments on this?
> > > Can it be merged?
> > 
> > I never saw the first version of this, are you sure it got sent to the
> > mailing list?  It's not in any archives anywhere.
> 
> I saw it.  It's here:
> https://lore.kernel.org/lkml/20200617161127.32006-1-zhixu001@126.com/

Ah, doh, sorry.

Zhixu, please address the comments given to you on the series and resend
it as a new version.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
