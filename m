Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B45E4F247D
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Apr 2022 09:17:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 121FF40909;
	Tue,  5 Apr 2022 07:17:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MIBgtHwiE97L; Tue,  5 Apr 2022 07:17:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70AA940907;
	Tue,  5 Apr 2022 07:17:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C83841BF283
 for <devel@linuxdriverproject.org>; Tue,  5 Apr 2022 07:17:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B58BE40909
 for <devel@linuxdriverproject.org>; Tue,  5 Apr 2022 07:17:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W6F4jBoLuV0C for <devel@linuxdriverproject.org>;
 Tue,  5 Apr 2022 07:17:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 28B2340907
 for <devel@driverdev.osuosl.org>; Tue,  5 Apr 2022 07:17:08 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id F31CA61658;
 Tue,  5 Apr 2022 07:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EC7AC3410F;
 Tue,  5 Apr 2022 07:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649143026;
 bh=aYpALUpGIhvwoqvnAr4xyO9/+4aLJKCPdk1Wh7E09AM=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=tfRzrIN56Qr3iYvSUHEtst9hY32ltX5sTZ9kTMxaXTsA1vGqaqeFEGtcOiDQIrqlV
 ip9r9w86q85V9NjEjuWwQrXOTL64A5IIKG4jmn5wpwN9g/hUpNYAEe+EEf4Up6UHFu
 K53ogdeTAhl7Xqxt2xXZikV4IIHfoDa4NUJ27D+SwK2VE+Nziuuy/QLA1KFeXAObTs
 2p5rnmxd9Lsaxp3wRad0WhxWjIBKgefpXE7G26jyyegx73aWdfYUmT8PxayG8jFpge
 PFylYwENBPdbsEGvyQFYOPRmu7CXZS8oKiGGINX89LBukwpFcoKHUsm/PJ8dGpkNj8
 GiMgJQAtQIs7A==
From: Kalle Valo <kvalo@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [PATCH v10 0/1] wfx: get out from the staging area
References: <20220226092142.10164-1-Jerome.Pouiller@silabs.com>
 <YhojjHGp4EfsTpnG@kroah.com> <87wnhhsr9m.fsf@kernel.org>
 <5830958.DvuYhMxLoT@pc-42> <878rslt975.fsf@tynnyri.adurom.net>
 <20220404232247.01cc6567@kernel.org>
 <20220404232930.05dd49cf@kernel.org>
Date: Tue, 05 Apr 2022 10:16:58 +0300
In-Reply-To: <20220404232930.05dd49cf@kernel.org> (Jakub Kicinski's message of
 "Mon, 4 Apr 2022 23:29:30 -0700")
Message-ID: <878rskrod1.fsf@kernel.org>
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

> On Mon, 4 Apr 2022 23:22:47 -0700 Jakub Kicinski wrote:
>> On Mon, 04 Apr 2022 13:49:18 +0300 Kalle Valo wrote:
>> > Dave&Jakub, once you guys open net-next will it be based on -rc1?  
>> 
>> Not normally. We usually let net feed net-next so it'd get -rc1 this
>> Thursday. But we should be able to fast-forward, let me confirm with
>> Dave.
>
> Wait, why is -rc1 magic? If you based the branch on whatever
> the merge-base of net-next and staging-next is, would that be
> an aberration?

Sure, that would technically work. But I just think it's cleaner to use
-rc1 (or later) as the baseline for an immutable branch. If the baseline
is an arbitrary commit somewhere within merge windows commits, it's more
work for everyone to verify the branch is suitable.

Also in general I would also prefer to base -next trees to -rc1 or newer
to make the bisect cleaner. The less we need to test kernels from the
merge window (ie. commits after the final release and before -rc1) the
better.

But this is just a small wish from me, I fully understand that it might
be too much changes to your process. Wanted to point out this anyway.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
