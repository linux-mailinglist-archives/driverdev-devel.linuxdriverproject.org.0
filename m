Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC7CD94A0
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Oct 2019 17:00:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1E2562338F;
	Wed, 16 Oct 2019 15:00:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id scwlQf1W5VrZ; Wed, 16 Oct 2019 15:00:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C195220384;
	Wed, 16 Oct 2019 15:00:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 68A1E1BF2BF
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 15:00:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5F1DA86094
 for <devel@linuxdriverproject.org>; Wed, 16 Oct 2019 15:00:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lXca9eOAyvtS for <devel@linuxdriverproject.org>;
 Wed, 16 Oct 2019 15:00:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EE69C85CE2
 for <devel@driverdev.osuosl.org>; Wed, 16 Oct 2019 15:00:01 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9GEts3n133163;
 Wed, 16 Oct 2019 15:00:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=3PwraGNTuMLoU4pnge2Pl/pfJN/UbjNwsw1E5cERyZ0=;
 b=kbN4WojFBOH+GYUCxSVMFiOz7JN7YGXNapYgqsWASCGNFe45FFj7XVTuM3mn+S5hAi/r
 2Ko+yBHnSYzqlAwEdVeTNLRN1QWO0sPSna9OTc5wQZqjF/bE2g1jzXkoduz8OhAMwAv9
 YQ1UrI5yj3Ws5M3gUuozOAN2U7OpzHXL8t7EGA1hEFeSioe8p2HmYsnzzZXt8rmhT0J+
 JUXlBDKfUsn6KsfMdwZrQNQixQu2p5HyBQy70dHYScHNSPqXeexGEO953ztjnYKqyg+d
 f9tGinKwTUdZl50i+2s+DUoClBb58lQYdk/6cDbVfry5IyvXLrU48XxcH9HRU5GL7mry VA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2vk6sqqky8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 16 Oct 2019 14:59:59 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9GEmmNX194893;
 Wed, 16 Oct 2019 14:59:59 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2vnf7thn5j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 16 Oct 2019 14:59:59 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x9GExvSE031461;
 Wed, 16 Oct 2019 14:59:58 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 16 Oct 2019 07:59:57 -0700
Date: Wed, 16 Oct 2019 17:59:50 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Aliasgar Surti <aliasgar.surti500@gmail.com>
Subject: Re: [PATCH] staging:rtl8723bs: removed unwanted if..else condition
Message-ID: <20191016145950.GC24678@kadam>
References: <1571234873-13847-1-git-send-email-aliasgar.surti500@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571234873-13847-1-git-send-email-aliasgar.surti500@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9412
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=968
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910160129
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9412
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910160129
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 16, 2019 at 07:37:53PM +0530, Aliasgar Surti wrote:
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
> -				DBG_871X(ADPT_FMT" cmd =%d, process_time =%lu > 1 sec\n",
> -					ADPT_ARG(pcmd->padapter), pcmd->cmdcode, cmd_process_time);
> -				/* rtw_warn_on(1); */
> -			} else {
> -				DBG_871X(ADPT_FMT" cmd =%d, process_time =%lu > 1 sec\n",
> -					ADPT_ARG(pcmd->padapter), pcmd->cmdcode, cmd_process_time);
> -				/* rtw_warn_on(1); */
> -			}
> +			DBG_871X(ADPT_FMT "cmd= %d process_time= %lu > 1 sec\n",
> +				 ADPT_ARG(pcmd->padapter), pcmd->cmdcode,
> +					  cmd_process_time);

This last line is aligned to the wrong parenthesis.  It should be:

			DBG_871X(ADPT_FMT "cmd= %d process_time= %lu > 1 sec\n",
				 ADPT_ARG(pcmd->padapter), pcmd->cmdcode,
				 cmd_process_time);

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
