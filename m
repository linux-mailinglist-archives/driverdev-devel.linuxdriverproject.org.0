Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E884A2A4DD
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 May 2019 16:23:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5C31C84E6B;
	Sat, 25 May 2019 14:23:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FtElSFYQRCUs; Sat, 25 May 2019 14:23:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8667B84A6C;
	Sat, 25 May 2019 14:23:33 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3D11F1BF3F9
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 25 May 2019 14:23:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2FDF784A6C
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 25 May 2019 14:23:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 34yGqD6UEUN1
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 25 May 2019 14:23:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7570F84A33
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 25 May 2019 14:23:29 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4PEJNed135249;
 Sat, 25 May 2019 14:23:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=oR1CRrjuifXcxESJz/lUPmqMqjBW+kJeSFPbAj/Ujss=;
 b=BL2o1K0buNnRQkvH4C0xOibh8Yrek7CYeaZ7jx4Jvf4FT3ZWA+4wVZbPBubfBaI90jEw
 sFDOON2nvvk+zcDUAeuUvEq1ru3GBaD6oLnahCaXE5mWCn6fTAKbHJQqf8E9D8BI97DE
 YpPvj/a026pkoP9Xm320wQCsHi+FY0ubf43tPDRUgQs7I2uk3NNRTF6w5NDCkJcqwhln
 OzbbV/jx68Zhn++TTEjQSg0qbcS/lL0T1w8IkDFLlpCPRcF5QNXssONipZ6R7A90/U/+
 T0ynAVtlpUX6OY42/+xKagt3PsADmpOEFygSH3MQh3aHM8mKXt/Bgd91oLQGKCAC+LKF Ug== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2spw4t13bk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 25 May 2019 14:23:22 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4PEMaXX088658;
 Sat, 25 May 2019 14:23:21 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2spwh1kxaa-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 25 May 2019 14:23:21 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x4PENJ1B013378;
 Sat, 25 May 2019 14:23:20 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sat, 25 May 2019 14:23:19 +0000
Date: Sat, 25 May 2019 17:23:13 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jeremy Sowden <jeremy@azazel.net>
Subject: Re: [PATCH] staging: kpc2000: simplify nested conditionals that just
 return a boolean.
Message-ID: <20190525142313.GW31203@kadam>
References: <20190524121926.32487-1-jeremy@azazel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524121926.32487-1-jeremy@azazel.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9268
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=952
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905250101
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9268
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=994 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905250101
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
Cc: Greg KH <gregkh@linuxfoundation.org>, Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 24, 2019 at 01:19:26PM +0100, Jeremy Sowden wrote:
> kp2000_check_uio_irq contained a pair of nested ifs which each evaluated
> a bitwise operation.  If both operations yielded true, the function
> returned 1; otherwise it returned 0.
> 
> Replaced the whole thing with one return statement that evaluates the
> combination of both bitwise operations.
> 
> Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
> ---
> This applies to staging-testing.
> 
> I was in two minds whether to send this patch or something less terse:
> 
> +	return (interrupt_active & irq_check_mask) &&
> +	       (interrupt_mask_inv & irq_check_mask);

Yeah.  I would prefer this.

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
