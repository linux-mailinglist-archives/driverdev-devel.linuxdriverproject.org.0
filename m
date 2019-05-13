Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7DD1BEBE
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 22:31:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 44DB285CBC;
	Mon, 13 May 2019 20:31:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1fBUMYrGHauA; Mon, 13 May 2019 20:31:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C007D85C4C;
	Mon, 13 May 2019 20:31:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A272D1BF3D8
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 20:31:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9FE4D26291
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 20:31:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FwaZIMi7JhEr for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 20:31:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 6861122FD5
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 20:31:50 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4DKTRMr103751;
 Mon, 13 May 2019 20:31:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=T0KRjm7jAwpFE+RffiqnVHJ3cPqjApjUr6GW+/wmjXQ=;
 b=ppFgqQf786G9cvezB/vV3+uA/4ieGKZzqqRN9RqKQ3ACljHe6yW7RuwuZhNJc8f/gh4p
 MN5xHmFtN4OoZmUDG3cqtYYXAGXdzadVMMM7MMFUXeLr56rwVJUA0w4vUgwD+7ajGIeQ
 bTiVltMz3iXPhze3MhQCjd1+d0oLN0IgUmRmZAzppyBjbUL4+n6YBNgvh9K5ixq/UIjY
 BWmpVkZnc+lXOMXCs69TXArxFWEyYVDJooTVE+FhdWbDPOkKuuiwEknlhltzqh7MT8UW
 wb5jd8i4deQd4Rj9ZegjjXxvAeyGilYloxme2x+LT2a23jClWUO26raRUyvRGGhlBcTR lg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2sdntthkf5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 13 May 2019 20:31:49 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4DKVIM7008628;
 Mon, 13 May 2019 20:31:48 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2se0tvs40h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 13 May 2019 20:31:48 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x4DKVlhc013706;
 Mon, 13 May 2019 20:31:47 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 13 May 2019 13:31:46 -0700
Date: Mon, 13 May 2019 23:31:40 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Puranjay Mohan <puranjay12@gmail.com>
Subject: Re: [PATCH 1/5] Staging: rtl8192u: ieee80211: Fix coding style warning
Message-ID: <20190513203140.GA31203@kadam>
References: <20190513193806.GA29194@arch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513193806.GA29194@arch>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9256
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=759
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905130137
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9256
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=789 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905130137
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 14, 2019 at 01:08:11AM +0530, Puranjay Mohan wrote:
> Remove braces around a single if statement to fix following
> checkpatch.pl warning.
> WARNING: braces {} are not necessary for single statement blocks
> 
> Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
> ---
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> index 0e762e559675..bd97531a254f 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
> @@ -2577,9 +2577,9 @@ static inline void ieee80211_process_probe_response(
>  	spin_unlock_irqrestore(&ieee->lock, flags);
>  	if (is_beacon(beacon->header.frame_ctl)&&is_same_network(&ieee->current_network, network, ieee)&&\
>  		(ieee->state == IEEE80211_LINKED)) {
> -		if (ieee->handle_beacon != NULL) {
> +		if (ieee->handle_beacon != NULL)
>  			ieee->handle_beacon(ieee->dev,beacon,&ieee->current_network);
> -		}
> +
>  	}

We don't want the blank line.  Just delete the '}'

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
