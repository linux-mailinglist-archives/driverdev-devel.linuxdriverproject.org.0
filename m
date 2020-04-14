Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB7F1A77E3
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Apr 2020 11:53:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9328E878C8;
	Tue, 14 Apr 2020 09:53:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ek6zFW8pEv4W; Tue, 14 Apr 2020 09:53:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 08B5186F85;
	Tue, 14 Apr 2020 09:53:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 109EE1BF2A7
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 09:53:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0BE1A20035
 for <devel@linuxdriverproject.org>; Tue, 14 Apr 2020 09:53:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KLM4SvzNZ9vz for <devel@linuxdriverproject.org>;
 Tue, 14 Apr 2020 09:53:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id E120B2001A
 for <devel@driverdev.osuosl.org>; Tue, 14 Apr 2020 09:53:21 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03E9rIGZ039973;
 Tue, 14 Apr 2020 09:53:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=RNjbjBea2yPyYlo8Dy1KxUbyXQZ2fhl+B1f7RROmYig=;
 b=Gjd9tEgQJA1CCDoAV1Z92vjUXYP74T69H8YNOOuMssWNn9d76B3PH534Z910ajqs86qs
 HFdFPxhYRQtvrKB3dRqZQVdqE5V7j69bU195C5Y8emf5f2XVTdLFzCqqL8Y5TcVtv+x/
 ZWLsNA8klKgEjKshwIilh7b59w6ydlR+l/VDQ3iwsrQYjsXDqAUlYwnR2QFDj44uw4y6
 LLo2X2ziSLxVnZnvcUY4qkYfbLPQBHQife7ldkZ9QjJfDIcZfyglJNogkJNtl8tJUPy1
 6AL6tBkW04ShfKMsRNkKnvD6PM8WkPpIRDJewIZ6fHKFlGecsKbaU3bDhKDXwHO6nMUK bQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 30b6hpke05-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 Apr 2020 09:53:18 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03E9qxPS089717;
 Tue, 14 Apr 2020 09:53:12 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 30bqm1ad9g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 Apr 2020 09:53:11 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 03E9r8Sk028919;
 Tue, 14 Apr 2020 09:53:08 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 14 Apr 2020 02:53:07 -0700
Date: Tue, 14 Apr 2020 12:52:50 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: MugilRaj <dmugil2000@gmail.com>
Subject: Re: [PATCH] taging: android: ashmem: Declared const key
Message-ID: <20200414095249.GE1163@kadam>
References: <1586633396-24237-1-git-send-email-dmugil2000@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586633396-24237-1-git-send-email-dmugil2000@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9590
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 mlxlogscore=999
 adultscore=0 mlxscore=0 phishscore=0 malwarescore=0 spamscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004140081
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9590
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 adultscore=0
 mlxlogscore=999 clxscore=1011 mlxscore=0 phishscore=0 suspectscore=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004140081
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
Cc: mugil2301 <110117057@nitt.edu>, devel@driverdev.osuosl.org,
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Apr 12, 2020 at 12:59:56AM +0530, MugilRaj wrote:
> From: mugil2301 <110117057@nitt.edu>
        ^^^^^^^^^
1) Real name.

2) Add a commit message.

> 
> Signed-off-by: mugil2301 <110117057@nitt.edu>
                 ^^^^^^^^^
3) Real name here as well.

> ---
>  drivers/staging/android/ashmem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> index 8044510..50f882a 100644
> --- a/drivers/staging/android/ashmem.c
> +++ b/drivers/staging/android/ashmem.c
> @@ -367,7 +367,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
>  
>  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
>  {
> -	static struct file_operations vmfile_fops;
> +	static const  struct file_operations vmfile_fops;
                    ^^
4) Too many space characters.

Please resend.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
