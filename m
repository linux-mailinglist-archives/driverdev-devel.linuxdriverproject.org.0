Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B4C19C157
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 14:44:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3B98087EDE;
	Thu,  2 Apr 2020 12:44:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oUOgLwTjYxyQ; Thu,  2 Apr 2020 12:44:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AB48087E0B;
	Thu,  2 Apr 2020 12:44:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 85A3A1BF29C
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 12:44:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8260987062
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 12:44:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4q_aARA6iyiX for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 12:44:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F0EF387059
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 12:44:40 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 032Chd3N166886;
 Thu, 2 Apr 2020 12:44:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=x0huE/mMZHIQWX72jbyNEykJLzeJMXHbcFXfDWa7dW8=;
 b=eLhW1G3fnRko1c0gC+a4HrxWT3w6rocUTn1ahYM4d/m6x2caVtqU3KnWEbttWtFq1mJE
 ulnN2MY701BLGRw93KKn6R8yduUz8/q5IHaZdM7W2NeDCnbelZ5CA8DmldsT7G06l8vO
 UcwUPkbAkT5VN53GD2z+gCBTkO4xNn8mQDEH7pblzF/Jl6LcYV8xKA9sckhbbWPP60wh
 sHGj8zh5KeACpkL9JJT2FqA0FUtaTC9KQqk2cw/je/mFA6v7LkGbDbg25lVVY4/KAsh9
 cRblsnS/UzvlghlxdqqQOpgitxx1gV2ebAN3dXjS9GdWxpHcvzef8yECuyGPsVJ8q4BD Ng== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 303yundr5r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 02 Apr 2020 12:44:34 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 032Cg8Ad064328;
 Thu, 2 Apr 2020 12:42:33 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 302ga2bw5k-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 02 Apr 2020 12:42:33 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 032CgVxX006017;
 Thu, 2 Apr 2020 12:42:31 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 02 Apr 2020 05:42:31 -0700
Date: Thu, 2 Apr 2020 15:42:23 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 01/32] staging: wfx: add sanity checks to hif_join()
Message-ID: <20200402124223.GQ2001@kadam>
References: <20200401110405.80282-1-Jerome.Pouiller@silabs.com>
 <20200401110405.80282-2-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401110405.80282-2-Jerome.Pouiller@silabs.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9578
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 mlxlogscore=999 bulkscore=0 mlxscore=0 spamscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004020116
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9578
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 lowpriorityscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 mlxlogscore=999 bulkscore=0
 suspectscore=0 mlxscore=0 spamscore=0 impostorscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004020116
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Apr 01, 2020 at 01:03:34PM +0200, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> Add a few check on start of hif_join().
> =

> Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> ---
>  drivers/staging/wfx/hif_tx.c | 2 ++
>  1 file changed, 2 insertions(+)
> =

> diff --git a/drivers/staging/wfx/hif_tx.c b/drivers/staging/wfx/hif_tx.c
> index 77bca43aca42..445906035e9d 100644
> --- a/drivers/staging/wfx/hif_tx.c
> +++ b/drivers/staging/wfx/hif_tx.c
> @@ -297,6 +297,8 @@ int hif_join(struct wfx_vif *wvif, const struct ieee8=
0211_bss_conf *conf,
>  	struct hif_req_join *body =3D wfx_alloc_hif(sizeof(*body), &hif);
                             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
We've got an allocation here.  It's a mistake to put the allocation in
the declaration block because you're going to forget to check for
failure.

>  =

>  	WARN_ON(!conf->basic_rates);
> +	WARN_ON(sizeof(body->ssid) < ssidlen);

Put the variable on the left.  WARN_ON(ssidlen > sizeof(body->ssid)).
I'm not a big fan of adding this sort of debug code, just audit the
callers to see if it's possible or not.

I have audited the caller for you, and I believe that this condition
*is possible* so we need to return -EINVAL in this situation to prevent
memory corruption.

	if (ssidlen > sizeof(body->ssid))
		return -EINVAL;

> +	WARN(!conf->ibss_joined && !ssidlen, "joining an unknown BSS");
>  	body->infrastructure_bss_mode =3D !conf->ibss_joined;
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Potential NULL dererefence because of the unchecked allocation.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
