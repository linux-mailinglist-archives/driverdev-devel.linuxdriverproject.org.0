Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0661B08FC
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Apr 2020 14:13:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9FA7287ACB;
	Mon, 20 Apr 2020 12:13:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5TRyd5FYRoeP; Mon, 20 Apr 2020 12:13:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1F78D879FC;
	Mon, 20 Apr 2020 12:13:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 168AD1BF29F
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 12:13:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 12F1D85B3B
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 12:13:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iahjf00gtxaZ for <devel@linuxdriverproject.org>;
 Mon, 20 Apr 2020 12:13:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C854885A60
 for <devel@driverdev.osuosl.org>; Mon, 20 Apr 2020 12:13:19 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03KBqb1C187946;
 Mon, 20 Apr 2020 12:13:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=C7+fcI4KZiXfIWW4U2ZyjNo5atQa1VYMh+jlIP/eLqg=;
 b=Z59B/qFcgrXjwvapB0YXbiA1Yn0eCWArZonLrcdXNPnDLJa4sqvAVyR2SbBaH1kGvhYk
 zwbnoQik+OQRLeMkkIe3SEN/kOyPZ20qakX+GJwVD7ijsa9XhYQFdjKECQVPr3/yoVWu
 51CF0obZjwaJqyqmNbi1yAKIlCW7+0LH7cZjMhacR8s2H3wSBXZguHdmhO5yo3Yml63f
 6NAZtVI7Xe5EJpDzxwOn5hU66Kp/KaLQRVp22BLvw/P4PZol1Yv01X1pmZJsy2gndTJ1
 IW+QqlTWpD5rPvaff3Qiz2T1bxO6IFZsXdS6VpFgN+U6UBjXZjgjVUKpRzO0Pmu60KWW Sg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 30ft6mxrnh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 20 Apr 2020 12:13:16 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03KC8Io9102341;
 Mon, 20 Apr 2020 12:11:15 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 30gb1d2r19-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 20 Apr 2020 12:11:15 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 03KCB9nC001397;
 Mon, 20 Apr 2020 12:11:12 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 20 Apr 2020 05:11:09 -0700
Date: Mon, 20 Apr 2020 15:10:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH] staging: vt6656: Use fls instead of for loop in
 vnt_update_top_rates
Message-ID: <20200420121059.GC2659@kadam>
References: <20200419100921.5421-1-oscar.carter@gmx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200419100921.5421-1-oscar.carter@gmx.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9596
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 suspectscore=0 spamscore=0
 mlxlogscore=849 mlxscore=0 malwarescore=0 bulkscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004200107
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9596
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 bulkscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 phishscore=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 mlxlogscore=914 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004200107
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
Cc: devel@driverdev.osuosl.org, "John B . Wyatt IV" <jbwyatt4@gmail.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Apr 19, 2020 at 12:09:21PM +0200, Oscar Carter wrote:
> -	for (i = RATE_11M;; i--) {
> -		if (priv->basic_rates & (u16)(1 << i)) {
> -			top_cck = i;
> -			break;
> -		}
> -		if (i == RATE_1M)
> -			break;
> -	}
> +	pos = fls(priv->basic_rates & GENMASK(RATE_54M, RATE_6M));
> +	priv->top_ofdm_basic_rate = pos ? pos-- : RATE_24M;
                                          ^^^^^
Argh...  Come on.  I don't want to have to break out the C standard to
see if this is defined behavior and where the sequence points are.  A
pre-op would be clear but the most clear thing is to write it like this:

	priv->top_ofdm_basic_rate = pos ? (pos - 1) : RATE_24M;


> 
> -	priv->top_cck_basic_rate = top_cck;
> +	pos = fls(priv->basic_rates & GENMASK(RATE_11M, RATE_1M));
> +	priv->top_cck_basic_rate = pos ? pos-- : RATE_1M;
                                         ^^^^^
Same.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
