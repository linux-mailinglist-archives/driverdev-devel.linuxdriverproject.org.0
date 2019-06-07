Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC90B38CBD
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jun 2019 16:19:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4FC8A86881;
	Fri,  7 Jun 2019 14:19:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JgM4rx3wM9Jp; Fri,  7 Jun 2019 14:19:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 12FFA86599;
	Fri,  7 Jun 2019 14:19:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1F8E41BF5DA
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 14:19:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 03FAC2076E
 for <devel@linuxdriverproject.org>; Fri,  7 Jun 2019 14:19:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aLb0ncJc1sxc for <devel@linuxdriverproject.org>;
 Fri,  7 Jun 2019 14:19:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 5D2712052F
 for <devel@driverdev.osuosl.org>; Fri,  7 Jun 2019 14:19:11 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x57E9ZJ7002817;
 Fri, 7 Jun 2019 14:19:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=fAnhQLoQ1de79AGPdIHISYKoMOoXNvOdtrq91rhemx4=;
 b=5nzzAE25TXPIKKDm9sI8c/7FCG7SMnEKczYNNEelROsZ9IekWDlbqePm+aK9pfPVyRpE
 RUAnrbhTHv9021DbZqzZoUEzL56UxZQYVy6RXjdNqT+CHjICcvgcfBNo3aK86mOrD6cN
 vMsyo1YOMfMVWGl7gJ7djVGiqFWl66VeihV6+H3gUyFf5Oe3eMvb+UksUT/4mPIFJj3I
 lDbDd8mxL5iU3+oZ9PxJ0WfbnmkM0HVQKpUHjpkFoNR5mpM33j5LmQD6MVOP+i+nn4V0
 3+TIyRRXyDUh/ClyLg+kF2zxzR8cZ1WzKAerPvusK2dm+jf/UMc5BuF2YnAZlmNkgaH3 3Q== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2sugstxhva-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 07 Jun 2019 14:19:08 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x57EIoxM150349;
 Fri, 7 Jun 2019 14:19:07 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2swnhd9kmc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 07 Jun 2019 14:19:07 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x57EJ7EZ030067;
 Fri, 7 Jun 2019 14:19:07 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 07 Jun 2019 07:19:06 -0700
Date: Fri, 7 Jun 2019 17:18:55 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Subject: Re: [PATCH 2/2] staging: rtl8712: r8712_createbss_cmd(): Change
Message-ID: <20190607141855.GQ31203@kadam>
References: <20190607140658.11932-1-nishkadg.linux@gmail.com>
 <20190607140658.11932-2-nishkadg.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190607140658.11932-2-nishkadg.linux@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9280
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=636
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906070101
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9280
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=686 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906070100
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
Cc: devel@driverdev.osuosl.org, valdis.kletnieks@vt.edu,
 florian.c.schilhabel@googlemail.com, tiny.windzz@gmail.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 colin.king@canonical.com, larry.finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the subject.

On Fri, Jun 07, 2019 at 07:36:58PM +0530, Nishka Dasgupta wrote:
> Change return values of r8712_createbss_cmd from _SUCCESS and _FAIL to 0
> and -ENOMEM respectively.
> Change return type of the function from unsigned to int to reflect this.
> Change call site to check for 0 instead of _SUCCESS.
> (Instead of !=0, simply passing the function output to the conditional
  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> will do.)
  ^^^^^^^^^

Remove this line.

Otherwise it looks ok.  Please resend.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
