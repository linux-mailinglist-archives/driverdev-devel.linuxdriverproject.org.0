Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 143EA4C5532
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Feb 2022 11:41:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F54560C20;
	Sat, 26 Feb 2022 10:41:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id itN5qD7VzN8x; Sat, 26 Feb 2022 10:41:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 28B8260B04;
	Sat, 26 Feb 2022 10:41:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DCDC51BF484
 for <devel@linuxdriverproject.org>; Sat, 26 Feb 2022 10:41:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CAF95416AF
 for <devel@linuxdriverproject.org>; Sat, 26 Feb 2022 10:41:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 54plZA9hjh7J for <devel@linuxdriverproject.org>;
 Sat, 26 Feb 2022 10:41:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E29E6403CC
 for <devel@driverdev.osuosl.org>; Sat, 26 Feb 2022 10:41:51 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D8816B819F7;
 Sat, 26 Feb 2022 10:41:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAC31C340E8;
 Sat, 26 Feb 2022 10:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645872107;
 bh=RFf42czOySTnAdGGfHvyOuXGvWEvEYYr8UHE78R9vog=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=P0W4jnf8r/RLrt1ldnx1/CA03k8Lx1amb+1I73vssyUOGe9D3AgBLhKC2FZ9oMlBX
 aEGNUopqHABz12o6bI8jGd1bCBl1bulYF2P7aetiKRwKten9aQKO4b7ImAiOhQUiBa
 xp8+BFvmx93f6lzNj2ovWEZ6MB+ttxeGBSvntZtolfEXKZ/04rf70YoSgGOMq/qR2k
 UYGJGmxeDWRS7bdlXWm85nSJgZm7HOv4Y/KGoh6EBw1eOAgF2FrcCkxJsaxt20c7c1
 4bEN1vk2M7MZsHDx0LTiLiPu4E4mzXNVg9czHv5v1yQgKmRe777Jpyn4J4V6s9zhCe
 11Gn2vhvaM7UQ==
From: Kalle Valo <kvalo@kernel.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v10 0/1] wfx: get out from the staging area
References: <20220226092142.10164-1-Jerome.Pouiller@silabs.com>
Date: Sat, 26 Feb 2022 12:41:41 +0200
In-Reply-To: <20220226092142.10164-1-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Sat, 26 Feb 2022 10:21:41 +0100")
Message-ID: <871qzpucyi.fsf@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

+ jakub

Jerome Pouiller <Jerome.Pouiller@silabs.com> writes:

> The firmware and the PDS files (= antenna configurations) are now a part of
> the linux-firmware repository.
>
> All the issues have been fixed in staging tree. I think we are ready to get
> out from the staging tree for the kernel 5.18.

[...]

>  rename Documentation/devicetree/bindings/{staging => }/net/wireless/silabs,wfx.yaml (98%)

I lost track, is this file acked by the DT maintainers now?

What I suggest is that we queue this for v5.19. After v5.18-rc1 is
released I could create an immutable branch containing this one commit.
Then I would merge the branch to wireless-next and Greg could merge it
to the staging tree, that way we would minimise the chance of conflicts
between trees.

Greg, what do you think? Would this work for you? IIRC we did the same
with wilc1000 back in 2020 and I recall it went without hiccups.

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
