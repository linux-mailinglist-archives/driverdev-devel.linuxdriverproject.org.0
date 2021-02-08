Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA80312AEF
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 07:49:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5E0412041E;
	Mon,  8 Feb 2021 06:49:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N0HcZ7PpKeDy; Mon,  8 Feb 2021 06:49:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9B1F520403;
	Mon,  8 Feb 2021 06:49:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 870BF1BF41E
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 06:49:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 834F08588C
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 06:49:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZIpvb7bfRf6v for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 06:49:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3548A85381
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 06:49:36 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id C914B64E6D;
 Mon,  8 Feb 2021 06:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612766975;
 bh=j5eBuMrXOq7cxtxz9OVRPiCP6VDJ6xKCOPp5qbvijo8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=f6zv+t6LObLAAtdd39dm6f9MLbAtTiC6vBOBISqGDKvyzjVYvCSdYOuhWhS61dKJq
 iApxaB/0BsaS8Gv93UoS1yPxsVggdefuGQVsNAChvMtMt2g19zpRP6wYy37rfEWtOh
 J8U3jN36xtz+MyEumiqSDXKOagpX+HqHywTGZ10w=
Date: Mon, 8 Feb 2021 07:49:31 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: dev.dragon@bk.ru
Subject: Re: [96e8740] [PATCH 2/2] Staging: wimax: i2400m: some readability
 improvements.
Message-ID: <YCDe++lsnROljLNh@kroah.com>
References: <fb815f4d3d75cdb10add70378de1271bc8d6297e.camel@perches.com>
 <96e87403e3d3d825ea8fad6108aef905b71439b3.1612722827.git.dev.dragon@bk.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <96e87403e3d3d825ea8fad6108aef905b71439b3.1612722827.git.dev.dragon@bk.ru>
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
Cc: joe@perches.com, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Feb 07, 2021 at 10:11:24PM +0300, dev.dragon@bk.ru wrote:
> From: Dmitrii Wolf <dev.dragon@bk.ru>
> 
>  Hello, developers!
>  Sorry for the late answer. As you know - i am a newbie and it is my first kernel patch.
>  After reading kernelnewbies.or, ./Documentation/process/ files and viewing FOSDEM's videpo
>  "Write and Submit your first Linux kernel Patch", i took a decision to send you some
>  changes. I understand that it is annoying to get this "style fixing" patches. So, the
>  Joe Perches's idea to improve code readability was implemented in second patch. Also,
>  some new readability improvements added to it.
>  Thanks in advance!
> 
> Signed-off-by: Dmitrii Wolf <dev.dragon@bk.ru>
> ---
>  drivers/staging/wimax/i2400m/netdev.c |  8 ++++----
>  drivers/staging/wimax/i2400m/rx.c     | 25 +++++++++++++------------
>  2 files changed, 17 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/staging/wimax/i2400m/netdev.c b/drivers/staging/wimax/i2400m/netdev.c
> index 0895a2e441d3..5f79ccc87656 100644
> --- a/drivers/staging/wimax/i2400m/netdev.c
> +++ b/drivers/staging/wimax/i2400m/netdev.c
> @@ -366,13 +366,13 @@ netdev_tx_t i2400m_hard_start_xmit(struct sk_buff *skb,
>  		result = i2400m_net_wake_tx(i2400m, net_dev, skb);
>  	else
>  		result = i2400m_net_tx(i2400m, net_dev, skb);
> -	if (result <  0) {
> -drop:
> -		net_dev->stats.tx_dropped++;
> -	} else {
> +	if (result >= 0) {
>  		net_dev->stats.tx_packets++;
>  		net_dev->stats.tx_bytes += skb->len;
>  	}
> +drop:
> +	net_dev->stats.tx_dropped++;
> +
>  	dev_kfree_skb(skb);
>  	d_fnend(3, dev, "(skb %p net_dev %p) = %d\n", skb, net_dev, result);
>  	return NETDEV_TX_OK;
> diff --git a/drivers/staging/wimax/i2400m/rx.c b/drivers/staging/wimax/i2400m/rx.c
> index 807bd3db69e9..fdc5da409683 100644
> --- a/drivers/staging/wimax/i2400m/rx.c
> +++ b/drivers/staging/wimax/i2400m/rx.c
> @@ -194,8 +194,8 @@ void i2400m_report_hook_work(struct work_struct *ws)
>  		spin_unlock_irqrestore(&i2400m->rx_lock, flags);
>  		if (list_empty(&list))
>  			break;
> -		else
> -			d_printf(1, dev, "processing queued reports\n");
> +
> +		d_printf(1, dev, "processing queued reports\n");
>  		list_for_each_entry_safe(args, args_next, &list, list_node) {
>  			d_printf(2, dev, "processing queued report %p\n", args);
>  			i2400m_report_hook(i2400m, args->l3l4_hdr, args->size);
> @@ -756,16 +756,15 @@ unsigned __i2400m_roq_update_ws(struct i2400m *i2400m, struct i2400m_roq *roq,
>  		roq_data_itr = (struct i2400m_roq_data *) &skb_itr->cb;
>  		nsn_itr = __i2400m_roq_nsn(roq, roq_data_itr->sn);
>  		/* NSN bounds assumed correct (checked when it was queued) */
> -		if (nsn_itr < new_nws) {
> -			d_printf(2, dev, "ERX: roq %p - release skb %p "
> -				 "(nsn %u/%u new nws %u)\n",
> -				 roq, skb_itr, nsn_itr, roq_data_itr->sn,
> -				 new_nws);
> -			__skb_unlink(skb_itr, &roq->queue);
> -			i2400m_net_erx(i2400m, skb_itr, roq_data_itr->cs);
> -		} else {
> +		if (nsn_itr >= new_nws) {
>  			break;	/* rest of packets all nsn_itr > nws */
>  		}
> +		d_printf(2, dev, "ERX: roq %p - release skb %p "
> +			 "(nsn %u/%u new nws %u)\n",
> +			 roq, skb_itr, nsn_itr, roq_data_itr->sn,
> +			 new_nws);
> +		__skb_unlink(skb_itr, &roq->queue);
> +		i2400m_net_erx(i2400m, skb_itr, roq_data_itr->cs);
>  	}
>  	roq->ws = sn;
>  	return new_nws;
> @@ -904,8 +903,9 @@ void i2400m_roq_queue_update_ws(struct i2400m *i2400m, struct i2400m_roq *roq,
>  		struct i2400m_roq_data *roq_data;
>  		roq_data = (struct i2400m_roq_data *) &skb->cb;
>  		i2400m_net_erx(i2400m, skb, roq_data->cs);
> -	} else
> +	} else {
>  		__i2400m_roq_queue(i2400m, roq, skb, sn, nsn);
> +	}
>  
>  	__i2400m_roq_update_ws(i2400m, roq, sn + 1);
>  	i2400m_roq_log_add(i2400m, roq, I2400M_RO_TYPE_PACKET_WS,
> @@ -1321,9 +1321,10 @@ void i2400m_unknown_barker(struct i2400m *i2400m,
>  			       8, 4, buf, 64, 0);
>  		printk(KERN_ERR "%s... (only first 64 bytes "
>  		       "dumped)\n", prefix);
> -	} else
> +	} else {
>  		print_hex_dump(KERN_ERR, prefix, DUMP_PREFIX_OFFSET,
>  			       8, 4, buf, size, 0);
> +	}
>  }
>  EXPORT_SYMBOL(i2400m_unknown_barker);
>  
> -- 
> 2.25.1
> 

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- Your patch did many different things all at once, making it difficult
  to review.  All Linux kernel patches need to only do one thing at a
  time.  If you need to do multiple things (such as clean up all coding
  style issues in a file/driver), do it in a sequence of patches, each
  one doing only one thing.  This will make it easier to review the
  patches to ensure that they are correct, and to help alleviate any
  merge issues that larger patches can cause.

- You did not specify a description of why the patch is needed, or
  possibly, any description at all, in the email body.  Please read the
  section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what is needed in order to
  properly describe the change.

- You did not write a descriptive Subject: for the patch, allowing Greg,
  and everyone else, to know what this patch is all about.  Please read
  the section entitled "The canonical patch format" in the kernel file,
  Documentation/SubmittingPatches for what a proper Subject: line should
  look like.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
