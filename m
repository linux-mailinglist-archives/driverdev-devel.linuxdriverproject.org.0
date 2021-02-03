Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 626D530DAB6
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Feb 2021 14:12:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A6B928685F;
	Wed,  3 Feb 2021 13:12:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xIj4-gNlAzAT; Wed,  3 Feb 2021 13:12:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 07A8886691;
	Wed,  3 Feb 2021 13:12:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 818A61BF27A
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 13:12:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 657C8204C0
 for <devel@linuxdriverproject.org>; Wed,  3 Feb 2021 13:12:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CAWPf-hGRWjl for <devel@linuxdriverproject.org>;
 Wed,  3 Feb 2021 13:12:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id D72342001A
 for <devel@driverdev.osuosl.org>; Wed,  3 Feb 2021 13:12:11 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 113CtvhC021242;
 Wed, 3 Feb 2021 13:12:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=caa9ZTOHVkLV0lADcf+6dWnq1fCfHSjDaq6LKruN1KE=;
 b=N+/AvUWfVdodJhr5r3E2dE/AjbaezGmPHS2Gu9gbhHju/D4IVDP4tMAcjKvnRK4TzP9F
 OSp9P6mxpAiBOvPBC+k0fniVI+M96dqg6tmPzQoDq+1YDoLBstqOWf05Xw6mpabtcYPQ
 QfBDIV0Vj2JWGWzYVKF9yIfCJ9S31Re72RPKcQVWLbjWhaxkzRo3qIJCcnzyu1HVRI+r
 Ook6Z1LwTcwj6d+4EcdNpRdVBa0S0cmoVHSMpoCXgz3PM5x7Q1EJCATqQ3GNM6pow+01
 rcxBifkBYbKSIXZGMMa+0o43mtqu5nVKjC7qib5xln2rP0CIYzralLwVFCwL6ZpB7uHy sQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 36cxvr2vss-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 03 Feb 2021 13:12:06 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 113Cspt3114021;
 Wed, 3 Feb 2021 13:12:05 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 36dhcym5en-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 03 Feb 2021 13:12:05 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 113DBssf030063;
 Wed, 3 Feb 2021 13:11:54 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 03 Feb 2021 05:11:54 -0800
Date: Wed, 3 Feb 2021 16:11:43 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ayush <ayush@disroot.org>
Subject: Re: [PATCH] staging: wimax/i2400m: fix coding style issues
Message-ID: <20210203131143.GW2696@kadam>
References: <20210203114720.263651-1-ayush@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210203114720.263651-1-ayush@disroot.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9883
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 mlxlogscore=999 phishscore=0
 spamscore=0 suspectscore=0 malwarescore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102030080
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9883
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=999
 mlxscore=0 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1011
 suspectscore=0 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102030080
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, arnd@arndb.de,
 kuba@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Do you really not have a last name, like Cher?

On Wed, Feb 03, 2021 at 05:17:20PM +0530, Ayush wrote:
> - fix "multiple blank lines" issues.
> - fix a couple of parenthesis alignment issues.
> - fix no space before parenthesis issue.
> - fix no blank line after declaration.
> 

We generally want people to send these as separate patches.

But in this case, we're just going to delete the driver.  Don't bother
sending cleanups for this because it will be deleted soon.

> compile tested only (on next-20210202).

Don't put this in the commit message.  Put it under the --- cut off line
if you want.

> 
> Signed-off-by: Ayush <ayush@disroot.org>

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
