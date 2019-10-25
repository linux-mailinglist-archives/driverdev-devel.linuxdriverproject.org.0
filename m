Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 049F7E41C6
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Oct 2019 04:48:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD6178816B;
	Fri, 25 Oct 2019 02:48:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VeKCVHexG2v9; Fri, 25 Oct 2019 02:48:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C0A4F8815C;
	Fri, 25 Oct 2019 02:48:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 689AC1BF387
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 02:48:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 45EB1875D1
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 02:48:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dpd3cFz67PZF for <devel@linuxdriverproject.org>;
 Fri, 25 Oct 2019 02:48:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B40FF875C0
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 02:48:29 +0000 (UTC)
Received: from localhost (unknown [38.98.37.137])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 45FF521D71;
 Fri, 25 Oct 2019 02:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571971709;
 bh=YjIrWYi+vq47WqR5MSAO03FVUzkLa1Xz/MTdPOUAoMM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TDzhOoB0Qe5Ftev/sS98DxeVb7fInMY1jJghpagE8EWRAVSaRFhU74QDCu7wnn66+
 M2Wut3on9i4CjvY6rEFQ4+F0xdXE+FxPKpAuHOD9miNQfXFMbMgsI9j1h+CvgwY2mE
 xxrpQ6ZvN3zg1cNmlE2oJdugoCTkIYYRCdh+Riqg=
Date: Thu, 24 Oct 2019 22:42:05 -0400
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Subject: Re: [PATCH] staging: vc04_services: add space to fix check warning
Message-ID: <20191025024205.GA331827@kroah.com>
References: <20191015230922.11261-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015230922.11261-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
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
Cc: devel@driverdev.osuosl.org, eric@anholt.net, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 16, 2019 at 12:09:22AM +0100, Jules Irenge wrote:
> Add space betwen operator to fix check warning.
> Issue detected by checkpatch tool.
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/vc04_services/interface/vchi/vchi_cfg.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
> index dbb6a5f07a79..192c287503a5 100644
> --- a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
> +++ b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
> @@ -163,9 +163,9 @@
>   * by suspending parsing as the comment above says, but we don't.
>   * This sweeps the issue under the carpet.
>   */
> -#if VCHI_RX_MSG_QUEUE_SIZE < (VCHI_MAX_MSG_SIZE/16 + 1) * VCHI_NUM_READ_SLOTS
> +#if VCHI_RX_MSG_QUEUE_SIZE < (VCHI_MAX_MSG_SIZE / 16 + 1) * VCHI_NUM_READ_SLOTS
>  #  undef VCHI_RX_MSG_QUEUE_SIZE
> -#  define VCHI_RX_MSG_QUEUE_SIZE ((VCHI_MAX_MSG_SIZE/16 + 1) * VCHI_NUM_READ_SLOTS)
> +#  define VCHI_RX_MSG_QUEUE_SIZE ((VCHI_MAX_MSG_SIZE / 16 + 1) * VCHI_NUM_READ_SLOTS)
>  #endif
>  
>  /* How many bulk transmits can we have pending. Once exhausted,
> -- 
> 2.21.0

Path does not apply to my tree at all :(
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
