Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E39304F3C99
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Apr 2022 18:20:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 74F2482F8B;
	Tue,  5 Apr 2022 16:20:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RCgvWQ0ALQLb; Tue,  5 Apr 2022 16:20:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1686D8254D;
	Tue,  5 Apr 2022 16:20:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 17CBF1BF3AF
 for <devel@linuxdriverproject.org>; Tue,  5 Apr 2022 16:20:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0570D415BC
 for <devel@linuxdriverproject.org>; Tue,  5 Apr 2022 16:20:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BqAcVUKrH6bN for <devel@linuxdriverproject.org>;
 Tue,  5 Apr 2022 16:20:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1E8CA415AF
 for <devel@driverdev.osuosl.org>; Tue,  5 Apr 2022 16:20:50 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D21FAB81C14;
 Tue,  5 Apr 2022 16:20:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C7BDC385A0;
 Tue,  5 Apr 2022 16:20:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649175647;
 bh=HeFS7lEAWZqOwBk9QGxbfXzbnQohh/dOySuSdkYeJ2s=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=YkK+L2CHvDG+MpJnr4NtEJT6GXQT49oMpvk9f3EO/SOMI8HOUBJZVYQxh1NfaN/KS
 dsL4dpf7Is/fDx7mz6qfLycZH/CsKvO1bQZYo8qlXPvBoBWv7smYddYteBzdB5O+La
 XRHXXPlKqPw0Uiqg7iII4sRmrs1gbzrPbB6TLAXio+2EOoZH/sZBg9LydmI0NXqFCX
 gmrAEZUmwj+imCb4oqkea27jm01Hven5RFZ6dLmKFLhoT5J9vjCWVdHArmmnfqYsPh
 UU9sGY8uEBDg4LfcyuNSItLPEvMaNsZ+iXw3vWFOvSFVyFc/e1eEpuU0CW5Q+9zMVB
 x2A++9nRvvV6w==
Date: Tue, 5 Apr 2022 09:20:46 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Kalle Valo <kvalo@kernel.org>
Subject: Re: [PATCH v10 0/1] wfx: get out from the staging area
Message-ID: <20220405092046.465ff7e5@kernel.org>
In-Reply-To: <878rskrod1.fsf@kernel.org>
References: <20220226092142.10164-1-Jerome.Pouiller@silabs.com>
 <YhojjHGp4EfsTpnG@kroah.com> <87wnhhsr9m.fsf@kernel.org>
 <5830958.DvuYhMxLoT@pc-42> <878rslt975.fsf@tynnyri.adurom.net>
 <20220404232247.01cc6567@kernel.org>
 <20220404232930.05dd49cf@kernel.org> <878rskrod1.fsf@kernel.org>
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

On Tue, 05 Apr 2022 10:16:58 +0300 Kalle Valo wrote:
> Sure, that would technically work. But I just think it's cleaner to use
> -rc1 (or later) as the baseline for an immutable branch. If the baseline
> is an arbitrary commit somewhere within merge windows commits, it's more
> work for everyone to verify the branch is suitable.
> 
> Also in general I would also prefer to base -next trees to -rc1 or newer
> to make the bisect cleaner. The less we need to test kernels from the
> merge window (ie. commits after the final release and before -rc1) the
> better.
> 
> But this is just a small wish from me, I fully understand that it might
> be too much changes to your process. Wanted to point out this anyway.

Forwarded!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
