Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 00630D08CE
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 09:51:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1C2E68773E;
	Wed,  9 Oct 2019 07:51:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jpH3F6-9A9r1; Wed,  9 Oct 2019 07:51:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE09787700;
	Wed,  9 Oct 2019 07:51:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F37C1BF3DB
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 07:51:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 98AF2864B5
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 07:51:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DGOH7gmpQiHZ for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 07:51:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E6C6E8626C
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 07:51:35 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x997mt5C119347;
 Wed, 9 Oct 2019 07:51:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=fS0JrYInYkphsdP54O5JK81e3nDduq9xvICygp3ka6A=;
 b=q3g9rjfP4+oTwmMWdN4bGO5M23hL92Qrqo+ikySgwTDMXPYTgl/WHQorA/uBA1PyZjqn
 T0g/V9NN72W5fV2/1fZxDdjoY7KAEGXd5paJ0IxF/3bAWSIppNetg6GtWcZChFrsyzlY
 WvqJpIqyX/hCLbLz9Wez282PMhKoStqhJj+6xc0pftibsDFGDO1Uy6QUnxGOO+Z3TUXS
 lyPefHP7xc1oHrjc1T3FUz8fAVkfWef62xfgqOqSQkNoUvNiKW+j8sgp72q0srzGlS6j
 uDCuq6Njppe1tkRmHpJtX308RYSvXMhTmdkh9zDcfmIAROxDh5VcEB3kA1qVG5cdL3nd PA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2vejkujbs6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 07:51:34 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x997mx8K082151;
 Wed, 9 Oct 2019 07:49:33 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2vh5c9xxfw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 07:49:33 +0000
Received: from abhmp0018.oracle.com (abhmp0018.oracle.com [141.146.116.24])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x997nTMc027473;
 Wed, 9 Oct 2019 07:49:30 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 09 Oct 2019 00:49:29 -0700
Date: Wed, 9 Oct 2019 10:49:16 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nachammai Karuppiah <nachukannan@gmail.com>
Subject: Re: [PATCH v3] staging: vc04_services: Avoid NULL comparison
Message-ID: <20191009074916.GJ25098@kadam>
References: <1570589056-14386-1-git-send-email-nachukannan@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570589056-14386-1-git-send-email-nachukannan@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9404
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=934
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910090073
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9404
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910090073
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
Cc: devel@driverdev.osuosl.org, Eric Anholt <eric@anholt.net>,
 outreachy-kernel@googlegroups.com, Stefan Wahren <wahrenst@gmx.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 08, 2019 at 07:44:15PM -0700, Nachammai Karuppiah wrote:
> Remove NULL comparison. Issue found using checkpatch.pl
> 
> Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
> 
> ---
> 
> Changes in V2
>    - Remove all NULL comparisons in vc04_services/interface directory.
> ---
> 
> changes in V3
>    - Fixed warnings. Reported-by: kbuild test robot <lkp@intel.com>
> ---
> 
> Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
> ---
>  .../interface/vchiq_arm/vchiq_2835_arm.c           |  4 ++--


Only one --- cut off line is needed.  You have two Signed-of-by lines
as well.  It should just be:

Remove NULL comparison. Issue found using checkpatch.pl

Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
---
Changes in V2
   - Remove all NULL comparisons in vc04_services/interface directory.
changes in V3
   - Fixed warnings. Reported-by: kbuild test robot <lkp@intel.com>

  .../interface/vchiq_arm/vchiq_2835_arm.c           |  4 ++--

But this doesn't affect the final patch, and we can see all the
information so it's fine.  No need to resend.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
