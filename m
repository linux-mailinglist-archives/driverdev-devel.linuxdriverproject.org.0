Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14822AE921
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Sep 2019 13:30:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 20EB587874;
	Tue, 10 Sep 2019 11:30:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 44WXU6unYRIZ; Tue, 10 Sep 2019 11:30:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8D8F2877E4;
	Tue, 10 Sep 2019 11:30:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 910261BF5AC
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 11:30:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8DDD687702
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 11:30:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dkzUXW6ARczD for <devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 11:30:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2927785E1A
 for <devel@driverdev.osuosl.org>; Tue, 10 Sep 2019 11:30:45 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8ABOC0x194966;
 Tue, 10 Sep 2019 11:30:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=vUqRr5VLhTRMEoLxWXLZnUitHZF9Mamcfdem9nVu11A=;
 b=ij30x2VQKawWntObHNorqeQEN4g/9fhAZ0ImrfZBBMR+L2RWAfn5UcYI7TdStdqPianl
 Y3IkPk3/T/E/vtKGP7IRs753gJvqlJ9HUoXFdYDxk0O1O1NgzgOhIYXgYref/apfX8mG
 b25gdUpxebu518q1aNjUY11YZj/rTXzFH/OTREgUOh510szjWz4uyCLgPOVBLdcGZwNW
 ZWgWoqQck1k6/NjrsRv+d5URn9mYoBtULa/dys7nIQar69iJL6W3sUuemAHJEcpKUQJa
 jZ4QQvyNWA4Ool9tdnGc3w5nh3zVWdIyTdf986FfVNj9xIUPZyp4wKWJDx+wVvlcV7t4 Ug== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2uw1jkaq7a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Sep 2019 11:30:44 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8ABO7qs066093;
 Tue, 10 Sep 2019 11:30:43 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2uwq9ptkah-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Sep 2019 11:30:43 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x8ABUggg024918;
 Tue, 10 Sep 2019 11:30:42 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 10 Sep 2019 04:30:42 -0700
Date: Tue, 10 Sep 2019 14:30:37 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sumera Priyadarsini <sylphrenadin@gmail.com>
Subject: Re: [PATCH v2 1/2] staging: rtl8192u: Add or remove spaces to fix
 style issues
Message-ID: <20190910113037.GC30834@kadam>
References: <20190826180909.27775-1-sylphrenadin@gmail.com>
 <20190827084319.GB23584@kadam>
 <CACAkLupPBHeGSpYJQJ8eH1wnU2W+ff8rS8qzCG_P2hzDrwPLEQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACAkLupPBHeGSpYJQJ8eH1wnU2W+ff8rS8qzCG_P2hzDrwPLEQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9375
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=978
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909100115
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9375
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909100115
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 08, 2019 at 12:58:39PM +0530, Sumera Priyadarsini wrote:
> Hi, I am extremely sorry for a late response to this. I was caught up
> with some laptop issues. I will send a separate patch making the
> change right away.

There is not need to apologize at all.  I'm not signing your paychecks.
Take as long as you want.  :P

regards,
dan carpenter



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
