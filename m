Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D99D4C86CE
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Oct 2019 12:57:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7ABD487E30;
	Wed,  2 Oct 2019 10:57:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FSy4vcdDwbMS; Wed,  2 Oct 2019 10:57:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 04CAF87E59;
	Wed,  2 Oct 2019 10:57:40 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 74FD61BF36F
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 10:57:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 72AAF86090
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 10:57:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GIBY6Q_Volh4
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 10:57:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 740FD85868
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 10:57:36 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x92AtNgX112211;
 Wed, 2 Oct 2019 10:57:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=yICmu/tWOLTSTVkDMELq/jO+tYz0sKyCB1r+W2cwxJY=;
 b=JuFKo1QpxZD8QYOCpi4TCuLtaFvc9ec/EO0XvD4Cu96G2uVMqP0yhFCx2ajjZpqEMval
 83EYw5pK+GIz7qsClqLjopCkh7zdnT009rbPXh0f0e1egdVzG06QOMCBxsTa0g2x6wsK
 sMCuh8/4wROBPwuyQvZR0UYfH3ZMHCwEDUYfLLLRhFMXpiI0wLIiv/DzO/izAyjvmsqf
 r70S/fep5vQxJwTY7xNWzylg/7gr0C+ue8O9/zaWJjgF0TBouKDbyj6GzGtWqRQp4K3F
 ZrRZ7vJnjRoS0eJxcOxDOwG2gg/H/NcpGPehNNlm1fTioKnIxTky7c0yMhJ9UGEyHgZn nQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2v9xxuv7ty-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 02 Oct 2019 10:57:32 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x92As2KS151271;
 Wed, 2 Oct 2019 10:57:31 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2vc9dk8mef-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 02 Oct 2019 10:57:31 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x92AvT25000704;
 Wed, 2 Oct 2019 10:57:29 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 02 Oct 2019 03:57:29 -0700
Date: Wed, 2 Oct 2019 13:57:22 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Rohit Sarkar <rohitsarkar5398@gmail.com>
Subject: Re: [PATCH] staging: rtl8712: Replace snprintf with scnprintf
Message-ID: <20191002105722.GL22609@kadam>
References: <20190910184931.GA8228@SARKAR> <20191001084514.GJ27389@kadam>
 <20191001173926.GA11819@SARKAR> <20191001185852.GJ22609@kadam>
 <20191002043350.GB11819@SARKAR>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002043350.GB11819@SARKAR>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9397
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910020103
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9397
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910020103
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
Cc: gregkh@linuxfoundation.org, driverdev-devel@linuxdriverproject.org,
 florian.c.schilhabel@googlemail.com, larry.finger@lwfiner.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 02, 2019 at 10:03:51AM +0530, Rohit Sarkar wrote:
> On Tue, Oct 01, 2019 at 10:00:56PM +0300, Dan Carpenter wrote:
> > 
> > No.  scnprintf() returns the number of characters *not counting the
> > NUL terminator*.  So it can be a maximum of MAX_WPA_IE_LEN - 1.
> > 
> > regards,
> > dan carpenter
> 
> TIL :)
> Would the better approach be to just remove the loop or break when n ==
> MAX_WPA_IE_LEN - 1.

We could leave it as is or change it to "MAX_WPA_IE_LEN - 1".  But I
feel like the default should be to leave it as is unless there is a good
reason.

So from a static analysis perspective we wouldn't complain unless/until
the "n" is re-used outside the loop.  So this a chance to make a smarter
static analyzer.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
