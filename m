Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D221C1A6688
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 14:54:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6F4C88601B;
	Mon, 13 Apr 2020 12:54:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qjP0NPvNQckf; Mon, 13 Apr 2020 12:54:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9E566858B5;
	Mon, 13 Apr 2020 12:54:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ECF9E1BF3EB
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 12:54:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E92F087850
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 12:54:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Snuvb92BS2V for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 12:54:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8844F87648
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 12:54:39 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EBE4A2073E;
 Mon, 13 Apr 2020 12:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586782479;
 bh=ani0mo4L/AJTIw6JkBA9qVVLgc8vJAgL0LuTd17rhiY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Dea/gQ2sfw8+g1x3RM6AAgSwyUsTikCO055ndzcAar8+dYhJX05xXcceamuBbf87p
 ukEEWZFlZ5MrJS8tExRITflriPfgAxhZpYgUkZN7D3pcTF4uwfF8ud2ZV4PPscveT4
 euoLLUW6+mESf/VTMkyuofsyrX8geNDixLIv4UqA=
Date: Mon, 13 Apr 2020 14:54:37 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: carlosteniswarrior@gmail.com
Subject: Re: [PATCH] Staging: comedi: drivers: jr3_pci: fixed two warnings
Message-ID: <20200413125437.GA3116954@kroah.com>
References: <20200412142508.327-1-carlosteniswarrior@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200412142508.327-1-carlosteniswarrior@gmail.com>
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

On Sun, Apr 12, 2020 at 04:25:08PM +0200, carlosteniswarrior@gmail.com wrote:
> Fixed two checkpatch warnings.
> 
> Signed-off-by: Carlos Guerrero Alvarez <carlosteniswarrior@gmail.com>
> ---
>  drivers/staging/comedi/drivers/jr3_pci.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/jr3_pci.c b/drivers/staging/comedi/drivers/jr3_pci.c
> index c3c88e6d298f..6bc87d3c6c3b 100644
> --- a/drivers/staging/comedi/drivers/jr3_pci.c
> +++ b/drivers/staging/comedi/drivers/jr3_pci.c
> @@ -91,8 +91,8 @@ struct jr3_pci_dev_private {
>  };
>  
>  union jr3_pci_single_range {
> -	struct comedi_lrange l;
> -	char _reserved[offsetof(struct comedi_lrange, range[1])];
> +	const comedi_lrange l;
> +	char _reserved[offsetof(const comedi_lrange, range[1])];
>  };

Please work on your knowledge of C first, before modifying Linux kernel
code.  Mistakes like this show you need a bit more work there first.

Good luck!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
