Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7EF427AD2C
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Sep 2020 13:49:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CD17F20131;
	Mon, 28 Sep 2020 11:49:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ef06WJh0ebTj; Mon, 28 Sep 2020 11:49:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 94429203B0;
	Mon, 28 Sep 2020 11:49:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE36F1BF3C1
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 11:49:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A9C018539A
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 11:49:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4I-FjQewWMj3 for <devel@linuxdriverproject.org>;
 Mon, 28 Sep 2020 11:49:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1836D851CC
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 11:49:11 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08SBk0Xe142655;
 Mon, 28 Sep 2020 11:49:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=6EGfoGt5aE9CLOcfa3rEsfoAnJl0dVpVezF4zUT6fHU=;
 b=OqTobTOCqaInJY3FBaTd8qUAJ5lBO7P+J4Yoy04RM4pxXNNuNusyE9fTT8i/UAOulU6M
 uzIv9CCIaa90XJcMORsoEhLzwHt6j8aKYDmyYSnKbwqosYD+3EbPOle1qfnN/n3PDq90
 BE5ImlJEyqyyDz4OGlMIvWolfswBdnBOFIDqgS4Xa0YC853rrBFix+8JmBozJSN5cojr
 NTrTjuedOQgUluqQDQwSS+vETi9smjTiFWm3OggMhJXbHArls9JC5Gdyx2ITXscFdVWQ
 kZ5neXsoNE6mLn9cCPE7jjom3SvX/+yFkhMY143qQNep4lO3Zy7YfdYGUcqKjabgSbTk Vw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2130.oracle.com with ESMTP id 33su5amk7j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 28 Sep 2020 11:49:09 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08SBil6g148534;
 Mon, 28 Sep 2020 11:49:08 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 33tf7k7r05-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 28 Sep 2020 11:49:08 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 08SBn4vq004885;
 Mon, 28 Sep 2020 11:49:05 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 28 Sep 2020 04:49:04 -0700
Date: Mon, 28 Sep 2020 14:48:57 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jing Xiangfeng <jingxiangfeng@huawei.com>
Subject: Re: [PATCH] staging: most: don't access hdm_ch before checking it
 valid
Message-ID: <20200928114857.GR4282@kadam>
References: <20200928104838.189639-1-jingxiangfeng@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200928104838.189639-1-jingxiangfeng@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9757
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=999
 suspectscore=0 adultscore=0 malwarescore=0 phishscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009280096
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9757
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 suspectscore=0
 lowpriorityscore=0 spamscore=0 clxscore=1011 mlxscore=0 impostorscore=0
 malwarescore=0 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009280096
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
Cc: devel@driverdev.osuosl.org, keescook@chromium.org,
 gregkh@linuxfoundation.org, masahiroy@kernel.org, linux-kernel@vger.kernel.org,
 christian.gromm@microchip.com, tglx@linutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 28, 2020 at 06:48:38PM +0800, Jing Xiangfeng wrote:
> In try_start_dim_transfer(), pointer hdm_ch is accessed before checking.
> This may lead to a potential null pointer dereference. Fix this by
> dereferencing hdm_ch after calling BUG_ON().
> 
> Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
> ---
>  drivers/staging/most/dim2/dim2.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/most/dim2/dim2.c b/drivers/staging/most/dim2/dim2.c
> index 509c8012d20b..ccd7cc7545e4 100644
> --- a/drivers/staging/most/dim2/dim2.c
> +++ b/drivers/staging/most/dim2/dim2.c
> @@ -148,7 +148,7 @@ void dimcb_on_error(u8 error_id, const char *error_message)
>  static int try_start_dim_transfer(struct hdm_channel *hdm_ch)
>  {
>  	u16 buf_size;
> -	struct list_head *head = &hdm_ch->pending_list;

This is not a dereference, it's just pointer math.  In other words:

	struct list_head *head = hdm_ch + offsetof(struct hdm_channel, pending_list);

So the commit message is wrong because this cannot lead to a NULL
dereference.  It's better to just delete the BUG_ON().  We don't really
like BUG_ON().  Checkpatch will complain about them.  An Oops gives
basically the same information as a BUG_ON() without completely killing
the kernel so just dereferencing a NULL is preferable.  Finally, we can
see from the callers that "hdm_ch" is never NULL.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
