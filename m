Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EAEDF221CFA
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 09:04:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C1C408ACFE;
	Thu, 16 Jul 2020 07:04:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bwPIRQQhny5a; Thu, 16 Jul 2020 07:04:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 99B508873A;
	Thu, 16 Jul 2020 07:04:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CF03D1BF470
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 07:04:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C9C7F884C2
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 07:04:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jnM1jqO-a04Q for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 07:04:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0C38A88524
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 07:04:23 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0BAE1206F4;
 Thu, 16 Jul 2020 07:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594883062;
 bh=DV5zKc/ZWVUvHklF0tyr4PwKp6kaVLmlesNhot2hFgo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OYFVjxV5k9yB/i4gwIJF2lqTwXuMDkamt5mmUDgF5kgsQRDjjU3yMQGzeUIGSVp3d
 AROD9O1qtZ/4/oZiB9e4eceD/516OtCK1qKO2K7qxcnAFaWslYY6Aqzezaa5ugTxFo
 hfbofGjOPkH6OW6NCLuoHfmH4ERtGfWAYZ9242J8=
Date: Thu, 16 Jul 2020 09:04:16 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Qiu Wenbo <qiuwenbo@phytium.com.cn>
Subject: Re: [PATCH] staging: rtl8712: Fixes coding style in several headers
Message-ID: <20200716070416.GA962748@kroah.com>
References: <20200716064118.61243-1-qiuwenbo@phytium.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200716064118.61243-1-qiuwenbo@phytium.com.cn>
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
Cc: devel@driverdev.osuosl.org,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 Kees Cook <keescook@chromium.org>, Marco Villegas <git@marvil07.net>,
 Linux Driver Project Developer List <driverdev-devel@linuxdriverproject.org>,
 linux-kernel@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 16, 2020 at 02:41:12PM +0800, Qiu Wenbo wrote:
> This patch fixes warnings in several headers found by the checkpatch.pl tool.

What warnings specifically?

Please only fix one type of warning per patch.

> 
> Signed-off-by: Qiu Wenbo <qiuwenbo@phytium.com.cn>
> ---
>  drivers/staging/rtl8712/rtl871x_event.h   | 15 ++++++++++-----
>  drivers/staging/rtl8712/rtl871x_io.h      |  3 ++-
>  drivers/staging/rtl8712/rtl871x_pwrctrl.h | 15 ++++++++++-----
>  drivers/staging/rtl8712/rtl871x_xmit.h    | 15 ++++++++++-----
>  4 files changed, 32 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl871x_event.h b/drivers/staging/rtl8712/rtl871x_event.h
> index d9a5476d2426..0e59d0ee6aae 100644
> --- a/drivers/staging/rtl8712/rtl871x_event.h
> +++ b/drivers/staging/rtl8712/rtl871x_event.h
> @@ -78,13 +78,16 @@ struct event_node {
>  	unsigned char *node;
>  	unsigned char evt_code;
>  	unsigned short evt_sz;
> -	/*volatile*/ int *caller_ff_tail;
> +	/*volatile*/
> +	int *caller_ff_tail;

Why did you change this?  It's fine as is, and a hint something needs to
be fixed.

>  	int	caller_ff_sz;
>  };
>  
>  struct c2hevent_queue {
> -	/*volatile*/ int	head;
> -	/*volatile*/ int	tail;
> +	/*volatile*/
> +	int	head;
> +	/*volatile*/
> +	int	tail;

Same for these.



>  	struct	event_node	nodes[C2HEVENT_SZ];
>  	unsigned char	seq;
>  };
> @@ -92,8 +95,10 @@ struct c2hevent_queue {
>  #define NETWORK_QUEUE_SZ	4
>  
>  struct network_queue {
> -	/*volatile*/ int	head;
> -	/*volatile*/ int	tail;
> +	/*volatile*/
> +	int	head;
> +	/*volatile*/
> +	int	tail;
>  	struct wlan_bssid_ex networks[NETWORK_QUEUE_SZ];
>  };
>  
> diff --git a/drivers/staging/rtl8712/rtl871x_io.h b/drivers/staging/rtl8712/rtl871x_io.h
> index c20dd5a6bbd1..2e269b71072c 100644
> --- a/drivers/staging/rtl8712/rtl871x_io.h
> +++ b/drivers/staging/rtl8712/rtl871x_io.h
> @@ -101,7 +101,8 @@ struct	_io_ops {
>  struct io_req {
>  	struct list_head list;
>  	u32	addr;
> -	/*volatile*/ u32	val;
> +	/*volatile*/
> +	u32	val;
>  	u32	command;
>  	u32	status;
>  	u8	*pbuf;
> diff --git a/drivers/staging/rtl8712/rtl871x_pwrctrl.h b/drivers/staging/rtl8712/rtl871x_pwrctrl.h
> index dd5a79f90b1a..e6b740c09120 100644
> --- a/drivers/staging/rtl8712/rtl871x_pwrctrl.h
> +++ b/drivers/staging/rtl8712/rtl871x_pwrctrl.h
> @@ -77,14 +77,19 @@ struct reportpwrstate_parm {
>  
>  struct	pwrctrl_priv {
>  	struct mutex mutex_lock;
> -	/*volatile*/ u8 rpwm; /* requested power state for fw */
> +	/*volatile*/
> +	u8 rpwm; /* requested power state for fw */
>  	/* fw current power state. updated when 1. read from HCPWM or
>  	 * 2. driver lowers power level
>  	 */
> -	/*volatile*/ u8 cpwm;
> -	/*volatile*/ u8 tog; /* toggling */
> -	/*volatile*/ u8 cpwm_tog; /* toggling */
> -	/*volatile*/ u8 tgt_rpwm; /* wanted power state */
> +	/*volatile*/
> +	u8 cpwm;
> +	/*volatile*/
> +	u8 tog; /* toggling */
> +	/*volatile*/
> +	u8 cpwm_tog; /* toggling */
> +	/*volatile*/
> +	u8 tgt_rpwm; /* wanted power state */
>  	uint pwr_mode;
>  	uint smart_ps;
>  	uint alives;
> diff --git a/drivers/staging/rtl8712/rtl871x_xmit.h b/drivers/staging/rtl8712/rtl871x_xmit.h
> index f227828094bf..6d2e12b35670 100644
> --- a/drivers/staging/rtl8712/rtl871x_xmit.h
> +++ b/drivers/staging/rtl8712/rtl871x_xmit.h
> @@ -182,11 +182,16 @@ struct sta_xmit_priv {
>  };
>  
>  struct	hw_txqueue {
> -	/*volatile*/ sint	head;
> -	/*volatile*/ sint	tail;
> -	/*volatile*/ sint	free_sz;	/*in units of 64 bytes*/
> -	/*volatile*/ sint      free_cmdsz;
> -	/*volatile*/ sint	 txsz[8];
> +	/*volatile*/
> +	sint	head;
> +	/*volatile*/
> +	sint	tail;
> +	/*volatile*/
> +	sint	free_sz;	/*in units of 64 bytes*/
> +	/*volatile*/
> +	sint      free_cmdsz;
> +	/*volatile*/
> +	sint	 txsz[8];
>  	uint	ff_hwaddr;
>  	uint	cmd_hwaddr;
>  	sint	ac_tag;
> -- 
> 2.27.0
> 

Actually same for all of these, the code is fine as-is.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
