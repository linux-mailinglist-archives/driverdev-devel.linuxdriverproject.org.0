Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0546C4F56B7
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Apr 2022 09:06:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBE48417C1;
	Wed,  6 Apr 2022 07:06:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CjQ5RC-sR14G; Wed,  6 Apr 2022 07:06:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BBEB417BD;
	Wed,  6 Apr 2022 07:06:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D295E1BF2F2
 for <devel@linuxdriverproject.org>; Wed,  6 Apr 2022 07:06:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF1E740126
 for <devel@linuxdriverproject.org>; Wed,  6 Apr 2022 07:06:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gdy4qqOyIZHp for <devel@linuxdriverproject.org>;
 Wed,  6 Apr 2022 07:06:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 904FF400E4
 for <devel@driverdev.osuosl.org>; Wed,  6 Apr 2022 07:06:41 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 393EE619F3;
 Wed,  6 Apr 2022 07:06:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6CCFC385A1;
 Wed,  6 Apr 2022 07:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649228799;
 bh=+qHR/F28NpTwCRHANOdIvvIwSZLcHmNjSA+4wHvU6B8=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=gQBjvlC+YXsBjpc6P4TUkOsNfSP6YbP1F4dmX5vG2WMM/IxIf16OL7Q6pG7op+Vcw
 D7CBUywdqMEpklEvoaR3kiGsVUf9gmlmnKj0CpiFdI5n7DBR+ADkrJGI1fpqr499/Z
 Q8yN+1ksGqORLbGfgGCOFogK0h34EGVepcunKeeQ/zYH2N0piEFjYIziZIytGKWFoz
 6lJq2Q3jb/ObvwIvqzPPngZWhEdmUUpFsNq9CFHMymr05riZJxWU2wamGF5YtGN3dD
 Ktq8dEWfPb40bhgGphzVvKnsCAuHyfR4RUD5iWY2NueVSiB+4zDPwJ+eUeaIx6wr3V
 DSGLYpuOe7nDQ==
From: Kalle Valo <kvalo@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [PATCH v10 0/1] wfx: get out from the staging area
References: <20220226092142.10164-1-Jerome.Pouiller@silabs.com>
 <YhojjHGp4EfsTpnG@kroah.com> <87wnhhsr9m.fsf@kernel.org>
 <5830958.DvuYhMxLoT@pc-42> <878rslt975.fsf@tynnyri.adurom.net>
 <20220404232247.01cc6567@kernel.org>
 <20220404232930.05dd49cf@kernel.org> <878rskrod1.fsf@kernel.org>
 <20220405092046.465ff7e5@kernel.org>
Date: Wed, 06 Apr 2022 10:06:33 +0300
In-Reply-To: <20220405092046.465ff7e5@kernel.org> (Jakub Kicinski's message of
 "Tue, 5 Apr 2022 09:20:46 -0700")
Message-ID: <875ynmr8qu.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Jakub Kicinski <kuba@kernel.org> writes:

> On Tue, 05 Apr 2022 10:16:58 +0300 Kalle Valo wrote:
>> Sure, that would technically work. But I just think it's cleaner to use
>> -rc1 (or later) as the baseline for an immutable branch. If the baseline
>> is an arbitrary commit somewhere within merge windows commits, it's more
>> work for everyone to verify the branch is suitable.
>> 
>> Also in general I would also prefer to base -next trees to -rc1 or newer
>> to make the bisect cleaner. The less we need to test kernels from the
>> merge window (ie. commits after the final release and before -rc1) the
>> better.
>> 
>> But this is just a small wish from me, I fully understand that it might
>> be too much changes to your process. Wanted to point out this anyway.
>
> Forwarded!

Awesome, thank you Jakub!

Greg, I now created an immutable branch for moving wfx from
drivers/staging to drivers/net/wireless/silabs:

git://git.kernel.org/pub/scm/linux/kernel/git/wireless/wireless-next.git wfx-move-out-of-staging

The baseline for this branch is v5.18-rc1. If you think the branch is
ok, please pull it to staging-next and let me know. I can then pull the
branch to wireless-next and the transition should be complete. And do
let me know if there are any problems.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
