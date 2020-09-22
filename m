Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB0A273E5A
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Sep 2020 11:17:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C0C8E22882;
	Tue, 22 Sep 2020 09:17:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EVPKqTfYvQpa; Tue, 22 Sep 2020 09:17:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A5D3822865;
	Tue, 22 Sep 2020 09:17:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 336FF1BF25F
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 09:17:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2AC7887228
 for <devel@linuxdriverproject.org>; Tue, 22 Sep 2020 09:17:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UTbsXPV2BJH8 for <devel@linuxdriverproject.org>;
 Tue, 22 Sep 2020 09:17:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EEA388710C
 for <devel@driverdev.osuosl.org>; Tue, 22 Sep 2020 09:17:22 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08M9F9Bv058619;
 Tue, 22 Sep 2020 09:17:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=0LlcmxUgv23UmLo9kyhfbOkV0pFyrGTGgW1VdjwNSd4=;
 b=dTQbnJI6UN0bN/BwmreesITbFiCsz3PgN3opYy6YmGmla1B8XM02BDPYf6pyJyxpjhoy
 Ie9XX0T44dfmJKiK/B7ANDTYMOEqWl5UAxNGs4qTqK6CkPnIz669nzPdP257xkTBzp9o
 a2sNw0KRPP7g5BkBrXw3rh5RD63Y013y0hEO2ayOLffOQZmkV6OFEFEpexkr66J8bYmL
 EO+joaP1Vck0URLRVJtJVbm/7ZSzmf69/CTXRJM3jHa72dh+Lg3fi2Pndh9LYn4/ZeDr
 XnJ5JRdx15xoop8ugb6aye6BxQ4wMJEZ7P00Jgh/usHBYmS5VOF9Ev7qLR6ffkI03wDI 0g== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 33q5rga2ny-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 22 Sep 2020 09:17:21 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08M9FqbA139159;
 Tue, 22 Sep 2020 09:17:21 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 33nuw3bvpx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 22 Sep 2020 09:17:20 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 08M9HH2C009085;
 Tue, 22 Sep 2020 09:17:18 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 22 Sep 2020 02:17:17 -0700
Date: Tue, 22 Sep 2020 12:17:09 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Subject: Re: [PATCH v6 5/8] clk: clock-wizard: Add support for fractional
 support
Message-ID: <20200922091709.GD4282@kadam>
References: <1598621996-31040-1-git-send-email-shubhrajyoti.datta@xilinx.com>
 <1598621996-31040-6-git-send-email-shubhrajyoti.datta@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1598621996-31040-6-git-send-email-shubhrajyoti.datta@xilinx.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9751
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 malwarescore=0
 mlxscore=0 suspectscore=0 adultscore=0 mlxlogscore=999 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009220078
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9751
 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 impostorscore=0
 clxscore=1011 suspectscore=0 phishscore=0 malwarescore=0
 priorityscore=1501 mlxlogscore=999 adultscore=0 bulkscore=0 mlxscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009220078
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org, sboyd@kernel.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 28, 2020 at 07:09:53PM +0530, Shubhrajyoti Datta wrote:
> +
> +	/* Check status register */
> +	err= readl_poll_timeout(divider->base + WZRD_DR_STATUS_REG_OFFSET, value,
> +				value & WZRD_DR_LOCK_BIT_MASK,
> +				WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);

Checkpatch will catch the missing space in "err= readl_".

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
