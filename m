Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A7254DFF
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 13:54:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C73B386D52;
	Tue, 25 Jun 2019 11:54:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SMjG3N6dxa9T; Tue, 25 Jun 2019 11:54:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7682087938;
	Tue, 25 Jun 2019 11:54:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AB2AD1BF20B
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:54:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A899585A88
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:54:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JPsilBVSgVGB for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 11:54:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F05A185A7D
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 11:54:18 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5PBsIZR031727;
 Tue, 25 Jun 2019 11:54:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=QyfozrWnTVyY8Qv6YGJJaCSU5tcmXZcMEx+DsUlF2gc=;
 b=VcN7fi5HK0SPe7WDUkxbSXpMCXNeRuNyf/JgQXwYQc04TmmdTwV6ppzs5bDdYF0bRLiw
 DfT4Bxa5BgvN6i8GCc5G6Yl8KMr/EbgAuwRnnf2jkG8Rek/LKTuQmr15C3/jbT+z/A91
 f5O8cene2EBAzlJlMCFZZgGATekgbwTj4GLggKBYK+tqffdwPWGmKG4Bi3NqcxcnoKIO
 0T0nVXtCDGEESov7YAJwxdBLx3B+YxNV3DMx0LTyb+Sj8eyg/ObYcb1/DiLski4pBtFp
 G4GDJG9P8Z1DjkWf0lSGhlCaIa56rOWQlm34hMNWrlIgUXHEWs57/JZYL+sadM8FCq1X WA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2t9cyqbtnu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Jun 2019 11:54:18 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5PBrqop127326;
 Tue, 25 Jun 2019 11:54:18 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2t99f3tyyb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Jun 2019 11:54:17 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5PBsHR3020487;
 Tue, 25 Jun 2019 11:54:17 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 25 Jun 2019 04:54:16 -0700
Date: Tue, 25 Jun 2019 14:54:06 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Fabian Krueger <fabian.krueger@fau.de>
Subject: Re: [PATCH 4/8] staging: kpc2000: add spaces
Message-ID: <20190625115406.GB28859@kadam>
References: <20190625112725.10154-1-fabian.krueger@fau.de>
 <20190625112725.10154-5-fabian.krueger@fau.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625112725.10154-5-fabian.krueger@fau.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9298
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906250096
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9298
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906250096
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
 linux-kernel@vger.kernel.org, Michael Scheiderer <michael.scheiderer@fau.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 25, 2019 at 01:27:15PM +0200, Fabian Krueger wrote:
> Added spaces on the left side of parenthesis and on both sides of binary
> operators.
> This refactoring makes the code more readable.
> 
> Signed-off-by: Fabian Krueger <fabian.krueger@fau.de>
> Signed-off-by: Michael Scheiderer <michael.scheiderer@fau.de>
> ---
>  drivers/staging/kpc2000/kpc2000_spi.c | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
> index 253a9c150d33..8f56886f4673 100644
> --- a/drivers/staging/kpc2000/kpc2000_spi.c
> +++ b/drivers/staging/kpc2000/kpc2000_spi.c
> @@ -192,9 +192,8 @@ kp_spi_read_reg(struct kp_spi_controller_state *cs, int idx)
>  	u64 val;
>  
>  	addr += idx;
> -	if ((idx == KP_SPI_REG_CONFIG) && (cs->conf_cache >= 0)){
> +	if ((idx == KP_SPI_REG_CONFIG) && (cs->conf_cache >= 0))
>  		return cs->conf_cache;
> -	}

This doesn't match the patch description.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
