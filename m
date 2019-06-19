Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E99344B26E
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 08:54:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D3C788527D;
	Wed, 19 Jun 2019 06:54:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SSooA0Gp2oqo; Wed, 19 Jun 2019 06:54:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9651881E2B;
	Wed, 19 Jun 2019 06:54:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6F5421BF577
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 06:54:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6AB7B81E2B
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 06:54:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s3mXbvzgQqHq for <devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 06:54:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A581983885
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 06:54:30 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5J6s3o1049267;
 Wed, 19 Jun 2019 06:54:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2018-07-02;
 bh=DlKNJuvcASeK8pBRu937XHctNTJ0nqeBGOzXI0KJiZk=;
 b=Ohai5YMfgkYyE2gW6+kp0v734uX79EDWBfm+7mUeaNCOClTgeZ2ukG9aq4oELB8q0yMo
 spxgW5BVidnS0ZPC6wmMMiD1Dtps13S7Fvo2+UHg1vam2zH8M4+ww/UHzuE86B3L4xST
 u5wy3RpL3WfMBntDZdBJxSt9UEYtb8a5PIeX6W0YqsMsPSdM7F/Drk9BSzr4c857tGHy
 HGrfpQoSqgqlkaJ+APUPXp2mxXakX1JKcCVGI5u57hJ6gm53pZsLbifhuSZftxUucz0e
 1oENivX1K58BRP22PcgIK+Li9ZAKOmuwHu2xsWzut02YyTMXoKSMpkLZNUYwsbk14eZH +w== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2t78099fe0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Jun 2019 06:54:29 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5J6rAwt042359;
 Wed, 19 Jun 2019 06:54:29 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 2t77ymwbjk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Jun 2019 06:54:29 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5J6rD9O024098;
 Wed, 19 Jun 2019 06:53:14 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 18 Jun 2019 23:53:12 -0700
Date: Wed, 19 Jun 2019 09:53:06 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>
Subject: Re: [PATCH] staging: kpc2000: simplify error handling in
 kp2000_pcie_probe
Message-ID: <20190619065306.GN28859@kadam>
References: <20190619063607.20722-1-simon@nikanor.nu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619063607.20722-1-simon@nikanor.nu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9292
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906190057
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9292
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906190057
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

On Wed, Jun 19, 2019 at 08:36:07AM +0200, Simon Sandstr=F6m wrote:
> We can get rid of a few iounmaps in the middle of the function by
> re-ordering the error handling labels and adding two new labels.
> =

> Signed-off-by: Simon Sandstr=F6m <simon@nikanor.nu>
> ---
> =

> This change has not been tested besides by compiling. It might be good
> took take an extra look to make sure that I got everything right.
> =


You have the right instincts that when something looks really
complicated that's probably for a reason.  That attitude will serve you
well in the future!  But in this case it's staging code so the original
code is just strange.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

> Also, this change was proposed by Dan Carpenter. Should I add anything
> in the commit message to show this?

There is a Suggested-by: tag for this, but don't resend because I don't
care and I've already reviewed this version so I don't want to review
the patch again.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
