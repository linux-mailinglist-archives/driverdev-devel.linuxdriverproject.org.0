Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E078A638E0
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 17:48:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9F2EF85D94;
	Tue,  9 Jul 2019 15:48:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eynaPWu5rpVm; Tue,  9 Jul 2019 15:48:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CD73785D95;
	Tue,  9 Jul 2019 15:48:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 52C0B1BF853
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 15:48:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4EDF220789
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 15:48:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TN0zGvoLyp1h for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 15:48:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by silver.osuosl.org (Postfix) with ESMTPS id DEB0F2048C
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 15:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+SqRiX7dUQs2pjbdLNxkSvo5c+sYbuHqLzt+2iHVymw=; b=X0dXNaHO5xVa5gXR+XNOgRO+/
 mm0iPB3e+bjQdJuAUv0hWybDRpjMBrpAwKK492/V4sMCeOu4fMQruNKRn65uSQS+jkmZJsQu//4kd
 i3tDBLfEPUeCQQHvkQENkF+IXjj8CvQjw2clBSB0MXYYg6KRRUIn2T6A2mn/kuu2tMio02tQ6VvS4
 phihrF88G+0fgyUm6xhaiUhxYF09uPTymaEfVu1RmRhKOZo9Uus32yWg90QzDLWvfO6z7i82NTzOq
 9oBQR4dcQF5B5mb4sIWpmHkbmGFFSY+0kEYD3S+d0QmsSDmV9+MYdBUe9ZV4hszI2toHglLy8LcwN
 OqZt+NyEw==;
Received: from willy by bombadil.infradead.org with local (Exim 4.92 #3 (Red
 Hat Linux)) id 1hksM6-00031j-Ut; Tue, 09 Jul 2019 15:48:34 +0000
Date: Tue, 9 Jul 2019 08:48:34 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Theodore Ts'o <tytso@mit.edu>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, kys@microsoft.com
Subject: exfat filesystem
Message-ID: <20190709154834.GJ32320@bombadil.infradead.org>
References: <21080.1562632662@turing-police> <20190709045020.GB23646@mit.edu>
 <20190709112136.GI32320@bombadil.infradead.org>
 <20190709153039.GA3200@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190709153039.GA3200@mit.edu>
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
Cc: Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 09, 2019 at 11:30:39AM -0400, Theodore Ts'o wrote:
> On Tue, Jul 09, 2019 at 04:21:36AM -0700, Matthew Wilcox wrote:
> > How does
> > https://www.zdnet.com/article/microsoft-open-sources-its-entire-patent-portfolio/
> > change your personal opinion?
> 
> According to SFC's legal analysis, Microsoft joining the OIN doesn't
> mean that the eXFAT patents are covered, unless *Microsoft*
> contributes the code to the Linux usptream kernel.  That's because the
> OIN is governed by the Linux System Definition, and until MS
> contributes code which covered by the exFAT patents, it doesn't count.
> 
> For more details:
> 
> https://sfconservancy.org/blog/2018/oct/10/microsoft-oin-exfat/
> 
> (This is not legal advice, and I am not a lawyer.)

Interesting analysis.  It seems to me that the correct forms would be
observed if someone suitably senior at Microsoft accepted the work from
Valdis and submitted it with their sign-off.  KY, how about it?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
