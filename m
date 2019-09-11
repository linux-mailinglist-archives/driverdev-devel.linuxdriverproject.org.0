Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3DAB0460
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Sep 2019 21:04:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 332B786B50;
	Wed, 11 Sep 2019 19:04:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q1ipfH6TXWNG; Wed, 11 Sep 2019 19:04:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2423086ADD;
	Wed, 11 Sep 2019 19:04:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 86D311BF59A
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 19:04:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 827CA87DCE
 for <devel@linuxdriverproject.org>; Wed, 11 Sep 2019 19:04:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1+dbqGrvFkzL for <devel@linuxdriverproject.org>;
 Wed, 11 Sep 2019 19:04:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 09B1587DCC
 for <devel@driverdev.osuosl.org>; Wed, 11 Sep 2019 19:04:08 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8BIxecq070989;
 Wed, 11 Sep 2019 19:04:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=/eClILhHkjw0LpYIhEDRFhF0ehDvHS1dirEpGKitMHs=;
 b=nTa9vXO4zoomQrSYBGOhwFZIkgs6tPetu3O5OUM5P9V1ZX4PFiQPySoWDvF1uNJIa69U
 JZD+IQXlGXm1nw7Cr4wSMXSsjor0sUp5Papj2hggmPgzYHShrZgJtzwpqrk0f9WEQ6u0
 SN2IHrtNsHQu3t7SON1BXWZFr+SLkEUZ4V4l2tlI6V9V9q0NBiE3k4HaXrj7lyID+X84
 q5lqtfHjiTDmIGBTgf0okA5YMpcL/6EGsI8JUMrnkuBzdHp6ThB3YJUedHaRSWmw/rBf
 mbEzsB5/F05d5fEsd/1lBMvyWzBfrkLOStRUULjK/R7gBN1cza8y/uGDzOC+BMfSVQL5 jA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2uw1m947aq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 Sep 2019 19:04:08 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8BJ3ggE015899;
 Wed, 11 Sep 2019 19:04:07 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2uy33b2ht8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 Sep 2019 19:04:07 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8BJ421Y012734;
 Wed, 11 Sep 2019 19:04:02 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 11 Sep 2019 12:04:01 -0700
Date: Wed, 11 Sep 2019 22:03:55 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sandro Volery <sandro@volery.com>
Subject: Re: [PATCH v4] Staging: exfat: avoid use of strcpy
Message-ID: <20190911190355.GA18977@kadam>
References: <20190911195303.GA27966@volery>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911195303.GA27966@volery>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9377
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=965
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909110175
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9377
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909110174
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
 valdis.kletnieks@vt.edu, linux-kernel@vger.kernel.org,
 linux@rasmusvillemoes.dk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 11, 2019 at 09:53:03PM +0200, Sandro Volery wrote:
> diff --git a/drivers/staging/exfat/exfat_core.c b/drivers/staging/exfat/exfat_core.c
> index da8c58149c35..4336fee444ce 100644
> --- a/drivers/staging/exfat/exfat_core.c
> +++ b/drivers/staging/exfat/exfat_core.c
> @@ -2960,18 +2960,15 @@ s32 resolve_path(struct inode *inode, char *path, struct chain_t *p_dir,
>  	struct super_block *sb = inode->i_sb;
>  	struct fs_info_t *p_fs = &(EXFAT_SB(sb)->fs_info);
>  	struct file_id_t *fid = &(EXFAT_I(inode)->fid);
> -
> -	if (strlen(path) >= (MAX_NAME_LENGTH * MAX_CHARSET_SIZE))
> +	

You have added a tab here.

> +	if (strscpy(name_buf, path, sizeof(name_buf)) < 0)
>  		return FFS_INVALIDPATH;
>  
> -	strcpy(name_buf, path);
> -
>  	nls_cstring_to_uniname(sb, p_uniname, name_buf, &lossy);
>  	if (lossy)
>  		return FFS_INVALIDPATH;
>  
> -	fid->size = i_size_read(inode);
> -
> +fid->size = i_size_read(inode);

And you accidentally deleted some white space here.

I use vim, so I have it configured to highlight whitespace at the end of
a line.  I don't remember how it's done now but I googled it for you.
https://vim.fandom.com/wiki/Highlight_unwanted_spaces

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
