Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62ED636E622
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Apr 2021 09:38:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 552C78463F;
	Thu, 29 Apr 2021 07:38:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d2Ayw0_AnQT2; Thu, 29 Apr 2021 07:38:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CDCE784577;
	Thu, 29 Apr 2021 07:38:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D1F3B1BF36C
 for <devel@linuxdriverproject.org>; Thu, 29 Apr 2021 07:38:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CE62F60762
 for <devel@linuxdriverproject.org>; Thu, 29 Apr 2021 07:38:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WSJejwt0MhJn for <devel@linuxdriverproject.org>;
 Thu, 29 Apr 2021 07:38:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5B58960890
 for <devel@driverdev.osuosl.org>; Thu, 29 Apr 2021 07:38:09 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8702661440;
 Thu, 29 Apr 2021 07:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619681888;
 bh=Y5crhDIS0X94Stj4taWISifyBjWiDlyEREug0v7j/OI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OJG3pGxq/gzp0qcJrK4Fp3ViY6gx1JeLW4gLq02MzOAna5k0LzekaFNduyW/6MpFZ
 YHYx3csBuKFHZJjC/szlyuF3hqyxcn3CxAN/CGNX+DOalvNJ8opf5pzLWng53xz5TE
 6JkilcpcSTSw8JKfB8cEwyhhdpdvGcOFq6svZDHUaqi/ukE5+Hk010w5flQET5Xxku
 1gVmS+IapfAj0A8ehu3xge59x/Hny23j0dVjkWVJLI1y3LssOgBbbKUdVs4fzm1M2J
 VtGHDACSlzatSWaFXsEpxaotb6LFQ4W4/CYm9bVK7ohLllaaDYmiaZEs0hQXoH78A3
 Y/e9p2bFdDoEw==
Date: Thu, 29 Apr 2021 09:38:02 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH v4 20/79] staging: media: rkvdec: fix
 pm_runtime_get_sync() usage count
Message-ID: <20210429093802.01ed6980@coco.lan>
In-Reply-To: <YIl6xZegj9o5m8EF@hovoldconsulting.com>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
 <4bc46252a7c7ae3612da6da8620ef7db775e27ca.1619621413.git.mchehab+huawei@kernel.org>
 <YIl6xZegj9o5m8EF@hovoldconsulting.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
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
 linuxarm@huawei.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Wed, 28 Apr 2021 17:09:57 +0200
Johan Hovold <johan@kernel.org> escreveu:

> On Wed, Apr 28, 2021 at 04:51:41PM +0200, Mauro Carvalho Chehab wrote:
> > The pm_runtime_get_sync() internally increments the
> > dev->power.usage_count without decrementing it, even on errors.
> > Replace it by the new pm_runtime_resume_and_get(), introduced by:
> > commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
> > in order to properly decrement the usage counter and avoid memory
> > leaks.  
> 
> Again, there is no memory leak here either. Just a potential PM usage
> counter leak.

True. Will fix it at the entire series with:

	FILTER_BRANCH_SQUELCH_WARNING=1 git filter-branch -f --msg-filter "cat|perl -0pe 's/ and avoid memory\n\s*leaks./, avoiding\na potential PM usage counter leak./igs'" BASE..

Regards,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
