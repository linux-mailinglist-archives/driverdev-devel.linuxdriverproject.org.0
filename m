Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F40435B70E
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 10:43:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3CBC7204EC;
	Mon,  1 Jul 2019 08:43:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PiqlCY53Bi2h; Mon,  1 Jul 2019 08:43:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B4775204F2;
	Mon,  1 Jul 2019 08:43:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3E5C71BF2A6
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 08:43:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 38C9D204EC
 for <devel@linuxdriverproject.org>; Mon,  1 Jul 2019 08:43:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D6mUY6+z-s72 for <devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 08:43:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 9D78420489
 for <devel@driverdev.osuosl.org>; Mon,  1 Jul 2019 08:43:26 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EE7DF208E4;
 Mon,  1 Jul 2019 08:43:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561970606;
 bh=0NA1/7KLb+cyKHN4XxT0JUUlB2v/LMeQRKGWYY+tSL8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s/qgc/htOo3Uv83ZbeoSEyiDWw0kpslcG6HW8GNh3kma9esMgLz5Qg9a7e/l/Jkvq
 +W+7VwpCQbvjIw33Fnjh3RuMA9HW24/6CuW4cj1vxubvrRubsxlphXX/ffxsmPLLS6
 vYWHlsxUiWXgyYYNbKVpsGb3EQWuHTu4JGzyT3kI=
Date: Mon, 1 Jul 2019 10:43:23 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Harsh Jain <harshjain32@gmail.com>
Subject: Re: [PATCH 1/2] staging:kpc2000:Fix symbol not declared warning
Message-ID: <20190701084323.GA21007@kroah.com>
References: <20190628172724.2689-1-harshjain32@gmail.com>
 <20190628172724.2689-2-harshjain32@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628172724.2689-2-harshjain32@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 harshjain.prof@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jun 28, 2019 at 10:57:23PM +0530, Harsh Jain wrote:
> It fixes "symbol was not declared. Should it be static?"
> sparse warning.
> 
> Signed-off-by: Harsh Jain <harshjain32@gmail.com>
> ---
>  drivers/staging/kpc2000/kpc_i2c/i2c_driver.c | 4 ++--

This file isn't even in the linux-next tree at all, it has moved weeks
ago.

Always be sure to work against linux-next so that you do not create
things that are not able to be accepted.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
