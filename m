Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5EB1BA9BF
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Apr 2020 18:04:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1280585F5C;
	Mon, 27 Apr 2020 16:04:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FcEPgk0L7pe7; Mon, 27 Apr 2020 16:04:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0B27B85F58;
	Mon, 27 Apr 2020 16:04:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A0A4A1BF31A
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 16:04:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9D59787E45
 for <devel@linuxdriverproject.org>; Mon, 27 Apr 2020 16:04:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mxk1zg-2uub7 for <devel@linuxdriverproject.org>;
 Mon, 27 Apr 2020 16:04:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 229FC8780D
 for <devel@driverdev.osuosl.org>; Mon, 27 Apr 2020 16:04:33 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 83433205C9;
 Mon, 27 Apr 2020 16:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588003473;
 bh=yQw0lJ/dRaWvFr7ULAC65L+RGkqRLDb06f2ufgGujFk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G/Py3y0d1wzPrPpmUOb7U9JcpztHzqc7ZxE3DgQbJfdjXwWJe4Lr86U6KRZtDizxB
 /wfZziWMVR3tY+Mffgt5GPvLaNNWaeei2AwoaxOT/dsYGLmNge+CirLheUAFLMQ4LG
 XWJk2jQ1xU/vOlG1bKbormCJlAsvk8vQu+MfrSUA=
Date: Mon, 27 Apr 2020 18:04:30 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: John Oldman <john.oldman@polehill.co.uk>
Subject: Re: [PATCH 2/2] drivers: staging: rts5208: rtsx.c fix Unbalanced
 braces around else-if statements
Message-ID: <20200427160430.GA3549342@kroah.com>
References: <20200427152442.26597-1-john.oldman@polehill.co.uk>
 <20200427152442.26597-2-john.oldman@polehill.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427152442.26597-2-john.oldman@polehill.co.uk>
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

On Mon, Apr 27, 2020 at 04:24:42PM +0100, John Oldman wrote:
> Make a better job of fixing coding style issues, this time fixing
> all blocks as per Joe Perches' comment.
> 
> Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
> ---
>  drivers/staging/rts5208/rtsx.c | 14 +++++---------
>  1 file changed, 5 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/rts5208/rtsx.c b/drivers/staging/rts5208/rtsx.c
> index ca836ca2ee81..e16a7b9c3203 100644
> --- a/drivers/staging/rts5208/rtsx.c
> +++ b/drivers/staging/rts5208/rtsx.c
> @@ -402,19 +402,15 @@ static int rtsx_control_thread(void *__dev)
>  		if (chip->srb->sc_data_direction == DMA_BIDIRECTIONAL) {
>  			dev_err(&dev->pci->dev, "UNKNOWN data direction\n");
>  			chip->srb->result = DID_ERROR << 16;
> -		}
> -
> -		/* reject if target != 0 or if LUN is higher than
> -		 * the maximum known LUN
> -		 */
> -		else if (chip->srb->device->id) {
> +		} else if (chip->srb->device->id) {
> +			/* reject if target != 0 or if LUN is higher than
> +			 * the maximum known LUN
> +			 */
>  			dev_err(&dev->pci->dev, "Bad target number (%d:%d)\n",
>  				chip->srb->device->id,
>  				(u8)chip->srb->device->lun);
>  			chip->srb->result = DID_BAD_TARGET << 16;
> -		}
> -
> -		else if (chip->srb->device->lun > chip->max_lun) {
> +		} else if (chip->srb->device->lun > chip->max_lun) {
>  			dev_err(&dev->pci->dev, "Bad LUN (%d:%d)\n",
>  				chip->srb->device->id,
>  				(u8)chip->srb->device->lun);
> -- 
> 2.17.1

Why is this not just one patch?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
