Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 336C06352A
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 13:47:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E51887A0A;
	Tue,  9 Jul 2019 11:47:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ltiFrgoYsRFK; Tue,  9 Jul 2019 11:47:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 59C4B87824;
	Tue,  9 Jul 2019 11:47:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8AB3E1BF584
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 11:47:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 879E484D09
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 11:47:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D3YYkS6qxCGi for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 11:47:49 +0000 (UTC)
X-Greylist: delayed 00:25:58 by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1EF0C8481F
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 11:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jD6kJP1W3EItQJ+7NNHoZaZ3Nsj5zGBFCoAMXOtbtkc=; b=PMXEfxna18N7zoPtVghvBrl82
 6CkURbmbsnlWPeKpUv8cQ0w5J7tX+k7iuusTSIBL3JVnKeIQCAnaVa+XdZClEXxIB8bdThXlz179v
 lntKfy3styjyfDlHqBP7ulfChcswyUC9neH2NAmWDhMQDMD1x55IORK+C2Hr79YpdWu/4dpJt9Gwm
 kRrEtsQHjzUijSV8oGHJIuQzuG5JOC1DUnQHHxIAxUrqnnDWcgWaYSh00zS+KwMdkoulU0Zs3HEVN
 JwjrAucNjUS2tvA1l7kClQV+NSnVKEcWBOe5tIjrphQLqs+RCKC5aUL5C73Vly1RoapBtXGB/v6kL
 nwgIcXK2A==;
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1hkoBk-000168-UK; Tue, 09 Jul 2019 11:21:36 +0000
Date: Tue, 9 Jul 2019 04:21:36 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Theodore Ts'o <tytso@mit.edu>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: Re: Procedure questions - new filesystem driver..
Message-ID: <20190709112136.GI32320@bombadil.infradead.org>
References: <21080.1562632662@turing-police> <20190709045020.GB23646@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709045020.GB23646@mit.edu>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 09, 2019 at 12:50:20AM -0400, Theodore Ts'o wrote:
> How have you dealt with the patent claims which Microsoft has
> asserted[1] on the exFAT file system design?
> 
> [1] https://www.microsoft.com/en-us/legal/intellectualproperty/mtl/exfat-licensing.aspx
> 
> I am not making any claims about the validity of Microsoft's patent
> assertions on exFAT, one way or another.  But it might be a good idea
> for some laywers from the Linux Foundation to render some legal advice
> to their employees (namely Greg K-H and Linus Torvalds) regarding the
> advisability of taking exFAT into the official Linux tree.
> 
> Personally, if Microsoft is going to be unfriendly about not wanting
> others to use their file system technology by making patent claims,
> why should we reward them by making their file system better by
> improvings its interoperability?  (My personal opinion only.)

How does
https://www.zdnet.com/article/microsoft-open-sources-its-entire-patent-portfolio/
change your personal opinion?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
