Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F424C55FA
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Feb 2022 13:56:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 507B0415CF;
	Sat, 26 Feb 2022 12:56:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i3BVnpWUT-26; Sat, 26 Feb 2022 12:56:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 025E4415CE;
	Sat, 26 Feb 2022 12:56:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2662E1BF42C
 for <devel@linuxdriverproject.org>; Sat, 26 Feb 2022 12:56:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 21814415CF
 for <devel@linuxdriverproject.org>; Sat, 26 Feb 2022 12:56:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jMU7NFEhfHVy for <devel@linuxdriverproject.org>;
 Sat, 26 Feb 2022 12:56:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 62801415CE
 for <devel@driverdev.osuosl.org>; Sat, 26 Feb 2022 12:56:51 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 67A43B80757;
 Sat, 26 Feb 2022 12:56:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91C2FC340E8;
 Sat, 26 Feb 2022 12:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1645880207;
 bh=ErmV24WkvOMnp37HiuWsv2j69OgPJxdDVLKwg5mrsoM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1uocR33JVqwcXl9YbOUGIC7f3c2haGv8tdCN6Yhmjza30QGo7BuduXRvmVDVYmpFr
 IT6KDvp7EgwCM0sBjNjl4rpEe2ZDlGPqYmUAmjvXq19n3p25ks8MbvalhgRWYkxDN5
 XO5gi4kFAmFjJcgGDpey3yAIxeBlrDf/G7mTWFt8=
Date: Sat, 26 Feb 2022 13:56:44 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kalle Valo <kvalo@kernel.org>
Subject: Re: [PATCH v10 0/1] wfx: get out from the staging area
Message-ID: <YhojjHGp4EfsTpnG@kroah.com>
References: <20220226092142.10164-1-Jerome.Pouiller@silabs.com>
 <871qzpucyi.fsf@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <871qzpucyi.fsf@kernel.org>
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

On Sat, Feb 26, 2022 at 12:41:41PM +0200, Kalle Valo wrote:
> + jakub
> 
> Jerome Pouiller <Jerome.Pouiller@silabs.com> writes:
> 
> > The firmware and the PDS files (= antenna configurations) are now a part of
> > the linux-firmware repository.
> >
> > All the issues have been fixed in staging tree. I think we are ready to get
> > out from the staging tree for the kernel 5.18.
> 
> [...]
> 
> >  rename Documentation/devicetree/bindings/{staging => }/net/wireless/silabs,wfx.yaml (98%)
> 
> I lost track, is this file acked by the DT maintainers now?
> 
> What I suggest is that we queue this for v5.19. After v5.18-rc1 is
> released I could create an immutable branch containing this one commit.
> Then I would merge the branch to wireless-next and Greg could merge it
> to the staging tree, that way we would minimise the chance of conflicts
> between trees.
> 
> Greg, what do you think? Would this work for you? IIRC we did the same
> with wilc1000 back in 2020 and I recall it went without hiccups.

That sounds great to me, let's plan on that happening after 5.18-rc1 is
out.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
