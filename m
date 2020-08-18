Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEB024868E
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 15:57:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A52F2203F8;
	Tue, 18 Aug 2020 13:57:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HP+RmPRvEMsM; Tue, 18 Aug 2020 13:57:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C6CF1203A6;
	Tue, 18 Aug 2020 13:57:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 52C931BF36B
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 13:57:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4F57585B95
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 13:57:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w5lYlL+Zg+zw for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 13:57:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AEEF885B8D
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 13:57:38 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 060BB206B5;
 Tue, 18 Aug 2020 13:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597759058;
 bh=LmiV+VP1Db1N9hvNckueqBqLd8uBgy6Ev5UsaCvXUy0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RU7lzg9ftP9Sy6d9btxFSNP1GwXBHsSdeGS8L/2WaNvoTgguYPpUiYM7/oHHTr59l
 iI8dSu03TRGsCG+p380TrKnPUVQMc47aC6VyKEqOyoNT3QmWqcUrqWWQgLacTASzfx
 Euu3hjGRiM/h8ihrGhuf0KjWUA6dpFM9PCBDQE5g=
Date: Tue, 18 Aug 2020 15:58:02 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Aditya Bansal <adbansal99@gmail.com>
Subject: Re: [PATCH v2] staging: wfx: fixed misspelled word in comment
Message-ID: <20200818135802.GA533736@kroah.com>
References: <20200804145816.GA3823@aditya>
 <20200804124627.GA3348@aditya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200804124627.GA3348@aditya>
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

On Tue, Aug 04, 2020 at 06:17:47PM +0530, Aditya Bansal wrote:
> From: Aditya Bansal <adbansal99@gmail.com>
> 
> Subject: [PATCH v2] fixed typo in driver/staging/wfx/hif_tx.c file
> 
> Correct the spelling of word function and careful
> 
> Signed-off-by: Aditya Bansal <adbansal99@gmail.com>
> ---
> 
> diff --git a/drivers/staging/wfx/hif_tx.c b/drivers/staging/wfx/hif_tx.c
> index 5110f9b93762..fc12f9dcefce 100644
> --- a/drivers/staging/wfx/hif_tx.c
> +++ b/drivers/staging/wfx/hif_tx.c
> @@ -125,7 +125,7 @@ int wfx_cmd_send(struct wfx_dev *wdev, struct hif_msg *request,
>  
>  // This function is special. After HIF_REQ_ID_SHUT_DOWN, chip won't reply to any
>  // request anymore. We need to slightly hack struct wfx_hif_cmd for that job. Be
> -// carefull to only call this funcion during device unregister.
> +// careful to only call this function during device unregister.
>  int hif_shutdown(struct wfx_dev *wdev)
>  {
>         int ret;
> _______________________________________________
> devel mailing list
> devel@linuxdriverproject.org
> http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

Does not apply to my tree, can you please refresh and resend?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
