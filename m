Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34713E5F8B
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 22:33:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CA64686074;
	Sat, 26 Oct 2019 20:33:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eCMy0Rjmty6p; Sat, 26 Oct 2019 20:33:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AFBBA85EF9;
	Sat, 26 Oct 2019 20:33:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 777221BF5E6
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 20:32:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6D904203CF
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 20:32:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0P6BXdYgFaCD for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 20:32:57 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail2-relais-roc.national.inria.fr
 (mail2-relais-roc.national.inria.fr [192.134.164.83])
 by silver.osuosl.org (Postfix) with ESMTPS id 2AB0920111
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 20:32:56 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.68,233,1569276000"; d="scan'208";a="408480597"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien)
 ([89.2.166.121])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Oct 2019 22:32:55 +0200
Date: Sat, 26 Oct 2019 22:32:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/3] staging: rtl8712: Fix Alignment
 of open parenthesis
In-Reply-To: <c9987f6ee311c7356a9f963439d37e4a9696f8eb.1572121059.git.cristianenavescardoso09@gmail.com>
Message-ID: <alpine.DEB.2.21.1910262231270.5545@hadrien>
References: <cover.1572121059.git.cristianenavescardoso09@gmail.com>
 <c9987f6ee311c7356a9f963439d37e4a9696f8eb.1572121059.git.cristianenavescardoso09@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Sat, 26 Oct 2019, Cristiane Naves wrote:

> Fix alignment should match open parenthesis. Issue found by checkpatch.
>
> Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl8712_recv.c | 30 +++++++++++++++---------------
>  1 file changed, 15 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> index af12c16..12a3c64 100644
> --- a/drivers/staging/rtl8712/rtl8712_recv.c
> +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> @@ -61,13 +61,13 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
>  		precvbuf->ref_cnt = 0;
>  		precvbuf->adapter = padapter;
>  		list_add_tail(&precvbuf->list,
> -				 &(precvpriv->free_recv_buf_queue.queue));
> +			      &(precvpriv->free_recv_buf_queue.queue));
>  		precvbuf++;
>  	}
>  	precvpriv->free_recv_buf_queue_cnt = NR_RECVBUFF;
>  	tasklet_init(&precvpriv->recv_tasklet,
> -	     (void(*)(unsigned long))recv_tasklet,
> -	     (unsigned long)padapter);
> +		     (void(*)(unsigned long))recv_tasklet,
> +		     (unsigned long)padapter);
>  	skb_queue_head_init(&precvpriv->rx_skb_queue);
>
>  	skb_queue_head_init(&precvpriv->free_recv_skb_queue);
> @@ -140,7 +140,7 @@ void r8712_free_recvframe(union recv_frame *precvframe,
>  }
>
>  static void update_recvframe_attrib_from_recvstat(struct rx_pkt_attrib *pattrib,
> -					   struct recv_stat *prxstat)
> +						  struct recv_stat *prxstat)
>  {
>  	u16 drvinfo_sz;
>
> @@ -177,7 +177,7 @@ static void update_recvframe_attrib_from_recvstat(struct rx_pkt_attrib *pattrib,
>
>  /*perform defrag*/
>  static union recv_frame *recvframe_defrag(struct _adapter *adapter,
> -				   struct  __queue *defrag_q)
> +					  struct  __queue *defrag_q)
>  {
>  	struct list_head *plist, *phead;
>  	u8 wlanhdr_offset;
> @@ -379,7 +379,7 @@ static void amsdu_to_msdu(struct _adapter *padapter, union recv_frame *prframe)
>  		/* convert hdr + possible LLC headers into Ethernet header */
>  		eth_type = (sub_skb->data[6] << 8) | sub_skb->data[7];
>  		if (sub_skb->len >= 8 &&
> -		   ((!memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) &&
> +		    ((!memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) &&
>  		   eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
>  		   !memcmp(sub_skb->data, bridge_tunnel_header, SNAP_SIZE))) {

I have the impression that the alignment is not really optimal for reading
here.  It is hard to see what is the argument of which operator. It looks
like at least there are some parentheses that eth_type should be aligned
with the right side of as well.

julia

>  			/* remove RFC1042 or Bridge-Tunnel encapsulation and
> @@ -387,18 +387,18 @@ static void amsdu_to_msdu(struct _adapter *padapter, union recv_frame *prframe)
>  			 */
>  			skb_pull(sub_skb, SNAP_SIZE);
>  			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->src,
> -				ETH_ALEN);
> +			       ETH_ALEN);
>  			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->dst,
> -				ETH_ALEN);
> +			       ETH_ALEN);
>  		} else {
>  			__be16 len;
>  			/* Leave Ethernet header part of hdr and full payload */
>  			len = htons(sub_skb->len);
>  			memcpy(skb_push(sub_skb, 2), &len, 2);
>  			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->src,
> -				ETH_ALEN);
> +			       ETH_ALEN);
>  			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->dst,
> -				ETH_ALEN);
> +			       ETH_ALEN);
>  		}
>  		/* Indicate the packets to upper layer */
>  		if (sub_skb) {
> @@ -472,7 +472,7 @@ static int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl,
>  }
>
>  static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
> -			      union recv_frame *prframe)
> +				     union recv_frame *prframe)
>  {
>  	struct list_head *phead, *plist;
>  	union recv_frame *pnextrframe;
> @@ -499,8 +499,8 @@ static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl,
>  }
>
>  int r8712_recv_indicatepkts_in_order(struct _adapter *padapter,
> -			       struct recv_reorder_ctrl *preorder_ctrl,
> -			       int bforced)
> +				     struct recv_reorder_ctrl *preorder_ctrl,
> +				     int bforced)
>  {
>  	struct list_head *phead, *plist;
>  	union recv_frame *prframe;
> @@ -555,7 +555,7 @@ int r8712_recv_indicatepkts_in_order(struct _adapter *padapter,
>  }
>
>  static int recv_indicatepkt_reorder(struct _adapter *padapter,
> -			     union recv_frame *prframe)
> +				    union recv_frame *prframe)
>  {
>  	unsigned long irql;
>  	struct rx_pkt_attrib *pattrib = &prframe->u.hdr.attrib;
> @@ -624,7 +624,7 @@ void r8712_reordering_ctrl_timeout_handler(void *pcontext)
>  }
>
>  static int r8712_process_recv_indicatepkts(struct _adapter *padapter,
> -			      union recv_frame *prframe)
> +					   union recv_frame *prframe)
>  {
>  	int retval = _SUCCESS;
>  	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/c9987f6ee311c7356a9f963439d37e4a9696f8eb.1572121059.git.cristianenavescardoso09%40gmail.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
