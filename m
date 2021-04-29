Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F40036EC44
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Apr 2021 16:21:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 98A1784D84;
	Thu, 29 Apr 2021 14:21:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IiYuBV4JUo89; Thu, 29 Apr 2021 14:21:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E771D8464E;
	Thu, 29 Apr 2021 14:21:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 294901BF2C4
 for <devel@linuxdriverproject.org>; Thu, 29 Apr 2021 14:21:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 182DB84640
 for <devel@linuxdriverproject.org>; Thu, 29 Apr 2021 14:21:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wx5I8KsWK1rV for <devel@linuxdriverproject.org>;
 Thu, 29 Apr 2021 14:21:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 78F658463C
 for <devel@driverdev.osuosl.org>; Thu, 29 Apr 2021 14:21:11 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 13TEGKEX007801;
 Thu, 29 Apr 2021 14:21:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=NXpxgGCYotI1YSrgT91QdO23p7ZRQXUBQo7cq8qqeWo=;
 b=YEp5amXoG2Kv30qElzWi+UYl1/NwyGurGFbCS5F460YbUcQ9yy2/3FwGjRi983he/MJT
 PV6Prxa7aNur0qykw5UXFXHz5loynmmgnjMcxwtM/XeB1glsYbDvXfi/3JHzTD5uCe5J
 D9v0CWFjDhMhBm7LkiwztY5Zlugf8eBIaq0oPdFiSc3yk8kzsUr5DoZxDC1AoEUjFdO3
 5sO6Edu/8HIQNiCxRCsPBMY6KAFXwUn5WEwdGsmEU1vzWLOlj3eCTwMPcag67XcDq4Zp
 DoXbMi346Jk0Qlj7BZrmB2TckZGT1KIjRfSuzeZ8cwNhopCIRqN1UjtLI5b8Xr/qpt5s fQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 385ahbvj81-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 29 Apr 2021 14:21:10 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 13TEEtsl046291;
 Thu, 29 Apr 2021 14:21:09 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by userp3030.oracle.com with ESMTP id 3848f15kbc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 29 Apr 2021 14:21:09 +0000
Received: from userp3030.oracle.com (userp3030.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 13TEJx9O069966;
 Thu, 29 Apr 2021 14:21:08 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 3848f15kaq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 29 Apr 2021 14:21:08 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 13TEL6Z6012266;
 Thu, 29 Apr 2021 14:21:07 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 29 Apr 2021 07:21:06 -0700
Date: Thu, 29 Apr 2021 17:20:58 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jitendra Khasdev <jkhasdev@gmail.com>
Subject: Re: [PATCH] staging: rtl8192e: fix array of flexible structures
Message-ID: <20210429142058.GC1981@kadam>
References: <20210427174945.1323-1-jkhasdev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210427174945.1323-1-jkhasdev@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-GUID: ZH2M9C6mWshEeh263zv1pxORNm5ACUsI
X-Proofpoint-ORIG-GUID: ZH2M9C6mWshEeh263zv1pxORNm5ACUsI
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9969
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 bulkscore=0 mlxlogscore=999
 priorityscore=1501 clxscore=1011 adultscore=0 suspectscore=0 spamscore=0
 phishscore=0 malwarescore=0 lowpriorityscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104060000
 definitions=main-2104290094
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 27, 2021 at 11:19:45PM +0530, Jitendra Khasdev wrote:
> This patch fixes sparse warning "array of flexible structures"
> for rtllib.h.
> 
> eg. drivers/staging/rtl8192e/rtllib.h:832:48: warning: array of
> flexible structures
> 
> Signed-off-by: Jitendra Khasdev <jkhasdev@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtllib.h | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
> index 4cabaf2..c7cb318 100644
> --- a/drivers/staging/rtl8192e/rtllib.h
> +++ b/drivers/staging/rtl8192e/rtllib.h
> @@ -802,7 +802,7 @@ struct rtllib_authentication {
>  	__le16 transaction;
>  	__le16 status;
>  	/*challenge*/
> -	struct rtllib_info_element info_element[];
> +	struct rtllib_info_element *info_element;
>  } __packed;

This patch is wrong.

The original code is basically fine.  Normally it doesn't make sense to
have an array of flex arrays, but in this case it "flexes" between 0 and
1.  If it were had two elements then the match the math wouldn't work
at all.

We should probably get rid of it and just add some giant comments and
defines to do the math.

But changing it to a pointer isn't right.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
