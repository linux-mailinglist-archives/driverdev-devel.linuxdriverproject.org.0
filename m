Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7364C244880
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Aug 2020 12:56:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 37B0388A87;
	Fri, 14 Aug 2020 10:56:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HWJ23cYZ-k+p; Fri, 14 Aug 2020 10:56:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD8C688A75;
	Fri, 14 Aug 2020 10:56:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 27EE81BF2A3
 for <devel@linuxdriverproject.org>; Fri, 14 Aug 2020 10:56:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 24ABE879EF
 for <devel@linuxdriverproject.org>; Fri, 14 Aug 2020 10:56:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IRvE+QwpyIVp for <devel@linuxdriverproject.org>;
 Fri, 14 Aug 2020 10:56:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 69EA784F76
 for <devel@driverdev.osuosl.org>; Fri, 14 Aug 2020 10:56:33 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 07EAm0ED019383;
 Fri, 14 Aug 2020 10:56:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=YVf5FoCiDmx//g4f29YFy952k+cHe4okX6wlg0hwp/8=;
 b=IG14Xl21IEnwYwIzRgqIoe+8REtaKqUG4vtnbIdEzeK8+4FIHQrAHvVHN1D4/T33VBGV
 6LHPCA5O2RmFqhXNpU76jDEwfCvLlsUbMsj7lfzLASiWi4WUk1gdM33U6QdWJ924jO89
 kL7UnM3ZwO3/Y0RfAp/qqTojBfp8MkdjvlCUoHSN6hLwajTrV0q5ffW9EaS3nRT299ln
 ILcGu8wdE1zdwYDJAArU29Ct5CbT4kBCq2vHxB2zkwgi20D4OnAs4hNzFa9lqCVuWGbM
 jHl27kj5UJ5bEPuT5bauYDsV4SEmpMBJRG//sU53UqD+LWkaXy5b4lHA5UoTCDaVBzjn 5g== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 32t2ye431r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 14 Aug 2020 10:56:28 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 07EArWCi040932;
 Fri, 14 Aug 2020 10:56:27 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 32t5ycahmr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 14 Aug 2020 10:56:27 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 07EAuOtO012838;
 Fri, 14 Aug 2020 10:56:25 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 14 Aug 2020 10:56:23 +0000
Date: Fri, 14 Aug 2020 13:56:16 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Vaibhav Agarwal <vaibhav.sr@gmail.com>
Subject: Re: [PATCH v2] staging: greybus: audio: fix uninitialized value issue
Message-ID: <20200814105616.GP1793@kadam>
References: <b6a5c28b6812232c90426f77cbe60600f9a91019.1597389343.git.vaibhav.sr@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b6a5c28b6812232c90426f77cbe60600f9a91019.1597389343.git.vaibhav.sr@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9712
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0
 suspectscore=0 mlxscore=0 adultscore=0 bulkscore=0 phishscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008140084
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9712
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 priorityscore=1501
 malwarescore=0 impostorscore=0 lowpriorityscore=0 mlxscore=0 bulkscore=0
 suspectscore=0 phishscore=0 adultscore=0 spamscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2008140083
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
Cc: devel@driverdev.osuosl.org, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Johan Hovold <johan@kernel.org>, Mark Greer <mgreer@animalcreek.com>,
 greybus-dev@lists.linaro.org, Colin Ian King <colin.king@canonical.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 14, 2020 at 01:07:20PM +0530, Vaibhav Agarwal wrote:
> The current implementation for gbcodec_mixer_dapm_ctl_put() uses
> uninitialized gbvalue for comparison with updated value. This was found
> using static analysis with coverity.
> 
> Uninitialized scalar variable (UNINIT)
> 11. uninit_use: Using uninitialized value
> gbvalue.value.integer_value[0].
> 460        if (gbvalue.value.integer_value[0] != val) {
> 
> This patch fixes the issue with fetching the gbvalue before using it for
>     comparision.
> 
> Fixes: 6339d2322c47 ("greybus: audio: Add topology parser for GB codec")
> Reported-by: Colin Ian King <colin.king@canonical.com>
> Signed-off-by: Vaibhav Agarwal <vaibhav.sr@gmail.com>
> ---
> Changelog:
> v2: Fix the missing check for return value after get_control.
> ---
>  drivers/staging/greybus/audio_topology.c | 19 +++++++++++++------
>  1 file changed, 13 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
> index 2f9fdbdcd547..9f98691b2f5f 100644
> --- a/drivers/staging/greybus/audio_topology.c
> +++ b/drivers/staging/greybus/audio_topology.c
> @@ -456,6 +456,18 @@ static int gbcodec_mixer_dapm_ctl_put(struct snd_kcontrol *kcontrol,
>  	val = ucontrol->value.integer.value[0] & mask;
>  	connect = !!val;
>  
> +	ret = gb_pm_runtime_get_sync(bundle);
> +	if (ret)
> +		return ret;
> +
> +	ret = gb_audio_gb_get_control(module->mgmt_connection, data->ctl_id,
> +				      GB_AUDIO_INVALID_INDEX, &gbvalue);
> +	if (ret) {
> +		dev_err_ratelimited(codec_dev, "%d:Error in %s for %s\n", ret,
> +				    __func__, kcontrol->id.name);

gb_pm_runtime_put_autosuspend(bundle) on this error path?

> +		return ret;
> +	}

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
