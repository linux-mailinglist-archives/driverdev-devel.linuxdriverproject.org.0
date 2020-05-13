Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ED02C1D1205
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 May 2020 13:58:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6AD5722049;
	Wed, 13 May 2020 11:58:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DTj3bGV+dWjE; Wed, 13 May 2020 11:58:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2FF6321539;
	Wed, 13 May 2020 11:58:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 394151BF4DB
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 11:58:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1A54820438
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 11:58:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jivBSHtyJf-2 for <devel@linuxdriverproject.org>;
 Wed, 13 May 2020 11:58:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 32C052042B
 for <devel@driverdev.osuosl.org>; Wed, 13 May 2020 11:58:26 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8996620740;
 Wed, 13 May 2020 11:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589371106;
 bh=AzQ1GBsA7vb+t+sUqdhpDj5pFQccxwb/vacxaCIKKwM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=veu54zijFTH9tV9hdep4oqmKRxlo+9/yg1yax/JmUfYmhty8mC9xQt4bNL0BuSlFC
 orkh9kp754J4DzatlKprBvYa+aUOjx7weYxvCNttblmgA0qv7E6YOp5j+PDrfKDu+p
 jhNi0N0h1hXgNDBNneUKt7u1RMSETOfVkcToZ7HI=
Date: Wed, 13 May 2020 13:58:23 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: John Oldman <john.oldman@polehill.co.uk>
Subject: Re: [PATCH V3] staging: vc04_services: vchiq_connected.c: Block
 comment alignment
Message-ID: <20200513115823.GC953616@kroah.com>
References: <20200510101308.10451-1-john.oldman@polehill.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200510101308.10451-1-john.oldman@polehill.co.uk>
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
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, May 10, 2020 at 11:13:08AM +0100, John Oldman wrote:
> Coding style issue
> This patch clears the checkpatch.pl "Block comments should align the * on each line" warning.
> 
> Signed-off-by: John Oldman <john.oldman@polehill.co.uk>
> ---
> v1: Initial attempt.
> v2: Resubmitted with shorter comment line, as suggested by Greg KH.
> v3: Resubmitted with descriptiuon text moved into the comment area.
> 
>  .../interface/vchiq_arm/vchiq_connected.c     | 32 +++++++++----------
>  1 file changed, 16 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
> index 1640906e3929..993535bbc479 100644
> --- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
> +++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_connected.c
> @@ -15,10 +15,10 @@ static   int                        g_once_init;
>  static   struct mutex               g_connected_mutex;
>  
>  /****************************************************************************
> -*
> -* Function to initialize our lock.
> -*
> -***************************************************************************/
> + *
> + * Function to initialize our lock.
> + *
> + ***************************************************************************/
>  
>  static void connected_init(void)

Shouldn't that really be written as:

/* Function to initialize our lock */
static void connect_init(void);


No need for the /****** mess, and no need for the blank line.

Simple and clean is best.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
