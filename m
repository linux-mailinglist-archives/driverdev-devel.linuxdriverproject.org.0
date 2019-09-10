Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA50CAE9D5
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Sep 2019 13:59:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A402B86123;
	Tue, 10 Sep 2019 11:59:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zbnT9U2LCqHE; Tue, 10 Sep 2019 11:59:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5036D85DBB;
	Tue, 10 Sep 2019 11:59:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD4231BF20B
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 11:59:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DA9DC2153B
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 11:59:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5V0-u9olykjQ for <devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 11:59:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id AA8322152F
 for <devel@driverdev.osuosl.org>; Tue, 10 Sep 2019 11:59:43 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8ABwvCn187875;
 Tue, 10 Sep 2019 11:59:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=wEjhYAINXLPVQhkijGH+NMI7zBhunZpAAPUUSPvcqXY=;
 b=Qgn0QJ9N4F1ezv/iQbaVXuMtuQ4qc9WXmvQtzHByHwO7emYybzhE55YxtRAiaJjPglXq
 uXGvGOmEBioRn0R/PKHZiAx4bHgM8WM2VStgDX5rJD0JIbi7r+D83bfVoDII3AH/VzHY
 XknMVuoX0VtfIuXC3VjYBAeAmN9ylhhhf1a2OWPYgbllRGoOnCz8Av8ciRivZmnFGGD8
 6ABNRpLDeiEbue66bMXVKJ/tbUpN+KROgS7HCFXOqz4epzk1fQ9sVKIO/VX2B4Wzl3m1
 YUlpKaHDOSbaAGtaEbW5H71gDWEwzbdtDBcxCSXpEk+o4qrvECYpyfzd1nCpwL6jyU8l Vw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2uw1jy2ukd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Sep 2019 11:59:41 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8ABvxdK068633;
 Tue, 10 Sep 2019 11:59:41 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2uwqktms8y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Sep 2019 11:59:41 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8ABxeBn014152;
 Tue, 10 Sep 2019 11:59:40 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 10 Sep 2019 04:59:40 -0700
Date: Tue, 10 Sep 2019 14:59:32 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ivan Safonov <insafonov@gmail.com>
Subject: Re: [PATCH] staging: r8188eu: replace rtw_malloc() with it's
 definition
Message-ID: <20190910115932.GB15977@kadam>
References: <20190908090026.2656-1-insafonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190908090026.2656-1-insafonov@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9375
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=750
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909100120
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9375
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=807 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909100120
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
Cc: devel@driverdev.osuosl.org,
 Florian =?iso-8859-1?Q?B=FCstgens?= <flbue@gmx.de>,
 Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Robert =?utf-8?B?V8SZY8WCYXdza2k=?= <r.weclawski@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 08, 2019 at 12:00:26PM +0300, Ivan Safonov wrote:
> rtw_malloc prevents the use of kmemdup/kzalloc and others.
> 
> Signed-off-by: Ivan Safonov <insafonov@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_ap.c        |  4 ++--
>  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c  |  2 +-
>  .../staging/rtl8188eu/include/osdep_service.h  |  3 ---
>  drivers/staging/rtl8188eu/os_dep/ioctl_linux.c | 18 +++++++++---------
>  drivers/staging/rtl8188eu/os_dep/mlme_linux.c  |  2 +-
>  .../staging/rtl8188eu/os_dep/osdep_service.c   |  7 +------
>  6 files changed, 14 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
> index 51a5b71f8c25..c9c57379b7a2 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
> @@ -104,7 +104,7 @@ static void update_BCNTIM(struct adapter *padapter)
>  	}
>  
>  	if (remainder_ielen > 0) {
> -		pbackup_remainder_ie = rtw_malloc(remainder_ielen);
> +		pbackup_remainder_ie = kmalloc(remainder_ielen, in_interrupt() ? GFP_ATOMIC : GFP_KERNEL);
                                                                ^^^^^^^^^^^^^
This stuff isn't right.  It really should be checking if spinlocks are
held or IRQs are disabled.  And the only way to do that is by auditing
the callers.

(The original rtw_malloc() implementation is buggy nonsense).

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
