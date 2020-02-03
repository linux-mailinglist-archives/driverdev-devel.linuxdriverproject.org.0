Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 82AD815038A
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Feb 2020 10:46:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7AE7486091;
	Mon,  3 Feb 2020 09:46:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hNRlMu1kojLv; Mon,  3 Feb 2020 09:46:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5B4C8855D2;
	Mon,  3 Feb 2020 09:46:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C4CF51BF286
 for <devel@linuxdriverproject.org>; Mon,  3 Feb 2020 09:46:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C183585660
 for <devel@linuxdriverproject.org>; Mon,  3 Feb 2020 09:46:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vxr0eobImWNR for <devel@linuxdriverproject.org>;
 Mon,  3 Feb 2020 09:46:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 58AF885617
 for <devel@driverdev.osuosl.org>; Mon,  3 Feb 2020 09:46:09 +0000 (UTC)
Received: from localhost (unknown [104.132.45.99])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B0C7F20661;
 Mon,  3 Feb 2020 09:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580723169;
 bh=cpHcIJWnPoW9Yc4NIdLt3pSB5DRMOPWeMU4+QtlXytI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VPi54hf79xB31jQGtnplBbvd91IGSz6Obahowwq55VPERR9JttFzlbdh6bZ2nATDe
 XDSHv9/N6WVxdVUn7oCBXpsVpBYAwlIoz6USaJJNZYghQ00c9q/4cDlt5h6RlGZIaq
 N5w3uSg4aKtbsGfZWgDkARjyKR4T/IE+Ga5VTURg=
Date: Mon, 3 Feb 2020 09:46:01 +0000
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Matthew Wilcox <willy@infradead.org>
Subject: Re: [PATCH 1/2] staging: exfat: remove DOSNAMEs.
Message-ID: <20200203094601.GA3040887@kroah.com>
References: <20200203163118.31332-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
 <20200203080532.GF8731@bombadil.infradead.org>
 <20200203081559.GA3038628@kroah.com>
 <20200203082938.GG8731@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203082938.GG8731@bombadil.infradead.org>
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
Cc: Tetsuhiro Kohada <Kohada.Tetsuhiro@dc.mitsubishielectric.co.jp>,
 devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org, motai.hirotaka@aj.mitsubishielectric.co.jp,
 Mori.Takahiro@ab.mitsubishielectric.co.jp, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 03, 2020 at 12:29:38AM -0800, Matthew Wilcox wrote:
> On Mon, Feb 03, 2020 at 08:15:59AM +0000, Greg Kroah-Hartman wrote:
> > On Mon, Feb 03, 2020 at 12:05:32AM -0800, Matthew Wilcox wrote:
> > > On Tue, Feb 04, 2020 at 01:31:17AM +0900, Tetsuhiro Kohada wrote:
> > > > remove 'dos_name','ShortName' and related definitions.
> > > > 
> > > > 'dos_name' and 'ShortName' are definitions before VFAT.
> > > > These are never used in exFAT.
> > > 
> > > Why are we still seeing patches for the exfat in staging?
> > 
> > Because people like doing cleanup patches :)
> 
> Sure, but I think people also like to believe that their cleanup patches
> are making a difference.  In this case, they're just churning code that's
> only weeks away from deletion.
> 
> > > Why are people not working on the Samsung code base?
> > 
> > They are, see the patches on the list, hopefully they get merged after
> > -rc1 is out.
> 
> I meant the cleanup people.  Obviously _some_ people are working on the
> Samsung codebase.

We can't tell people to work on :)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
