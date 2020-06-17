Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF851FD3E9
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jun 2020 19:59:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2928D21532;
	Wed, 17 Jun 2020 17:59:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eUkKvelC+opA; Wed, 17 Jun 2020 17:59:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 817DA20460;
	Wed, 17 Jun 2020 17:59:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1B5B31BF23F
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 17:59:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 182E3874BC
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 17:59:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1_LM1WoUdmJE for <devel@linuxdriverproject.org>;
 Wed, 17 Jun 2020 17:59:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6D98E86C7A
 for <devel@driverdev.osuosl.org>; Wed, 17 Jun 2020 17:59:30 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05HHl88G194790;
 Wed, 17 Jun 2020 17:59:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=pTPRzQtR3F1iCD2tcKFx+LzMwc6joNo/Hv7PTPpZIpw=;
 b=IRvODXqGh1sQ4+Zz+EdfGw/Fd9MuX2Bye+SJxbTFeO0vgsdF6LARgY2Pt4375jcSKVCU
 Ns4KXOXecvPVN47IEZAJeVurTLxHSL5069wGbW8l5Jcmvj49VP439ne9W5K9+LPklf39
 LX/K4MOiwY27UGLD1KfKqog0qYOhfk7yIfFCDJdgsPTBzWEAEP1uCjE6FQ8ezeOM+faN
 l6EaDk2bIiU2A0SSK8ofJ4bzcy5gwoV6C/XjgmP6YU7uNJOAhmuBTjj6oAuP2kD2K+B7
 glZAUpaXgsCzm6CBNYijRec0/Ye6fPaCKetT0UCzNRRG6BPN9t4n2D9+Ep7jIu3U24dO KQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 31qeckuens-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 17 Jun 2020 17:59:29 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05HHnBlc170876;
 Wed, 17 Jun 2020 17:59:29 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 31q66pp337-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Jun 2020 17:59:29 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05HHxQxu016039;
 Wed, 17 Jun 2020 17:59:26 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 17 Jun 2020 10:59:26 -0700
Date: Wed, 17 Jun 2020 20:59:18 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Souptick Joarder <jrdr.linux@gmail.com>
Subject: Re: [PATCH 1/4] staging: kpc2000: Unpin partial pinned pages
Message-ID: <20200617175918.GO4151@kadam>
References: <1592360843-3440-1-git-send-email-jrdr.linux@gmail.com>
 <1592360843-3440-2-git-send-email-jrdr.linux@gmail.com>
 <20200617111321.GP4282@kadam>
 <CAFqt6zYHXmoCrWLEru2FZsRnXptFERJv1qiDFPip=q_cZaZEBg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFqt6zYHXmoCrWLEru2FZsRnXptFERJv1qiDFPip=q_cZaZEBg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9655
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=999
 bulkscore=0 adultscore=0 phishscore=0 suspectscore=2 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006170141
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9655
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 cotscore=-2147483648 malwarescore=0
 clxscore=1015 adultscore=0 suspectscore=2 spamscore=0 lowpriorityscore=0
 mlxlogscore=999 priorityscore=1501 bulkscore=0 phishscore=0 mlxscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006170141
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Bharath Vedartham <linux.bhar@gmail.com>, harshjain32@gmail.com,
 John Hubbard <jhubbard@nvidia.com>, Greg KH <gregkh@linuxfoundation.org>,
 Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>,
 linux-kernel@vger.kernel.org, pakki001@umn.edu, ldufour@linux.ibm.com,
 Michel Lespinasse <walken@google.com>, jane.pnx9@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jun 17, 2020 at 11:13:32PM +0530, Souptick Joarder wrote:
> On Wed, Jun 17, 2020 at 4:43 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> >
> > On Wed, Jun 17, 2020 at 07:57:20AM +0530, Souptick Joarder wrote:
> > > There is a bug, when get_user_pages() failed but partially pinned
> > > pages are not unpinned. Fixed it.
> > >
> > > Also, int is more appropriate type for rv. Changed it.
> > >
> > > Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
> > > Cc: John Hubbard <jhubbard@nvidia.com>
> > > Cc: Bharath Vedartham <linux.bhar@gmail.com>
> > > Cc: Dan Carpenter <dan.carpenter@oracle.com>
> > > ---
> > >  drivers/staging/kpc2000/kpc_dma/fileops.c | 6 +++++-
> > >  1 file changed, 5 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > index 8975346..b136353 100644
> > > --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> > > @@ -35,7 +35,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
> > >                           unsigned long iov_base, size_t iov_len)
> > >  {
> > >       unsigned int i = 0;
> > > -     long rv = 0;
> > > +     int rv = 0;
> > >       struct kpc_dma_device *ldev;
> > >       struct aio_cb_data *acd;
> > >       DECLARE_COMPLETION_ONSTACK(done);
> > > @@ -193,6 +193,10 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
> > >               put_page(acd->user_pages[i]);
> >                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> > >
> > >   err_get_user_pages:
> > > +     if (rv > 0) {
> > > +             for (i = 0; i < rv; i++)
> > > +                     put_pages(acd->user_pages[i])
> >                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> >
> > > +     }
> >
> > This isn't a complete fix.  "rv" is the negative error code but here we
> > are returning a positive value on this path.
> 
> In case of error of get_user_pages(), it will return -errno, 0 and 3rd one is
> (rv > 0 && rv != acd->page_count). When rv is -errno or 0 there is no need
> to call put_pages() in error path. But for 3rd case partially mapped pages
> need to unpin.
> 
> Correct me if I am missing anything.
>

   182                  kfree(acd);
   183          }
   184          return rv;
   185  
   186   err_descr_too_many:
   187          unlock_engine(ldev);
   188          dma_unmap_sg(&ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, ldev->dir);
   189          sg_free_table(&acd->sgt);
   190   err_dma_map_sg:
   191   err_alloc_sg_table:
   192          for (i = 0 ; i < acd->page_count ; i++)
   193                  put_page(acd->user_pages[i]);
   194  
   195   err_get_user_pages:
   196          if (rv > 0) {
                    ^^^^^^
"rv" is positive.

   197                  for (i = 0; i < rv; i++)
   198                          put_pages(acd->user_pages[i])
   199          }
   200          kfree(acd->user_pages);
   201   err_alloc_userpages:
   202          kfree(acd);
   203          dev_dbg(&priv->ldev->pldev->dev, "%s returning with error %ld\n", __func__, rv);
   204          return rv;
                       ^^
"rv" is still positive but it should be -EFAULT.

   205  }

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
