Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CBE273A07
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Sep 2020 07:13:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F0F508725E;
	Tue, 22 Sep 2020 05:13:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0mhneY0HVJ42; Tue, 22 Sep 2020 05:13:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 721248723C;
	Tue, 22 Sep 2020 05:13:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4532E1BF2A6
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 05:13:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3FC1087242
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 05:13:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jttXmpG4d3lp for <devel@linuxdriverproject.org>;
 Tue, 22 Sep 2020 05:13:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6440D8723C
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 05:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=rBWeGhZmUrNKeanvJ2n5CIL5Mb5/1l4+A0gI1q8sdzw=; b=f54s+WajloVM1ZAnA2RXCYO+jf
 egr4+xfrGVTNVDcIW4KlTTXSxcTXpZln++5y1vXY8M+QRmfEShmQiIN6eA9RJ9N7OgMU8YZjQldzd
 kS1n9nI58BbsDq3d9tRI9k8JhvPc2sDZlH1tlBzvUQpLanVDS2yPJLvV02Pvh+yzdWlAg8LFrYq3u
 VxBfutJ9p43ySs7u+5aVIxENbKhVCxY6QfzqOXKoarzeHZUxi/2Jf4u++b8K8e2LYz1+3ilyNAQPP
 ePZ2qqYn9gWnhdB0ECzUhrid2jAvuslZdB5+AAy+lsrS9J3Ok5Aib+ANcXhYRN5tSwOn8dpYpcGcZ
 eKrrJJLw==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kKacL-0007te-Ex; Tue, 22 Sep 2020 05:13:29 +0000
Date: Tue, 22 Sep 2020 06:13:29 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH RFT/RFC 06/49] staging: media: zoran: unsplit lines
Message-ID: <20200922051329.GA29480@infradead.org>
References: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
 <1600683624-5863-7-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1600683624-5863-7-git-send-email-clabbe@baylibre.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, laurent.pinchart@skynet.be, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 21, 2020 at 10:19:41AM +0000, Corentin Labbe wrote:
> This patch un-split some lines.
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>

Just don't do this.  This is a purious change going over 80 chars for
absolutely no reason, and you'd still need a very good reason for that.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
