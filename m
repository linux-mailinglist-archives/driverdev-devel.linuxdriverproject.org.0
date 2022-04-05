Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC964F231B
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Apr 2022 08:29:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EC35281B0A;
	Tue,  5 Apr 2022 06:29:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AszYVPbkfZ-F; Tue,  5 Apr 2022 06:29:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A468F81AF5;
	Tue,  5 Apr 2022 06:29:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EE6A01BF345
 for <devel@linuxdriverproject.org>; Tue,  5 Apr 2022 06:29:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DC6EA40946
 for <devel@linuxdriverproject.org>; Tue,  5 Apr 2022 06:29:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y-ZW-eBZHgjf for <devel@linuxdriverproject.org>;
 Tue,  5 Apr 2022 06:29:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 165FC4093A
 for <devel@driverdev.osuosl.org>; Tue,  5 Apr 2022 06:29:35 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 3693FB81B99;
 Tue,  5 Apr 2022 06:29:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89032C340F3;
 Tue,  5 Apr 2022 06:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649140171;
 bh=kcD8piI7TjLNSLlS5U7+xwCT0pyjngczKZUKaVKe62g=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SXWR9MZJVas509w7bdMer/rdOmzJObKxWjVaxkDzLQaMoTDQ68FT6/vU8KcTIv8Kx
 ggyeVL29ksUI1Rz+ntwzQTX6SY6xK0379tgjk3bNjkQl2GJ+ULgGbT/sLXhGhGZC1Q
 Nz/OdxeaU/NpOfLiIyqcJ4gSr3mGKUuBVeHmpSeV78lanr2Vk7lwquL+Ma9/hGgL45
 slYvnN+H2hOa3jzGTdXFejHfOU/5v11pTb2mujoVvX5/WZ7sYbv1JilbUBqMmgVOYM
 jvZu3N4mOh2/180R6AlD5v62WkTW0sW8G6Rfmohag6EkkIIPtx5JpeTaqK0YV7aWkq
 AC3rE717h7hCg==
Date: Mon, 4 Apr 2022 23:29:30 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Kalle Valo <kvalo@kernel.org>
Subject: Re: [PATCH v10 0/1] wfx: get out from the staging area
Message-ID: <20220404232930.05dd49cf@kernel.org>
In-Reply-To: <20220404232247.01cc6567@kernel.org>
References: <20220226092142.10164-1-Jerome.Pouiller@silabs.com>
 <YhojjHGp4EfsTpnG@kroah.com> <87wnhhsr9m.fsf@kernel.org>
 <5830958.DvuYhMxLoT@pc-42> <878rslt975.fsf@tynnyri.adurom.net>
 <20220404232247.01cc6567@kernel.org>
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

On Mon, 4 Apr 2022 23:22:47 -0700 Jakub Kicinski wrote:
> On Mon, 04 Apr 2022 13:49:18 +0300 Kalle Valo wrote:
> > Dave&Jakub, once you guys open net-next will it be based on -rc1?  
> 
> Not normally. We usually let net feed net-next so it'd get -rc1 this
> Thursday. But we should be able to fast-forward, let me confirm with
> Dave.

Wait, why is -rc1 magic? If you based the branch on whatever
the merge-base of net-next and staging-next is, would that be
an aberration?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
