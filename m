Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A9DB50AD
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Sep 2019 16:45:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C5E99861F4;
	Tue, 17 Sep 2019 14:45:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 91koX7xbb7+k; Tue, 17 Sep 2019 14:45:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D99885E12;
	Tue, 17 Sep 2019 14:45:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 50F5E1BF3F3
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 14:45:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4D0CB860D6
 for <devel@linuxdriverproject.org>; Tue, 17 Sep 2019 14:45:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YBolkF1rd+1s for <devel@linuxdriverproject.org>;
 Tue, 17 Sep 2019 14:45:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A707F85E12
 for <devel@driverdev.osuosl.org>; Tue, 17 Sep 2019 14:45:18 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8HESj17060137;
 Tue, 17 Sep 2019 14:45:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=N93vwwFf4mjqp6x9a/jB9GbKtKYBlCK0sv1YN8wfkSE=;
 b=PFR4+JtltiYrPINI2VrSo4yFWbJASdGro4l8C5neQKbTXWHJkA71ilpRw/PByAWMPKEW
 jraMAgGCBoq1y51jNsFVZqVutbVHlYVdD9CBeBULIHd//sCOyeR0LcH++rYTwfrMQIWO
 RiElPJuTaYPj184N5Peqgv8klTq7OWuA53luM9xuDZu4F8n4+NeDDUf+KBSpXFkzaq/v
 rfXY/ruklx1uJiPQNTj6qOZDpQY84mtKF8VWnLy31GIYiythyebqUEgDMozlIaM/69Ru
 YzCrP7czoW8HjlB/GXOimksh7MoFKN9M0qLpZIyGQrdr71exEg8ifPRcuDWcx7ztHsXS pQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2v0r5peyud-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 17 Sep 2019 14:45:17 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8HEjB7Q162032;
 Tue, 17 Sep 2019 14:45:17 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2v2tmsugec-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 17 Sep 2019 14:45:15 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8HEipr6014678;
 Tue, 17 Sep 2019 14:44:52 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 17 Sep 2019 07:44:50 -0700
Date: Tue, 17 Sep 2019 17:44:32 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Aliasgar Surti <aliasgar.surti500@gmail.com>
Subject: Re: [PATCH] drivers:staging:rtl8723bs: Removed unneeded variables
Message-ID: <20190917144432.GB2959@kadam>
References: <1568730691-954-1-git-send-email-aliasgar.surti500@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1568730691-954-1-git-send-email-aliasgar.surti500@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9382
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=954
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909170144
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9382
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909170140
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Sep 17, 2019 at 08:01:31PM +0530, Aliasgar Surti wrote:
> From: Aliasgar Surti <aliasgar.surti500@gmail.com>
> 
> coccicheck reported warning for unneeded variable used.
> 
> This patch removes the unneeded variables.
> 
> Signed-off-by: Aliasgar Surti <aliasgar.surti500@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 15 +++++----------
>  1 file changed, 5 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> index d1b199e..fa3ffc3 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> @@ -2428,8 +2428,7 @@ static  int rtw_drvext_hdl(struct net_device *dev, struct iw_request_info *info,
>  static int rtw_mp_ioctl_hdl(struct net_device *dev, struct iw_request_info *info,
>  						union iwreq_data *wrqu, char *extra)
>  {
> -	int ret = 0;
> -	return ret;
> +	return 0;
>  }

Just get rid of the whole function.  Replace the pointer in the function
array with a NULL.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
