Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 476E915AB2A
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 15:44:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4DA5E87C66;
	Wed, 12 Feb 2020 14:44:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cUJCT7pJxXhy; Wed, 12 Feb 2020 14:44:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B41098776C;
	Wed, 12 Feb 2020 14:44:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5A76E1BF31C
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 14:44:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 56F758776C
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 14:44:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gLddyHjIwctI for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 14:44:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BCA5F876F2
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 14:44:49 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01CEWbVw010972;
 Wed, 12 Feb 2020 14:44:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=i8va69HUS8usS5uVPrUR0RrMmMhq7YLvI3DqxMqPyhM=;
 b=OVsFH/s2UrrUBzqSi7yuin/O8dRmeKg8c3tfvsIL7dCOQbC4OK/c/q1m1BPj1ye0x5il
 OyefNp5FrQZRLNtOj5f/d3C+Q5BrXnEoTw22ySr/CDjxrM95oSsSfYoePKYez2jVtxdf
 61HKiPG0doqFh4VMK2iRV44ID2alKJ9t7FhOv3aUj3hPcaq9RHs5tnhi9P1Yf8lgX3jv
 99Ce26lSXK+/FIk4u+EXaUsBr0Fr1h6HM4zOHUN9F2ZSX4SLNhuja67nXQtCBH5xlnsg
 3u/NzLOOwI0GJ73TbjK/c8TT1WrDk9PNRfMhxw78LaNgq/8azh1NCSzvli4uox4/0uGT MA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2y2k88aurh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 12 Feb 2020 14:44:49 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 01CEd0xw073307;
 Wed, 12 Feb 2020 14:44:48 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2y4kag893q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 12 Feb 2020 14:44:48 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 01CEiWlm013875;
 Wed, 12 Feb 2020 14:44:33 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 12 Feb 2020 06:44:32 -0800
Date: Wed, 12 Feb 2020 17:44:24 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
Subject: Re: [PATCH v2] staging:gasket:gasket_core.c:unified quoted string
 split across lines in one line
Message-ID: <20200212144424.GI1778@kadam>
References: <20200211200456.GA10351@kaaira-HP-Pavilion-Notebook>
 <alpine.DEB.2.21.2002112139550.3266@hadrien>
 <20200212115035.GB21751@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212115035.GB21751@kaaira-HP-Pavilion-Notebook>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9528
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 spamscore=0 bulkscore=0
 suspectscore=0 mlxscore=0 malwarescore=0 adultscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2002120114
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9528
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 lowpriorityscore=0
 suspectscore=0 bulkscore=0 phishscore=0 mlxlogscore=999 mlxscore=0
 malwarescore=0 impostorscore=0 clxscore=1011 spamscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002120114
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
 linux-kernel@vger.kernel.org, Julia Lawall <julia.lawall@inria.fr>,
 Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 12, 2020 at 05:20:35PM +0530, Kaaira Gupta wrote:
> When the driver tries to map a region, but the region has certain
> permissions, or when it attempts to open gasket with tgid, or when it
> realeases device node;

We don't care about any of this information...

> the logs are displayed in one line only while the
> code has the strings split in two lines which makes it difficult for
> developers to search for code based on the log messages. So, this patch
> fixes three warnings of 'quoted string split across lines' in
> gasket_core.c by merging the strings in one line.
> 
> Also, I wasn't sure if I were to send a separate batch or reply with a
> v2 for this one. If former was the case than please let me know.
> Thanks for your time!

I would say:

"Kernel style says not to split string literals across mutliple lines
because it makes it difficult to grep the source for the printk.  I have
changed the code accordingly.  It will not affect runtime."

That's not imperative and some subsystems are more strict about "you're
not allowed to use the words 'I', 'we' or 'this patch'" in a commit
description.  But in staging we are pragmatists.  So long as it's clear
why you're writing the patch that's the main thing.

The other problem with this code is that some of these messages are over
80 characters long themselves which is very long for one line.

It doesn't matter if you send the v2 as a reply or not.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
