Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6241174FB
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Dec 2019 19:57:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B247886A29;
	Mon,  9 Dec 2019 18:57:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u5NH2Ldt5qgX; Mon,  9 Dec 2019 18:57:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D5CAE85A80;
	Mon,  9 Dec 2019 18:57:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9B1C51BF383
 for <devel@linuxdriverproject.org>; Mon,  9 Dec 2019 18:57:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 970C9877AB
 for <devel@linuxdriverproject.org>; Mon,  9 Dec 2019 18:57:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zRCF9YXNNcGb for <devel@linuxdriverproject.org>;
 Mon,  9 Dec 2019 18:57:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DC6E48777D
 for <devel@driverdev.osuosl.org>; Mon,  9 Dec 2019 18:57:23 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xB9InAbA174145;
 Mon, 9 Dec 2019 18:57:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=t4Q3+VCvf0pnJ0ErAbeBt14xGyjINJVueiRTqeprC+0=;
 b=iViU9+wIvq0XjOQvuDTgqpO5R0kHHZRU3WONhCx0brXfWPccbNaz02nP2nbsXlElZ8vY
 Z47vE2RHGh1bikbAYIyAH3aLOTSvDFD/OEqbHIE/CokuJI2GioXzkEvtUkOUnWZWyYOz
 9B5NG5yhtwLbHYF63uAepP/dV+fbxz9RejDcTXCLMcY+YKcMwndnOc47KuY66mmxkuqq
 /PaPyZ9YhL1jspJ3qsLQzdTMK1rN9/SKyklQi01lXFEBRi/248nk7n2cvS4HIUlPQrmX
 iAabKT5DI6ZeS+VDBz0aIzsJ10PqcWpwi0aFZXpGLZ+i5k7JbGr9PDfWU1ZF7zAdnUhX qA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2wr41q1hnr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 09 Dec 2019 18:57:22 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xB9InDU8056065;
 Mon, 9 Dec 2019 18:55:21 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2wrnj3n52p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 09 Dec 2019 18:55:21 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xB9ItKx0028094;
 Mon, 9 Dec 2019 18:55:20 GMT
Received: from kadam (/41.210.147.78) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 09 Dec 2019 10:55:14 -0800
Date: Mon, 9 Dec 2019 21:54:11 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH] media: allegro: add the missed check for v4l2_m2m_ctx_init
Message-ID: <20191209185411.GK1765@kadam>
References: <20191209085807.16126-1-hslester96@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209085807.16126-1-hslester96@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9466
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912090151
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9466
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912090151
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
 Michael Tretter <m.tretter@pengutronix.de>, linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Dec 09, 2019 at 04:58:07PM +0800, Chuhong Yuan wrote:
> diff --git a/drivers/staging/media/allegro-dvt/allegro-core.c b/drivers/staging/media/allegro-dvt/allegro-core.c
> index 6f0cd0784786..5f1d454b41bb 100644
> --- a/drivers/staging/media/allegro-dvt/allegro-core.c
> +++ b/drivers/staging/media/allegro-dvt/allegro-core.c
> @@ -2341,6 +2341,13 @@ static int allegro_open(struct file *file)
>  	channel->fh.m2m_ctx = v4l2_m2m_ctx_init(dev->m2m_dev, channel,
>  						allegro_queue_init);
>  
> +	if (IS_ERR(channel->fh.m2m_ctx)) {
> +		v4l2_fh_del(&channel->fh);
> +		v4l2_fh_exit(&channel->fh);
> +		kfree(channel);
                      ^^^^^^^
Free

> +		return PTR_ERR(channel->fh.m2m_ctx);
                               ^^^^^^^^^^^^^^^^^^^
Dereferencing freed memory.

regards,
dan carpenter

> +	}
> +

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
