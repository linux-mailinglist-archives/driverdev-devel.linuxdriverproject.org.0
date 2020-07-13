Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C2E21D696
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jul 2020 15:18:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 57A5188BC1;
	Mon, 13 Jul 2020 13:18:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ng2TZJjqZwL7; Mon, 13 Jul 2020 13:18:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 35E9988732;
	Mon, 13 Jul 2020 13:18:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DD19A1BF3E0
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 13:18:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D6D9F86DF6
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 13:18:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zMoKtC5Tjplj for <devel@linuxdriverproject.org>;
 Mon, 13 Jul 2020 13:18:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9235387614
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 13:18:18 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06DDGwDP008494;
 Mon, 13 Jul 2020 13:18:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=8iUbGz64v7LmPBePJuKm6gMoQTtzfX3gzQSr8s0CoEA=;
 b=BiDpLV4tnWPjlbALKkwsBrzAW/ptXD1OyRp76nMIWMWgELYZ6kl7E9Iy0wqW7R00n8GW
 ts3lVVTDXwLe2PoMJe3SI9MP9I1bJ7XqBZ4sJ3OvmyIY5aQa7RQnt/a99FA1gSY6V71O
 Lxze6KJvTu1/Zy4KPgaeRQZVp+ZzB01Q5bGZ02gYj5kDjCiGJHkMALx5ZmqYoQPRMr1c
 k7MCj6NE8A3G6M3JDh1g44Nd+Ga4xooEv4pwMB/zzr92nB8fv6mkTPp0oqk+yYCe2WSp
 4zg8kvU0fNT0c57SxAj+50mHtYANlFVzOdSFGgVw68PogxEcwkvuwwGEHg0wZQzmcSvp +A== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 32762n6u18-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 13 Jul 2020 13:18:17 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06DD9X3o031728;
 Mon, 13 Jul 2020 13:16:16 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 327qb0mtka-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 13 Jul 2020 13:16:16 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 06DDGEcO016295;
 Mon, 13 Jul 2020 13:16:14 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 13 Jul 2020 06:16:14 -0700
Date: Mon, 13 Jul 2020 16:16:07 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ivan Safonov <insafonov@gmail.com>
Subject: Re: [PATCH] staging: r8188eu: remove unused members of struct xmit_buf
Message-ID: <20200713131607.GR2549@kadam>
References: <20200712123821.553420-1-insafonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200712123821.553420-1-insafonov@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9680
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 malwarescore=0
 mlxscore=0 spamscore=0 phishscore=0 suspectscore=0 bulkscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2007130098
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9680
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 malwarescore=0 spamscore=0
 clxscore=1011 priorityscore=1501 mlxlogscore=999 lowpriorityscore=0
 bulkscore=0 suspectscore=0 phishscore=0 adultscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007130099
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
 linux-kernel@vger.kernel.org, Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Soumyajit Deb <debsoumyajit100@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jul 12, 2020 at 03:38:21PM +0300, Ivan Safonov wrote:
> Remove unused members of struct xmit_buf: alloc_sz, ff_hwaddr,
> dma_transfer_addr, bpending and last.
> 
> Signed-off-by: Ivan Safonov <insafonov@gmail.com>
> ---
>  drivers/staging/rtl8188eu/include/rtw_xmit.h  | 5 -----
>  drivers/staging/rtl8188eu/os_dep/xmit_linux.c | 1 -
>  2 files changed, 6 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/include/rtw_xmit.h b/drivers/staging/rtl8188eu/include/rtw_xmit.h
> index 12d16e98176a..3c03987c81a1 100644
> --- a/drivers/staging/rtl8188eu/include/rtw_xmit.h
> +++ b/drivers/staging/rtl8188eu/include/rtw_xmit.h
> @@ -193,14 +193,9 @@ struct xmit_buf {
>  	void *priv_data;
>  	u16 ext_tag; /*  0: Normal xmitbuf, 1: extension xmitbuf. */
>  	u16 flags;
> -	u32 alloc_sz;
>  	u32  len;
>  	struct submit_ctx *sctx;
> -	u32	ff_hwaddr;
>  	struct urb *pxmit_urb[8];
> -	dma_addr_t dma_transfer_addr;	/* (in) dma addr for transfer_buffer */
> -	u8 bpending[8];
> -	int last[8];
>  };
>  
>  struct xmit_frame {
> diff --git a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
> index 017e1d628461..61ced1160951 100644
> --- a/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
> +++ b/drivers/staging/rtl8188eu/os_dep/xmit_linux.c
> @@ -24,7 +24,6 @@ int rtw_os_xmit_resource_alloc(struct adapter *padapter,
>  		return _FAIL;
>  
>  	pxmitbuf->pbuf = PTR_ALIGN(pxmitbuf->pallocated_buf, XMITBUF_ALIGN_SZ);

Not related to this patch but kmalloc always returns data which is at
least ARCH_KMALLOC_MINALIGN aligned which is never less than
XMITBUF_ALIGN_SZ (4) so this is a no-op.

> -	pxmitbuf->dma_transfer_addr = 0;

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
