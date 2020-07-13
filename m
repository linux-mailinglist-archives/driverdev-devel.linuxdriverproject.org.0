Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E28821D745
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jul 2020 15:34:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9B2B11FEED;
	Mon, 13 Jul 2020 13:34:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id btAPF-NQDEhT; Mon, 13 Jul 2020 13:34:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DB63A2036B;
	Mon, 13 Jul 2020 13:34:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C5D501BF3E0
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 13:34:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B9D2787802
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 13:34:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 59x1kmrBE8Wx for <devel@linuxdriverproject.org>;
 Mon, 13 Jul 2020 13:34:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 50420877FD
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 13:34:39 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E374206F0;
 Mon, 13 Jul 2020 13:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594647279;
 bh=4/Ii7OKEjNLUXwutSsdeNHRAyBRktKgtQ/LgJoyu5I4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hLXxOMZIOTP7DENp/wJEFJfOmC48+2ZItUXBDkgUnH8GGoypLax1l1mSeUiXSOgxb
 9I7cdjPG2jQ+eQTEzsgn/JSWSUtImKliX6xzfMhJoh2FG7pKhcHnmd+PZL1GZpbNDa
 eFznIwS50H3XkJZ2lnn4JdEjOsAb2RWyBQesLRNk=
Date: Mon, 13 Jul 2020 15:34:38 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Saurav Girepunje <saurav.girepunje@gmail.com>
Subject: Re: [PATCH] Staging: comedi: driver: Remove condition with no effect
Message-ID: <20200713133438.GA3122574@kroah.com>
References: <20200712070628.GA18340@saurav>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200712070628.GA18340@saurav>
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
Cc: devel@driverdev.osuosl.org, abbotti@mev.co.uk, saurav.girepunje@hotmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jul 12, 2020 at 12:36:28PM +0530, Saurav Girepunje wrote:
> Remove below warning in das1800.c
> WARNING: possible condition with no effect (if == else)
> 
> Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
> ---
>  drivers/staging/comedi/drivers/das1800.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/das1800.c b/drivers/staging/comedi/drivers/das1800.c
> index f16aa7e9f4f3..7ab72e83d3d0 100644
> --- a/drivers/staging/comedi/drivers/das1800.c
> +++ b/drivers/staging/comedi/drivers/das1800.c
> @@ -1299,12 +1299,6 @@ static int das1800_attach(struct comedi_device *dev,
>  			outb(DAC(i), dev->iobase + DAS1800_SELECT);
>  			outw(0, dev->iobase + DAS1800_DAC);
>  		}
> -	} else if (board->id == DAS1800_ID_AO) {
> -		/*
> -		 * 'ao' boards have waveform analog outputs that are not
> -		 * currently supported.
> -		 */
> -		s->type		= COMEDI_SUBD_UNUSED;

What gave that warning?  The comment should show you why this is good to
keep as-is, right?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
