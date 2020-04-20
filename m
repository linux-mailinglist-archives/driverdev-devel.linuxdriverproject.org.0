Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A448B1B0938
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Apr 2020 14:21:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8B812867A8;
	Mon, 20 Apr 2020 12:21:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bXxioF24gUgd; Mon, 20 Apr 2020 12:21:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 40532864B8;
	Mon, 20 Apr 2020 12:21:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 309BA1BF407
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 12:21:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2C8F587A39
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 12:21:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zfGegShe9iIk for <devel@linuxdriverproject.org>;
 Mon, 20 Apr 2020 12:21:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 149FB87985
 for <devel@driverdev.osuosl.org>; Mon, 20 Apr 2020 12:21:14 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03KCIXSG038800;
 Mon, 20 Apr 2020 12:21:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=aD9qpxg5CHZYZYk+gzIw6K6GXAhalYWjG3cWxhGETdA=;
 b=ODWT+u1CrywSLEvva6onNWjNe+MVU4zFVNEqawZ0opl1BgvuePjLbHGxIQlnqYcJfIAg
 ZjQDB7mMyvRJ/FaoiSUiMCowzTpF4s4Qdnb28RQlOBD6vBWR+ICofcpXfF2m8OzVQ92E
 pcM39t7RtQlzhGrTmB3vFryHXvXvomN+angy0g9nWC0HsFQ7GWVAt54bAakNollIYIBf
 0YYTKbO/xFJRGqx3o5cIiBAttHFFmk8ePAhb2vJ9QGeA3UYmB235OuTi/k1JNf0thhE9
 wzIcrrHDVYQJLNb3febbpifMaAynkTJkkSiFpqUqhfw2QaB2SWwsCJtJCGLhR9coHcLk vg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 30ft6mxt7v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 20 Apr 2020 12:21:13 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03KCDhGo108375;
 Mon, 20 Apr 2020 12:19:12 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 30gb3qbnay-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 20 Apr 2020 12:19:12 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 03KCJAdh032644;
 Mon, 20 Apr 2020 12:19:10 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 20 Apr 2020 05:19:09 -0700
Date: Mon, 20 Apr 2020 15:19:00 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jason Yan <yanaijie@huawei.com>
Subject: Re: [PATCH] staging: mt7621-pinctrl: Use correct pointer type
 argument for sizeof
Message-ID: <20200420121900.GD2659@kadam>
References: <20200420123755.4353-1-yanaijie@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420123755.4353-1-yanaijie@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9596
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 spamscore=0 adultscore=0
 mlxlogscore=999 phishscore=0 suspectscore=0 bulkscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004200108
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9596
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 bulkscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 phishscore=0
 lowpriorityscore=0 malwarescore=0 clxscore=1011 mlxlogscore=999 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004200108
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 nishkadg.linux@gmail.com, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Apr 20, 2020 at 08:37:55PM +0800, Jason Yan wrote:
> Fix the following coccicheck warning:
> 
> drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c:223:14-36: WARNING: Use
> correct pointer type argument for sizeof
> 
> Signed-off-by: Jason Yan <yanaijie@huawei.com>
> ---
>  drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
> index d0f06790d38f..8883f2a8ea57 100644
> --- a/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
> +++ b/drivers/staging/mt7621-pinctrl/pinctrl-rt2880.c
> @@ -220,7 +220,7 @@ static int rt2880_pinmux_index(struct rt2880_priv *p)
>  	/* allocate our function and group mapping index buffers */
>  	f = p->func = devm_kcalloc(p->dev,
>  				   p->func_count,
> -				   sizeof(struct rt2880_pmx_func),
> +				   sizeof(struct rt2880_pmx_func *),

Yes.  This fixes a bug.  We were allocating too much data.  But the
prefered style is:

				sizeof(*p->func),

Please could you resend?

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
