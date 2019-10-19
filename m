Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60503DD913
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Oct 2019 16:27:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2AC35870A1;
	Sat, 19 Oct 2019 14:26:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0SgH2LVi6k26; Sat, 19 Oct 2019 14:26:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 679D187082;
	Sat, 19 Oct 2019 14:26:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EA66A1BF334
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 14:26:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E38D487089
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 14:26:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3ooovBuYUrr5 for <devel@linuxdriverproject.org>;
 Sat, 19 Oct 2019 14:26:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3457D87082
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 14:26:55 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9JEP3eE122196;
 Sat, 19 Oct 2019 14:26:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=0s+wv1EkxEvpCtNNuYFyVgb9qMOKWevUFl0DIEAY7C8=;
 b=jZDrWAT+y74mh/cq3RI1MfxtJuS1a9ZoqDJiryoWPiWtEBDQf0krl2MrutLcUn+whuST
 D9ejZaJaH8Z8OWgPR7EWQyVQlie4Su5sFiE1GmaAjRtKnLKkAfrpu7QGIWP7jSe4CXJL
 5FRVSV2kLc29+Fqr/Dx/9iNvOrHFZIHg2PxsHADsOqGahzsaDFvuILq4Kxp5d4swQJ8w
 WMIAiomp1NWRjT87S9UA9+1KLVZN0Ic+E1M/FiMLPVAN/+EFCnv7C56ufBnnj3l4kwJJ
 wCyx2+5lt3mxD9OZXbfOBWgSMwwbWQnRf1vk4xJxCnvw0fqd1oMrX3pVM2Q4536VmR/F pg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2vqtep998s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 19 Oct 2019 14:26:53 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9JEN23m010124;
 Sat, 19 Oct 2019 14:24:52 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2vqsu81mnq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 19 Oct 2019 14:24:52 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9JEOou9008585;
 Sat, 19 Oct 2019 14:24:51 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sat, 19 Oct 2019 14:24:50 +0000
Date: Sat, 19 Oct 2019 17:24:43 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jules Irenge <jbi.octave@gmail.com>
Subject: Re: [PATCH v1 1/5] staging: wfx: fix warnings of no space is necessary
Message-ID: <20191019142443.GH24678@kadam>
References: <20191019140719.2542-1-jbi.octave@gmail.com>
 <20191019140719.2542-2-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191019140719.2542-2-jbi.octave@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9414
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910190133
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9414
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910190133
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Oct 19, 2019 at 03:07:15PM +0100, Jules Irenge wrote:
> diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
> index 3355183fc86c..573216b08042 100644
> --- a/drivers/staging/wfx/bh.c
> +++ b/drivers/staging/wfx/bh.c
> @@ -69,13 +69,13 @@ static int rx_helper(struct wfx_dev *wdev, size_t read_len, int *is_cnf)
>  	if (wfx_data_read(wdev, skb->data, alloc_len))
>  		goto err;
>  
> -	piggyback = le16_to_cpup((u16 *) (skb->data + alloc_len - 2));
> +	piggyback = le16_to_cpup((u16 *)(skb->data + alloc_len - 2));
>  	_trace_piggyback(piggyback, false);
>  
> -	hif = (struct hif_msg *) skb->data;
> +	hif = (struct hif_msg *)skb->data;
>  	WARN(hif->encrypted & 0x1, "unsupported encryption type");
>  	if (hif->encrypted == 0x2) {
> -		if (wfx_sl_decode(wdev, (void *) hif)) {
> +		if (wfx_sl_decode(wdev, (void *)hif)) {

In the future you may want to go through and remove the (void *) casts.
It's not required here.

> diff --git a/drivers/staging/wfx/bus_spi.c b/drivers/staging/wfx/bus_spi.c
> index f65f7d75e731..effd07957753 100644
> --- a/drivers/staging/wfx/bus_spi.c
> +++ b/drivers/staging/wfx/bus_spi.c
> @@ -90,7 +90,7 @@ static int wfx_spi_copy_to_io(void *priv, unsigned int addr,
>  	struct wfx_spi_priv *bus = priv;
>  	u16 regaddr = (addr << 12) | (count / 2);
>  	// FIXME: use a bounce buffer
> -	u16 *src16 = (void *) src;
> +	u16 *src16 = (void *)src;

Here we are just getting rid of the constness.  Apparently we are doing
that so we can modify it without GCC pointing out the bug!!  I don't
know the code but this seems very wrong.

>  	int ret, i;
>  	struct spi_message      m;
>  	struct spi_transfer     t_addr = {

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
