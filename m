Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF83C25DA0A
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Sep 2020 15:37:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 58A8F87510;
	Fri,  4 Sep 2020 13:37:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t2jyZIrifrSw; Fri,  4 Sep 2020 13:37:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5A6B0874F6;
	Fri,  4 Sep 2020 13:37:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 742521BF3DF
 for <devel@linuxdriverproject.org>; Fri,  4 Sep 2020 13:37:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5EF5920381
 for <devel@linuxdriverproject.org>; Fri,  4 Sep 2020 13:37:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T6yoWAwr3S4c for <devel@linuxdriverproject.org>;
 Fri,  4 Sep 2020 13:37:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 3401B20380
 for <devel@driverdev.osuosl.org>; Fri,  4 Sep 2020 13:37:42 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4A15F2078E;
 Fri,  4 Sep 2020 13:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599226661;
 bh=pM3S1MrLDgxr104HS1EiOao8hUpIKJ+xLNu70rNDZ4c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c5YhjmlfONEW+0oM0PU7iT2RQQ/O0HgsobSnWJotCpmKCHu8ihA+BysrVWSjDJSGi
 2FIIwYnC+katYJvnZakhX3/tuHEpncjwR/D38szuzqtAIDaqtjIKhNtbKxo2HPv3gf
 Wz+MTZJbAOsFkANYFcPSyq0h2mglcioAr2CgwTP8=
Date: Fri, 4 Sep 2020 15:38:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Antoni Przybylik <antoni.przybylik@wp.pl>
Subject: Re: [PATCH v2 2/2] staging: gdm724x: gdm_tty: replaced macro with a
 function
Message-ID: <20200904133803.GA3165130@kroah.com>
References: <20200902161627.64686-1-antoni.przybylik@wp.pl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200902161627.64686-1-antoni.przybylik@wp.pl>
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

On Wed, Sep 02, 2020 at 06:16:27PM +0200, Antoni Przybylik wrote:
> Changed return type to bool and removed inline specifier. Also added
>  static specifier.
> 
> Signed-off-by: Antoni Przybylik <antoni.przybylik@wp.pl>
> ---
>  drivers/staging/gdm724x/gdm_tty.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

You sent 2 patches with the identical subject line, yet they did
different things :(

Please fix them both up and resend.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
