Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1573CDBEB2
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Oct 2019 09:48:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 651EC207A2;
	Fri, 18 Oct 2019 07:48:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kAaz4og68lw6; Fri, 18 Oct 2019 07:48:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 332352052C;
	Fri, 18 Oct 2019 07:48:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7F5001BF293
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 07:48:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 70AA88870B
 for <devel@linuxdriverproject.org>; Fri, 18 Oct 2019 07:48:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L07kuKZgE-BF for <devel@linuxdriverproject.org>;
 Fri, 18 Oct 2019 07:48:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E1DCF8842A
 for <devel@driverdev.osuosl.org>; Fri, 18 Oct 2019 07:48:10 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9I7iBwq174622;
 Fri, 18 Oct 2019 07:48:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=HDsYmxCIfhFTmMCndsVkdI9l3Qm8CX4mTlTcHOffK8I=;
 b=qaH62j2vDJwxe08T3kn0T/6YhfwIngpnpLd9azY/Q6ePgfGICFA7BVmMhZlCdVhwmm1y
 KK08Te821XYPhX+oL15mC8Qy5ybHnJMNcwu0ij4kcwNuqCaMEEZSmI4zAw3fUaO461nt
 IpgF2LSZRtkXMhINSb1wdVii5kSCak0fissoB9sTews17o8e9ZSAHgTOIoDOJSlAAkeT
 j/JFBoHt8F6qp7ww3lw3oUnJa+Y0LaXzPymyWU+QZTmp8qguE46eUqhqCaTRc5MjT04f
 B69Q1RWCeFUJWaHFW3tHrbCC2BeHq2V9h2zR1C5OEjxmIMeVh6B8fHNRKUz8rg5i6zlT Iw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2vq0q424dd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 18 Oct 2019 07:48:05 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9I7loCp019672;
 Fri, 18 Oct 2019 07:48:04 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2vq0dxau8s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 18 Oct 2019 07:48:04 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9I7m00t000577;
 Fri, 18 Oct 2019 07:48:00 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 18 Oct 2019 07:48:00 +0000
Date: Fri, 18 Oct 2019 10:47:51 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kangjie Lu <kjlu@umn.edu>
Subject: Re: [PATCH] staging: rtl8192e: initializing the wep buffer
Message-ID: <20191018074751.GF24678@kadam>
References: <20191018045800.10909-1-kjlu@umn.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018045800.10909-1-kjlu@umn.edu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9413
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910180076
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9413
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910180075
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 17, 2019 at 11:57:58PM -0500, Kangjie Lu wrote:
> The "wep" buffer is not initialized. To avoid memory disclosures,
> the fix initializes it, as peer functions like rtllib_ccmp_set_key
> do.
> 
> Signed-off-by: Kangjie Lu <kjlu@umn.edu>
> ---
>  drivers/staging/rtl8192e/rtllib_crypt_wep.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/rtl8192e/rtllib_crypt_wep.c b/drivers/staging/rtl8192e/rtllib_crypt_wep.c
> index b1ea650036d2..0931777ed157 100644
> --- a/drivers/staging/rtl8192e/rtllib_crypt_wep.c
> +++ b/drivers/staging/rtl8192e/rtllib_crypt_wep.c
> @@ -232,6 +232,7 @@ static int prism2_wep_set_key(void *key, int len, u8 *seq, void *priv)
>  	if (len < 0 || len > WEP_KEY_LEN)
>  		return -1;
>  
> +	memset(wep, 0, sizeof(*wep));
>  	memcpy(wep->key, key, len);
>  	wep->key_len = len;

If we read beyond wep->key_len then it's probably a bug, right?  It
doesn't matter whether it's zeroed out or not.  Fortunately we never
do:

	memcpy(key, wep->key, wep->key_len);

So this change isn't required.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
