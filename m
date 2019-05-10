Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2545819C0A
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 May 2019 12:58:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5FF9C31328;
	Fri, 10 May 2019 10:58:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FklwDnzQsvpl; Fri, 10 May 2019 10:58:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CB238227D1;
	Fri, 10 May 2019 10:58:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 748F71BF958
 for <devel@linuxdriverproject.org>; Fri, 10 May 2019 10:58:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7177E87357
 for <devel@linuxdriverproject.org>; Fri, 10 May 2019 10:58:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SIETsRKfJIaD for <devel@linuxdriverproject.org>;
 Fri, 10 May 2019 10:58:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 91A6D87345
 for <devel@driverdev.osuosl.org>; Fri, 10 May 2019 10:58:06 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4AAi5Gx145292;
 Fri, 10 May 2019 10:58:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=x+Mr1a+VP3Fqs4y3NgBrTiFWV1HAIGfPLgZZGlNX8uU=;
 b=1PUmmfN/O3qFc8wkC6D0KTbSMtbHsUcOVEFhCF5xquGa93Q3ri6k2YDApQbRWigcS8WG
 NGVsYg/Q4gZEooV3HEWY/T9HTEWF5D0OMvSdQqsxUTysMJ9Y2sVP5uDnBttR84yb0O49
 136m5DXlwKO4gJfy8V2FLKBhUz7o5C4VKZiXyN9fvfsWkcYVSoyVWrlpe+IHZwPXYcsJ
 5XmbUVHkucwXjAfTBjkhIGcx4cZI9D3PE7OJOKUnVg6hbm103izBPYTWZfiYuZY+9USd
 7PiXYrYuQ3b5bL0Ys9wACCG8cvjNy8Otz5be4FcZ6E63K1YFAWDr0Ifpw9pOtJl6qg5u fA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2130.oracle.com with ESMTP id 2s94b6gax8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 10 May 2019 10:58:04 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4AAv9VW010645;
 Fri, 10 May 2019 10:58:04 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2schw0bw1u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 10 May 2019 10:58:04 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x4AAw1RV013526;
 Fri, 10 May 2019 10:58:02 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 10 May 2019 03:58:00 -0700
Date: Fri, 10 May 2019 13:57:54 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] staging: wlan-ng: collect return status without variable
Message-ID: <20190510105754.GA18105@kadam>
References: <20190510023900.GA4390@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190510023900.GA4390@hari-Inspiron-1545>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9252
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905100077
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9252
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905100077
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
 Tim Collier <osdevtc@gmail.com>, linux-kernel@vger.kernel.org,
 Chris Opperman <eklikeroomys@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 10, 2019 at 08:09:00AM +0530, Hariprasad Kelam wrote:
> diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> index 8a862f7..5dad5ac 100644
> --- a/drivers/staging/wlan-ng/cfg80211.c
> +++ b/drivers/staging/wlan-ng/cfg80211.c
> @@ -231,17 +231,12 @@ static int prism2_set_default_key(struct wiphy *wiphy, struct net_device *dev,
>  {
>  	struct wlandevice *wlandev = dev->ml_priv;
>  
> -	int err = 0;
> -	int result = 0;
> -
> -	result = prism2_domibset_uint32(wlandev,
> -		DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
> -		key_index);
> -
> -	if (result)
> -		err = -EFAULT;
> -
> -	return err;
> +	if (prism2_domibset_uint32(wlandev,
> +				   DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
> +				   key_index))
> +		return -EFAULT;
> +	else
> +		return 0;

We should just preserve the error codes from prism2_domibset_uint32().

	return prism2_domibset_uint32(dev->ml_priv,
				DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID,
				key_index);

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
