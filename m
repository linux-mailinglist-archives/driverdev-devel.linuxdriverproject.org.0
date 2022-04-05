Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8A54F2303
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Apr 2022 08:22:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E7AAB404F0;
	Tue,  5 Apr 2022 06:22:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H_QK9PfV2Qei; Tue,  5 Apr 2022 06:22:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9CD71400CE;
	Tue,  5 Apr 2022 06:22:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A14741BF345
 for <devel@linuxdriverproject.org>; Tue,  5 Apr 2022 06:22:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8A6A060BD3
 for <devel@linuxdriverproject.org>; Tue,  5 Apr 2022 06:22:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iy9pHWRH4BYJ for <devel@linuxdriverproject.org>;
 Tue,  5 Apr 2022 06:22:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C307E60B00
 for <devel@driverdev.osuosl.org>; Tue,  5 Apr 2022 06:22:52 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id E8A69B80E42;
 Tue,  5 Apr 2022 06:22:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4DFBFC340F3;
 Tue,  5 Apr 2022 06:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649139768;
 bh=xXEL+YknXtKDAX6XRHo39ncmyrqoFzRAaSwV+tKIxe8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=aD1FdEE+PjeEtJnBg650OCYILre8OzP8v40FdDy5cbvhCWRYDc2pvgHvux4cM8u5i
 p5gREJM62TQ3fD2H+gI1hJQq3ecP+YK3wxJI/RxD4/t1VQ+NkickrYY6HtCCaZJXEJ
 spfT+oxfgtqZYNDKj3FtpuqovlVqgOyIZSCIwR6zm+n8JuujG7HHbhLmKW6V9G7Qrf
 twEEdkNdTOhHpur5LyeAiFrZEi116H7FQntis3ZgnIEFrLfH1hWaQZDkh8M77pZCcN
 FqAmSeAZozOCRTKF/DRcUJesJPKwmfvzi0h9L8eezmKrYIZlfMZbFtPFuFkhvYNH/F
 biMWWEiasMK4w==
Date: Mon, 4 Apr 2022 23:22:47 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Kalle Valo <kvalo@kernel.org>
Subject: Re: [PATCH v10 0/1] wfx: get out from the staging area
Message-ID: <20220404232247.01cc6567@kernel.org>
In-Reply-To: <878rslt975.fsf@tynnyri.adurom.net>
References: <20220226092142.10164-1-Jerome.Pouiller@silabs.com>
 <YhojjHGp4EfsTpnG@kroah.com> <87wnhhsr9m.fsf@kernel.org>
 <5830958.DvuYhMxLoT@pc-42> <878rslt975.fsf@tynnyri.adurom.net>
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

On Mon, 04 Apr 2022 13:49:18 +0300 Kalle Valo wrote:
> Dave&Jakub, once you guys open net-next will it be based on -rc1?

Not normally. We usually let net feed net-next so it'd get -rc1 this
Thursday. But we should be able to fast-forward, let me confirm with
Dave.

> That would make it easier for me to create an immutable branch between
> staging-next and wireless-next.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
