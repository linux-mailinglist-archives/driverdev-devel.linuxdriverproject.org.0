Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2B03262BC
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Feb 2021 13:31:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EAF884EFED;
	Fri, 26 Feb 2021 12:31:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4_yGjK6stV7j; Fri, 26 Feb 2021 12:31:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC5F14EF39;
	Fri, 26 Feb 2021 12:30:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E71EF1BF8C7
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 12:30:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D61FB4EFB0
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 12:30:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JySqn_uhEV3z for <devel@linuxdriverproject.org>;
 Fri, 26 Feb 2021 12:30:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 052614EF39
 for <devel@driverdev.osuosl.org>; Fri, 26 Feb 2021 12:30:46 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11QCU4wQ021722;
 Fri, 26 Feb 2021 12:30:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=kzH56SvqfZ/Spjf5JPCkjsjji76lV5I/b4NuhbWLkDQ=;
 b=oet8mwM/i3J7HqIP/WBha8CtH/ii8gykNQu8bD6pV5d2JDwq9F79TGy0zkRzsKW8VgcI
 sc8bCqA9vTJzUaItDl2treocb09krSKr9RpX6OPEl+1MrrbYm4YieN1vd9V7GZrgVgAi
 YO/QUzRqqI47qLcEKQuig2G8WCRDbfJ2WqBSBxZIQ6wqcaejRO0cqA5nb+ACEEzjNUXh
 14vBVX5FJZiuoKorbhPqR/5ysWxUUnppUzCIHXsv6f3fuagSJhfoxlmmEllWa/hdJssJ
 /nOF2aRVR9vZjhzagZZquFYVpDMIae45rhdVMUhdPWjqSCWUqiiTZ8KXxQgySEn2fgC4 XQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 36tsur9t4f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 26 Feb 2021 12:30:45 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11QCUgdO090734;
 Fri, 26 Feb 2021 12:30:44 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 36ucc2jcy8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 26 Feb 2021 12:30:43 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 11QCUSFL020493;
 Fri, 26 Feb 2021 12:30:29 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 26 Feb 2021 04:30:28 -0800
Date: Fri, 26 Feb 2021 15:30:22 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: rtl8192e: Fix possible buffer overflow in
 _rtl92e_wx_set_scan
Message-ID: <20210226123022.GZ2087@kadam>
References: <20210226114829.316980-1-leegib@gmail.com>
 <YDjkVqPzcU6Z5zbK@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YDjkVqPzcU6Z5zbK@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9906
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 adultscore=0
 phishscore=0 spamscore=0 suspectscore=0 bulkscore=0 malwarescore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102260095
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9906
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 mlxscore=0 malwarescore=0
 clxscore=1011 phishscore=0 mlxlogscore=999 lowpriorityscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102260095
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Lee Gibson <leegib@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Feb 26, 2021 at 01:06:46PM +0100, Greg KH wrote:
> On Fri, Feb 26, 2021 at 11:48:29AM +0000, Lee Gibson wrote:
> > Function _rtl92e_wx_set_scan calls memcpy without checking the length.
> > A user could control that length and trigger a buffer overflow.
> > Fix by checking the length is within the maximum allowed size.
> > 
> > Signed-off-by: Lee Gibson <leegib@gmail.com>
> > ---
> >  drivers/staging/rtl8192e/rtl8192e/rtl_wx.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
> > index 16bcee13f64b..2acc4f314732 100644
> > --- a/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
> > +++ b/drivers/staging/rtl8192e/rtl8192e/rtl_wx.c
> > @@ -406,6 +406,9 @@ static int _rtl92e_wx_set_scan(struct net_device *dev,
> >  		struct iw_scan_req *req = (struct iw_scan_req *)b;
> >  
> >  		if (req->essid_len) {
> > +			if (req->essid_len > IW_ESSID_MAX_SIZE)
> > +				req->essid_len = IW_ESSID_MAX_SIZE;
> > +
> 
> How about using the "pattern" the other wireless drivers use of:
> 
> 		int len = min((int)req->essid_len, IW_ESSID_MAX_SIZE);


I bet checkpatch complains that we should use min_t() instead (but I'm
too lazy to verify).

	int len = min_t(int, req->essid_len, IW_ESSID_MAX_SIZE);

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
