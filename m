Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5071E82FD
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 09:10:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8FF7786499;
	Tue, 29 Oct 2019 08:10:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FoP49jfAntgA; Tue, 29 Oct 2019 08:10:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6354B86439;
	Tue, 29 Oct 2019 08:10:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 08F2C1BF327
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 08:10:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 063E785725
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 08:10:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TRM7cIfpKAoa for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 08:10:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 46387836A9
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 08:10:11 +0000 (UTC)
Received: from localhost (unknown [91.217.168.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5817720663;
 Tue, 29 Oct 2019 08:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572336611;
 bh=C85TGFeZCrGhOL2LSvwdwkyUtb0eIGs8u6rXwHu3r98=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=S7XWlfdDSAlv3/uYXRZvk4A1wIhOPLofg4bVvODYpmmX6GbFCtoIWF9uPFB1ALy29
 rybgZME5qU6TosYnR9W1rsrvwxEP0QgO3ZTcwIhMv1brnykO+JrIj+sGKBHmH7tGCO
 EASLpW79fQ3SwYIzI+DMOPusJhZxE3EWssqJ3dOQ=
Date: Tue, 29 Oct 2019 09:10:07 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Samuil Ivanov <samuil.ivanovbg@gmail.com>
Subject: Re: [PATCH 1/2] Staging: gasket: implement apex_get_status() to
 check driver status
Message-ID: <20191029081007.GA520581@kroah.com>
References: <20191028225926.8951-1-samuil.ivanovbg@gmail.com>
 <20191028225926.8951-2-samuil.ivanovbg@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028225926.8951-2-samuil.ivanovbg@gmail.com>
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
Cc: devel@driverdev.osuosl.org, toddpoynor@google.com, rspringer@google.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 29, 2019 at 12:59:25AM +0200, Samuil Ivanov wrote:
> >From the TODO:
> - apex_get_status() should actually check status
> 
> The function now checkes the status of the driver
> 
> Signed-off-by: Samuil Ivanov <samuil.ivanovbg@gmail.com>
> ---
>  drivers/staging/gasket/apex_driver.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
> index 46199c8ca441..a5dd6f3c367d 100644
> --- a/drivers/staging/gasket/apex_driver.c
> +++ b/drivers/staging/gasket/apex_driver.c
> @@ -247,6 +247,9 @@ module_param(bypass_top_level, int, 0644);
>  static int apex_get_status(struct gasket_dev *gasket_dev)
>  {
>  	/* TODO: Check device status. */
> +	if (gasket_dev->status == GASKET_STATUS_DEAD)
> +		return GASKET_STATUS_DEAD;
> +

Have you tested this to verify that this is what is needed here?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
