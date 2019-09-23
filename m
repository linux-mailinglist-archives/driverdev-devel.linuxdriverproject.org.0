Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84841BB6D9
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Sep 2019 16:34:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9C4DE20798;
	Mon, 23 Sep 2019 14:34:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PyD5Lsy07au9; Mon, 23 Sep 2019 14:34:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3F37820762;
	Mon, 23 Sep 2019 14:34:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E4BE81BF2E3
 for <devel@linuxdriverproject.org>; Mon, 23 Sep 2019 14:34:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id DE23686887
 for <devel@linuxdriverproject.org>; Mon, 23 Sep 2019 14:34:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h9vInQsF6I9B for <devel@linuxdriverproject.org>;
 Mon, 23 Sep 2019 14:34:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B3F9186631
 for <devel@driverdev.osuosl.org>; Mon, 23 Sep 2019 14:34:42 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8NEUVDN112812;
 Mon, 23 Sep 2019 14:34:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=alcsSLa68E513tKJ2O0MRtcf47+VLX8X4uBbyUtq6NU=;
 b=GIvqpUG36+mWu6jeiG7tikuOcEOJUNWnPVKyVX8pP1VUfGypbxbezH0IxtO+tI0MKgPc
 X9TB7FAM6NVetD87fBFC9vdHk5M/wLA3cPh5RPzcHhhun2K3Mtbb+bLWQfzvKNDqaeD7
 U0uRXdGC1xYEEzvXE9/fsWc2jjegrXcQ9rqlRJWLNcaJ1bdOHgD8d6vU9Fcj8P1FCcUQ
 U0WS+IuW6bhPBJp3B0RN6COka0lDOPUinjGf2EuojQtzNHuaA0J27Ua1sZ6V3AF1ijwb
 v/sFrtz1gVP52KrAHWmAZTrRRGeaFaRviSM8c2dEFk8IHo8labPG+OZda+m4TMZK5evH 3w== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2v5cgqq80g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 23 Sep 2019 14:34:36 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8NEXQ9E098200;
 Mon, 23 Sep 2019 14:34:36 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2v6yvgr6gh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 23 Sep 2019 14:34:36 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x8NEYXpE017120;
 Mon, 23 Sep 2019 14:34:33 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 23 Sep 2019 07:34:33 -0700
Date: Mon, 23 Sep 2019 17:34:25 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Saurav Girepunje <saurav.girepunje@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: core: Drop condition with no effect
Message-ID: <20190923143339.GI2959@kadam>
References: <20190922032552.GA9204@saurav>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190922032552.GA9204@saurav>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9389
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909230141
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9389
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909230141
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
Cc: , devel@driverdev.osuosl.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, hardiksingh.k@gmail.com, madhumithabiw@gmail.com,
 hdegoede@redhat.com, saurav.girepunje@hotmail.com, nishkadg.linux@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 22, 2019 at 08:55:56AM +0530, Saurav Girepunje wrote:
> As the "else if" and "else" branch body are identical the condition
> has no effect. So drop the "else if" condition
> 
> Signed-off-by: Saurav Girepunje <saurav.girepunje@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 10 ----------
>  1 file changed, 10 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index c6565b0e502c..3f2f9b12cb61 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -507,19 +507,9 @@ int rtw_cmd_thread(void *context)
>  
>  		cmd_process_time = jiffies_to_msecs(jiffies - cmd_start_time);
>  		if (cmd_process_time > 1000) {
> -			if (pcmd->cmdcode == GEN_CMD_CODE(_Set_Drv_Extra)) {
> -				DBG_871X(ADPT_FMT" cmd =%d process_time =%lu > 1 sec\n",
> -					ADPT_ARG(pcmd->padapter), pcmd->cmdcode, cmd_process_time);
> -				/* rtw_warn_on(1); */
> -			} else if (pcmd->cmdcode == GEN_CMD_CODE(_Set_MLME_EVT)) {
>  				DBG_871X(ADPT_FMT" cmd =%d, process_time =%lu > 1 sec\n",
>  					ADPT_ARG(pcmd->padapter), pcmd->cmdcode, cmd_process_time);
>  				/* rtw_warn_on(1); */

This is indented too far now.  You may was well delete the /* rtw_warn_on(1); */
line as well.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
