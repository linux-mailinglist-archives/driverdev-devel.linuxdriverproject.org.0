Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 868991B44B
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 May 2019 12:49:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A6D188550D;
	Mon, 13 May 2019 10:49:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0yzhjoACelp3; Mon, 13 May 2019 10:49:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 054D185533;
	Mon, 13 May 2019 10:49:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 10E181BF842
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 10:49:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0E01A87592
 for <devel@linuxdriverproject.org>; Mon, 13 May 2019 10:49:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HIvWu1mLavGC for <devel@linuxdriverproject.org>;
 Mon, 13 May 2019 10:49:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9550F87525
 for <devel@driverdev.osuosl.org>; Mon, 13 May 2019 10:49:30 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4DAnTsU186490;
 Mon, 13 May 2019 10:49:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=2eb0nR7R6o6VwOIhmIYODzWz2Q8fnGjorIb+eHS2QGs=;
 b=lRjdIELEgyW8qAwDOew/Ghpe8/IdLNYe7dK4l2vNxbbGnw4ouDMUwS/rm8ZsJjYB/vpg
 S0zzDL6nldHY0f5GtWb9VYRPOm2aP/sA7uPvHRIdM2Xz1yB44rK9J6aTTkM2ZmQHFs7q
 Vz57ZrF6MOSc3QfMc2iiwSgBnK5fi5+tHBTHc+q2Ml+b9WlrSLb3R9AWbYAs8AgwvhwK
 s1s4E04ByD6BNaWmnKiKtze99vwDA2Qunjls87Zm6s9wrXisYBcSYR4vpcQikJnF1/hT
 wDyfsI+bsssJH46Td94q6cnbQsBk5nYuI7CMB0NUrmLhngnsZFI0RjC3cjBUCKmvqF5Q Tw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2sdq1q5ya6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 13 May 2019 10:49:29 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4DAlrdH023834;
 Mon, 13 May 2019 10:49:29 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2sdnqhvvcv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 13 May 2019 10:49:29 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4DAnSFb009867;
 Mon, 13 May 2019 10:49:28 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 13 May 2019 03:49:27 -0700
Date: Mon, 13 May 2019 13:49:20 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Vandana BN <bnvandana@gmail.com>
Subject: Re: [PATCH v3 1/8] Staging: kpc2000: kpc_dma: Resolve trailing
 whitespace error reported by checkpatch
Message-ID: <20190513104920.GI18105@kadam>
References: <20190510193833.1051-1-bnvandana@gmail.com>
 <20190513102622.22398-1-bnvandana@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513102622.22398-1-bnvandana@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9255
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905130078
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9255
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905130078
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
 linux-kernel@vger.kernel.org, skhan@linuxfoundation.org,
 lukas.bulwahn@gmail.com, linux-kernel-mentees@lists.linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, May 13, 2019 at 03:56:15PM +0530, Vandana BN wrote:
> Resolve trailing whitespace error from checkpatch.pl
> ERROR: trailing whitespace
> ---
> v2-split changes to multiple patches
> v3 - edit commit message
> ---
> 
> Signed-off-by: Vandana BN <bnvandana@gmail.com>
> ---

The Signed off by has to be before the first --- cut off line.
Everything after the cut off is removed from the commit message.

>  drivers/staging/kpc2000/kpc_dma/dma.c         |  86 ++++++-------
>  drivers/staging/kpc2000/kpc_dma/fileops.c     | 114 +++++++++---------
>  .../staging/kpc2000/kpc_dma/kpc_dma_driver.c  |  46 +++----
>  .../staging/kpc2000/kpc_dma/kpc_dma_driver.h  |  16 +--
>  4 files changed, 131 insertions(+), 131 deletions(-)
> 


regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
