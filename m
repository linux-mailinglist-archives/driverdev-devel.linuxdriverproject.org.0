Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5F615B31A
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 22:52:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E49E7207EF;
	Wed, 12 Feb 2020 21:52:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cKtu16jCOfGg; Wed, 12 Feb 2020 21:52:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C361220026;
	Wed, 12 Feb 2020 21:52:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9BB311BF962
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 21:52:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 93AB220026
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 21:52:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 84VMhhdN0-9X for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 21:52:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 1233F20022
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 21:52:01 +0000 (UTC)
Received: from localhost (unknown [104.132.1.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C5BD3206DB;
 Wed, 12 Feb 2020 21:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581544320;
 bh=CqfexFpFL2Kvk+pZ9hKVo8U3ep9xVwRyPRkPasjv5MA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=k0YtbvwK0+BdeASaaSY+VKozd/Lnxx+raoJDZzvCiaiANS6NjrpK0P2D9q8AaJas7
 kZQzj6tL2X1+rbxXGt6yiPPioMOPJ1T7prHE0tEnqnxkTlOr2LVCAU34wR9Xd0tL1G
 uSyf7vZWh3zsu3jIOdr3YuQ/Kn7n16OLZpscRD/w=
Date: Wed, 12 Feb 2020 13:52:00 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: Re: [PATCH 0/6] Re-instate octeon staging drivers
Message-ID: <20200212215200.GA2367959@kroah.com>
References: <20200205001116.14096-1-chris.packham@alliedtelesis.co.nz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205001116.14096-1-chris.packham@alliedtelesis.co.nz>
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
Cc: devel@driverdev.osuosl.org, paulburton@kernel.org,
 linux-kernel@vger.kernel.org, ralf@linux-mips.org, willy@infradead.org,
 linux-mips@vger.kernel.org, linux@roeck-us.net, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 05, 2020 at 01:11:10PM +1300, Chris Packham wrote:
> This series re-instates the octeon drivers that were recently removed and
> addresses the build issues that lead to that decision.
> 
> I've approached Cavium/Marvell about taking a more active interest in getting
> the code out of staging and into their proper location. No reply on that (yet).

Good luck with talking to the companies, hopefully that will work.

Anyway, I've applied this series, thanks for this, let's see what breaks
now :)

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
