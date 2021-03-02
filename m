Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 604BB32A5DD
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Mar 2021 17:24:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08A3060655;
	Tue,  2 Mar 2021 16:24:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hI3gqr9kufOC; Tue,  2 Mar 2021 16:24:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 66D6B60628;
	Tue,  2 Mar 2021 16:24:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B64AB1BF5DA
 for <devel@linuxdriverproject.org>; Tue,  2 Mar 2021 16:24:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A4F7F4981D
 for <devel@linuxdriverproject.org>; Tue,  2 Mar 2021 16:24:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1DYnmWrMaitM for <devel@linuxdriverproject.org>;
 Tue,  2 Mar 2021 16:24:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CC56A4838E
 for <devel@driverdev.osuosl.org>; Tue,  2 Mar 2021 16:24:31 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 122GNnvT014620;
 Tue, 2 Mar 2021 16:24:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=v2AeWFJDONlxBkRHpLRb9BRRazoZvRTPXfbGtZe5tKI=;
 b=NcG6tmL2jiWJJ9skPmLNPOzMzGcCnxgEaFZVKsSmn4QmXIhIpI2puAK3E1ptDEdPRrKZ
 MzuoziBkkwsCOfPyjp9rWrqEs2+EnLVBqZKuqMAQ7NVM6O2WEDh/mA0aAFtLbtC/fjw8
 zytzPpHqfwBbH3g4hxxRUaGDpL7U2XK7qrqs/XuKP/seAbV3QJFR172jDOM52YU80lhT
 QiCi8VHVSiej97rBLFhoz2qkAmHeh+WWOgj55JzQcSml2mPJpyXQFs6MaOG9ZP16lxyX
 rHLt+Y5mOxXdVF6nnQGo4LxPllFnvdu9rOkOPGDaQlX/GVOfsnx8ERR3Fpi2K2WISFaJ bA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 371hhc1nst-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Mar 2021 16:24:30 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 122G70xk073588;
 Tue, 2 Mar 2021 16:24:28 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 36yynpc8vu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Mar 2021 16:24:28 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 122GOR6v002775;
 Tue, 2 Mar 2021 16:24:27 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 02 Mar 2021 16:24:27 +0000
Date: Tue, 2 Mar 2021 19:24:18 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Perrin Smith <perrinjamessmith@gmail.com>
Subject: Re: [PATCH] staging: rtl8192e: remove unnecessary break
Message-ID: <20210302162417.GU2087@kadam>
References: <20210302152903.2930-1-perrinjemessmith@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210302152903.2930-1-perrinjemessmith@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9911
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxscore=0 spamscore=0
 bulkscore=0 suspectscore=0 mlxlogscore=999 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103020128
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9911
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1011
 malwarescore=0
 mlxlogscore=999 spamscore=0 phishscore=0 lowpriorityscore=0
 impostorscore=0 mlxscore=0 suspectscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103020129
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
 linux-kernel@vger.kernel.org, tiwai@suse.de, yashsri421@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 02, 2021 at 11:29:03PM +0800, Perrin Smith wrote:
> From: Perrin Smith <perrinjamessmith@gmail.com>
> 
> removed unnecessary break at end of while loop
> 
> Signed-off-by: Perrin Smith <perrinjamessmith@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtllib_rx.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtllib_rx.c b/drivers/staging/rtl8192e/rtllib_rx.c
> index b8ab34250e6a..2de6330b7737 100644
> --- a/drivers/staging/rtl8192e/rtllib_rx.c
> +++ b/drivers/staging/rtl8192e/rtllib_rx.c
> @@ -460,8 +460,6 @@ static bool AddReorderEntry(struct rx_ts_record *pTS,
>  			((struct rx_reorder_entry *)list_entry(pList->next,
>  			struct rx_reorder_entry, List))->SeqNum))
>  			return false;
> -		else
> -			break;

No, this break is necessary.  The patch introduces a bug.  You need to
be careful following checkpatch's advice because it's just a simple
Perl script.

>  	}

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
