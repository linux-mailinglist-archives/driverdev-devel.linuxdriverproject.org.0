Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9AB246620
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 14:15:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DCB3A87801;
	Mon, 17 Aug 2020 12:15:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6mIliYoFlFRJ; Mon, 17 Aug 2020 12:15:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 78648877E3;
	Mon, 17 Aug 2020 12:15:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1FACD1BF40E
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 12:15:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0886B2035E
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 12:15:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OWfu83WQuDXj for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 12:15:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 721332033E
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 12:15:18 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id c4so13152944otf.12
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 05:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HJ0m+miDorhqglJ9JrK44iTq3d9R15TmbjC29old1f8=;
 b=KQ04CZsRLDiNek1Hq6BgWjnM11s2YmAiDjqEVGZ1TB6F4rCxf78rX4jbJ0CzT3vabY
 xrX4JEoDeIRQkHsLGU1+gcp8w5QWNQcEyBm3wuShwRxBfydODrCE4cRQV+E7WBzKB44r
 nItPN0459qY5GQ/vDZ0NyzENyHv44GovdpKFSl4hiVWaOB2zEjXEpxHT00gUoMHFf0Aj
 T3icpJ/3pjaEvvW0UMNkSAFYHa1jbJwCP0vrwjpIL/uytt4RzckTqwRdvf5FUeTb7MGh
 bx2bsLCHbfEXkOD8bVoKRj4Mx5bjsmewyyPYaN17ohutCV8HXhFZHeJnJ+WLeKJ12UV0
 gebw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=HJ0m+miDorhqglJ9JrK44iTq3d9R15TmbjC29old1f8=;
 b=ZV3FGrM63GoQpTQ/vV3cQd8VjAx9l494JBWq54vbn4vFjW6+eNoBX3LT81a02ob5SH
 0auHVne2RTBZu6U8zmt2T1tksFVZYDmLu+uKSigkNLigvOsgc6jvxC+0WooeXc1qvnN1
 AYfcsbByDKx568c1Sdl7rClgEfUxluaj8zR3sWHcIre0dNbC6kutsWhCHgL1HMLdhkWG
 X7ZOfwUJuT36WDilteJd3leI1gKPkcmFHTwTdMLP6tWty86nFRUlbvqU4LqGIq90P9FC
 aQZDEjC/snOPQz3L5YMfIeacT3P6z/DyyPW0yRounH5bbNUwyqegzb9QQ/jdzNBzF78R
 ANKQ==
X-Gm-Message-State: AOAM530qmJbfdQnCWUe3N24W8iSJwN/LIeFoyPwQp+zznhPZklyUeLhl
 jXHTmLBV6k7sqrVfWqZnbg==
X-Google-Smtp-Source: ABdhPJy4QfXEUBbWmVDtAzyWm157/pCVwSVPWhR0mJ058Fnm0lC/IAUOoEeTjBc9itF58Cw5xKVyqA==
X-Received: by 2002:a05:6830:1346:: with SMTP id
 r6mr11152982otq.325.1597666517323; 
 Mon, 17 Aug 2020 05:15:17 -0700 (PDT)
Received: from serve.minyard.net ([47.184.146.204])
 by smtp.gmail.com with ESMTPSA id l17sm3384049otn.2.2020.08.17.05.15.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 05:15:16 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id 846E11800D4;
 Mon, 17 Aug 2020 12:15:15 +0000 (UTC)
Date: Mon, 17 Aug 2020 07:15:14 -0500
From: Corey Minyard <minyard@acm.org>
To: Allen Pais <allen.cryptic@gmail.com>
Subject: Re: [PATCH] char: ipmi: convert tasklets to use new tasklet_setup()
 API
Message-ID: <20200817121514.GE2865@minyard.net>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-3-allen.cryptic@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200817091617.28119-3-allen.cryptic@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Reply-To: minyard@acm.org
Cc: ulf.hansson@linaro.org, linux-atm-general@lists.sourceforge.net,
 manohar.vanga@gmail.com, airlied@linux.ie, Allen Pais <allen.lkml@gmail.com>,
 linux-hyperv@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, James.Bottomley@HansenPartnership.com,
 anton.ivanov@cambridgegreys.com, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 jassisinghbrar@gmail.com, 3chas3@gmail.com, intel-gfx@lists.freedesktop.org,
 kuba@kernel.org, mporter@kernel.crashing.org, jdike@addtoit.com,
 keescook@chromium.org, oakad@yahoo.com, s.hauer@pengutronix.de,
 linux-input@vger.kernel.org, linux-um@lists.infradead.org,
 linux-block@vger.kernel.org, broonie@kernel.org,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, axboe@kernel.dk,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, martyn@welchs.me.uk,
 dmitry.torokhov@gmail.com, linux-mmc@vger.kernel.org, sre@kernel.org,
 linux-spi@vger.kernel.org, alex.bou9@gmail.com, stefanr@s5r6.in-berlin.de,
 daniel@ffwll.ch, linux-ntb@googlegroups.com,
 Romain Perier <romain.perier@gmail.com>, shawnguo@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 17, 2020 at 02:45:57PM +0530, Allen Pais wrote:
> From: Allen Pais <allen.lkml@gmail.com>
> 
> In preparation for unconditionally passing the
> struct tasklet_struct pointer to all tasklet
> callbacks, switch to using the new tasklet_setup()
> and from_tasklet() to pass the tasklet pointer explicitly.
> 
> Signed-off-by: Romain Perier <romain.perier@gmail.com>
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>

This looks good to me.

Reviewed-by: Corey Minyard <cminyard@mvista.com>

Are you planning to push this, or do you want me to take it?  If you
want me to take it, what is the urgency?

-corey

> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 737c0b6b24ea..e1814b6a1225 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -39,7 +39,7 @@
>  
>  static struct ipmi_recv_msg *ipmi_alloc_recv_msg(void);
>  static int ipmi_init_msghandler(void);
> -static void smi_recv_tasklet(unsigned long);
> +static void smi_recv_tasklet(struct tasklet_struct *t);
>  static void handle_new_recv_msgs(struct ipmi_smi *intf);
>  static void need_waiter(struct ipmi_smi *intf);
>  static int handle_one_recv_msg(struct ipmi_smi *intf,
> @@ -3430,9 +3430,8 @@ int ipmi_add_smi(struct module         *owner,
>  	intf->curr_seq = 0;
>  	spin_lock_init(&intf->waiting_rcv_msgs_lock);
>  	INIT_LIST_HEAD(&intf->waiting_rcv_msgs);
> -	tasklet_init(&intf->recv_tasklet,
> -		     smi_recv_tasklet,
> -		     (unsigned long) intf);
> +	tasklet_setup(&intf->recv_tasklet,
> +		     smi_recv_tasklet);
>  	atomic_set(&intf->watchdog_pretimeouts_to_deliver, 0);
>  	spin_lock_init(&intf->xmit_msgs_lock);
>  	INIT_LIST_HEAD(&intf->xmit_msgs);
> @@ -4467,10 +4466,10 @@ static void handle_new_recv_msgs(struct ipmi_smi *intf)
>  	}
>  }
>  
> -static void smi_recv_tasklet(unsigned long val)
> +static void smi_recv_tasklet(struct tasklet_struct *t)
>  {
>  	unsigned long flags = 0; /* keep us warning-free. */
> -	struct ipmi_smi *intf = (struct ipmi_smi *) val;
> +	struct ipmi_smi *intf = from_tasklet(intf, t, recv_tasklet);
>  	int run_to_completion = intf->run_to_completion;
>  	struct ipmi_smi_msg *newmsg = NULL;
>  
> @@ -4542,7 +4541,7 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
>  		spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
>  
>  	if (run_to_completion)
> -		smi_recv_tasklet((unsigned long) intf);
> +		smi_recv_tasklet(&intf->recv_tasklet);
>  	else
>  		tasklet_schedule(&intf->recv_tasklet);
>  }
> -- 
> 2.17.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
