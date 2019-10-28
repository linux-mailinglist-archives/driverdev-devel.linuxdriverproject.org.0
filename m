Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E66AFE7094
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Oct 2019 12:40:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 118A485082;
	Mon, 28 Oct 2019 11:40:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ploIxfKQ3nXx; Mon, 28 Oct 2019 11:40:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 78E3A84DF6;
	Mon, 28 Oct 2019 11:40:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EDEE51BF417
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 11:39:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EA9D787152
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 11:39:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d+320ADxA8GR for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 11:39:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 758D98710D
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 11:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qlaRIlg2IzHlknjdR50kOOzdtwiROoikVmFM60sEtfY=; b=O+rif9bOXr8XIG1Mu1oBzvBg7
 ONF2DJt8igNpozuZHO6SFOXM7asLVC9s/240RyJ+AvKpGGX+QdsHBVcb/+AViPZyY3Bztw+D+vXOJ
 nn6abYBCb5dcDVlij63Qm1aMwITCecRR4Xwsw4LtpVGGQHZEPOtMlhNKoRczSK68vFTpnZn5YEFe8
 zZkbewymgdxB8y00NXwGSZdaarHT4T8z7N+MaLES3IxVnVEQOv8GyoqBO1IRtXyGQn0KFrWQ/uKkp
 RQC03L0x644OIvhavb/LbF03rOzd6KoDi6cLxRe1nxrPapZG4fdf04srHXqNicbbnuKh9cWd/I0eA
 44QcBmt0g==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iP3NG-0000mT-27; Mon, 28 Oct 2019 11:39:50 +0000
Date: Mon, 28 Oct 2019 04:39:50 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Hans de Goede <hdegoede@redhat.com>
Subject: Re: [PATCH v17 0/1] staging: Add VirtualBox guest shared folder
 (vboxsf) support
Message-ID: <20191028113950.GA2406@infradead.org>
References: <20191028111744.143863-1-hdegoede@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028111744.143863-1-hdegoede@redhat.com>
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
Cc: devel@driverdev.osuosl.org, Christoph Hellwig <hch@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Howells <dhowells@redhat.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 28, 2019 at 12:17:43PM +0100, Hans de Goede wrote:
> Hi Greg,
> 
> As discussed previously can you please take vboxsf upstream through
> drivers/staging?
> 
> It has seen many revisions on the fsdevel list, but it seems that the
> fsdevel people are to busy to pick it up.
> 
> Previous versions of this patch have been reviewed by Al Viro, David Howells
> and Christoph Hellwig (all in the Cc) and I believe that the current
> version addresses all their review remarks.

Please just send it to Linus directly.  This is the equivalent of
consumer hardware enablement and it is in a state as clean as it gets
for the rather messed up protocol.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
