Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE793BCB49
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Sep 2019 17:25:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2246785E2B;
	Tue, 24 Sep 2019 15:25:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id weusnJ_wpvTN; Tue, 24 Sep 2019 15:25:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1AEB785DC1;
	Tue, 24 Sep 2019 15:25:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 19F111BF3E6
 for <devel@linuxdriverproject.org>; Tue, 24 Sep 2019 15:25:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 164C585DFF
 for <devel@linuxdriverproject.org>; Tue, 24 Sep 2019 15:25:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fk1yal6UKEQi for <devel@linuxdriverproject.org>;
 Tue, 24 Sep 2019 15:25:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9FF5385DC1
 for <devel@driverdev.osuosl.org>; Tue, 24 Sep 2019 15:25:36 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8OF6Aus154431;
 Tue, 24 Sep 2019 15:25:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=4zi/+s7I/onEAaUL73Ae/9HlAMiuZOtfhgCHOYa+uWg=;
 b=l9Sht2BczUSR3//LsOrLp2Ajz6BBQCS34ui0VyPatKqISKnfr3y1PzHv03Kz2ERGWf1u
 8wc131OAzpFChz13aSk+4/rYxoL9P8AsqL4NWG5SHlKGc4ySnzjNuRFABqAZ6Jm78MwI
 GB/rRwpTMSSXQZmNcLeqZoxsvo8faF31aZl+yF8YUzViFcrgI6UMh3dvARQQoekWEusC
 2wJ3zSw/XPgU7SQHVLZavQ8/RISV8GHe8Fw7oE0qYqLJkbpRn1yIgoAZvzsY+zTg3Mxe
 inUZnTpq+AG+LzBVTBR/o/cMXXUbNWgwb5OZHiDCUHfjMGz6jhiQtaewoZwWbaLzZwmR iA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2v5b9tpwpa-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 24 Sep 2019 15:25:34 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8OF6nBL082340;
 Tue, 24 Sep 2019 15:25:33 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2v6yvkqgam-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 24 Sep 2019 15:25:33 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x8OFPSTa029998;
 Tue, 24 Sep 2019 15:25:29 GMT
Received: from kadam (/102.167.217.97) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 24 Sep 2019 08:25:27 -0700
Date: Tue, 24 Sep 2019 18:25:15 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Connor Kuehl <connor.kuehl@canonical.com>
Subject: Re: NACK: [PATCH] staging: rtl8188eu: remove dead code in do-while
 conditional step
Message-ID: <20190924152515.GD29696@kadam>
References: <20190923194806.25347-1-connor.kuehl@canonical.com>
 <52e473f0-6b92-9504-b86e-a73a0d82617f@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52e473f0-6b92-9504-b86e-a73a0d82617f@canonical.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9390
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=582
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909240145
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9390
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=684 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909240145
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
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This email is fine, but I just want to make sure that you don't think
it's required.  We all assumed that you would send a v2.  I sort of hate
the word NACK as well because it sounds like shouting or ducks and those
are my two pet peeves.

Sometimes  people send a v2 patch without any replies to the original
email and we apply the v1 patch that's the only thing to avoid.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
