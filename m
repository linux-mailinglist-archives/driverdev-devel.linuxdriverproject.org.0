Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DEACB2D9EF9
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Dec 2020 19:29:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DCFC3207A8;
	Mon, 14 Dec 2020 18:29:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K93Gf84CWnBd; Mon, 14 Dec 2020 18:29:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F10F820517;
	Mon, 14 Dec 2020 18:29:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B1C4C1BF2E3
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 18:29:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AD53B84526
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 18:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3MOLtQ6V-xIz for <devel@linuxdriverproject.org>;
 Mon, 14 Dec 2020 18:29:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 493CE84520
 for <devel@linuxdriverproject.org>; Mon, 14 Dec 2020 18:29:16 +0000 (UTC)
Date: Mon, 14 Dec 2020 13:29:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607970555;
 bh=20HnP498QOKwNnxWdPlKAsPzoUCM0IYYFMY4LLh9MJM=;
 h=From:To:Subject:References:In-Reply-To:From;
 b=Ft7j2cmhQBm7VNzDX/4P6KXE0oL9bjVwbakggglxnBx6L10lgufIK6QP2f7O1MnCV
 7zaujoRkYdSZk6Y+7OF0Fcseb1kHGY6XW8EaGXm8gzc6A5KjI+chl3fEomaFKEuaf0
 aHiFAtqlnmj13nikLkNa5lmdv8Wl/7vBMvs53mF/Ui60pHdkPbhhkfZtB6T5iyasnX
 DtdJNcxxS4erE2b6xnazCalcKxyuaG/l4sU13jE4FOuBy3FDgmwJOdgSicG1tEfiTV
 vLmTi+qVx//uSLshdF0au4BqRSEu17DvbzDdzqkKf2oaXNo/uzevwhxkw8VfyFHWjy
 oUPvy5inQxrwg==
From: Sasha Levin <sashal@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Andrea Parri <parri.andrea@gmail.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-scsi@vger.kernel.org, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 devel@linuxdriverproject.org, Saruhan Karademir <skarade@microsoft.com>
Subject: Re: [PATCH AUTOSEL 5.9 15/23] scsi: storvsc: Validate length of
 incoming packet in storvsc_on_channel_callback()
Message-ID: <20201214182914.GU643756@sasha-vm>
References: <20201212160804.2334982-1-sashal@kernel.org>
 <20201212160804.2334982-15-sashal@kernel.org>
 <20201212180901.GA19225@andrea> <20201214110711.GB2831@kadam>
 <20201214130625.x2v53xhx5xw6jp4o@chatter.i7.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201214130625.x2v53xhx5xw6jp4o@chatter.i7.local>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 14, 2020 at 08:06:25AM -0500, Konstantin Ryabitsev wrote:
>On Mon, Dec 14, 2020 at 02:07:11PM +0300, Dan Carpenter wrote:
>> On Sat, Dec 12, 2020 at 07:09:01PM +0100, Andrea Parri wrote:
>> > Hi Sasha,
>> >
>> > On Sat, Dec 12, 2020 at 11:07:56AM -0500, Sasha Levin wrote:
>> > > From: "Andrea Parri (Microsoft)" <parri.andrea@gmail.com>
>> > >
>> > > [ Upstream commit 3b8c72d076c42bf27284cda7b2b2b522810686f8 ]
>> >
>> > FYI, we found that this commit introduced a regression and posted a
>> > revert:
>> >
>> >   https://lkml.kernel.org/r/20201211131404.21359-1-parri.andrea@gmail.com
>> >
>> > Same comment for the AUTOSEL 5.4, 4.19 and 4.14 you've just posted.
>> >
>>
>> Konstantin, is there anyway we could make searching lore.kernel.org
>> search all the mailing lists?  Right now we can only search one mailing
>> list at a time.
>
>This functionality is coming in the next version of public-inbox and
>should be available on lore.kernel.org within the next little while.

That's a good idea Dan; I had something running on linux-next, but I
guess it's not enough and cases such as these sneak in.

I wrote a script to do what you've suggested by simply cloning the repos
on erol.kernel.org locally and then doing a simple search for the
"Fixes:" and revert patterns.

-- 
Thanks,
Sasha
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
