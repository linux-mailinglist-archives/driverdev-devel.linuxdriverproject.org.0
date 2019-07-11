Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A746E64ACB
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Jul 2019 18:35:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0157486776;
	Wed, 10 Jul 2019 16:35:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KNGW8PfCFsKT; Wed, 10 Jul 2019 16:35:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DD89D84C2A;
	Wed, 10 Jul 2019 16:35:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E01ED1BF3F3
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 16:35:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DD6978669E
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 16:35:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ilj2z4aeOrK7 for <devel@linuxdriverproject.org>;
 Wed, 10 Jul 2019 16:35:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6A62384C2A
 for <devel@driverdev.osuosl.org>; Wed, 10 Jul 2019 16:35:42 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BD06020844;
 Wed, 10 Jul 2019 16:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562776542;
 bh=h/1uTzMKlOKJst3NnJsnh16b5AsNQV/yJCBKBWrsTYw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NPyYp5EjnSzmapw3Ny/7iPEEjt/QnJCQo/tjOyrX0IsAhyQf7f2ydIwvecZcNCuNF
 cpnY82hOHXiPKo0eoHuwWg5XCg2/Cp0kd/2aK3F/mZ0YCHiWOwy03KzYkxtP3Qhuct
 xwOr3YDFSugMAU0iT5At+tdaWY28lkCxo/ofJ8i4=
Date: Wed, 10 Jul 2019 18:35:38 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Keyur Patel <iamkeyur96@gmail.com>
Subject: Re: [PATCH] staging: greybus: add logging statement when kfifo_alloc
 fails
Message-ID: <20190710163538.GA30902@kroah.com>
References: <20190710122018.2250-1-iamkeyur96@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710122018.2250-1-iamkeyur96@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org,
 greybus-dev@lists.linaro.org, David Lin <dtwlin@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jul 10, 2019 at 08:20:17AM -0400, Keyur Patel wrote:
> Added missing logging statement when kfifo_alloc fails, to improve
> debugging.
> 
> Signed-off-by: Keyur Patel <iamkeyur96@gmail.com>
> ---
>  drivers/staging/greybus/uart.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/uart.c b/drivers/staging/greybus/uart.c
> index b3bffe91ae99..86a395ae177d 100644
> --- a/drivers/staging/greybus/uart.c
> +++ b/drivers/staging/greybus/uart.c
> @@ -856,8 +856,10 @@ static int gb_uart_probe(struct gbphy_device *gbphy_dev,
>  
>  	retval = kfifo_alloc(&gb_tty->write_fifo, GB_UART_WRITE_FIFO_SIZE,
>  			     GFP_KERNEL);
> -	if (retval)
> +	if (retval) {
> +		pr_err("kfifo_alloc failed\n");
>  		goto exit_buf_free;
> +	}

You should have already gotten an error message from the log if this
fails, from the kmalloc_array() call failing, right?

So why is this needed?  We have been trying to remove these types of
messages and keep them in the "root" place where the failure happens.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
