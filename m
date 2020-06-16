Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C99701FADB3
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jun 2020 12:15:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9EF69261E0;
	Tue, 16 Jun 2020 10:15:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dLTrc65rFukq; Tue, 16 Jun 2020 10:15:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5631F25A2F;
	Tue, 16 Jun 2020 10:15:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5B4201BF275
 for <devel@linuxdriverproject.org>; Tue, 16 Jun 2020 10:15:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 57CCC88A38
 for <devel@linuxdriverproject.org>; Tue, 16 Jun 2020 10:15:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IPbrcs0AqI-m for <devel@linuxdriverproject.org>;
 Tue, 16 Jun 2020 10:15:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DDF7D88937
 for <devel@driverdev.osuosl.org>; Tue, 16 Jun 2020 10:15:22 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05GADoJu099196;
 Tue, 16 Jun 2020 10:15:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=EcCRdlTazRb67PyCgCpOVI9R4o0XkJK0W6v5NveMssw=;
 b=RvffjM+9CMJ4C/L8puXpo97FV9+aBJljjjTBGzU7m1Z8F9EdvY9ymZyyB4vXTkMHVnaY
 D3KpmLTQnhMWUfQROAoQdlgmVQ9cngXVVRYAHQakQo1FWfq2mwbBN02Yo02sd+Xb3E2a
 U7mKBFtwYBACgMTc+BijX2kbwgePEOq1T6tAJiVi1dRG2OYE93zKLcrkhlnZEcVB2UPR
 gImCAW7/ckfJAvSv6LkL8nF0mGIRJq5y7FSmqXt4fpfGfG7qaq+8jCKtVHI+CHhNdug9
 acfhEsu6M9nFPzBEHLAkToC9yvPcZgVRRooZVsqgHYfNiZMH4ntHB+w6HfClB+Jlxy4+ qw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 31p6e5wypt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 16 Jun 2020 10:15:21 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05GA49E4024221;
 Tue, 16 Jun 2020 10:13:21 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 31p6s76x2t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Jun 2020 10:13:21 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05GADIGv023265;
 Tue, 16 Jun 2020 10:13:19 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 16 Jun 2020 03:13:18 -0700
Date: Tue, 16 Jun 2020 13:13:12 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Subject: Re: [PATCH][next] staging: rts5208: Use array_size() helper in
 vmalloc()
Message-ID: <20200616101312.GM4151@kadam>
References: <20200615230811.GA18818@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615230811.GA18818@embeddedor>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9653
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 suspectscore=0
 mlxlogscore=999 adultscore=0 phishscore=0 bulkscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006160075
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9653
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 adultscore=0
 mlxscore=0 phishscore=0 mlxlogscore=999 lowpriorityscore=0 clxscore=1011
 suspectscore=0 spamscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006160077
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
 linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jun 15, 2020 at 06:08:11PM -0500, Gustavo A. R. Silva wrote:
> and memset()

Please don't start the commit message in the middle of a sentence.  It's
a completely different thing from the title.  When you're reading the
full email then the title is hidden in the headers and the Date: and
Message-ID: field go in between the title and the message body.

https://lore.kernel.org/lkml/20200615230811.GA18818@embeddedor/

I normally read either the title or the body but seldom read both when
I'm reviewing patches.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
