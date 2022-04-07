Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 585604F8664
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Apr 2022 19:42:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F031D84103;
	Thu,  7 Apr 2022 17:42:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a3ckXviPMW0S; Thu,  7 Apr 2022 17:42:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 98D1283E85;
	Thu,  7 Apr 2022 17:42:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E14CB1BF5DA
 for <devel@linuxdriverproject.org>; Thu,  7 Apr 2022 17:42:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DE4F540CDD
 for <devel@linuxdriverproject.org>; Thu,  7 Apr 2022 17:42:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F0YnDRqMKbmi for <devel@linuxdriverproject.org>;
 Thu,  7 Apr 2022 17:42:37 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4159540CCD
 for <devel@driverdev.osuosl.org>; Thu,  7 Apr 2022 17:42:37 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 22EF761B20;
 Thu,  7 Apr 2022 17:42:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88F71C385A6;
 Thu,  7 Apr 2022 17:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1649353355;
 bh=D3po4An1h0oHihhacUGAId0URTwmJZ35j6bwJNecFb8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZFoHVruocz5KD4PDoMOSjOiTOmnqN/Q9Z+VArlqHeruCE2jG18SGBO3z0wb33DI5W
 1R2V633+F3UFFAgncSqjy4hNEC7FkOqfoJvDrFnDITjirr5Zdiy4ep7mDpuR2iN6fp
 pWshFZeqUJUbCDCghjx5SWCfuOaakF1lW7JaaO5g=
Date: Thu, 7 Apr 2022 19:42:33 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kalle Valo <kvalo@kernel.org>
Subject: Re: [PATCH v10 0/1] wfx: get out from the staging area
Message-ID: <Yk8iiZKFpYNgCbCz@kroah.com>
References: <20220226092142.10164-1-Jerome.Pouiller@silabs.com>
 <YhojjHGp4EfsTpnG@kroah.com> <87wnhhsr9m.fsf@kernel.org>
 <5830958.DvuYhMxLoT@pc-42> <878rslt975.fsf@tynnyri.adurom.net>
 <20220404232247.01cc6567@kernel.org>
 <20220404232930.05dd49cf@kernel.org> <878rskrod1.fsf@kernel.org>
 <20220405092046.465ff7e5@kernel.org> <875ynmr8qu.fsf@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <875ynmr8qu.fsf@kernel.org>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Apr 06, 2022 at 10:06:33AM +0300, Kalle Valo wrote:
> Jakub Kicinski <kuba@kernel.org> writes:
> 
> > On Tue, 05 Apr 2022 10:16:58 +0300 Kalle Valo wrote:
> >> Sure, that would technically work. But I just think it's cleaner to use
> >> -rc1 (or later) as the baseline for an immutable branch. If the baseline
> >> is an arbitrary commit somewhere within merge windows commits, it's more
> >> work for everyone to verify the branch is suitable.
> >> 
> >> Also in general I would also prefer to base -next trees to -rc1 or newer
> >> to make the bisect cleaner. The less we need to test kernels from the
> >> merge window (ie. commits after the final release and before -rc1) the
> >> better.
> >> 
> >> But this is just a small wish from me, I fully understand that it might
> >> be too much changes to your process. Wanted to point out this anyway.
> >
> > Forwarded!
> 
> Awesome, thank you Jakub!
> 
> Greg, I now created an immutable branch for moving wfx from
> drivers/staging to drivers/net/wireless/silabs:
> 
> git://git.kernel.org/pub/scm/linux/kernel/git/wireless/wireless-next.git wfx-move-out-of-staging
> 
> The baseline for this branch is v5.18-rc1. If you think the branch is
> ok, please pull it to staging-next and let me know. I can then pull the
> branch to wireless-next and the transition should be complete. And do
> let me know if there are any problems.

Looks great to me!  I've pulled it into staging-next now.  And will not
take any more patches to the driver (some happened before the merge but
git handled the move just fine.)

thanks!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
