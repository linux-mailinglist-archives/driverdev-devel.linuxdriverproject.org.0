Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5249121D74D
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jul 2020 15:35:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E22F288B65;
	Mon, 13 Jul 2020 13:35:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k37Bem1b10yW; Mon, 13 Jul 2020 13:35:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C9C7A8878F;
	Mon, 13 Jul 2020 13:35:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CD3361BF3E0
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 13:35:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C51C68878F
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 13:35:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UWm-LH401rxt for <devel@linuxdriverproject.org>;
 Mon, 13 Jul 2020 13:35:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EF6B388704
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 13:35:27 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 35EAA2072D;
 Mon, 13 Jul 2020 13:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594647327;
 bh=/wWVErS8bBU0BhjE2vfVnNzcXafBwMZc5v+u2jYiyxg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OmuGEAAR4usiwresNCHmUSga3+1CuU80WweZcaHM+yq/FjJE2JTKibfYFw8elRZ6D
 NKNdru5+VP0A4XNpAwiAh82dyQLZlYT8mik0p90AaqUd9xZrUMQB9LjTXcG4Q02llN
 Iex0kE//A73LVNRQaFphsMkORjAMfVq+eeg5uabg=
Date: Mon, 13 Jul 2020 15:35:27 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Baidyanath Kundu <kundubaidya99@gmail.com>
Subject: Re: [PATCH] Staging: vc04_services: Fix code indent error
Message-ID: <20200713133527.GB3122574@kroah.com>
References: <20200713072224.7648-1-kundubaidya99@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200713072224.7648-1-kundubaidya99@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jul 13, 2020 at 12:52:24PM +0530, Baidyanath Kundu wrote:
> This patch fixes the checkpatch.pl error:
> 
> ERROR: code indent should use tabs where possible
> 
> Signed-off-by: Baidyanath Kundu <kundubaidya99@gmail.com>
> ---
>  .../staging/vc04_services/vchiq-mmal/mmal-vchiq.c  | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
> index a075cd63da7f..86c00b68f099 100644
> --- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
> +++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
> @@ -294,13 +294,13 @@ static void buffer_to_host_work_cb(struct work_struct *work)
>  	/* queue the bulk submission */
>  	vchiq_use_service(instance->service_handle);
>  	ret = vchiq_bulk_receive(instance->service_handle,
> -				 msg_context->u.bulk.buffer->buffer,
> -			         /* Actual receive needs to be a multiple
> -			          * of 4 bytes
> -			          */
> -			         (len + 3) & ~3,
> -			         msg_context,
> -			         VCHIQ_BULK_MODE_CALLBACK);
> +				msg_context->u.bulk.buffer->buffer,
> +				/* Actual receive needs to be a multiple
> +				 * of 4 bytes
> +				 */
> +				(len + 3) & ~3,
> +				msg_context,
> +				VCHIQ_BULK_MODE_CALLBACK);

Close, you need one more space for these lines, right?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
