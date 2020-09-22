Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A296A273A19
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Sep 2020 07:16:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A4DD586569;
	Tue, 22 Sep 2020 05:16:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WBrh2BYM2e8a; Tue, 22 Sep 2020 05:16:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 843E2862E1;
	Tue, 22 Sep 2020 05:16:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C0AE91BF2A6
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 05:16:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BA2F98633E
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 05:16:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EFHKC7js11t2 for <devel@linuxdriverproject.org>;
 Tue, 22 Sep 2020 05:16:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C0FAA862E1
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 05:16:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=LgW/YF5Ztkdzq3adTbHOjaSFzEYTO+0+PY5NA7uj2qA=; b=sB+9OqHzhRmNVLq0ceVZ7U+62B
 5vxR90KtbyGJVWx6BNRjhtsDXAwgfOSK476akdPG7BbIAdhLzwK21QmyrB6CPnaNQPLJeU5gjCAs8
 3terFVLA3SibfBOtEnthm0Na4urlUUVqD5QKYC0IYefBZVHnYaJHAU4AAG/QWNeZZKe0fEPl/nqOU
 wle057PmvVLXbkbxA8mtgbBu0AFoLQrIC4aHPcPhtCkWXW6Eu5XRnvcZe1cwgjt/lSyTWuuwp+lh3
 bN/sIGOXABZl08BUhlU+iEU+klce1pt+eWN6X/LC7fTDVDbEHMf6tGSgaWJNSNitWrACUcwH6pj5X
 Bn7C/V6g==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kKaeo-000871-0t; Tue, 22 Sep 2020 05:16:02 +0000
Date: Tue, 22 Sep 2020 06:16:01 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH RFT/RFC 01/49] staging: media: Revert "media: zoran:
 remove deprecated driver"
Message-ID: <20200922051601.GC29480@infradead.org>
References: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
 <1600683624-5863-2-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1600683624-5863-2-git-send-email-clabbe@baylibre.com>
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

> +		fh->buffers.buffer[i].v4l.fbuffer = mem;
> +		fh->buffers.buffer[i].v4l.fbuffer_phys = virt_to_phys(mem);
> +		fh->buffers.buffer[i].v4l.fbuffer_bus = virt_to_bus(mem);
> +		for (off = 0; off < fh->buffers.buffer_size;
> +		     off += PAGE_SIZE)
> +			SetPageReserved(virt_to_page(mem + off));

This messing with SetPageReserved needs to go away before we bring
back the driver, even for staging.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
