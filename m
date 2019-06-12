Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB17941E0D
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 09:43:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC38987E94;
	Wed, 12 Jun 2019 07:43:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vm7YTSLYCmKF; Wed, 12 Jun 2019 07:43:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9C20C87CC9;
	Wed, 12 Jun 2019 07:43:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A148E1BF33D
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 07:43:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9DD60875CF
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 07:43:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v8hxJl6FwKLw for <devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 07:43:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E7FF7875DC
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 07:43:39 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5C7d224105909;
 Wed, 12 Jun 2019 07:43:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=oXIelEY2xlvzofaFtAClSgFdWfqkQ5v8IC5g+IkPP0o=;
 b=yffbhF648W0mAUVt3rIRZeizDELXlQyV78QtWxCrXDr30VMVGJTJ0Ub02utw63gqubr0
 102epPfapgkmZAYQWRuztzK/Pzcnf4JZkm3ABn4wQ88NC5CibLvOFpTMzuR5GCYjQt6f
 wAYyEHvRCS8f5oD4Hef24/kRtGvpVP5iW7g5N97IV/inDixYQW/tu6hCDkBuOq0Ykimj
 k54mcobmE4RUGe0jP2VSVOlX43z02aQa31xMv2ZuMOyw1ZHVukvfY94cLsGXBfR6MOFj
 WU0Lwf9EOyFeQYF2Vaw35IdGdEQj3KbHcxSmanp3fWw13V0RZY2f9Snom2klX74Knxkl uA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 2t02hests2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 12 Jun 2019 07:43:30 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5C7gutD177498;
 Wed, 12 Jun 2019 07:43:30 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2t04hyspdu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 12 Jun 2019 07:43:30 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5C7hRKL024385;
 Wed, 12 Jun 2019 07:43:27 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 12 Jun 2019 00:43:27 -0700
Date: Wed, 12 Jun 2019 10:43:20 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Rui Miguel Silva <rui.silva@linaro.org>
Subject: Re: [PATCH] media: imx7-media-csi: get csi upstream endpoint
Message-ID: <20190612074319.GE1915@kadam>
References: <20190611150955.8038-1-rui.silva@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611150955.8038-1-rui.silva@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9285
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906120053
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9285
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906120053
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
Cc: Hans Verkuil <hverkuil@xs4all.nl>, devel@driverdev.osuosl.org,
 Sebastien Szymanski <sebastien.szymanski@armadeus.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 11, 2019 at 04:09:55PM +0100, Rui Miguel Silva wrote:
> When the upstream endpoint is neither a mux nor a CSI2 module, just get
> the source pad directly upstream from the CSI.
> 
> Fixes: 05f634040c0d ("media: staging/imx7: add imx7 CSI subdev driver")
> Reported-by: Sebastien Szymanski <sebastien.szymanski@armadeus.com>
> Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
> ---
>  drivers/staging/media/imx/imx7-media-csi.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
> index 9101566f3f67..8979ee0c8202 100644
> --- a/drivers/staging/media/imx/imx7-media-csi.c
> +++ b/drivers/staging/media/imx/imx7-media-csi.c
> @@ -442,6 +442,14 @@ static int imx7_csi_get_upstream_endpoint(struct imx7_csi *csi,
>  
>  	src = &csi->src_sd->entity;
>  
> +	/*
> +	 * if the source in neither a mux or csi2 get the one directly upstream
                         ^^
is?

> +	 * from this csi
> +	 */
> +	if (src->function != MEDIA_ENT_F_VID_IF_BRIDGE &&
> +		src->function != MEDIA_ENT_F_VID_MUX)
> +		src = &csi->sd.entity;

This would be easier to read if the white space were tweaked a little:

	if (src->function != MEDIA_ENT_F_VID_IF_BRIDGE &&
	    src->function != MEDIA_ENT_F_VID_MUX)
		src = &csi->sd.entity;

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
