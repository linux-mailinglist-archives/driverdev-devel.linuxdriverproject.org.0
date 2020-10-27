Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 248F529AA91
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Oct 2020 12:28:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 30973871C2;
	Tue, 27 Oct 2020 11:28:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m0jUCYNKkt0E; Tue, 27 Oct 2020 11:28:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 40F8287203;
	Tue, 27 Oct 2020 11:28:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 725C31BF859
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 11:28:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6938585045
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 11:28:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A0e-Nc8avrcc for <devel@linuxdriverproject.org>;
 Tue, 27 Oct 2020 11:28:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D944B85036
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 11:28:12 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09RBJMNl083189;
 Tue, 27 Oct 2020 11:28:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=5HzGHJ7vdCmkTruMVB4kNc5kj4UpQWVq92d7sb2bIQk=;
 b=pR5tQohzNP/PnHMw/jiHYuuyyxU4/vN2fLJ9egnzQp1xMXO3VLJls2q4YQRoC0AEKB3w
 yeO8FK0lQpsrJoy1nMaOTjCqRwdoz0+Vi84sbvzcHp3mSdML2bCsdTSNontFr3hL/wcV
 roVGrCvooRE/jPo/3/GqpxvqZLxGT4USZRUt4faaNtqEtqxLV0eJfsGDTjqZNyOaeNs7
 0B1egE9/ZxLcwm8nR2XROXZ4A9+nOn0V27oQR+/jsYkVOKjWLF1versuywVujM6z/UpH
 WJ/K2AMWmPRz7EbQwGEf6Gpj7vgy/GsmYW3U0XjO1ESRfeTXooabTiqOGML1N/c5tdqj Tg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2130.oracle.com with ESMTP id 34c9sasghx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 27 Oct 2020 11:28:11 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09RBK2Qp059174;
 Tue, 27 Oct 2020 11:26:11 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 34cx5x0gxt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Oct 2020 11:26:11 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 09RBQ99Z027792;
 Tue, 27 Oct 2020 11:26:10 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 27 Oct 2020 04:26:09 -0700
Date: Tue, 27 Oct 2020 14:26:04 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Tabot Kevin <tabot.kevin@gmail.com>
Subject: Re: [PATCH] Fixed issues with alignment to open parenthesis.
Message-ID: <20201027112604.GT1042@kadam>
References: <20201019152451.GA3417@tabot>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201019152451.GA3417@tabot>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9786
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxscore=0 mlxlogscore=999
 suspectscore=0 bulkscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010270075
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9786
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 impostorscore=0
 mlxlogscore=999 malwarescore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 phishscore=0 clxscore=1011 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010270075
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
Cc: devel@driverdev.osuosl.org, Vaibhav Agarwal <vaibhav.sr@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 19, 2020 at 04:24:51PM +0100, Tabot Kevin wrote:
> This patch fixes the following:
> - Made sure alignment matched open parenthesis.
> 
> Signed-off-by: Tabot Kevin <tabot.kevin@gmail.com>
> ---
>  drivers/staging/greybus/audio_codec.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/greybus/audio_codec.c b/drivers/staging/greybus/audio_codec.c
> index 494aa82..d61e79f 100644
> --- a/drivers/staging/greybus/audio_codec.c
> +++ b/drivers/staging/greybus/audio_codec.c
> @@ -71,7 +71,7 @@ static int gbaudio_module_enable_tx(struct gbaudio_codec_info *codec,
>  		i2s_port = 0;	/* fixed for now */
>  		cportid = data->connection->hd_cport_id;
>  		ret = gb_audio_apbridgea_register_cport(data->connection,
> -						i2s_port, cportid,
> +							i2s_port, cportid,
>  						AUDIO_APBRIDGEA_DIRECTION_TX);

This just looks weird now.  Please, just leave it as-is.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
