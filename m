Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C35CBB6F5
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Sep 2019 16:39:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8C2FF85A03;
	Mon, 23 Sep 2019 14:39:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G1lkAyfG6cUH; Mon, 23 Sep 2019 14:39:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0FBED82261;
	Mon, 23 Sep 2019 14:39:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1FC3C1BF2E3
 for <devel@linuxdriverproject.org>; Mon, 23 Sep 2019 14:39:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0C17E843FE
 for <devel@linuxdriverproject.org>; Mon, 23 Sep 2019 14:39:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K-C93Kh72QDo for <devel@linuxdriverproject.org>;
 Mon, 23 Sep 2019 14:39:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 867C485778
 for <devel@driverdev.osuosl.org>; Mon, 23 Sep 2019 14:39:11 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8NEU0rI120863;
 Mon, 23 Sep 2019 14:39:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=0EFJp6viAxl+bCsyNdwq6n+ZjY+/kgHFC58awXMJkVs=;
 b=UinXJXmRjS57q+vMuDSdMHY7HUrzliWYxsngxzYIXhTS2PwIX6Kdt5nshkwKH67eGHFH
 0Xa0FYg3b8fhQkFUdOBlyzHfi+c5kswiKQiwBBD88wdhY9xR6hUD+SQ8DG4JhzlwuXtG
 GetIKc74bJ++nO/4faaVeh3flH9lhUIDb47YujFXCJs1QDD6u5INU8d7g+Z4LXjPcPri
 X6OjPyv7aji79K5DRjtwThFC7s76OSg7joJiiPJhGHs33iIdubSQ5mQ4RGf9XWBkJsCz
 eOxw49QQvAbXl0aatR8a4JDPZ+qdCeLEcJNe+wEymrp8CZATqGfMDUaPok4pKRDvl3S3 0Q== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2v5b9tfct6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 23 Sep 2019 14:39:10 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8NEcvq8181499;
 Mon, 23 Sep 2019 14:39:09 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2v6yvpg8cd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 23 Sep 2019 14:39:09 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8NEcNDL018730;
 Mon, 23 Sep 2019 14:38:23 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 23 Sep 2019 07:38:22 -0700
Date: Mon, 23 Sep 2019 17:38:12 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Saurav Girepunje <saurav.girepunje@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: os_dep: Remove unused variable
Message-ID: <20190923143812.GJ2959@kadam>
References: <20190922125156.GA31623@saurav>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190922125156.GA31623@saurav>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9389
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909230141
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9389
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909230141
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
Cc: , devel@driverdev.osuosl.org, puranjay12@gmail.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 mamtashukla555@gmail.com, saurav.girepunje@hotmail.com,
 nishkadg.linux@gmail.com, benniciemanuel78@gmail.com, shobhitkukreti@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 22, 2019 at 06:22:00PM +0530, Saurav Girepunje wrote:
> Remove unused variable ret from functions rtw_mp_ioctl_hdl,
> rtw_get_ap_info, rtw_mp_efuse_set, rtw_tdls, rtw_tdls_get .
> 
> Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
> ---
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 15 +++++----------
>  1 file changed, 5 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> index 90c2997256b7..a51009963295 100644
> --- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> +++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
> @@ -2433,8 +2433,7 @@ static  int rtw_drvext_hdl(struct net_device *dev, struct iw_request_info *info,
>  static int rtw_mp_ioctl_hdl(struct net_device *dev, struct iw_request_info *info,
>  						union iwreq_data *wrqu, char *extra)
>  {
> -	int ret = 0;
> -	return ret;
> +	return 0;

Someone already sent a better patch which just deletes the whole
function.

https://marc.info/?l=linux-kernel&m=156879878226402&w=2

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
