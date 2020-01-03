Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5773D12F732
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Jan 2020 12:27:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4A89868C6;
	Fri,  3 Jan 2020 11:27:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OG4V4vj7b+Fn; Fri,  3 Jan 2020 11:27:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 699948347D;
	Fri,  3 Jan 2020 11:27:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A53971BF376
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 11:26:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A180386856
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 11:26:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i6FEUN9vsWV8 for <devel@linuxdriverproject.org>;
 Fri,  3 Jan 2020 11:26:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B03068347D
 for <devel@driverdev.osuosl.org>; Fri,  3 Jan 2020 11:26:55 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 003BKKWm045431;
 Fri, 3 Jan 2020 11:26:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=FmqANtUSeaOQWjkgeURWw7G38QnUhkhAohkw9ZJbr+I=;
 b=DfFgaLAadLQN1Ya6bjWGReBuhrMi62hhaBzjR3HnJ6Pr8jqj/FHHFt4D9AOehwGQMz2b
 6EEzmfakFn0+7a8UmtmEv8JRfLgkJaX8hYJvXysiGJ/tQ0poW3shf0Gg/7nVLBZkgkkb
 1NabjHpa6XrO5m7TbgiNRsYW1BZTbNzk1cqAvbg+7xPeSg3C0WRkcmEtte2NYh6v7+d5
 29F0fnUpmADqIdKnXHKNr8MDo0gc/PvfYIhPys3HRntBBnRC4oSAfX3hDO2ei/1sSSAG
 dY2LjgarIWoTVBKsdwvPdkk4ckAgnKc5173kKAlSYKna4dpQLwig4ij8A8Lm3955G3kZ fQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2x5ypquvk0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Jan 2020 11:26:52 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 003BJUkR147494;
 Fri, 3 Jan 2020 11:26:52 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2x8gjbtc7f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Jan 2020 11:26:52 +0000
Received: from abhmp0011.oracle.com (abhmp0011.oracle.com [141.146.116.17])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 003BQoh8010674;
 Fri, 3 Jan 2020 11:26:50 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 03 Jan 2020 03:26:50 -0800
Date: Fri, 3 Jan 2020 14:26:41 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Colin King <colin.king@canonical.com>
Subject: Re: [PATCH][next] staging: wfx: check for memory allocation failures
 from wfx_alloc_hif
Message-ID: <20200103112641.GH3911@kadam>
References: <20191221001543.15255-1-colin.king@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191221001543.15255-1-colin.king@canonical.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9488
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001030108
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9488
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001030108
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
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Dec 21, 2019 at 12:15:43AM +0000, Colin King wrote:
> From: Colin Ian King <colin.king@canonical.com>
> 
> Currently calls to wfx_alloc_hif are not checking for a null return
> when a memory allocation fails and this leads to null pointer
> dereferencing issues.  Fix this by adding null pointer checks and
> returning passing down -ENOMEM errors where necessary. The error
> checking in the current driver is a bit sparse, so this may need
> some extra attention later if required.
> 
> Fixes: f95a29d40782 ("staging: wfx: add HIF commands helpers")
> Signed-off-by: Colin Ian King <colin.king@canonical.com>
> ---
>  drivers/staging/wfx/hif_tx.c |  6 ++++++
>  drivers/staging/wfx/sta.c    | 13 +++++++------
>  2 files changed, 13 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/wfx/hif_tx.c b/drivers/staging/wfx/hif_tx.c
> index 8a34a52dd5b9..d8e159670eae 100644
> --- a/drivers/staging/wfx/hif_tx.c
> +++ b/drivers/staging/wfx/hif_tx.c
> @@ -366,6 +366,9 @@ int hif_set_edca_queue_params(struct wfx_vif *wvif, u16 queue,
>  	struct hif_req_edca_queue_params *body = wfx_alloc_hif(sizeof(*body),
>  							       &hif);
>  

I hate allocations in declaration block.  It's way more likely to have
a bug like this where it's missing the NULL check.

> +	if (!body)
> +		return -ENOMEM;
> +
>  	WARN_ON(arg->aifs > 255);
>  	body->aifsn = arg->aifs;
>  	body->cw_min = cpu_to_le16(arg->cw_min);
> @@ -390,6 +393,9 @@ int hif_set_pm(struct wfx_vif *wvif, bool ps, int dynamic_ps_timeout)
>  	struct hif_msg *hif;
>  	struct hif_req_set_pm_mode *body = wfx_alloc_hif(sizeof(*body), &hif);
>  
> +	if (!body)
> +		return -ENOMEM;
> +
>  	if (ps) {
>  		body->pm_mode.enter_psm = 1;
>  		// Firmware does not support more than 128ms
> diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
> index 9a61478d98f8..c08d691fe870 100644
> --- a/drivers/staging/wfx/sta.c
> +++ b/drivers/staging/wfx/sta.c
> @@ -316,6 +316,7 @@ int wfx_conf_tx(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
>  {
>  	struct wfx_dev *wdev = hw->priv;
>  	struct wfx_vif *wvif = (struct wfx_vif *) vif->drv_priv;
> +	int ret = 0;
>  
>  	WARN_ON(queue >= hw->queues);
>  
> @@ -326,10 +327,10 @@ int wfx_conf_tx(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
>  	if (wvif->vif->type == NL80211_IFTYPE_STATION) {
>  		hif_set_uapsd_info(wvif, wvif->uapsd_mask);
>  		if (wvif->setbssparams_done && wvif->state == WFX_STATE_STA)
> -			wfx_update_pm(wvif);
> +			ret = wfx_update_pm(wvif);
>  	}
>  	mutex_unlock(&wdev->conf_mutex);
> -	return 0;
> +	return ret;
>  }
>  
>  int wfx_set_rts_threshold(struct ieee80211_hw *hw, u32 value)
> @@ -1322,7 +1323,7 @@ int wfx_config(struct ieee80211_hw *hw, u32 changed)
>  	if (changed & IEEE80211_CONF_CHANGE_PS) {
>  		wvif = NULL;
>  		while ((wvif = wvif_iterate(wdev, wvif)) != NULL)
> -			wfx_update_pm(wvif);
> +			ret = wfx_update_pm(wvif);

We reset "ret" on every iteration through the loop and only use the
last value.  Probably we should break out of the loop on failure.

>  		wvif = wdev_to_wvif(wdev, 0);
>  	}
>  

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
