Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3529EEDC14
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 11:04:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 346B021514;
	Mon,  4 Nov 2019 10:04:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Z3rJCIe134F; Mon,  4 Nov 2019 10:04:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AF6482051F;
	Mon,  4 Nov 2019 10:04:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 22DB01BF47F
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 10:04:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1F5BD8A5B9
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 10:04:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5sA6k62lBLwn for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 10:04:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6A7EC8A5B8
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 10:04:28 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA49x22J160715;
 Mon, 4 Nov 2019 10:04:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=HQhP7w0962d2EwU0YsVAYVNgV4Qa8mIpU5WMSsu7f5o=;
 b=nCHWhTEnRB2yHGzxU56GxQKrJAYencv3dDWOVRAxA3TpZwqqxE5PGEHrSWlbN68VCnFF
 jR1mY5L8AxXfj+WwrcU2wxsJlznPK1X516a9aN73J4i3v6ssmNmXBsZHxr+W9U0gC0vQ
 TA0V61RMP6B1UqoQv6gDhcCNTcdxf42SfdRWlyMa+AHiYMfz5wVl6eMkpRQIDKrw3d4J
 0D1GqtL5fquwxDODgsjdMjERa98XDSIJcGMoPbG6+veIJnRlvpFKzrdYTzdjx2X1E4Kg
 DlKLHBnibRmCdR49MUAqevnYezuEArZjqIQajlRMROUzJZ3QwzbjZxJujIAJ9TxBPKAu VA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2w11rpp77u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 04 Nov 2019 10:04:26 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA49x5dt155183;
 Mon, 4 Nov 2019 10:04:25 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2w1k8ufw9u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 04 Nov 2019 10:04:25 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xA4A4K6X003678;
 Mon, 4 Nov 2019 10:04:22 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 04 Nov 2019 02:04:20 -0800
Date: Mon, 4 Nov 2019 13:04:14 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: Re: [PATCH v2 07/10] staging: exfat: Clean up return codes -
 FFS_SUCCESS
Message-ID: <20191104100413.GC10409@kadam>
References: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
 <20191104014510.102356-8-Valdis.Kletnieks@vt.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191104014510.102356-8-Valdis.Kletnieks@vt.edu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9430
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1911040100
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9430
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1911040100
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
Cc: linux-fsdevel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Nov 03, 2019 at 08:45:03PM -0500, Valdis Kletnieks wrote:
> diff --git a/drivers/staging/exfat/exfat_cache.c b/drivers/staging/exfat/exfat_cache.c
> index 467b93630d86..28a67f8139ea 100644
> --- a/drivers/staging/exfat/exfat_cache.c
> +++ b/drivers/staging/exfat/exfat_cache.c
> @@ -462,7 +462,7 @@ u8 *FAT_getblk(struct super_block *sb, sector_t sec)
>  
>  	FAT_cache_insert_hash(sb, bp);
>  
> -	if (sector_read(sb, sec, &bp->buf_bh, 1) != FFS_SUCCESS) {
> +	if (sector_read(sb, sec, &bp->buf_bh, 1) != 0) {

It's better to just remove the "!= 0" double negative.  != 0 should be
used when we are talking about the number zero as in "cnt != 0" and for
"strcmp(foo, bar) != 0" where it means that "foo != bar".

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
