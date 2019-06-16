Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF6047396
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Jun 2019 09:17:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0CD2F878F0;
	Sun, 16 Jun 2019 07:17:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rOueuVjJGsEe; Sun, 16 Jun 2019 07:17:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8253E87807;
	Sun, 16 Jun 2019 07:17:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 884941BF2FA
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 07:17:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 852ED87807
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 07:17:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tLiPF9RJOP4w for <devel@linuxdriverproject.org>;
 Sun, 16 Jun 2019 07:17:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 14D7287804
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 07:17:38 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5G7G136007380;
 Sun, 16 Jun 2019 07:17:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=ZJ73kpbrHeloQJUvQyeOr5ZclVGIW1bQHglprF2krOA=;
 b=LfBi3iw0+y+4oMsKxIkJu47SN+x7kNaFUa5x0QPMv4EXR3JRk2QQ8m6TopfNTuia9Nwq
 3n2VyngRvRspByxMmh1FKfbsjNOgyP7MLete8irNCKAHR96M1obAj9cG8ibDBjyXygqP
 0etlt4szoKCZict6/j4Ie+Y5p6LDLUg1+ttQ4n2YXmqfesapdYH8xj9wn50uuAY3+7/z
 kac1gsttcZPu6aeVnnN7+VPiBa94mX2fUtnYBYwCNm9s9n83m1VePSJwR6NtREKWc+Up
 CRNTSDm1jC5C4m9fhTIgb1zGTHGsdceBxBYOKGmGZV6SsoWgQKzAsSYphU2kwzyNtikT kA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2t4rmntasp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 16 Jun 2019 07:17:37 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5G7F6UR093492;
 Sun, 16 Jun 2019 07:15:37 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2t5cpd1ws9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 16 Jun 2019 07:15:37 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5G7Fatt023361;
 Sun, 16 Jun 2019 07:15:37 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sun, 16 Jun 2019 00:15:36 -0700
Date: Sun, 16 Jun 2019 10:15:22 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: os_dep: ioctl_linux:  Make use
 rtw_zmalloc
Message-ID: <20190616071522.GE28859@kadam>
References: <20190616053250.GA16116@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190616053250.GA16116@hari-Inspiron-1545>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9289
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906160070
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9289
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906160070
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
Cc: devel@driverdev.osuosl.org, Puranjay Mohan <puranjay12@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Shobhit Kukreti <shobhitkukreti@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jun 16, 2019 at 11:02:50AM +0530, Hariprasad Kelam wrote:
> rtw_malloc with memset can be replace with rtw_zmalloc.
> 
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 12 +++---------
>  1 file changed, 3 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> index fc3885d..c59e366 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> @@ -478,14 +478,12 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
>  		if (wep_key_len > 0) {
>  			wep_key_len = wep_key_len <= 5 ? 5 : 13;
>  			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
> -			pwep = rtw_malloc(wep_total_len);
> +			pwep = rtw_zmalloc(wep_total_len);

We should not introduce new uses of rtw_malloc() or rtw_zmalloc().  They
are buggy garbage.  Use normall kmalloc() and kzalloc().

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
