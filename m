Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA316E6E2F
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Oct 2019 09:27:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7E0132047B;
	Mon, 28 Oct 2019 08:27:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NNj01aKq0e5V; Mon, 28 Oct 2019 08:27:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 23BE62035E;
	Mon, 28 Oct 2019 08:27:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E971C1BF325
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 08:27:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E38B086887
 for <devel@linuxdriverproject.org>; Mon, 28 Oct 2019 08:27:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qv1TstzqUGlY for <devel@linuxdriverproject.org>;
 Mon, 28 Oct 2019 08:27:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4776986372
 for <devel@driverdev.osuosl.org>; Mon, 28 Oct 2019 08:27:48 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9S8Oakt028354;
 Mon, 28 Oct 2019 08:27:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=7o48n+uEPUganz3JjAED7CtR2SsbStGSOoNK4sq0Wgo=;
 b=mKkzgyJyfrjtOQ45McVAuIaKQEtWTPjrw9bZpKYgSLIQBUSFKkfJ+7xAhCmY7YmCZyLc
 cCRwJ+zlyLhnPYAc9OrIswmt6Bg791yEl2f+YZ+6E6heT7LP41rVul+77uJBMT/eBt2e
 VcHe8/PjhRO96XQ1W5r+bpLveCAKHCummfcLMEgqpwyNBCGEInGlTkfkr9Ce67MlpfUd
 o7KuhhFXAO/MPB7cTUw7+6zRqvowMuv+QzE6/s/QEx6iCG5fmj7t7rK/w6qUacmfzgCI
 bGoYSZCSvnUcBxqLnEOdjU0YJ/quxJsKeO8REN8d9BSC4K9FlMJ+NAlFbBSvKs7iEBZX bQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2vvdju0cfu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 28 Oct 2019 08:27:47 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9S8Ou1T131667;
 Mon, 28 Oct 2019 08:27:46 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2vvykrb2uq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 28 Oct 2019 08:27:46 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9S8Ribl012667;
 Mon, 28 Oct 2019 08:27:44 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 28 Oct 2019 01:27:44 -0700
Date: Mon, 28 Oct 2019 11:27:32 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
Subject: Re: [PATCH] staging: octeon: Remove unneeded variable
Message-ID: <20191028082732.GE1944@kadam>
References: <20191026222453.GA14562@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191026222453.GA14562@cristiane-Inspiron-5420>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9423
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910280085
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9423
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910280085
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Julia Lawall <julia.lawall@lip6.fr>, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Oct 26, 2019 at 07:24:53PM -0300, Cristiane Naves wrote:
> Remove unneeded variable used to store return value. Issue found by
> coccicheck.
> 
> Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> ---
>  drivers/staging/octeon/octeon-stubs.h | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/octeon/octeon-stubs.h b/drivers/staging/octeon/octeon-stubs.h
> index b07f5e2..d53bd801 100644
> --- a/drivers/staging/octeon/octeon-stubs.h
> +++ b/drivers/staging/octeon/octeon-stubs.h
> @@ -1387,9 +1387,7 @@ static inline cvmx_pko_status_t cvmx_pko_send_packet_finish(uint64_t port,
>  		uint64_t queue, union cvmx_pko_command_word0 pko_command,
>  		union cvmx_buf_ptr packet, cvmx_pko_lock_t use_locking)
>  {
> -	cvmx_pko_status_t ret = 0;
> -
> -	return ret;
> +	return 0;

What is the point of this function anyway?

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
