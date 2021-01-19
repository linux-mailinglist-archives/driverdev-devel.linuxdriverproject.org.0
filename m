Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B55302FB4F3
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Jan 2021 10:34:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6859686DF0;
	Tue, 19 Jan 2021 09:34:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b-orHXyQYshb; Tue, 19 Jan 2021 09:34:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C9FBA86CAC;
	Tue, 19 Jan 2021 09:34:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9F2301BF296
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 09:34:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9BECA81F85
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 09:34:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LodYUTZq8qZx for <devel@linuxdriverproject.org>;
 Tue, 19 Jan 2021 09:34:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1B1AD86D41
 for <devel@driverdev.osuosl.org>; Tue, 19 Jan 2021 09:34:15 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10J9XO8w080442;
 Tue, 19 Jan 2021 09:34:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=mPNMsGIPx1KtxDaTRvGKKYalFMRW2Q89hhpj3Ft7KuA=;
 b=qBsuDb8YsCZFSUK8Skivb6bTzRnP8acm/j6Fsuhe4tzAzqqCy+Gcvq5PhaCUtqCeWpyr
 szdEeKojXuQudqi9DriqLgAiGJcRUeLYJKESY/px6abvpt1xCvpO+ReKRZ8JKw8tg5eS
 06LhIYe05eaNKIz44tXAPCU3l24l/zoBJ6tlgEqVIarUDOFD1qW457x4hqmAmzzHJ5od
 njR+FpK82okUlpg5DF9/AVEQjzAIR4w3GzhweT6vWoxs8qaAr74Ag4kGBJabqKZR0nSq
 YwivJj97Szx0/Mpsn8em+WxO97EF16Jed5P65yFjihmdo+bAOSikIyOjU8Mxi17Z5pSa 9g== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2130.oracle.com with ESMTP id 363nnagbf2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 19 Jan 2021 09:34:14 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10J9VZ0t145481;
 Tue, 19 Jan 2021 09:34:11 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 364a2wbtvd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 19 Jan 2021 09:34:11 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 10J9Y5LS024333;
 Tue, 19 Jan 2021 09:34:05 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 19 Jan 2021 01:34:04 -0800
Date: Tue, 19 Jan 2021 12:33:56 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Johannes Czekay <johannes.czekay@fau.de>
Subject: Re: [PATCH 6/6] wlan-ng: clean up reused macros
Message-ID: <20210119093356.GL2696@kadam>
References: <20210118010955.48663-1-johannes.czekay@fau.de>
 <20210118010955.48663-7-johannes.czekay@fau.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210118010955.48663-7-johannes.czekay@fau.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9868
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxscore=0 suspectscore=0
 phishscore=0 mlxlogscore=999 bulkscore=0 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101190058
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9868
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0
 spamscore=0
 mlxlogscore=999 clxscore=1011 bulkscore=0 adultscore=0 lowpriorityscore=0
 suspectscore=0 phishscore=0 mlxscore=0 malwarescore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101190058
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
Cc: devel@driverdev.osuosl.org, jbwyatt4@gmail.com, linux-kernel@i4.cs.fau.de,
 gregkh@linuxfoundation.org, gustavo@embeddedor.com,
 linux-kernel@vger.kernel.org, rkovhaev@gmail.com, hqjagain@gmail.com,
 nicolai.fischer@fau.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jan 18, 2021 at 02:09:56AM +0100, Johannes Czekay wrote:
> This patch cleans up two "macro argument reuse" warnings by checkpatch.
> This should also make the code much more readable.
> 
> Signed-off-by: Johannes Czekay <johannes.czekay@fau.de>
> Co-developed-by: Nicolai Fischer <nicolai.fischer@fau.de>
> Signed-off-by: Nicolai Fischer <nicolai.fischer@fau.de>
> ---
>  drivers/staging/wlan-ng/p80211metastruct.h | 18 +-------
>  drivers/staging/wlan-ng/prism2mgmt.c       | 48 ++++++----------------
>  2 files changed, 14 insertions(+), 52 deletions(-)
> 
> diff --git a/drivers/staging/wlan-ng/p80211metastruct.h b/drivers/staging/wlan-ng/p80211metastruct.h
> index 4adc64580185..e963227f797c 100644
> --- a/drivers/staging/wlan-ng/p80211metastruct.h
> +++ b/drivers/staging/wlan-ng/p80211metastruct.h
> @@ -114,22 +114,8 @@ struct p80211msg_dot11req_scan_results {
>  	struct p80211item_uint32 cfpollreq;
>  	struct p80211item_uint32 privacy;
>  	struct p80211item_uint32 capinfo;
> -	struct p80211item_uint32 basicrate1;
> -	struct p80211item_uint32 basicrate2;
> -	struct p80211item_uint32 basicrate3;
> -	struct p80211item_uint32 basicrate4;
> -	struct p80211item_uint32 basicrate5;
> -	struct p80211item_uint32 basicrate6;
> -	struct p80211item_uint32 basicrate7;
> -	struct p80211item_uint32 basicrate8;
> -	struct p80211item_uint32 supprate1;
> -	struct p80211item_uint32 supprate2;
> -	struct p80211item_uint32 supprate3;
> -	struct p80211item_uint32 supprate4;
> -	struct p80211item_uint32 supprate5;
> -	struct p80211item_uint32 supprate6;
> -	struct p80211item_uint32 supprate7;
> -	struct p80211item_uint32 supprate8;
> +	struct p80211item_uint32 basicrate[8];
> +	struct p80211item_uint32 supprate[8];
>  } __packed;
>  
>  struct p80211msg_dot11req_start {
> diff --git a/drivers/staging/wlan-ng/prism2mgmt.c b/drivers/staging/wlan-ng/prism2mgmt.c
> index 1bd36dc2b7ff..8540c3336907 100644
> --- a/drivers/staging/wlan-ng/prism2mgmt.c
> +++ b/drivers/staging/wlan-ng/prism2mgmt.c
> @@ -388,6 +388,7 @@ int prism2mgmt_scan_results(struct wlandevice *wlandev, void *msgp)
>  	struct hfa384x_hscan_result_sub *item = NULL;
>  
>  	int count;
> +	int i;
>  
>  	req = msgp;
>  
> @@ -437,42 +438,17 @@ int prism2mgmt_scan_results(struct wlandevice *wlandev, void *msgp)
>  		if (item->supprates[count] == 0)
>  			break;
>  
> -#define REQBASICRATE(N) \
> -	do { \
> -		if ((count >= (N)) && DOT11_RATE5_ISBASIC_GET(	\
> -			item->supprates[(N) - 1])) { \
> -			req->basicrate ## N .data = item->supprates[(N) - 1]; \
> -			req->basicrate ## N .status = \
> -				P80211ENUM_msgitem_status_data_ok; \
> -		} \
> -	} while (0)
> -
> -	REQBASICRATE(1);
> -	REQBASICRATE(2);
> -	REQBASICRATE(3);
> -	REQBASICRATE(4);
> -	REQBASICRATE(5);
> -	REQBASICRATE(6);
> -	REQBASICRATE(7);
> -	REQBASICRATE(8);
> -
> -#define REQSUPPRATE(N) \
> -	do { \
> -		if (count >= (N)) {					\
> -			req->supprate ## N .data = item->supprates[(N) - 1]; \
> -			req->supprate ## N .status = \
> -				P80211ENUM_msgitem_status_data_ok; \
> -		} \
> -	} while (0)
> -
> -	REQSUPPRATE(1);
> -	REQSUPPRATE(2);
> -	REQSUPPRATE(3);
> -	REQSUPPRATE(4);
> -	REQSUPPRATE(5);
> -	REQSUPPRATE(6);
> -	REQSUPPRATE(7);
> -	REQSUPPRATE(8);
> +	for (i = 0; i < 8; i++) {
> +		if (count > 1) {

This should be "i" instead of "1".  And conditions are more readable if
you put the part that changes first "if (variable < limit)" to avoid
backwards think.

	if (i < count) {

Or you could reverse it the other way:

	if (i >= count)
		break;

> +			if (DOT11_RATE5_ISBASIC_GET(item->supprates[i])) {
> +				req->basicrate[i].data = item->supprates[i];
> +				req->basicrate[i].status = P80211ENUM_msgitem_status_data_ok;
> +			}
> +
> +			req->supprate[i].data = item->supprates[i];
> +			req->supprate[i].status = P80211ENUM_msgitem_status_data_ok;
> +		}
> +	}

It's sort of surprising that we can change how we write this information
but we don't have to change how it is read.  I guess presumably it's
just dumped as hex to debugfs or something like that...  Who knows.  :/

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
