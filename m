Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CE3F889D
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 07:34:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5EF38842AC;
	Tue, 12 Nov 2019 06:34:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yc-NtRAIPbXM; Tue, 12 Nov 2019 06:34:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 586AF84155;
	Tue, 12 Nov 2019 06:34:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DA4091BF308
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 06:34:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D2606842AC
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 06:34:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wv8684YPJr1W for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 06:34:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4661B84155
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 06:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7abutWRYU4V+fTGc1DVabX8uQIzuLy5snVOekDPCHIU=; b=WqUT0oq3unGtVkO8rqqLMul8z
 iZQNGNzPLplyRJYINL1wNSRAK2a4cGphhV5IjgRDk417umk5HM76k3z4P+2Y9OionYyrpnrdV8mmo
 wslRIXvOmXfpQgK1GoKdK2dFETKDeeVlE5HvbGZAKm9D4/amRQoSHwLM9RR7fp4wO3ARVfrWo0m/a
 4tgbAfKmVk1S84qOEtPc9G2d+CM2NfdI0s+huhguQ2BN4kRpSkx9FfxIZvQkxVxCSvoxJfy2cv/tv
 8MVuq1LnJN0b5rsdNsrW6p+Zu8H3Pby1Da/PPmEZcMtOHYX8sjN3hEu73iSEPgvOg2MLOR+ubcFsq
 sjNOaywVQ==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iUPlA-0004Kl-FV; Tue, 12 Nov 2019 06:34:40 +0000
Date: Mon, 11 Nov 2019 22:34:40 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [GIT PULL] IIO fixes / Staging driver for 5.4-rc7
Message-ID: <20191112063440.GA15951@infradead.org>
References: <20191110154303.GA2867499@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191110154303.GA2867499@kroah.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
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
Cc: devel@linuxdriverproject.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Nov 10, 2019 at 04:43:03PM +0100, Greg KH wrote:
> The staging driver addition is the vboxsf filesystem, which is the
> VirtualBox guest shared folder code.  Hans has been trying to get
> filesystem reviewers to review the code for many months now, and
> Christoph finally said to just merge it in staging now as it is
> stand-alone and the filesystem people can review it easier over time
> that way.

No, this is absolutely contrary to what I said.  I told Hans to just
send it to Linus because it is ready and not staging fodder a atll.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
