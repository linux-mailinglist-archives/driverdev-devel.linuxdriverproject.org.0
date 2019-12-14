Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7A111F18A
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Dec 2019 12:28:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 669BB2046F;
	Sat, 14 Dec 2019 11:28:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2MNOR07e0n3F; Sat, 14 Dec 2019 11:28:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B43EA20417;
	Sat, 14 Dec 2019 11:28:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B0B781BF5A5
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 11:28:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ABC1587E75
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 11:28:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GacMKvZf3OBD for <devel@linuxdriverproject.org>;
 Sat, 14 Dec 2019 11:28:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AD08487E32
 for <devel@driverdev.osuosl.org>; Sat, 14 Dec 2019 11:28:18 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E412720706;
 Sat, 14 Dec 2019 11:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576322898;
 bh=81hWOd6Qqqxwb56zYhk0nrhWVt4JaFtoYSXNMBLaUEg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=R3p2LPHCw+yBV8HQTMhza/sHPmmQ/F1fcfYqntv3wJzGQxeUHwKhYvje6R8nHzqQM
 pGITV30s/Sdl/k0JF+1iJf7DBq6ZQDOhlyf6/wFj68ieeqQyWcJtse05Jh4V2GRCpC
 fKka8eIHGWX8ZQVlWRGjjJ+H8Kt9GGTQpReC7c1s=
Date: Sat, 14 Dec 2019 12:28:15 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v1 6/7] staging: axis-fifo: add unspecified HAS_IOMEM
 dependency
Message-ID: <20191214112815.GA3335535@kroah.com>
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <20191211192742.95699-7-brendanhiggins@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211192742.95699-7-brendanhiggins@google.com>
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
Cc: Moses Christopher <moseschristopherb@gmail.com>, devel@driverdev.osuosl.org,
 Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, richard@nod.at,
 jdike@addtoit.com, linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 davidgow@google.com, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Dec 11, 2019 at 11:27:41AM -0800, Brendan Higgins wrote:
> Currently CONFIG_XIL_AXIS_FIFO=y implicitly depends on
> CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
> the following build error:
> 
> ld: drivers/staging/axis-fifo/axis-fifo.o: in function `axis_fifo_probe':
> drivers/staging/axis-fifo/axis-fifo.c:809: undefined reference to `devm_ioremap_resource'
> 
> Fix the build error by adding the unspecified dependency.
> 
> Reported-by: Brendan Higgins <brendanhiggins@google.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>

Saying you reported a problem and then fixed it kind of does a bit of
disservice to the "reported-by:" tag which we normally use only to
credit the people that do not actually fix the problem.

So in the future, no need for this to be there for patches that you
write yourself.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
