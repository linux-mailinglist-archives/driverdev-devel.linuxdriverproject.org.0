Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A82D27A0F7
	for <lists+driverdev-devel@lfdr.de>; Sun, 27 Sep 2020 14:35:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 671158719A;
	Sun, 27 Sep 2020 12:35:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R1K-77f+2eQh; Sun, 27 Sep 2020 12:35:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9DFC6870FB;
	Sun, 27 Sep 2020 12:35:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B1AD21BF40D
 for <devel@linuxdriverproject.org>; Sun, 27 Sep 2020 12:35:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AE19485B4D
 for <devel@linuxdriverproject.org>; Sun, 27 Sep 2020 12:35:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lpJP1aYBFd1m for <devel@linuxdriverproject.org>;
 Sun, 27 Sep 2020 12:35:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3947685B12
 for <devel@driverdev.osuosl.org>; Sun, 27 Sep 2020 12:35:29 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 36E6823718;
 Sun, 27 Sep 2020 12:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601210128;
 bh=b6UD0XP4ofa1a5K099D1qbNVwKtfyceLcCjRSKg1f08=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vOwxXS8nSeH/0MRWdID6ideHA5BK4Y5MUsNipfqaiLDPaIpI5ET7mxOwOM5QSeYcb
 yeHJF0nP0G//ei/TRP+/VIfDo4ntwWBltCkIarHO5t8z5MPgL/YGhoD2NC+Uitr2r3
 TZjfw4GN98TiKvkU2nSAOq2jwI4OMG8SvC0EbtsI=
Date: Sun, 27 Sep 2020 14:35:38 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Liu Shixin <liushixin2@huawei.com>
Subject: Re: [PATCH -next] binder: simplify the return expression of
 binder_mmap
Message-ID: <20200927123538.GA292831@kroah.com>
References: <20200921080830.vrki7dcm64l46ppb@wittgenstein>
 <20200921114734.3272769-1-liushixin2@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200921114734.3272769-1-liushixin2@huawei.com>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Martijn Coenen <maco@android.com>, linux-kernel@vger.kernel.org,
 Joel Fernandes <joel@joelfernandes.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 21, 2020 at 07:47:34PM +0800, Liu Shixin wrote:
> Simplify the return expression.
> 
> Signed-off-by: Liu Shixin <liushixin2@huawei.com>
> ---
>  drivers/android/binder.c | 18 ++++--------------
>  1 file changed, 4 insertions(+), 14 deletions(-)

Is this a v2 patch?

If so, please properly label it and say what changed from the v1 version
below the --- line.

Please fix up and resend a v3.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
