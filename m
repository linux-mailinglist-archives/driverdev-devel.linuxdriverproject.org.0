Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C6D1F19528A
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Mar 2020 09:04:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 307B72635F;
	Fri, 27 Mar 2020 08:04:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dL17AjY0E1AP; Fri, 27 Mar 2020 08:04:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8B5DC2624F;
	Fri, 27 Mar 2020 08:04:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9E0041BF3BA
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 08:04:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9ACA2895A1
 for <devel@linuxdriverproject.org>; Fri, 27 Mar 2020 08:04:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vuP4ww8ap0KF for <devel@linuxdriverproject.org>;
 Fri, 27 Mar 2020 08:04:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9F89B895A0
 for <devel@driverdev.osuosl.org>; Fri, 27 Mar 2020 08:04:32 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0940720714;
 Fri, 27 Mar 2020 08:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585296272;
 bh=rPnAP0Xfa76gafW25Xfs6v9g+Ufjrv7cMkDFifQ4Yqo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kD1gwN1gNWBTdi/O6BL6cEHljnsEuXu6AaMI/A35q+BWFkD+9XvByemufVB7BQbUb
 yVFFYZJvyoLJ2HEh1f1znFctppK+VlGPVsBvmcUI1FU8MNghgAaq87UOwK6+aiG0kQ
 yon0T/r+7Ys+en/rIfBy2M+OOmJdUpyfSCOA4wP4=
Date: Fri, 27 Mar 2020 09:04:29 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Aiman Najjar <aiman.najjar@hurranet.com>
Subject: Re: [PATCH] staging: rtl8712: fix checkpatch warnings
Message-ID: <20200327080429.GB1627562@kroah.com>
References: <20200326055616.GA3718@kernel-dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326055616.GA3718@kernel-dev>
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
 linux-kernel@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Mar 26, 2020 at 01:56:16AM -0400, Aiman Najjar wrote:
> This patch fixes remaining warnings in rtl871x_xmit.c of
> rtl8712 staging driver
> 
> The following warnings are resolved:
> 
> WARNING: line over 80 characters
> \#74: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:74:
> +	* Please allocate memory with the sz = (struct xmit_frame) * NR_XMITFRAME,
> 
> WARNING: line over 80 characters
> \#79: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:79:
> +		kmalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4, GFP_ATOMIC);
> 
> WARNING: line over 80 characters
> \#129: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:129:
> +		pxmitbuf->pallocated_buf = kmalloc(MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ,
> 
> WARNING: Avoid multiple line dereference - prefer 'psecuritypriv->XGrptxmickey'
> \#378: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:378:
> +					psecuritypriv->
> +					XGrptxmickey[psecuritypriv->
> 
> WARNING: Avoid multiple line dereference - prefer 'psecuritypriv->XGrpKeyid'
> \#379: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:379:
> +					XGrptxmickey[psecuritypriv->
> +					XGrpKeyid].skey);
> 
> WARNING: Avoid multiple line dereference - prefer 'psta->sta_xmitpriv.txseq_tid[pattrib->priority]'
> \#544: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:544:
> +				pattrib->seqnum = psta->sta_xmitpriv.
> +						 txseq_tid[pattrib->priority];
> 
> WARNING: Avoid multiple line dereference - prefer 'psecuritypriv->PrivacyKeyIndex'
> \#636: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:636:
> +					      (u8)psecuritypriv->
> +					      PrivacyKeyIndex);
> 
> WARNING: Avoid multiple line dereference - prefer 'psecuritypriv->XGrpKeyid'
> \#643: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:643:
> +						   (u8)psecuritypriv->
> +						   XGrpKeyid);
> 
> WARNING: Avoid multiple line dereference - prefer 'psecuritypriv->XGrpKeyid'
> \#652: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:652:
> +						   (u8)psecuritypriv->
> +						   XGrpKeyid);
> 
> Signed-off-by: aimannajjar <aiman.najjar@hurranet.com>
> ---
>  drivers/staging/rtl8712/rtl871x_xmit.c | 85 +++++++++++++-------------
>  1 file changed, 41 insertions(+), 44 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
> index f0b85338b567..82df5e26f8c8 100644
> --- a/drivers/staging/rtl8712/rtl871x_xmit.c
> +++ b/drivers/staging/rtl8712/rtl871x_xmit.c
> @@ -71,12 +71,13 @@ int _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
>  	_init_queue(&pxmitpriv->apsd_queue);
>  	_init_queue(&pxmitpriv->free_xmit_queue);
>  	/*
> -	 * Please allocate memory with the sz = (struct xmit_frame) * NR_XMITFRAME,
> +	 * Please allocate memory with sz = (struct xmit_frame) * NR_XMITFRAME,
>  	 * and initialize free_xmit_frame below.
>  	 * Please also apply  free_txobj to link_up all the xmit_frames...
>  	 */
>  	pxmitpriv->pallocated_frame_buf =
> -		kmalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4, GFP_ATOMIC);
> +		kmalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4,
> +			GFP_ATOMIC);
>  	if (!pxmitpriv->pallocated_frame_buf) {
>  		pxmitpriv->pxmit_frame_buf = NULL;
>  		return -ENOMEM;
> @@ -126,8 +127,8 @@ int _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
>  	pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmitbuf;
>  	for (i = 0; i < NR_XMITBUFF; i++) {
>  		INIT_LIST_HEAD(&pxmitbuf->list);
> -		pxmitbuf->pallocated_buf = kmalloc(MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ,
> -						   GFP_ATOMIC);
> +		pxmitbuf->pallocated_buf =
> +			kmalloc(MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ, GFP_ATOMIC);
>  		if (!pxmitbuf->pallocated_buf)
>  			return -ENOMEM;
>  		pxmitbuf->pbuf = pxmitbuf->pallocated_buf + XMITBUF_ALIGN_SZ -
> @@ -350,7 +351,7 @@ static int xmitframe_addmic(struct _adapter *padapter,
>  	struct	sta_info *stainfo;
>  	struct	qos_priv *pqospriv = &(padapter->mlmepriv.qospriv);
>  	struct	pkt_attrib  *pattrib = &pxmitframe->attrib;
> -	struct	security_priv *psecuritypriv = &padapter->securitypriv;
> +	struct	security_priv *psecpriv = &padapter->securitypriv;
>  	struct	xmit_priv *pxmitpriv = &padapter->xmitpriv;
>  	u8 priority[4] = {0x0, 0x0, 0x0, 0x0};
>  	bool bmcst = is_multicast_ether_addr(pattrib->ra);
> @@ -368,15 +369,14 @@ static int xmitframe_addmic(struct _adapter *padapter,
>  					   0x0, 0x0};
>  			pframe = pxmitframe->buf_addr + TXDESC_OFFSET;
>  			if (bmcst) {
> -				if (!memcmp(psecuritypriv->XGrptxmickey
> -				   [psecuritypriv->XGrpKeyid].skey,
> +				if (!memcmp(psecpriv->XGrptxmickey
> +				   [psecpriv->XGrpKeyid].skey,
>  				   null_key, 16))
>  					return -ENOMEM;
>  				/*start to calculate the mic code*/
>  				r8712_secmicsetkey(&micdata,
> -					 psecuritypriv->
> -					 XGrptxmickey[psecuritypriv->
> -					XGrpKeyid].skey);
> +					psecpriv->XGrptxmickey
> +					[psecpriv->XGrpKeyid].skey);
>  			} else {
>  				if (!memcmp(&stainfo->tkiptxmickey.skey[0],
>  					    null_key, 16))
> @@ -416,7 +416,7 @@ static int xmitframe_addmic(struct _adapter *padapter,
>  					length = pattrib->last_txcmdsz -
>  						  pattrib->hdrlen -
>  						  pattrib->iv_len -
> -						  ((psecuritypriv->sw_encrypt)
> +						  ((psecpriv->sw_encrypt)
>  						  ? pattrib->icv_len : 0);
>  					r8712_secmicappend(&micdata, payload,
>  							   length);
> @@ -424,7 +424,7 @@ static int xmitframe_addmic(struct _adapter *padapter,
>  				} else {
>  					length = pxmitpriv->frag_len -
>  					    pattrib->hdrlen - pattrib->iv_len -
> -					    ((psecuritypriv->sw_encrypt) ?
> +					    ((psecpriv->sw_encrypt) ?
>  					    pattrib->icv_len : 0);
>  					r8712_secmicappend(&micdata, payload,
>  							   length);
> @@ -469,7 +469,7 @@ static sint xmitframe_swencrypt(struct _adapter *padapter,
>  }
>  
>  static int make_wlanhdr(struct _adapter *padapter, u8 *hdr,
> -			struct pkt_attrib *pattrib)
> +			struct pkt_attrib *pattr)
>  {
>  	u16 *qc;
>  
> @@ -479,70 +479,70 @@ static int make_wlanhdr(struct _adapter *padapter, u8 *hdr,
>  	__le16 *fctrl = &pwlanhdr->frame_ctl;
>  
>  	memset(hdr, 0, WLANHDR_OFFSET);
> -	SetFrameSubType(fctrl, pattrib->subtype);
> -	if (pattrib->subtype & WIFI_DATA_TYPE) {
> +	SetFrameSubType(fctrl, pattr->subtype);
> +	if (pattr->subtype & WIFI_DATA_TYPE) {
>  		if (check_fwstate(pmlmepriv,  WIFI_STATION_STATE)) {
>  			/* to_ds = 1, fr_ds = 0; */
>  			SetToDs(fctrl);
>  			memcpy(pwlanhdr->addr1, get_bssid(pmlmepriv),
>  				ETH_ALEN);
> -			memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
> -			memcpy(pwlanhdr->addr3, pattrib->dst, ETH_ALEN);
> +			memcpy(pwlanhdr->addr2, pattr->src, ETH_ALEN);
> +			memcpy(pwlanhdr->addr3, pattr->dst, ETH_ALEN);
>  		} else if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
>  			/* to_ds = 0, fr_ds = 1; */
>  			SetFrDs(fctrl);
> -			memcpy(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
> +			memcpy(pwlanhdr->addr1, pattr->dst, ETH_ALEN);
>  			memcpy(pwlanhdr->addr2, get_bssid(pmlmepriv),
>  				ETH_ALEN);
> -			memcpy(pwlanhdr->addr3, pattrib->src, ETH_ALEN);
> +			memcpy(pwlanhdr->addr3, pattr->src, ETH_ALEN);
>  		} else if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) ||
>  			   check_fwstate(pmlmepriv,
>  					 WIFI_ADHOC_MASTER_STATE)) {
> -			memcpy(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
> -			memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
> +			memcpy(pwlanhdr->addr1, pattr->dst, ETH_ALEN);
> +			memcpy(pwlanhdr->addr2, pattr->src, ETH_ALEN);
>  			memcpy(pwlanhdr->addr3, get_bssid(pmlmepriv),
>  				ETH_ALEN);
>  		} else if (check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
> -			memcpy(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
> -			memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
> +			memcpy(pwlanhdr->addr1, pattr->dst, ETH_ALEN);
> +			memcpy(pwlanhdr->addr2, pattr->src, ETH_ALEN);
>  			memcpy(pwlanhdr->addr3, get_bssid(pmlmepriv),
>  				ETH_ALEN);
>  		} else {
>  			return -EINVAL;
>  		}
>  
> -		if (pattrib->encrypt)
> +		if (pattr->encrypt)
>  			SetPrivacy(fctrl);
>  		if (pqospriv->qos_option) {
> -			qc = (unsigned short *)(hdr + pattrib->hdrlen - 2);
> -			if (pattrib->priority)
> -				SetPriority(qc, pattrib->priority);
> -			SetAckpolicy(qc, pattrib->ack_policy);
> +			qc = (unsigned short *)(hdr + pattr->hdrlen - 2);
> +			if (pattr->priority)
> +				SetPriority(qc, pattr->priority);
> +			SetAckpolicy(qc, pattr->ack_policy);
>  		}
>  		/* TODO: fill HT Control Field */
>  		/* Update Seq Num will be handled by f/w */
>  		{
>  			struct sta_info *psta;
> -			bool bmcst = is_multicast_ether_addr(pattrib->ra);
> +			bool bmcst = is_multicast_ether_addr(pattr->ra);
>  
> -			if (pattrib->psta) {
> -				psta = pattrib->psta;
> +			if (pattr->psta) {
> +				psta = pattr->psta;
>  			} else {
>  				if (bmcst)
>  					psta = r8712_get_bcmc_stainfo(padapter);
>  				else
>  					psta =
>  					 r8712_get_stainfo(&padapter->stapriv,
> -					 pattrib->ra);
> +					 pattr->ra);
>  			}
>  			if (psta) {
>  				psta->sta_xmitpriv.txseq_tid
> -						  [pattrib->priority]++;
> -				psta->sta_xmitpriv.txseq_tid[pattrib->priority]
> +						  [pattr->priority]++;
> +				psta->sta_xmitpriv.txseq_tid[pattr->priority]
>  						   &= 0xFFF;
> -				pattrib->seqnum = psta->sta_xmitpriv.
> -						  txseq_tid[pattrib->priority];
> -				SetSeqNum(hdr, pattrib->seqnum);
> +				pattr->seqnum =
> +				  psta->sta_xmitpriv.txseq_tid[pattr->priority];
> +				SetSeqNum(hdr, pattr->seqnum);
>  			}
>  		}
>  	}
> @@ -589,7 +589,7 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
>  	addr_t addr;
>  	u8 *pframe, *mem_start, *ptxdesc;
>  	struct sta_info		*psta;
> -	struct security_priv	*psecuritypriv = &padapter->securitypriv;
> +	struct security_priv	*psecpriv = &padapter->securitypriv;
>  	struct mlme_priv	*pmlmepriv = &padapter->mlmepriv;
>  	struct xmit_priv	*pxmitpriv = &padapter->xmitpriv;
>  	struct pkt_attrib	*pattrib = &pxmitframe->attrib;
> @@ -632,15 +632,13 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
>  				case _WEP40_:
>  				case _WEP104_:
>  					WEP_IV(pattrib->iv, psta->txpn,
> -					       (u8)psecuritypriv->
> -					       PrivacyKeyIndex);
> +					       (u8)psecpriv->PrivacyKeyIndex);
>  					break;
>  				case _TKIP_:
>  					if (bmcst)
>  						TKIP_IV(pattrib->iv,
>  						    psta->txpn,
> -						    (u8)psecuritypriv->
> -						    XGrpKeyid);
> +						    (u8)psecpriv->XGrpKeyid);
>  					else
>  						TKIP_IV(pattrib->iv, psta->txpn,
>  							0);
> @@ -648,8 +646,7 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
>  				case _AES_:
>  					if (bmcst)
>  						AES_IV(pattrib->iv, psta->txpn,
> -						    (u8)psecuritypriv->
> -						    XGrpKeyid);
> +						    (u8)psecpriv->XGrpKeyid);
>  					else
>  						AES_IV(pattrib->iv, psta->txpn,
>  						       0);
> -- 
> 2.20.1
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
