Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6756F9E2E8
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 10:43:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CFCE0883CD;
	Tue, 27 Aug 2019 08:43:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 04BFpTT1v5Om; Tue, 27 Aug 2019 08:43:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4CC818816A;
	Tue, 27 Aug 2019 08:43:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 77B7A1BF599
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 08:43:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 747EA88334
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 08:43:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YJbOhANIyr-o for <devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 08:43:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 719518816A
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 08:43:34 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7R8hUOu128307;
 Tue, 27 Aug 2019 08:43:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=JMr9dmxTp6lTJOBZV2UpK0vF+p6IwUh0THtT83EV/eU=;
 b=FboYSxrfIa37yiJmwAs/O13yCmWu9ixGPeCUM3JO7pZFvffmMo39w6sfkymka7mVo58r
 o0nAFCgkac2eQ5lIFQfZNxjhvMJo4ZTKjr5oDisjfm09lrpmffNshOZJmeOj09r+EJZd
 1QqbNTLDK6PXLtXc3rbQhxio/IgEFitasW+gT62fGZw2NalzwU4dofMteblAR3pr6glA
 ISZJr0tJjOH/dqjCKrxZOdg31suA2PEQb3hCtq2UistbvK+11vPWR2cFB2f7ltwlXzG1
 KrrCgg/KTm8UfxIMdUR48KhjxOa9aOtnQz26UWwVE1lrMQvQ9QHW1BJIBX2NjjC3mPWB 8Q== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2umyvt0q0j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Aug 2019 08:43:30 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x7R8h9w9109712;
 Tue, 27 Aug 2019 08:43:26 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2umj2ydd6q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Aug 2019 08:43:26 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x7R8hQis015471;
 Tue, 27 Aug 2019 08:43:26 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 27 Aug 2019 01:43:25 -0700
Date: Tue, 27 Aug 2019 11:43:19 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sumera Priyadarsini <sylphrenadin@gmail.com>
Subject: Re: [PATCH v2 1/2] staging: rtl8192u: Add or remove spaces to fix
 style issues
Message-ID: <20190827084319.GB23584@kadam>
References: <20190826180909.27775-1-sylphrenadin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190826180909.27775-1-sylphrenadin@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9361
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908270098
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9361
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1908270098
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 26, 2019 at 11:39:09PM +0530, Sumera Priyadarsini wrote:
> This patch fixes the file r8190_rtl8256.c to avoid the following
> checkpatch.pl warnings:
> 	CHECK: spaces preferred around that '<<' (ctx:VxV)
> 	CHECK: spaces preferred around that '-' (ctx:VxV)
> 	CHECK: No space is necessary after a cast
> 
> Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
> ---
> Changes since v1:
> - Split the commit into two patches
> ---
>  drivers/staging/rtl8192u/r8190_rtl8256.c | 30 ++++++++++++------------
>  1 file changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/r8190_rtl8256.c b/drivers/staging/rtl8192u/r8190_rtl8256.c
> index 0bedf88525cd..7c7f8247b27a 100644
> --- a/drivers/staging/rtl8192u/r8190_rtl8256.c
> +++ b/drivers/staging/rtl8192u/r8190_rtl8256.c
> @@ -42,9 +42,9 @@ void phy_set_rf8256_bandwidth(struct net_device *dev, enum ht_channel_width Band
>  
>  		switch (Bandwidth) {
>  		case HT_CHANNEL_WIDTH_20:
> -				if (priv->card_8192_version == VERSION_819XU_A
> -					|| priv->card_8192_version
> -					== VERSION_819XU_B) { /* 8256 D-cut, E-cut, xiong: consider it later! */
> +				if (priv->card_8192_version == VERSION_819XU_A ||
> +					priv->card_8192_version ==
> +					VERSION_819XU_B) { /* 8256 D-cut, E-cut, xiong: consider it later! */

These lines are indented too far and the == should go on the first line
like the || does.

			if (priv->card_8192_version == VERSION_819XU_A ||
			    priv->card_8192_version == VERSION_819XU_B) {
				/* 8256 D-cut, E-cut, xiong: consider it later! */

Probably do this in a separate patch.  It's sort of not really related
to the other changes.

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
