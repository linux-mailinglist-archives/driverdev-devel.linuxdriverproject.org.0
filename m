Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B673AC353C
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Oct 2019 15:12:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A59A285DFF;
	Tue,  1 Oct 2019 13:12:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p5_rGva9-Csm; Tue,  1 Oct 2019 13:12:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 931D885DFC;
	Tue,  1 Oct 2019 13:12:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E3AF01BF616
 for <devel@linuxdriverproject.org>; Tue,  1 Oct 2019 13:12:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E0E03855F6
 for <devel@linuxdriverproject.org>; Tue,  1 Oct 2019 13:12:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CF0DMNY5b7vB for <devel@linuxdriverproject.org>;
 Tue,  1 Oct 2019 13:12:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9826F85742
 for <devel@driverdev.osuosl.org>; Tue,  1 Oct 2019 13:12:15 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x91D8xJT033466;
 Tue, 1 Oct 2019 13:12:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=kq5CKLXi/ptDXUTgrZI7EdqafVde7HbEbJ1WmPDhKSE=;
 b=H3z8CfhT++nA/qKbRVoauYuj4emUi5UzAHmHmcBxdmdlkIJxN/bJe5ti5eUHDlkbZTwL
 MuZdRzO7MjFEI0lGMuzsy9vlz5I8rrcC3vd8WGkM8L816oTU1nhm8Rg77GLfgqceW+Jk
 HGwObGmY+19spo0p6a3Uq55JyXC7q+zVcWJXNqZUHCXEg7GiUBS5gRm/TmXxZxo9zZ7Q
 QS0Fz9EUevk4H8kbrzq8Ua3hrIbkYY9pXgGeCaCzfHt0LPVp6Li2aVfXCwbN51FlvfAR
 IUwkGAybxjzaxdD46NV23y1oAAb9ZOlI39F7PnvMHxUxaofS853cmahYohMg8LdVW9BE Jw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2va05rnn5t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Oct 2019 13:12:12 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x91D96V1156536;
 Tue, 1 Oct 2019 13:12:11 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2vbqd0ubw9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 01 Oct 2019 13:12:11 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x91DC6sv019624;
 Tue, 1 Oct 2019 13:12:08 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 01 Oct 2019 06:12:06 -0700
Date: Tue, 1 Oct 2019 16:11:22 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Connor Kuehl <connor.kuehl@canonical.com>
Subject: Re: [PATCH] staging: rtl8188eu: fix null dereference when kzalloc
 fails
Message-ID: <20191001131122.GC22609@kadam>
References: <20190927214415.899-1-connor.kuehl@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927214415.899-1-connor.kuehl@canonical.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9396
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910010119
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9396
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910010119
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
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 27, 2019 at 02:44:15PM -0700, Connor Kuehl wrote:
> If kzalloc() returns NULL, the error path doesn't stop the flow of
> control from entering rtw_hal_read_chip_version() which dereferences the
> null pointer. Fix this by adding a 'goto' to the error path to more
> gracefully handle the issue and avoid proceeding with initialization
> steps that we're no longer prepared to handle.
> 
> Also update the debug message to be more consistent with the other debug
> messages in this function.
> 
> Addresses-Coverity: ("Dereference after null check")
> 
> Signed-off-by: Connor Kuehl <connor.kuehl@canonical.com>
> ---
>  drivers/staging/rtl8188eu/os_dep/usb_intf.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8188eu/os_dep/usb_intf.c b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
> index 664d93a7f90d..4fac9dca798e 100644
> --- a/drivers/staging/rtl8188eu/os_dep/usb_intf.c
> +++ b/drivers/staging/rtl8188eu/os_dep/usb_intf.c
> @@ -348,8 +348,10 @@ static struct adapter *rtw_usb_if1_init(struct dvobj_priv *dvobj,
>  	}
>  

There is another one earlier in the function as well.

drivers/staging/rtl8188eu/os_dep/usb_intf.c
   336  
   337          pnetdev = rtw_init_netdev(padapter);
   338          if (!pnetdev)
   339                  goto free_adapter;
   340          SET_NETDEV_DEV(pnetdev, dvobj_to_dev(dvobj));
   341          padapter = rtw_netdev_priv(pnetdev);
   342  
   343          if (padapter->registrypriv.monitor_enable) {
   344                  pmondev = rtl88eu_mon_init();
   345                  if (!pmondev)
   346                          netdev_warn(pnetdev, "Failed to initialize monitor interface");

goto free_adapter.

   347                  padapter->pmondev = pmondev;
   348          }
   349  
   350          padapter->HalData = kzalloc(sizeof(struct hal_data_8188e), GFP_KERNEL);
   351          if (!padapter->HalData)
   352                  DBG_88E("cant not alloc memory for HAL DATA\n");
   353  

>  	padapter->HalData = kzalloc(sizeof(struct hal_data_8188e), GFP_KERNEL);
> -	if (!padapter->HalData)
> -		DBG_88E("cant not alloc memory for HAL DATA\n");
> +	if (!padapter->HalData) {
> +		DBG_88E("Failed to allocate memory for HAL data\n");

Remove this debug printk.

> +		goto free_adapter;
> +	}


regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
