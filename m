Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FD012F8C0
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Jan 2020 14:26:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ED389879EF;
	Fri,  3 Jan 2020 13:26:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9lU9LgxEsjh8; Fri,  3 Jan 2020 13:26:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 16B3F87889;
	Fri,  3 Jan 2020 13:26:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 32C151BF34A
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 13:26:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2F59585F05
 for <devel@linuxdriverproject.org>; Fri,  3 Jan 2020 13:26:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RYG5MzBKaoHq for <devel@linuxdriverproject.org>;
 Fri,  3 Jan 2020 13:26:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DAA1685E65
 for <devel@driverdev.osuosl.org>; Fri,  3 Jan 2020 13:26:14 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 003D9WTL115180;
 Fri, 3 Jan 2020 13:26:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=faABLOu71+lODjbDQ6nSu1CaZn+sv8YumvLotaVUVnA=;
 b=BhiVQH4g84d24jC3klev0mn4m73nwgF8LFrOYh+pTsj2mUEut/jdp/u32znkTuXzCn2o
 RbV8g23Hw1Exi/UNTIen2TjLfVqMTQTauC2NpnAGrllhyhMzaosJrMr85TA9kttY/uVo
 a9K/5KHSYJPu/NKCqCP/eiPN3oe3U0qZ0f3cziClWBjJGuTRyHHKEtcDZQjMoeW6D5us
 kd78GWrKK+Opz6KhnzUNlbi1a0M82f0y7m7++G86Y1qym6jq+QwwsTxeGO+rii6WUVZ2
 +NwpYJuqhkd1rVMtUQD53JUCIS7Skr2wb0Ivf2Dl/3CC3QSj4u+mGl6eZT/ZrcFegtNi AQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 2x5y0pv988-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Jan 2020 13:26:13 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 003DE650163778;
 Fri, 3 Jan 2020 13:26:13 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2xa5fga7m8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 03 Jan 2020 13:26:12 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 003DQBYs004754;
 Fri, 3 Jan 2020 13:26:11 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 03 Jan 2020 05:26:10 -0800
Date: Fri, 3 Jan 2020 16:25:49 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Amrita Patole <longlivelinux@yahoo.com>
Subject: Re: [PATCH] Fixing coding style. Signed-off-by: amritapatole@gmail.com
Message-ID: <20200103132506.GK3911@kadam>
References: <20200102072929.21636-1-longlivelinux.ref@yahoo.com>
 <20200102072929.21636-1-longlivelinux@yahoo.com>
 <20200102111653.GB3961630@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200102111653.GB3961630@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9488
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=825
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001030126
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9488
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=886 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001030126
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, Amrita Patole <amritapatole@gmail.com>,
 Greg KH <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jan 02, 2020 at 12:16:53PM +0100, Greg KH wrote:
> On Thu, Jan 02, 2020 at 12:59:29PM +0530, Amrita Patole wrote:
> > From: Amrita Patole <amritapatole@gmail.com>
> > 
> > ---
> >  drivers/staging/qlge/qlge_mpi.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/qlge/qlge_mpi.c b/drivers/staging/qlge/qlge_mpi.c
> > index 9e422bbbb6ab..f63db2c79fac 100644
> > --- a/drivers/staging/qlge/qlge_mpi.c
> > +++ b/drivers/staging/qlge/qlge_mpi.c
> > @@ -136,7 +136,8 @@ static int ql_get_mb_sts(struct ql_adapter *qdev, struct mbox_params *mbcp)
> >  		    ql_read_mpi_reg(qdev, qdev->mailbox_out + i,
> >  				     &mbcp->mbox_out[i]);
> >  		if (status) {
> > -			netif_err(qdev, drv, qdev->ndev, "Failed mailbox read.\n");
> > +			netif_err(qdev, drv, qdev->ndev,
> > +                                  "Failed mailbox read. \n");


			netif_err(qdev, drv, qdev->ndev,
                                  "Failed mailbox read. \n");
				  "Failed mailbox read. \n");


I'm pretty sure this will introduce a couplee new checkpatch warnings...
It should be indented:
[tab][tab][tab][tab][space][space]"Failed mailbox read.\n");

No space after the period, please.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
