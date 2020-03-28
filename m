Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C2BA4196A37
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 01:18:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D5EB786A99;
	Sun, 29 Mar 2020 00:18:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qORGU7CqYZf3; Sun, 29 Mar 2020 00:18:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B0B79863DD;
	Sun, 29 Mar 2020 00:18:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B76651BF947
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 00:18:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B03A5862EC
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 00:18:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vl1k2bZdzHvk for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 00:18:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from sender4-op-o14.zoho.com (sender4-op-o14.zoho.com
 [136.143.188.14])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EAF64862AC
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 00:18:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1585441085; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=W+CRaLvuto1FP2ZrNbxmRE70q7uF2BfNP6G4dZtJ7AYzOUMptiW0g4S/nt+NTTCLStjTAazkueVDb1PjKGiVWuqexWH7JMCyCqdQk5Z4ok34uvvAz9QWSl6TykeAu5GEDTBNSQlkVARvejSAbIXginqU0ZH4yPc7P5QRfuSjitM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1585441085;
 h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To;
 bh=tUIVSge/1kfDlQq3F9GH+cXbDSgCQckzahT3W7C1NwU=; 
 b=D64kVO4qpEUKbVIlKBq1R+zNbScIy4Kjkk/3vUoslJ8o4Q/zUo2yUFJKkGE98MY6U/W556ms2mQNTfmwMjGpsskzxqhAyiTb0TRhusslueEIoW/LRXeXwwC30iZn+BOJk42WxH/zqOImPdrqCUKvqi6MOeMUO+Kpf/XHnnMIb9Q=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=hurranet.com;
 spf=pass  smtp.mailfrom=aiman.najjar@hurranet.com;
 dmarc=pass header.from=<aiman.najjar@hurranet.com>
 header.from=<aiman.najjar@hurranet.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1585441085; 
 s=zoho; d=hurranet.com; i=aiman.najjar@hurranet.com;
 h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
 bh=tUIVSge/1kfDlQq3F9GH+cXbDSgCQckzahT3W7C1NwU=;
 b=ra6I1PXj6+tOm/8UkhbGWlCBJoMYIUbN7YI2lfw/g3kNgqUq9Fr6CO2deTfjjNF8
 Wo1LL8PpEJJ6t5qZXJADnPLiu5nFOXxU6NLkFChkEVJiGnKledEZJ0rgumVIAio81VU
 7KYW6d/EvHxEV3OJj4hkJAvEJNuAyHwPAnql/RKI=
Received: from kernel-dev (097-100-022-132.res.spectrum.com [97.100.22.132])
 by mx.zohomail.com with SMTPS id 1585441082893645.3042000375347;
 Sat, 28 Mar 2020 17:18:02 -0700 (PDT)
Date: Sat, 28 Mar 2020 15:30:10 -0400
From: Aiman Najjar <aiman.najjar@hurranet.com>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH v2 4/5] staging: rtl8712: fix multiline derefernce warning
Message-ID: <20200328193008.GA5108@kernel-dev>
References: <20200327080429.GB1627562@kroah.com>
 <cover.1585353747.git.aiman.najjar@hurranet.com>
 <beb6c8c826cdda751f29f985f2b5dedfd2f87914.1585353747.git.aiman.najjar@hurranet.com>
 <197b261122fc6a751a163545044195f2d98d79dc.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <197b261122fc6a751a163545044195f2d98d79dc.camel@perches.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 linux-kernel@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Mar 28, 2020 at 12:17:19PM -0700, Joe Perches wrote:
> On Fri, 2020-03-27 at 20:08 -0400, aimannajjar wrote:
> > This patch fixes the following checkpatch warning in
> > rtl8712x_xmit.c:
> > 
> > WARNING: Avoid multiple line dereference - prefer 'psta->sta_xmitpriv.txseq_tid[pattrib->priority]'
> > 544: FILE: drivers/staging//rtl8712/rtl871x_xmit.c:544:
> > +				pattrib->seqnum = psta->sta_xmitpriv.
> > +						 txseq_tid[pattrib->priority];
> 
> It's always better to try to make the code clearer than
> merely shut up checkpatch bleats.
> 
> > diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
> []
> > @@ -479,70 +479,70 @@ static int make_wlanhdr(struct _adapter *padapter, u8 *hdr,
> >  	__le16 *fctrl = &pwlanhdr->frame_ctl;
> >  
> >  	memset(hdr, 0, WLANHDR_OFFSET);
> > -	SetFrameSubType(fctrl, pattrib->subtype);
> > -	if (pattrib->subtype & WIFI_DATA_TYPE) {
> > +	SetFrameSubType(fctrl, pattr->subtype);
> > +	if (pattr->subtype & WIFI_DATA_TYPE) {
> > 
> 
> The whole following block could be outdented one level
> by changing this test to
> 
> 	if (!(pattr->subtype & WIFI_DATA_TYPE))
> 		return 0;
> 
> >  		if (check_fwstate(pmlmepriv,  WIFI_STATION_STATE)) {
> >  			/* to_ds = 1, fr_ds = 0; */
> >  			SetToDs(fctrl);
> >  			memcpy(pwlanhdr->addr1, get_bssid(pmlmepriv),
> >  				ETH_ALEN);
> The repetitive call to get_bssid(pmlmepriv) could be saved
> by performing it outside this test
> 
> 	u8 bssid = get_bssid(pmlmepriv);
> 
> and then using bssid in each memcpy/ether_addr_copy
> 
> > -			memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
> > -			memcpy(pwlanhdr->addr3, pattrib->dst, ETH_ALEN);
> > +			memcpy(pwlanhdr->addr2, pattr->src, ETH_ALEN);
> > +			memcpy(pwlanhdr->addr3, pattr->dst, ETH_ALEN);
> 
> All of these memcpy could probably use ether_addr_copy if
> 
> 	struct pkt_attrib {
> 		...
> 		u8      dst[ETH_ALEN];
> 		...
> 	};
> 
> was changed to 
> 
> 		u8	dst[ETH_ALEN] __aligned(2);
> 		
> 
> so these would be
> 
> 			ether_addr_copy(pwlanhdr->addr2, pattr->src);
> 
> and pwlanhdr isn't a particularly valuable name
> for an automatic either.  It's hungarian like.
> 
> So I would suggest something like the below that
> avoids any long lines instead and also removes
> unnecessary multi-line statements without renaming.
> 
> ---
>  drivers/staging/rtl8712/rtl871x_xmit.c | 123 ++++++++++++++++-----------------
>  drivers/staging/rtl8712/rtl871x_xmit.h |   2 +-
>  2 files changed, 61 insertions(+), 64 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
> index f0b853..3961dae 100644
> --- a/drivers/staging/rtl8712/rtl871x_xmit.c
> +++ b/drivers/staging/rtl8712/rtl871x_xmit.c
> @@ -477,75 +477,72 @@ static int make_wlanhdr(struct _adapter *padapter, u8 *hdr,
>  	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
>  	struct qos_priv *pqospriv = &pmlmepriv->qospriv;
>  	__le16 *fctrl = &pwlanhdr->frame_ctl;
> +	u8 *bssid;
>  
>  	memset(hdr, 0, WLANHDR_OFFSET);
>  	SetFrameSubType(fctrl, pattrib->subtype);
> -	if (pattrib->subtype & WIFI_DATA_TYPE) {
> -		if (check_fwstate(pmlmepriv,  WIFI_STATION_STATE)) {
> -			/* to_ds = 1, fr_ds = 0; */
> -			SetToDs(fctrl);
> -			memcpy(pwlanhdr->addr1, get_bssid(pmlmepriv),
> -				ETH_ALEN);
> -			memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
> -			memcpy(pwlanhdr->addr3, pattrib->dst, ETH_ALEN);
> -		} else if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
> -			/* to_ds = 0, fr_ds = 1; */
> -			SetFrDs(fctrl);
> -			memcpy(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
> -			memcpy(pwlanhdr->addr2, get_bssid(pmlmepriv),
> -				ETH_ALEN);
> -			memcpy(pwlanhdr->addr3, pattrib->src, ETH_ALEN);
> -		} else if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) ||
> -			   check_fwstate(pmlmepriv,
> -					 WIFI_ADHOC_MASTER_STATE)) {
> -			memcpy(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
> -			memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
> -			memcpy(pwlanhdr->addr3, get_bssid(pmlmepriv),
> -				ETH_ALEN);
> -		} else if (check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
> -			memcpy(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
> -			memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
> -			memcpy(pwlanhdr->addr3, get_bssid(pmlmepriv),
> -				ETH_ALEN);
> -		} else {
> -			return -EINVAL;
> -		}
> +	if (!(pattrib->subtype & WIFI_DATA_TYPE))
> +		return 0;
>  
> -		if (pattrib->encrypt)
> -			SetPrivacy(fctrl);
> -		if (pqospriv->qos_option) {
> -			qc = (unsigned short *)(hdr + pattrib->hdrlen - 2);
> -			if (pattrib->priority)
> -				SetPriority(qc, pattrib->priority);
> -			SetAckpolicy(qc, pattrib->ack_policy);
> -		}
> -		/* TODO: fill HT Control Field */
> -		/* Update Seq Num will be handled by f/w */
> -		{
> -			struct sta_info *psta;
> -			bool bmcst = is_multicast_ether_addr(pattrib->ra);
> -
> -			if (pattrib->psta) {
> -				psta = pattrib->psta;
> -			} else {
> -				if (bmcst)
> -					psta = r8712_get_bcmc_stainfo(padapter);
> -				else
> -					psta =
> -					 r8712_get_stainfo(&padapter->stapriv,
> -					 pattrib->ra);
> -			}
> -			if (psta) {
> -				psta->sta_xmitpriv.txseq_tid
> -						  [pattrib->priority]++;
> -				psta->sta_xmitpriv.txseq_tid[pattrib->priority]
> -						   &= 0xFFF;
> -				pattrib->seqnum = psta->sta_xmitpriv.
> -						  txseq_tid[pattrib->priority];
> -				SetSeqNum(hdr, pattrib->seqnum);
> -			}
> +	bssid = get_bssid(pmlmepriv);
> +
> +	if (check_fwstate(pmlmepriv,  WIFI_STATION_STATE)) {
> +		/* to_ds = 1, fr_ds = 0; */
> +		SetToDs(fctrl);
> +		ether_addr_copy(pwlanhdr->addr1, bssid);
> +		ether_addr_copy(pwlanhdr->addr2, pattrib->src);
> +		ether_addr_copy(pwlanhdr->addr3, pattrib->dst);
> +	} else if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
> +		/* to_ds = 0, fr_ds = 1; */
> +		SetFrDs(fctrl);
> +		ether_addr_copy(pwlanhdr->addr1, pattrib->dst);
> +		ether_addr_copy(pwlanhdr->addr2, bssid);
> +		ether_addr_copy(pwlanhdr->addr3, pattrib->src);
> +	} else if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) ||
> +		   check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) {
> +		ether_addr_copy(pwlanhdr->addr1, pattrib->dst);
> +		ether_addr_copy(pwlanhdr->addr2, pattrib->src);
> +		ether_addr_copy(pwlanhdr->addr3, bssid);
> +	} else if (check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
> +		ether_addr_copy(pwlanhdr->addr1, pattrib->dst);
> +		ether_addr_copy(pwlanhdr->addr2, pattrib->src);
> +		ether_addr_copy(pwlanhdr->addr3, bssid);
> +	} else {
> +		return -EINVAL;
> +	}
> +
> +	if (pattrib->encrypt)
> +		SetPrivacy(fctrl);
> +	if (pqospriv->qos_option) {
> +		qc = (unsigned short *)(hdr + pattrib->hdrlen - 2);
> +		if (pattrib->priority)
> +			SetPriority(qc, pattrib->priority);
> +		SetAckpolicy(qc, pattrib->ack_policy);
> +	}
> +	/* TODO: fill HT Control Field */
> +	/* Update Seq Num will be handled by f/w */
> +	{
> +		struct sta_info *psta;
> +		bool bmcst = is_multicast_ether_addr(pattrib->ra);
> +
> +		if (pattrib->psta)
> +			psta = pattrib->psta;
> +		else if (bmcst)
> +			psta = r8712_get_bcmc_stainfo(padapter);
> +		else
> +			psta = r8712_get_stainfo(&padapter->stapriv,
> +						 pattrib->ra);
> +
> +		if (psta) {
> +			u16 *txtid = psta->sta_xmitpriv.txseq_tid;
> +
> +			txtid[pattrib->priority]++;
> +			txtid[pattrib->priority] &= 0xFFF;
> +			pattrib->seqnum = txtid[pattrib->priority];
> +			SetSeqNum(hdr, pattrib->seqnum);
>  		}
>  	}
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/staging/rtl8712/rtl871x_xmit.h b/drivers/staging/rtl8712/rtl871x_xmit.h
> index f227828..c0c0c7 100644
> --- a/drivers/staging/rtl8712/rtl871x_xmit.h
> +++ b/drivers/staging/rtl8712/rtl871x_xmit.h
> @@ -115,7 +115,7 @@ struct pkt_attrib {
>  	u8	icv_len;
>  	unsigned char iv[8];
>  	unsigned char icv[8];
> -	u8	dst[ETH_ALEN];
> +	u8	dst[ETH_ALEN] __aligned(2);	/* for ether_addr_copy */
>  	u8	src[ETH_ALEN];
>  	u8	ta[ETH_ALEN];
>  	u8	ra[ETH_ALEN];
> 
> 

Thanks very much for your review and suggestions, Joe! That
all makes sense to me, I will submit a revised patchset.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
