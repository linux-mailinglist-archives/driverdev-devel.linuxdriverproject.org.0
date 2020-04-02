Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 665EC19C1DA
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 15:13:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 96C4B86819;
	Thu,  2 Apr 2020 13:13:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ouaglDBTD+uV; Thu,  2 Apr 2020 13:13:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 97C75855BD;
	Thu,  2 Apr 2020 13:13:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B3CCC1BF23F
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 13:13:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A66DC8887B
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 13:13:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id repzEZDfVApZ for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 13:13:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0331E887EF
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 13:13:52 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 032DDVA1190996;
 Thu, 2 Apr 2020 13:13:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=cPgjp8plBz+5xeGlKxEPhHfH4nRghiekg4XCPlfD6EQ=;
 b=FhPAq+EOO/vL/rHO1GfPFZiynh9g+fQVGhuV2wqZO04SHZV2N/EVKPeMTyUYJEaLEh9a
 QSjGn4u9K+vj1+b5zwKYE9sqY2nVEyk0y08yDRpcQRBpE+VNM8PMXv5AvezV1fx/oGJu
 TabgzxiBE+DTurCUMZR86x7hceQaW174hFEtHvZSvRsM2ij+11eDYcwAsifjqceFUZRI
 9L/+iFPhb0caeB8e4IVUj5WYG/iPXPlHb0SjHovmFvMTO2dlAkNbUd3cZJS+ILNhE1F0
 YEnUgXsNJXkB70mtflOYtZgVCb/as2HE6bHs5eQUkU7vtyDGZ5+rVZnIkV+L+o1LYIBp DQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 303yundwks-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 02 Apr 2020 13:13:49 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 032DD08x086520;
 Thu, 2 Apr 2020 13:13:48 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 302g2jjsvv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 02 Apr 2020 13:13:48 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 032DDkQ7022406;
 Thu, 2 Apr 2020 13:13:47 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 02 Apr 2020 06:13:46 -0700
Date: Thu, 2 Apr 2020 16:13:39 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 08/32] staging: wfx: simplify hif_handle_tx_data()
Message-ID: <20200402131338.GS2001@kadam>
References: <20200401110405.80282-1-Jerome.Pouiller@silabs.com>
 <20200401110405.80282-9-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401110405.80282-9-Jerome.Pouiller@silabs.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9578
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0 mlxscore=0
 adultscore=0 phishscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004020120
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9579
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 lowpriorityscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 mlxlogscore=999 bulkscore=0
 suspectscore=0 mlxscore=0 spamscore=0 impostorscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004020120
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Apr 01, 2020 at 01:03:41PM +0200, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> The last argument of hif_handle_tx_data() was now unused. In add,
> hif_handle_tx_data() has nothing to do with HIF layer and should be
> renamed. Finally, it not convenient to pass a wfx_vif as parameter. It
> is easier to let hif_handle_tx_data() find the interface itself.
> =

> Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> ---
>  drivers/staging/wfx/queue.c | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
> =

> diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
> index 2553f77522d9..8647731e02c0 100644
> --- a/drivers/staging/wfx/queue.c
> +++ b/drivers/staging/wfx/queue.c
> @@ -319,13 +319,17 @@ bool wfx_tx_queues_is_empty(struct wfx_dev *wdev)
>  	return ret;
>  }
>  =

> -static bool hif_handle_tx_data(struct wfx_vif *wvif, struct sk_buff *skb,
> -			       struct wfx_queue *queue)
> +static bool wfx_handle_tx_data(struct wfx_dev *wdev, struct sk_buff *skb)
>  {
>  	struct hif_req_tx *req =3D wfx_skb_txreq(skb);
>  	struct ieee80211_key_conf *hw_key =3D wfx_skb_tx_priv(skb)->hw_key;
>  	struct ieee80211_hdr *frame =3D
>  		(struct ieee80211_hdr *)(req->frame + req->data_flags.fc_offset);
> +	struct wfx_vif *wvif =3D
> +		wdev_to_wvif(wdev, ((struct hif_msg *)skb->data)->interface);
                                                      ^^^^^^^^^
This is on the TX side so it's probably okay, but one problem I have
noticed is that we do this on the RX side as well with checking that

	if (skb->len < sizeof(struct hif_msg))
		return -EINVAL;

So we could be reading beyond the end of the skb.  If we got really
unlucky it could lead to an Oops.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
