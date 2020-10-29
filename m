Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC9A29F176
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Oct 2020 17:30:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7CF8022B6D;
	Thu, 29 Oct 2020 16:30:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A4c3P6v8-rdu; Thu, 29 Oct 2020 16:30:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E87D6228CA;
	Thu, 29 Oct 2020 16:30:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 364351BF5B5
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 16:30:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3278B8688F
 for <devel@linuxdriverproject.org>; Thu, 29 Oct 2020 16:30:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jUmS6wY0j5FR for <devel@linuxdriverproject.org>;
 Thu, 29 Oct 2020 16:30:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DC3D886569
 for <devel@driverdev.osuosl.org>; Thu, 29 Oct 2020 16:30:19 +0000 (UTC)
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.6])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A842E20790;
 Thu, 29 Oct 2020 16:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603989019;
 bh=9qhq57YW26n72bx0xGHlYkeFUw8S8iXUH+E7GrcU/d0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=RTrNaTsY/n9cT4d2kzaUUdjJl1Qe6hy0UVi5cERrFdZ4x9yGkPVT3KsH9hOTl+xT6
 Nl7zLXZIhvuR2tzd/kokkwdVIJqs33gIeNgbj7cIM4JYi4ODaqN78gzUCahvRRp/7e
 VxmGh66H6uGi4/k+rW2q03PCMg4SkBKorJz9dD3w=
Date: Thu, 29 Oct 2020 09:30:17 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Subject: Re: [RFC] wimax: move out to staging
Message-ID: <20201029093017.01e7b1a2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <CAK8P3a0+C450705M2-mHtvoS1Ogb4YiBCq830d1KAgodKpWK4A@mail.gmail.com>
References: <20201027212448.454129-1-arnd@kernel.org>
 <20201028055628.GB244117@kroah.com>
 <20201029085627.698080a7@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAK8P3a0+C450705M2-mHtvoS1Ogb4YiBCq830d1KAgodKpWK4A@mail.gmail.com>
MIME-Version: 1.0
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
Cc: driverdevel <devel@driverdev.osuosl.org>, Arnd Bergmann <arnd@arndb.de>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Corbet <corbet@lwn.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>,
 Networking <netdev@vger.kernel.org>, Johannes Berg <johannes@sipsolutions.net>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, 29 Oct 2020 17:26:09 +0100 Arnd Bergmann wrote:
> n Thu, Oct 29, 2020 at 4:56 PM Jakub Kicinski <kuba@kernel.org> wrote:
> > On Wed, 28 Oct 2020 06:56:28 +0100 Greg Kroah-Hartman wrote:  
> > > On Tue, Oct 27, 2020 at 10:20:13PM +0100, Arnd Bergmann wrote:
> > >
> > > Is this ok for me to take through the staging tree?  If so, I need an
> > > ack from the networking maintainers.
> > >
> > > If not, feel free to send it through the networking tree and add:
> > >
> > > Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>  
> >
> > Thinking about it now - we want this applied to -next, correct?
> > In that case it may be better if we take it. The code is pretty dead
> > but syzbot and the trivial fix crowd don't know it, so I may slip,
> > apply something and we'll have a conflict.  
> 
> I think git will deal with a merge between branches containing
> the move vs fix, so it should work either way.
> 
> A downside of having the move in net-next would be that
> you'd get trivial fixes send to Greg, but him being unable to
> apply them to his tree because the code is elsewhere.
> 
> If you think it helps, I could prepare a pull request with this one
> patch (and probably the bugfix I sent first that triggered it), and
> then you can both merge the branch into net-next as well
> as staging-next.

If you wouldn't mind branch sounds like the best solution.

Acked-by: Jakub Kicinski <kuba@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
