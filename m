Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2B5036B57D
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Apr 2021 17:11:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 46548402D2;
	Mon, 26 Apr 2021 15:11:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o4hg60MOUecE; Mon, 26 Apr 2021 15:11:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5D530402CA;
	Mon, 26 Apr 2021 15:11:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ED7741BF300
 for <devel@linuxdriverproject.org>; Mon, 26 Apr 2021 15:11:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DC5A34023E
 for <devel@linuxdriverproject.org>; Mon, 26 Apr 2021 15:11:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q2aBUdoaPdqT for <devel@linuxdriverproject.org>;
 Mon, 26 Apr 2021 15:11:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 098714036D
 for <devel@linuxdriverproject.org>; Mon, 26 Apr 2021 15:11:34 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B2DA86127A;
 Mon, 26 Apr 2021 15:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1619449894;
 bh=mKNVRThB4TR6cTVKU1O3OLaFcmlBF2z0v5DlzX94AGM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hYzD/DCgSUokuruvcCebS+W/pAShhtvrukY0mhG+4lNm6BqyK2ITPFyMVWo7zU8bu
 fglanqjg6kObAKbToMewzwJ/z15pOiD7GD6UKh6e6U+OfbRxe2455d8hxwumcZmXEo
 XU9plv5OLFTKD4ltO7Qw7dKyc9oRJXE5UmL5qB4A=
Date: Mon, 26 Apr 2021 17:11:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Stephen Rothwell <sfr@rothwell.id.au>
Subject: Re: [GIT PULL] Staging/IIO driver updates for 5.13-rc1
Message-ID: <YIbYI2825E4Z2b/3@kroah.com>
References: <YIa2ErYuJyCfSkS+@kroah.com>
 <20210427002648.22459fa7@elm.ozlabs.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210427002648.22459fa7@elm.ozlabs.ibm.com>
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>, Arnd Bergmann <arnd@arndb.de>,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Olof Johansson <olof@lixom.net>, devel@linuxdriverproject.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 27, 2021 at 12:26:48AM +1000, Stephen Rothwell wrote:
> Hi Greg,
> 
> On Mon, 26 Apr 2021 14:46:10 +0200 Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > All of these have been in linux-next for a while with no reported
> > issues.
> 
> There was just these:
> 
> https://lore.kernel.org/linux-next/20210329165525.32d51a3a@canb.auug.org.au/
> 
> https://lore.kernel.org/linux-next/20210331175151.67fcfe4d@canb.auug.org.au/
> 
> (the scmi tree commit mentioned in the latter is now in the arm-soc tree)
> 
> Not issues as such, but worth mentioning the conflicts and resolutions.

Yeah, merge issues with other trees are hard to resolve in the single
tree here, not much I can just yet, have to wait for them to hit Linus's
tree.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
