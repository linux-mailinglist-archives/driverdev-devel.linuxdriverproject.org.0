Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC3660FA2
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Jul 2019 11:29:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ACDA08562A;
	Sat,  6 Jul 2019 09:29:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xc9w0grln3WK; Sat,  6 Jul 2019 09:29:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 843298557E;
	Sat,  6 Jul 2019 09:29:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5C1501BF3DC
 for <devel@linuxdriverproject.org>; Sat,  6 Jul 2019 09:29:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5992785BA3
 for <devel@linuxdriverproject.org>; Sat,  6 Jul 2019 09:29:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id akHi31ll-AJ3 for <devel@linuxdriverproject.org>;
 Sat,  6 Jul 2019 09:29:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9DE2785B00
 for <devel@driverdev.osuosl.org>; Sat,  6 Jul 2019 09:29:18 +0000 (UTC)
Received: from localhost (unknown [62.119.166.9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE45220838;
 Sat,  6 Jul 2019 09:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562405358;
 bh=q0ChCYbw9BUDkWl5qTb6N9u6aCLW/OO4j39NqDScVdE=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=aamOu0XKXSBhtt1yKpU6r/ss1xC8nZzgJj4jyUslKR76f+Ra2rEh4O8h/yEl7rD6V
 ieQX+PHjtC9RbnIPPDP4hxoy0JuqaDIsgqW1m573K/ooKz9bzdHenhr65sRbFBEarR
 0fihP89c8qhaBtcYn0lQlkZAGBnLZYdvNAQNBj6U=
Date: Sat, 6 Jul 2019 11:28:56 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Markus Elfring <Markus.Elfring@web.de>, speakup@linux-speakup.org,
 devel@driverdev.osuosl.org,
 Bhagyashri Dighole <digholebhagyashri@gmail.com>,
 Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>,
 Okash Khawaja <okash.khawaja@gmail.com>,
 William Hubbs <w.d.hubbs@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] staging: speakup: One function call less in
 speakup_win_enable()
Message-ID: <20190706092856.GA15480@kroah.com>
References: <11f79333-25c3-1ad9-4975-58c64821f3fe@web.de>
 <20190706090019.rivposzrqesodhso@function>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190706090019.rivposzrqesodhso@function>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jul 06, 2019 at 11:00:19AM +0200, Samuel Thibault wrote:
> Markus Elfring, le sam. 06 juil. 2019 10:15:30 +0200, a ecrit:
> > From: Markus Elfring <elfring@users.sourceforge.net>
> > Date: Sat, 6 Jul 2019 10:03:56 +0200
> > 
> > Avoid an extra function call by using a ternary operator instead of
> > a conditional statement.
> > 
> > This issue was detected by using the Coccinelle software.
> > 
> > Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
> 
> Reviewed-by: Samuel Thibault <samuel.thibault@ens-lyon.org>

Sorry, but this author/bot is in my kill-file and I no longer accept
patches from them.

And I HATE ternary operators anyway, so it's not like I would take this
patch if it came from someone else :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
