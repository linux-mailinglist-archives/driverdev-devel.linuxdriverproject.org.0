Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF099150291
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Feb 2020 09:29:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 52D7A204A9;
	Mon,  3 Feb 2020 08:29:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kr5vKcLm9kzX; Mon,  3 Feb 2020 08:29:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8B2D12048B;
	Mon,  3 Feb 2020 08:29:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7458B1BF354
 for <devel@linuxdriverproject.org>; Mon,  3 Feb 2020 08:29:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 68B0C83531
 for <devel@linuxdriverproject.org>; Mon,  3 Feb 2020 08:29:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BWH8LCe1GN8A for <devel@linuxdriverproject.org>;
 Mon,  3 Feb 2020 08:29:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5170B834EE
 for <devel@driverdev.osuosl.org>; Mon,  3 Feb 2020 08:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XmFADTVQJKR+reU0aMwRenMf//aWNZksD/ww50+yquE=; b=KuoZ3h2emqg9BdfnW3TctzXv5
 1fPL+461n24zceH8xmFtzTF0yxDjo3LpKnLwOdVH+kG+05lcI9uSwk3zgZ+1cqyK23ZCO4oEQD3dm
 M0zwAa3sjnHuKdm20jYBH1L06x6O/Das2RHBlfLFmEAhi/U1K5JO9GU7gU5fwUxyC1WH1YegQQN/M
 ecnrOvdEQg3YRk9sB8lAjDngltO8R1wauzR+Ir3Xm8014Z22I1y7XLZpOUv/y5Iwt6d5TsJEY4cur
 k7UUtcP06z4LrjYMJxmz5wb4iYAfAkbIteS8plZvUIeEb2LR31varpKyRRbqc4ecersWfAd/A876f
 wklj1h34w==;
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iyX6w-00078q-SX; Mon, 03 Feb 2020 08:29:38 +0000
Date: Mon, 3 Feb 2020 00:29:38 -0800
From: Matthew Wilcox <willy@infradead.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/2] staging: exfat: remove DOSNAMEs.
Message-ID: <20200203082938.GG8731@bombadil.infradead.org>
References: <20200203163118.31332-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
 <20200203080532.GF8731@bombadil.infradead.org>
 <20200203081559.GA3038628@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203081559.GA3038628@kroah.com>
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
 Mori.Takahiro@ab.mitsubishielectric.co.jp, linux-kernel@vger.kernel.org,
 motai.hirotaka@aj.mitsubishielectric.co.jp, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 03, 2020 at 08:15:59AM +0000, Greg Kroah-Hartman wrote:
> On Mon, Feb 03, 2020 at 12:05:32AM -0800, Matthew Wilcox wrote:
> > On Tue, Feb 04, 2020 at 01:31:17AM +0900, Tetsuhiro Kohada wrote:
> > > remove 'dos_name','ShortName' and related definitions.
> > > 
> > > 'dos_name' and 'ShortName' are definitions before VFAT.
> > > These are never used in exFAT.
> > 
> > Why are we still seeing patches for the exfat in staging?
> 
> Because people like doing cleanup patches :)

Sure, but I think people also like to believe that their cleanup patches
are making a difference.  In this case, they're just churning code that's
only weeks away from deletion.

> > Why are people not working on the Samsung code base?
> 
> They are, see the patches on the list, hopefully they get merged after
> -rc1 is out.

I meant the cleanup people.  Obviously _some_ people are working on the
Samsung codebase.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
