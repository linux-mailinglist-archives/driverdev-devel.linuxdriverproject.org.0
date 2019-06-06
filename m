Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C17737301
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Jun 2019 13:35:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2453D87FD8;
	Thu,  6 Jun 2019 11:35:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sSGvzBW3TZUy; Thu,  6 Jun 2019 11:35:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C836987E45;
	Thu,  6 Jun 2019 11:35:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E32041BF423
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 11:35:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DED8720355
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 11:35:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tz71FHJ9rWy6 for <devel@linuxdriverproject.org>;
 Thu,  6 Jun 2019 11:35:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id 931342034C
 for <devel@driverdev.osuosl.org>; Thu,  6 Jun 2019 11:35:07 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x56BSh8h146272;
 Thu, 6 Jun 2019 11:35:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2018-07-02;
 bh=Y2hmulEThShe7yuxn2FDcx828sdufBDLO8yrZJpI96k=;
 b=C9+6sUZfQ7+PaLFXKvcdZ8fP5unf0Hvhk3clst84/Vly+0WEaLItmHwPhVfCpChOcBdn
 4VHiUXttyiNBfLzvvATxJcIs8G1HQYYUBfcvDmxUEWk2dkY9TsHIuOu4mG9xjvB2GQkA
 kVhHh9qgnrHRNTyg3LbJm3qzUEs2l8ifYAVLPc3ijyo/ohRNs9NIp/Ddj8RVPje3F4TS
 3qEuBqc2x68nlk+I3VW8LFL39mjIOl3qQdpq2iigQYRlJ+byAOQjIjh3315kC5QXvBBE
 34GM5dtWdpIlZxhZci4c3NFhE3pIp1aFGYPLiRcAeA1N0jm2H6gH66iftvEt9PcOBvCZ wQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2suj0qqrgc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 06 Jun 2019 11:35:05 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x56BZ5hs155775;
 Thu, 6 Jun 2019 11:35:05 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2swngmf4a5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 06 Jun 2019 11:35:05 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x56BZ2dK028471;
 Thu, 6 Jun 2019 11:35:03 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 06 Jun 2019 04:35:02 -0700
Date: Thu, 6 Jun 2019 14:34:55 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>
Subject: Re: [PATCH 7/7] staging: kpc2000: fix incorrect code comment in core.c
Message-ID: <20190606113455.GM31203@kadam>
References: <20190603222916.20698-1-simon@nikanor.nu>
 <20190603222916.20698-8-simon@nikanor.nu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603222916.20698-8-simon@nikanor.nu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9279
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906060085
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9279
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906060085
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 04, 2019 at 12:29:16AM +0200, Simon Sandstr=F6m wrote:
> Step 11 was removed from kp2000_pcie_probe in a previous commit but the
> comment was not changed to reflect this, so do it now.
> =

> Signed-off-by: Simon Sandstr=F6m <simon@nikanor.nu>
> ---
>  drivers/staging/kpc2000/kpc2000/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc=
2000/kpc2000/core.c
> index 2d8d188624f7..cd3876f1ce17 100644
> --- a/drivers/staging/kpc2000/kpc2000/core.c
> +++ b/drivers/staging/kpc2000/kpc2000/core.c
> @@ -501,7 +501,7 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
>  		goto out10;
>  =

>  	/*
> -	 * Step 12: Enable IRQs in HW
> +	 * Step 11: Enable IRQs in HW

I don't have a problem with this patch but for the future these numbers
don't add any value.  And the numbered out labels are sort of ugly.  The
label name should say what the label does just like a function name says
what the function does.  Really a lot of these comments in the probe
function are very obvious and don't add information (delete them).


   491          /*
   492           * Step 9: Setup sysfs attributes
   493           */
   494          err =3D sysfs_create_files(&(pdev->dev.kobj), kp_attr_list);

The comment is probably less informative than the code.

   495          if (err) {
   496                  dev_err(&pdev->dev, "Failed to add sysfs files: %d\=
n", err);
   497                  goto out9;

What does goto out9 do?

   498          }
   499  =

   500          /*
   501           * Step 10: Probe cores
   502           */
   503          err =3D kp2000_probe_cores(pcard);
   504          if (err)
   505                  goto out10;

Hopefully, goto out10 deletes the sysfs files but we don't know because
the label doesn't give any clues away.  We have to search for it and
then come back.

   506  =

   507          /*
   508           * Step 12: Enable IRQs in HW
   509           */
   510          writel(KPC_DMA_CARD_IRQ_ENABLE | KPC_DMA_CARD_USER_INTERRUP=
T_MODE,
   511                 pcard->dma_common_regs);
   512  =

   513          dev_dbg(&pcard->pdev->dev, "kp2000_pcie_probe() complete!\n=
");
   514          mutex_unlock(&pcard->sem);
   515          return 0;
   516  =

   517  out10:

err_remove_sysfs:

   518          sysfs_remove_files(&(pdev->dev.kobj), kp_attr_list);
   519  out9:

err_free_irq:

   520          free_irq(pcard->pdev->irq, pcard);
   521  out8b:

err_disable_msi:

   522          pci_disable_msi(pcard->pdev);
   523  out8a:
   524  out7:
   525  out6:

err_unmap_dma:

   526          iounmap(pcard->dma_bar_base);
   527          pci_release_region(pdev, DMA_BAR);
   528          pcard->dma_bar_base =3D NULL;
   529  out5:

err_unmap_regs:

   530          iounmap(pcard->regs_bar_base);
   531          pci_release_region(pdev, REG_BAR);
   532          pcard->regs_bar_base =3D NULL;

Something like that is way more useful because then you don't have to
scroll back and forth because new the label names are useful.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
