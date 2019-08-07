Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A6984A41
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 13:02:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2C3CC88393;
	Wed,  7 Aug 2019 11:02:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j3QFNIsbE7AW; Wed,  7 Aug 2019 11:02:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A2F7988334;
	Wed,  7 Aug 2019 11:02:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DF80B1BF981
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 11:02:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DAD4C226CA
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 11:02:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HYRQm1n2tJPR for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2019 11:02:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 1F71A20492
 for <devel@driverdev.osuosl.org>; Wed,  7 Aug 2019 11:02:19 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x77AxLUZ128091;
 Wed, 7 Aug 2019 11:02:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=JqXLdsoEGXeosUdwxIy/HvAVzNewgkgVoHb6F+RGI6s=;
 b=QiTBoVy9DrxGJavQiqKemKDvnvZzptuBhqTdYyiVJ6WKbFF6kL4ptfijadiLGnu+i55/
 mOO7meDIV10UAJIoKbY8FijJ/pPcafe8qHJbTYMlwmonuhOYoWsswATVVoEIOROm1QrT
 s2IkSs8kNkB2Fe3tpJ3TAdiKc73piqHyB7C0FCxZEcElOLH2q37dUZi1qE/+K67NzBUJ
 v72/eQxZN3SMkchmExdGSO56HME534tixzkPbtqX0mbDvk2esKM+IZhMwzdiZiNFsF11
 uSB6+QTc+YM8rz9ae1NCF5kAPClRXxPf4pKWP6ftPY3g8BdrW+C5A6Qbx/xG4wbTllVc eg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2u51pu3pwf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 07 Aug 2019 11:02:15 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x77Avv0f009570;
 Wed, 7 Aug 2019 11:02:14 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2u7577ubc6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 07 Aug 2019 11:02:14 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x77B2D3a013978;
 Wed, 7 Aug 2019 11:02:13 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 07 Aug 2019 04:02:12 -0700
Date: Wed, 7 Aug 2019 14:02:05 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Hridya Valsaraju <hridya@google.com>
Subject: Re: [PATCH v2 1/2] binder: Add default binder devices through
 binderfs when configured
Message-ID: <20190807110204.GL1974@kadam>
References: <20190806184007.60739-1-hridya@google.com>
 <20190806184007.60739-2-hridya@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190806184007.60739-2-hridya@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9341
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908070122
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9341
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908070122
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
Cc: devel@driverdev.osuosl.org, kernel-team@android.com,
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 06, 2019 at 11:40:05AM -0700, Hridya Valsaraju wrote:
> @@ -467,6 +466,9 @@ static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
>  	int ret;
>  	struct binderfs_info *info;
>  	struct inode *inode = NULL;
> +	struct binderfs_device device_info = { 0 };
> +	const char *name;
> +	size_t len;
>  
>  	sb->s_blocksize = PAGE_SIZE;
>  	sb->s_blocksize_bits = PAGE_SHIFT;
> @@ -521,7 +523,24 @@ static int binderfs_fill_super(struct super_block *sb, void *data, int silent)
>  	if (!sb->s_root)
>  		return -ENOMEM;
>  
> -	return binderfs_binder_ctl_create(sb);
> +	ret = binderfs_binder_ctl_create(sb);
> +	if (ret)
> +		return ret;
> +
> +	name = binder_devices_param;
> +	for (len = strcspn(name, ","); len > 0; len = strcspn(name, ",")) {
> +		strscpy(device_info.name, name, len + 1);
> +		ret = binderfs_binder_device_create(inode, NULL, &device_info);
> +		if (ret)
> +			return ret;

We should probably clean up before returning...  The error handling code
would probably be tricky to write though and it's not super common.

> +		name += len;
> +		if (*name == ',')
> +			name++;
> +
> +	}
> +
> +	return 0;
> +

Remove this extra blank line.

>  }

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
