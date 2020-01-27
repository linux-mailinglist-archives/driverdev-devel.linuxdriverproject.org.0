Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D02F14A353
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 12:55:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 724F920485;
	Mon, 27 Jan 2020 11:55:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4CqvMoBMAZgt; Mon, 27 Jan 2020 11:55:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1866120011;
	Mon, 27 Jan 2020 11:55:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 438351BF3CA
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 11:55:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3812D87360
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 11:55:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xSEbShWcqZ76 for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 11:55:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 94C628735C
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 11:55:45 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00RBth74032921;
 Mon, 27 Jan 2020 11:55:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=ALjefakC3CGXO1zV8vhhyOxpEu7eY/3098B4TpY59K8=;
 b=rmxQ6k+GEUBba46cb3Wm7G+DcSvIqRxOI6ee5Wr8T8PtCyRlF1r0KGMgAECufQlaSXjI
 cJzBZlUCWvx4oq7Vwzepa/LHWXyLC0wsk0WE7cm5O7+QX3QUbVQzlMUFohrVnEK/iOCU
 OqDUrJ8c78EVLCkVIvWN6zu4HSpMKKK5GOwriP5Fi/WxS9yD7ZDB/J1D1v5/gmar0C+a
 DHmQO14AQE7O/1OaKEaZQfrvUzpo6FHJFUktALYPj6oqsQeFvwGJdtKjfOqjM1Z1dcU0
 gVteot5WZggVUpfYNtotONsbEK64HFQOrsogNpVf7uzHrFAF3WiD/GhQ61CWN2el7LLQ OA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2xrd3txv9u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Jan 2020 11:55:44 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00RBsErs111818;
 Mon, 27 Jan 2020 11:55:43 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 2xryu988dd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Jan 2020 11:55:43 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 00RBtfUm026923;
 Mon, 27 Jan 2020 11:55:41 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 27 Jan 2020 03:55:40 -0800
Date: Mon, 27 Jan 2020 14:55:31 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Pragat Pandya <pragat.pandya@gmail.com>
Subject: Re: [PATCH 07/22] staging: exfat: Rename variable "MilliSecond" to
 "milli_second"
Message-ID: <20200127115530.GZ1847@kadam>
References: <20200127101343.20415-1-pragat.pandya@gmail.com>
 <20200127101343.20415-8-pragat.pandya@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127101343.20415-8-pragat.pandya@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9512
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001270102
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9512
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001270102
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
Cc: devel@driverdev.osuosl.org, valdis.kletnieks@vt.edu,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 skhan@linuxfoundation.org, linux-fsdevel@vger.kernel.org,
 linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jan 27, 2020 at 03:43:28PM +0530, Pragat Pandya wrote:
> Change all the occurrences of "MilliSecond" to "milli_second" in exfat.
> 
> Signed-off-by: Pragat Pandya <pragat.pandya@gmail.com>
> ---
>  drivers/staging/exfat/exfat.h       |  2 +-
>  drivers/staging/exfat/exfat_super.c | 16 ++++++++--------
>  2 files changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/exfat/exfat.h b/drivers/staging/exfat/exfat.h
> index 85fbea44219a..5c207d715f44 100644
> --- a/drivers/staging/exfat/exfat.h
> +++ b/drivers/staging/exfat/exfat.h
> @@ -228,7 +228,7 @@ struct date_time_t {
>  	u16      hour;
>  	u16      minute;
>  	u16      second;
> -	u16      MilliSecond;
> +	u16      milli_second;

Normally we would just call it "ms".

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
