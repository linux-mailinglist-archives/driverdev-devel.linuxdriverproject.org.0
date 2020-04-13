Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D01AE1A6678
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 14:51:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 718BF8602E;
	Mon, 13 Apr 2020 12:51:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ijeD6LtigxJF; Mon, 13 Apr 2020 12:51:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 759B4814A3;
	Mon, 13 Apr 2020 12:51:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6BFBF1BF3EB
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 12:51:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 688DC814A3
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 12:51:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mbmMQ6sTa539 for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 12:51:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D180A81437
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 12:51:42 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 40A7E2073E;
 Mon, 13 Apr 2020 12:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586782302;
 bh=ejpdoK6nCyovUTodcgI+x/yIdqO1GdrH6k62EYHDX/Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wv9jiJj171n/VbX1/Oz+CDoFDAXgADnSrXt4yq4K9JyfAma1u+FgtbwvYQuGSH31M
 7RE2ZNinmeytr5BiBQB/J44cUZdQ9f8xVCdgKFVd8nceGeg7l3kyp8rNBZQH+aKE+j
 4w5D+kkaXwA+B3rkz1U52/jflGs0SrTzJMLcDCq4=
Date: Mon, 13 Apr 2020 14:51:40 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: carlosteniswarrior@gmail.com
Subject: Re: [PATCH] Staging: Comedi: Drivers: das08: Fixed some coding style
 issues
Message-ID: <20200413125140.GC3077651@kroah.com>
References: <20200413080555.29267-1-carlosteniswarrior@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413080555.29267-1-carlosteniswarrior@gmail.com>
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

On Mon, Apr 13, 2020 at 10:05:55AM +0200, carlosteniswarrior@gmail.com wrote:
> Fixed a coding style issue caused by some declarations that weren't separated.
> 
> Signed-off-by: Carlos Guerrero Alvarez <carlosteniswarrior@gmail.com>

Your From: line in your email client does not match with this :(

> ---
>  drivers/staging/comedi/drivers/das08.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/staging/comedi/drivers/das08.c b/drivers/staging/comedi/drivers/das08.c
> index 65e5f2e6c122..f884f5841788 100644
> --- a/drivers/staging/comedi/drivers/das08.c
> +++ b/drivers/staging/comedi/drivers/das08.c
> @@ -141,7 +141,9 @@ static const struct comedi_lrange *const das08_ai_lranges[] = {
>  static const int das08_pgh_ai_gainlist[] = {
>  	8, 0, 10, 2, 12, 4, 14, 6, 1, 3, 5, 7
>  };
> +
>  static const int das08_pgl_ai_gainlist[] = { 8, 0, 2, 4, 6, 1, 3, 5, 7 };
> +
>  static const int das08_pgm_ai_gainlist[] = { 8, 0, 10, 12, 14, 9, 11, 13, 15 };

What is wrong with the original code?  It makes more sense, don't you
think?

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
