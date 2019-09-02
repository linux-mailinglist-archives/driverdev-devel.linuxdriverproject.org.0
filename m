Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A79A4F33
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2019 08:31:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B54D87A62;
	Mon,  2 Sep 2019 06:31:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CTj+S3h6toZp; Mon,  2 Sep 2019 06:31:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 72E0F87934;
	Mon,  2 Sep 2019 06:31:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 454031BF2C7
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 06:31:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 40CE3204AB
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2019 06:31:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0DVWpm57vuuP for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2019 06:31:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id B1B462001D
 for <devel@driverdev.osuosl.org>; Mon,  2 Sep 2019 06:31:19 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D65822D6D;
 Mon,  2 Sep 2019 06:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567405879;
 bh=JpTBi+eqAB/T+NTDsWWgLTDY5Ffz4YYHHFLG5df3oMA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DHuftYoYVuHOa6eTJX7Kljn/f7DDv9+fdE1kDsJY/yFSPZsTzCkEzqnVlcIa9c4JJ
 pDwBQhFfVx/0bw2rull/aVJW5RYna3H5iuifBvk4I1vm++tr86ZNrutGW5LN9EVg7N
 QzaVV9dK0bl9oU4JJzJTlJi9ZA6edtNZwWy2wQqg=
Date: Mon, 2 Sep 2019 08:31:17 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Pavel Machek <pavel@ucw.cz>
Subject: Re: [PATCH 0/9] staging: move greybus core out of staging
Message-ID: <20190902063117.GA10402@kroah.com>
References: <20190825055429.18547-1-gregkh@linuxfoundation.org>
 <20190901172303.GA1005@bug>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190901172303.GA1005@bug>
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org, elder@kernel.org,
 johan@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 01, 2019 at 07:23:03PM +0200, Pavel Machek wrote:
> Hi!
> 
> > The Greybus code has long been "stable" but was living in the
> > drivers/staging/ directory to see if there really was going to be
> > devices using this protocol over the long-term.  With the success of
> > millions of phones with this hardware and code in it, and the recent
> 
> So, what phones do have this, for example?

The Motorola Z line, all of the "Moto Mods" use this interface to
communicate.

> Does that mean that there's large choice of phones well supported by the
> mainline?

I have no idea what kernel version they use, you will have to talk to
Motorola about that.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
