Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D879D12BB9B
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Dec 2019 23:31:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CBE2E85C62;
	Fri, 27 Dec 2019 22:31:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a0PUnOthtF9E; Fri, 27 Dec 2019 22:31:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 938A985A74;
	Fri, 27 Dec 2019 22:31:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0BF7E1BF591
 for <devel@linuxdriverproject.org>; Fri, 27 Dec 2019 22:31:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E352B86429
 for <devel@linuxdriverproject.org>; Fri, 27 Dec 2019 22:31:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sRLLENg+5ddO for <devel@linuxdriverproject.org>;
 Fri, 27 Dec 2019 22:31:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6F74186420
 for <devel@driverdev.osuosl.org>; Fri, 27 Dec 2019 22:31:01 +0000 (UTC)
Received: from localhost (unknown [173.246.202.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 85E9620740;
 Fri, 27 Dec 2019 22:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577485861;
 bh=uhOMe72RhAkyJVD8fJRIfHJovB6OCUe8wryQwfWegMw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TvZTw4BTBlQbswcu4EZxFZJVlc7YK2t0P+0HZHSyDV1cFwWNZCrUs4Wd6BUVXmH/S
 OscnTfGTZwRgExkiJlKPTrKHvy9SWPjeO1a/nGXVHX8eptKu5THjLBfcC+lpHR+5so
 YVG0Qquv1BsdXY2YM/t7FxzK6zDUdJU0Gnp3pk8Q=
Date: Fri, 27 Dec 2019 17:30:52 -0500
From: Greg KH <gregkh@linuxfoundation.org>
To: Matthew Hanzelik <mrhanzelik@gmail.com>
Subject: Re: [PATCH] Staging: wfx: Fix style issues with hif_rx.c
Message-ID: <20191227223052.GA331959@kroah.com>
References: <20191227201656.3g426wagfubit5zy@mandalore.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191227201656.3g426wagfubit5zy@mandalore.localdomain>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Dec 27, 2019 at 03:16:56PM -0500, Matthew Hanzelik wrote:
> Fixes style issues with hif_rx.c.

Please be specific as to _what_ you did, this is pretty vague :(

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
