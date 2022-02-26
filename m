Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE4E4C560F
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Feb 2022 14:15:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6A9B410E1;
	Sat, 26 Feb 2022 13:15:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aY4euOvcdCiX; Sat, 26 Feb 2022 13:15:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AA0F8410DE;
	Sat, 26 Feb 2022 13:15:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CBF8C1BF289
 for <devel@linuxdriverproject.org>; Sat, 26 Feb 2022 13:15:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BA17A83E43
 for <devel@linuxdriverproject.org>; Sat, 26 Feb 2022 13:15:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uxf6MTqTfNmY for <devel@linuxdriverproject.org>;
 Sat, 26 Feb 2022 13:15:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 11B2383E3B
 for <devel@driverdev.osuosl.org>; Sat, 26 Feb 2022 13:15:40 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id CF40B6092A;
 Sat, 26 Feb 2022 13:15:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72BB7C340E8;
 Sat, 26 Feb 2022 13:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645881339;
 bh=uoWuQtBGh3SA2ol8YPcbLuIujWZ7Ewkv25Ryxbm2lvQ=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=I224m5GxLSmJJWPByfKulokgaPWKHOt8GiWaxjO8Dj7BBOFzPFjUoX5fcJhdXG7eO
 vZWLDY+Itq8RQxCXki+ung0Jgg8Y/VqJhUcoOcbzLyQlwN4E9TVkPv3CUIz7NiOylo
 4BsXl+fu8woQC3M6e3qrfjT+VUPzd4A+XCv5Hr9xgOKkxIT6zbHcuOosQ3SFMZyh4H
 stdDgDtOvE8B6Zwj5pyzaGeKL5zXMpfc62Zg1aIUKQxL4D4IAb0ickaFtw37pQqvve
 BCaTgKZOTuaKSxZo36m/Xe5S7FkO5bxL0MpNGVhgfCt9T/sy4oZ7SjS2ahRRp/GPg9
 IPezdstL0DrqQ==
From: Kalle Valo <kvalo@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v10 0/1] wfx: get out from the staging area
References: <20220226092142.10164-1-Jerome.Pouiller@silabs.com>
 <871qzpucyi.fsf@kernel.org> <YhojjHGp4EfsTpnG@kroah.com>
Date: Sat, 26 Feb 2022 15:15:33 +0200
In-Reply-To: <YhojjHGp4EfsTpnG@kroah.com> (Greg Kroah-Hartman's message of
 "Sat, 26 Feb 2022 13:56:44 +0100")
Message-ID: <87wnhhsr9m.fsf@kernel.org>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greg Kroah-Hartman <gregkh@linuxfoundation.org> writes:

> On Sat, Feb 26, 2022 at 12:41:41PM +0200, Kalle Valo wrote:
>> + jakub
>> 
>> Jerome Pouiller <Jerome.Pouiller@silabs.com> writes:
>> 
>> > The firmware and the PDS files (= antenna configurations) are now a part of
>> > the linux-firmware repository.
>> >
>> > All the issues have been fixed in staging tree. I think we are ready to get
>> > out from the staging tree for the kernel 5.18.
>> 
>> [...]
>> 
>> >  rename Documentation/devicetree/bindings/{staging =>
>> > }/net/wireless/silabs,wfx.yaml (98%)
>> 
>> I lost track, is this file acked by the DT maintainers now?
>> 
>> What I suggest is that we queue this for v5.19. After v5.18-rc1 is
>> released I could create an immutable branch containing this one commit.
>> Then I would merge the branch to wireless-next and Greg could merge it
>> to the staging tree, that way we would minimise the chance of conflicts
>> between trees.
>> 
>> Greg, what do you think? Would this work for you? IIRC we did the same
>> with wilc1000 back in 2020 and I recall it went without hiccups.
>
> That sounds great to me, let's plan on that happening after 5.18-rc1 is
> out.

Very good, we have a plan then. I marked the patch as deferred in
patchwork:

https://patchwork.kernel.org/project/linux-wireless/patch/20220226092142.10164-2-Jerome.Pouiller@silabs.com/

Jerome, feel free to remind me about this after v5.18-rc1 is released.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
