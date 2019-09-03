Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEFCA6295
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Sep 2019 09:34:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 99E50883F1;
	Tue,  3 Sep 2019 07:34:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YVVCQ98m0MYg; Tue,  3 Sep 2019 07:34:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 23011883D4;
	Tue,  3 Sep 2019 07:34:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6E8A51BF332
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 07:34:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6BAD581A2D
 for <devel@linuxdriverproject.org>; Tue,  3 Sep 2019 07:34:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ybz5tNVxWDda for <devel@linuxdriverproject.org>;
 Tue,  3 Sep 2019 07:34:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 929EC81A28
 for <devel@driverdev.osuosl.org>; Tue,  3 Sep 2019 07:34:51 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF58722CF8;
 Tue,  3 Sep 2019 07:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567496091;
 bh=YKoeEEldfy/WYhAHKQYbBaFLYZrzr3muEwT7qxKfo4w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=daGXqrRoZZFLbKzMOXTlOA2v36wpdw2e9uw/eV4JdWhEzwjM2IdzKe6ufFOeOvCk0
 2vvQGhtbSFY6+i/12QbhfoTGIbMgEG88HS1PnwmfEAwsJ4d/63GiGiYieIqoNFb5aT
 IlTl5UUKfd45slTW7aWrWW9dpfwfiSywUM9dqjRY=
Date: Tue, 3 Sep 2019 09:34:48 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: P SAI PRASANTH <saip2823@gmail.com>
Subject: Re: [PATCH] staging: rts5208: Fix checkpath warning
Message-ID: <20190903073448.GA21543@kroah.com>
References: <20190831073224.GA6197@dell-inspiron>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190831073224.GA6197@dell-inspiron>
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
Cc: devel@driverdev.osuosl.org, sabrina-gaube@web.de,
 linux-kernel@vger.kernel.org, tobias.niessen@stud.uni-hannover.de,
 kim.jamie.bradley@gmail.com, qader.aymen@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Aug 31, 2019 at 01:02:24PM +0530, P SAI PRASANTH wrote:
> This patch fixes the following checkpath warning
> in file drivers/staging/rts5208/xd.c:1754
> 
> WARNING: line over 80 characters
> +                                           index, offset, DMA_TO_DEVICE,
> chip->xd_timeout);
> 
> Signed-off-by: P SAI PRASANTH <saip2823@gmail.com>
> ---
>  drivers/staging/rts5208/xd.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

This had the same subject line as your previous patch, but did different
things.  Please make the subjects unique.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
