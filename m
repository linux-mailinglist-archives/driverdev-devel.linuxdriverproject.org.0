Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48896CF294
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 08:16:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5129D87E7D;
	Tue,  8 Oct 2019 06:16:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XcRWpD7ClXfk; Tue,  8 Oct 2019 06:16:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 97C3B87E5B;
	Tue,  8 Oct 2019 06:16:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E2DB21BF289
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 06:16:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DF7408731C
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 06:16:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0-0dSJMwFmMl for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 06:16:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2ED2A868B2
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 06:16:45 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9868lpt047627;
 Tue, 8 Oct 2019 06:16:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=WOAWpGPGsMCVMWlZusp6LKiV+o/kNd1Up7mpuXvb7Pw=;
 b=cFqtHMzhNfdQWwMSnfcw6SKoIErRWWi3wmMrjF6IytZu2j1KZEn7m4+b968WN+t75Q+7
 LB1z3u/+8R7e1t74po6wVX7zgQ9wxmmKC5j0efAl+rk2jL8uGPKSF9wNspybtHau/5iq
 1YW/9uA3u5nzW+akUhq2+3eLCQ/GRkb6ygc+wc4UOoxN6aqZ8JCTLpEPrSccOBY90417
 p8nf9HVqQ6hngyL+8wTW9VObNYQDwtqlLi/dhX3d4sm8t6CGxCIPBTgSbogFjC2EmbNA
 +8lg9U89YqtzzXCZU0MnQDhze1RoSn0DJho0xWjG6eKse3iubkViUliFoKAQ1UJ9dUXZ Tw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2vektraypa-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Oct 2019 06:16:44 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9868qtm085443;
 Tue, 8 Oct 2019 06:16:43 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2vgeux4vx1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 08 Oct 2019 06:16:43 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x986GgoU023479;
 Tue, 8 Oct 2019 06:16:42 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 07 Oct 2019 23:16:41 -0700
Date: Tue, 8 Oct 2019 09:16:36 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jules Irenge <jbi.octave@gmail.com>
Subject: Re: [PATCH] staging: rtl8712: Add comment to lock declaration
Message-ID: <20191008061455.GC12948@kadam>
References: <20191007205248.24466-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007205248.24466-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9403
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910080063
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9403
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910080063
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Larry.Finger@lwfinger.net, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 07, 2019 at 09:52:48PM +0100, Jules Irenge wrote:
> Add comment to spinlock declaration to fix warning issued by checkpatch.pl
> "CHECK: spinlock_t definition without comment".
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/rtl8712/drv_types.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
> index 0c4325073c63..960d8709aada 100644
> --- a/drivers/staging/rtl8712/drv_types.h
> +++ b/drivers/staging/rtl8712/drv_types.h
> @@ -160,7 +160,7 @@ struct _adapter {
>  	int pid; /*process id from UI*/
>  	struct work_struct wk_filter_rx_ff0;
>  	u8 blnEnableRxFF0Filter;
> -	spinlock_t lock_rx_ff0_filter;
> +	spinlock_t lock_rx_ff0_filter; /*spinlock to protect interrupt request*/

This spinlock seems to be nonsense.  It's only used one time:

drivers/staging/rtl8712/xmit_linux.c
    94  void r8712_SetFilter(struct work_struct *work)
    95  {
    96          struct _adapter *adapter = container_of(work, struct _adapter,
    97                                                  wk_filter_rx_ff0);
    98          u8  oldvalue = 0x00, newvalue = 0x00;
    99          unsigned long irqL;
   100  
   101          oldvalue = r8712_read8(adapter, 0x117);
   102          newvalue = oldvalue & 0xfe;
   103          r8712_write8(adapter, 0x117, newvalue);
   104  
   105          spin_lock_irqsave(&adapter->lock_rx_ff0_filter, irqL);
   106          adapter->blnEnableRxFF0Filter = 1;

It only protects writing to ->blnEnableRxFF0Filter but it doesn't
protect reading so it can't possibly work.

   107          spin_unlock_irqrestore(&adapter->lock_rx_ff0_filter, irqL);
   108          do {
   109                  msleep(100);
   110          } while (adapter->blnEnableRxFF0Filter == 1);
   111          r8712_write8(adapter, 0x117, oldvalue);
   112  }

Also put a space after /* and before */ so the comment looks like:
	/* spinlock to protect interrupt request */

But in this case, the comment isn't correct so please just leave it
as-is until someone can fix the locking.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
