Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5C4A212A
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 18:42:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3A85C884AD;
	Thu, 29 Aug 2019 16:42:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E2xr+WCGPEJU; Thu, 29 Aug 2019 16:42:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1F1E98846A;
	Thu, 29 Aug 2019 16:42:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1643B1BF2BB
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 16:42:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 10E07883A7
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 16:42:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eNvp1Lza9BJV for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 16:42:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 62B34883ED
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 16:42:18 +0000 (UTC)
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 031752070B;
 Thu, 29 Aug 2019 16:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567096938;
 bh=bRpqTp3EjTmLNhGd3WmD0wtWWTzJRaoQEOOaMMh/9qU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KtLG/S2tSMFYc5IJeMsFlWVsyXjpRehwx+Mw4Cy0TBEsERF1DhBJvMZRxuTwnvkp1
 uVRPCVZrPmtgecc0hldS6Ie+52Q28fIDUhduZu7Z/L0nV18MC9bRH2qqx/a27YBkx6
 YQdw+rvueX/1l73Y6Gri7rMc/Vc/YyKvYOP05VCA=
Date: Thu, 29 Aug 2019 12:42:17 -0400
From: Sasha Levin <sashal@kernel.org>
To: Tyler Hicks <tyhicks@canonical.com>
Subject: Re: [PATCH AUTOSEL 4.14 05/14] binder: take read mode of mmap_sem in
 binder_alloc_free_page()
Message-ID: <20190829164217.GJ5281@sasha-vm>
References: <20190829105043.2508-1-sashal@kernel.org>
 <20190829105043.2508-5-sashal@kernel.org>
 <20190829151052.GB27650@elm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829151052.GB27650@elm>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 Todd Kjos <tkjos@android.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 29, 2019 at 10:10:52AM -0500, Tyler Hicks wrote:
>Hello, Sasha!
>
>On 2019-08-29 06:50:34, Sasha Levin wrote:
>> From: Tyler Hicks <tyhicks@canonical.com>
>>
>> [ Upstream commit 60d4885710836595192c42d3e04b27551d30ec91 ]
>>
>> Restore the behavior of locking mmap_sem for reading in
>> binder_alloc_free_page(), as was first done in commit 3013bf62b67a
>> ("binder: reduce mmap_sem write-side lock"). That change was
>> inadvertently reverted by commit 5cec2d2e5839 ("binder: fix race between
>> munmap() and direct reclaim").
>>
>> In addition, change the name of the label for the error path to
>> accurately reflect that we're taking the lock for reading.
>>
>> Backporting note: This fix is only needed when *both* of the commits
>> mentioned above are applied. That's an unlikely situation since they
>> both landed during the development of v5.1 but only one of them is
>> targeted for stable.
>
>This patch isn't meant to be applied to 4.14 since commit 3013bf62b67a
>("binder: reduce mmap_sem write-side lock") was never brought back to
>4.14.
>
>My backporting note above isn't helpful for AUTOSEL purposes. Do you
>have a suggestion for what I could have done in the patch tags to convey
>that guidance to AUTOSEL?

Hey Tyler,

No, this is just me messing up. AUTOSEL actually handled this well.

What happened here you ask? This series is basically a set of patches
that fix a different fix that went into stable. It didn't go through the
regular AUTOSEL flow and I goofed up manually. Sorry for the noise, I've
dropped the patch.

--
Thanks,
Sasha
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
