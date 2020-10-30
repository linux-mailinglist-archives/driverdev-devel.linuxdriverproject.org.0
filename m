Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5CA2A0AF5
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Oct 2020 17:18:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EFF4986A08;
	Fri, 30 Oct 2020 16:18:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AL2fB0800zM4; Fri, 30 Oct 2020 16:18:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 03E1E862D4;
	Fri, 30 Oct 2020 16:18:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3A8381BF280
 for <devel@linuxdriverproject.org>; Fri, 30 Oct 2020 16:18:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3796A863E0
 for <devel@linuxdriverproject.org>; Fri, 30 Oct 2020 16:18:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jDIpHSjU6bwQ for <devel@linuxdriverproject.org>;
 Fri, 30 Oct 2020 16:18:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D06E6862D4
 for <devel@driverdev.osuosl.org>; Fri, 30 Oct 2020 16:18:03 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net (unknown
 [163.114.132.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E42AD20719;
 Fri, 30 Oct 2020 16:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604074683;
 bh=qc7JBg75QbyHeN8hIxPfsqmQIEy61qUjh+GZ1gIIJAo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Arp72sFb2kYLVii96eL0/P993W/K8aiRVySoDw5wi4MHjs2L3+a/UH2IRIHQ6UzPx
 6egSmV8Z376UaatryNJARr9AGAH7+0U5VPC9NJByo6MuLXsN8YLSJJQ3QlsOoheq5D
 6L4XI10l6krH0VCeyof9s/Sa/IaX1hYNRUW+iA+Y=
Date: Fri, 30 Oct 2020 09:18:01 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: gregkh <gregkh@linuxfoundation.org>
Subject: Re: [GIT PULL, staging, net-next] wimax: move to staging
Message-ID: <20201030091801.2ac8ef1d@kicinski-fedora-PC1C0HJN.hsd1.ca.comcast.net>
In-Reply-To: <20201030122231.GA2522837@kroah.com>
References: <CAK8P3a2zy2X9rivWcGaOB=c8SQ8Gcc8tm_6DMOmcQVKFift+Tg@mail.gmail.com>
 <20201030122231.GA2522837@kroah.com>
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
Cc: driverdevel <devel@driverdev.osuosl.org>, Arnd Bergmann <arnd@kernel.org>,
 Networking <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Inaky Perez-Gonzalez <inaky.perez-gonzalez@intel.com>,
 Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 30 Oct 2020 13:22:31 +0100 gregkh wrote:
> On Thu, Oct 29, 2020 at 10:06:14PM +0100, Arnd Bergmann wrote:
> > The following changes since commit 3650b228f83adda7e5ee532e2b90429c03f7b9ec:
> > 
> >   Linux 5.10-rc1 (2020-10-25 15:14:11 -0700)
> > 
> > are available in the Git repository at:
> > 
> >   git://git.kernel.org:/pub/scm/linux/kernel/git/arnd/playground.git
> > tags/wimax-staging  
> 
> Line wrapping makes this hard :(
> 
> Anyway, pulled into the staging-next branch now, so it's fine if this
> also gets pulled into the networking branch/tree as well, and then all
> should be fine.

..and pulled into net-next, thanks!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
