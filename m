Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C1C19BF89
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Apr 2020 12:43:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CAA012047E;
	Thu,  2 Apr 2020 10:43:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mz2Kvh9Bgf+H; Thu,  2 Apr 2020 10:43:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E07EC2038D;
	Thu,  2 Apr 2020 10:43:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AE37E1BF2CA
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 10:42:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A9F3120399
 for <devel@linuxdriverproject.org>; Thu,  2 Apr 2020 10:42:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rfqg6cP4E82i for <devel@linuxdriverproject.org>;
 Thu,  2 Apr 2020 10:42:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 40FBB2038D
 for <devel@driverdev.osuosl.org>; Thu,  2 Apr 2020 10:42:58 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 032Adfnc085232;
 Thu, 2 Apr 2020 10:42:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=6SQAd/F7i1otV3FP3UmJBqeXybrZsd3PsFu9fZvhVXk=;
 b=VKbbYAi1DWu8bAbRasntUxVl6n89HW55SSQeUdMRIPctmxc3R5LfJLorIMGQch7pbRna
 ySZokB6jtDRomZKLACn1G8YLG/rWGB5+h80kSrPs5ECBjY40A4fUa1ZBpyBTJ76472rG
 30EECzfPl9XgmQH3IxNdEnI0p6ZWnAx5zRtbgQ4sBLVRcTqzjDBJE7dxj6ymz7j1Sw3e
 Z/ijD8L+zs9CAm2T0+O3Sh7eqzvpXC1HihUQrqo98T6etTrD9ObxAuwxeghARa/OLr3e
 eXENmu4kmbATzfzBk0Tf/DaPEHAqvhdJpZ+NQrG/CcnfU953FgD0YiVN5HaiXoUnJRaf /A== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 303cevajvy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 02 Apr 2020 10:42:56 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 032Ag8kU052634;
 Thu, 2 Apr 2020 10:42:56 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3020.oracle.com with ESMTP id 302ga26jvp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 02 Apr 2020 10:42:56 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 032AgtvW023116;
 Thu, 2 Apr 2020 10:42:55 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 02 Apr 2020 03:42:54 -0700
Date: Thu, 2 Apr 2020 13:42:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: =?iso-8859-1?Q?Lu=EDs?= Mendes <luis.p.mendes@gmail.com>,
 Wentao Cai <etsai042@gmail.com>
Subject: Re: [PATCH 01/01] staging: gasket: Fix incongruency in handling of
 sysfs entries creation
Message-ID: <20200402104246.GL2001@kadam>
References: <CAEzXK1p5uuRy9kxfxpTS+hNR-WGWtc-393HP5pPgzjUq_Q-RbA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEzXK1p5uuRy9kxfxpTS+hNR-WGWtc-393HP5pPgzjUq_Q-RbA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9578
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 mlxlogscore=892 bulkscore=0 mlxscore=0 spamscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004020097
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9578
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 adultscore=0
 clxscore=1011 phishscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 suspectscore=0 mlxscore=0 impostorscore=0 mlxlogscore=948 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004020096
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Todd Poynor <toddpoynor@google.com>, Rob Springer <rspringer@google.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Mar 29, 2020 at 10:59:21PM +0100, Lu=EDs Mendes wrote:
> Fix incongruency in handling of sysfs entries creation.
> This issue could cause invalid memory accesses, by not properly
> detecting the end of the sysfs attributes array.
>

Please add a Fixes tag.

Fixes: 84c45d5f3bf1 ("staging: gasket: Replace macro __ATTR with __ATTR_NUL=
L")

That patch was never sent to the proper mailing list for review.

Anyway, Luis, you will need to resend because your patch doesn't apply.
Please read the first paragraphs of Documentation/process/email-clients.rst

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
