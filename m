Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0861C31BA45
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Feb 2021 14:26:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5DEDE8703D;
	Mon, 15 Feb 2021 13:26:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OelTwyn3gp8i; Mon, 15 Feb 2021 13:26:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D5CCC86FF1;
	Mon, 15 Feb 2021 13:26:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 583931BF3CB
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 13:26:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 54C1F86A48
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 13:26:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id patSeAPcNQlp for <devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 13:26:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B56D486A35
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 13:26:20 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11FDKmwd078977;
 Mon, 15 Feb 2021 13:26:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=kC3ddnFu7KnCeXK7Jaz9eWQ6Ye55HYcSZKJgSfoX+fs=;
 b=DLdDKT5PN9lNzsAfbYyaCmtyt5MC5Tux/bC4jwCvdjJG1XnFxBpMf3srXOC1vlKlxPep
 JTBdjiHbScMQcaGp7pnt5e2F4U0Q832wgj+lB7+kxWRY3aAVQl+2Xi1VJtVlEfsGfCGz
 R23XSUbg74MTGmTJ7MvB2f8C5xmxVwgbG8pmejTBod3vxmRyrGHzukMR9su7X4W8JYvP
 09n2Y3l1f7wIZpjw5mmmpmS2xL+lH2mAnQvHiWJv+F4bop86k9zcHriq7WXNK+ImxBX/
 0RK75vHUd4lA0V1cHJZjWK+K+2B2m7Physq2DGW8fLhrVsl9jdK3J65V4HWSbTNwIGha 7A== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 36p7dnbyp4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 15 Feb 2021 13:26:18 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 11FDK3QN149398;
 Mon, 15 Feb 2021 13:26:16 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 36prnwsff8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 15 Feb 2021 13:26:16 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 11FDQDsD005133;
 Mon, 15 Feb 2021 13:26:13 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 15 Feb 2021 05:26:12 -0800
Date: Mon, 15 Feb 2021 16:26:04 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Michal Hocko <mhocko@suse.com>
Subject: Re: [PATCH] staging:wlan-ng: use memdup_user instead of
 kmalloc/copy_from_user
Message-ID: <20210215132604.GO2087@kadam>
References: <20210213120527.451531-1-insafonov@gmail.com>
 <YCo0aAMajx0AG7JM@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YCo0aAMajx0AG7JM@dhcp22.suse.cz>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-IMR: 1
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9895
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxlogscore=999
 bulkscore=0 suspectscore=0 spamscore=0 malwarescore=0 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102150108
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9895
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 suspectscore=0 mlxscore=0
 phishscore=0 spamscore=0 adultscore=0 clxscore=1011 impostorscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102150108
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
Cc: devel@driverdev.osuosl.org, Ivan Safonov <insafonov@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Johannes Weiner <hannes@cmpxchg.org>, Waiman Long <longman@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Allen Pais <apais@linux.microsoft.com>,
 Abheek Dhawan <adawesomeguy222@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 15, 2021 at 09:44:24AM +0100, Michal Hocko wrote:
> On Sat 13-02-21 15:05:28, Ivan Safonov wrote:
> > memdup_user() is shorter and safer equivalent
> > of kmalloc/copy_from_user pair.
> > 
> > Signed-off-by: Ivan Safonov <insafonov@gmail.com>
> > ---
> >  drivers/staging/wlan-ng/p80211netdev.c | 28 ++++++++++++--------------
> >  1 file changed, 13 insertions(+), 15 deletions(-)
> > 
> > diff --git a/drivers/staging/wlan-ng/p80211netdev.c b/drivers/staging/wlan-ng/p80211netdev.c
> > index a15abb2c8f54..6f9666dc0277 100644
> > --- a/drivers/staging/wlan-ng/p80211netdev.c
> > +++ b/drivers/staging/wlan-ng/p80211netdev.c
> > @@ -569,24 +569,22 @@ static int p80211knetdev_do_ioctl(struct net_device *dev,
> >  		goto bail;
> >  	}
> >  
> > -	/* Allocate a buf of size req->len */
> > -	msgbuf = kmalloc(req->len, GFP_KERNEL);
> > -	if (msgbuf) {
> > -		if (copy_from_user(msgbuf, (void __user *)req->data, req->len))
> > -			result = -EFAULT;
> > -		else
> > -			result = p80211req_dorequest(wlandev, msgbuf);
> > +	msgbuf = memdup_user(req->data, req->len);
> 
> Move to memdup_user is definitely a right step. What is the range of
> req->len though? If this can be larger than PAGE_SIZE then vmemdup_user
> would be a better alternative.

req->len shoudn't be anywhere close to PAGE_SIZE but it's actually
important to check req->len and this code does not do that which leads
to memory corruption:

drivers/staging/wlan-ng/p80211netdev.c
   566                  goto bail;
   567          } else if (cmd != P80211_IFREQ) {
   568                  result = -EINVAL;
   569                  goto bail;
   570          }
   571  
   572          msgbuf = memdup_user(req->data, req->len);
   573          if (IS_ERR(msgbuf)) {
   574                  result = PTR_ERR(msgbuf);
   575                  goto bail;
   576          }
   577  
   578          result = p80211req_dorequest(wlandev, msgbuf);

We don't know that "req->len" is >= sizeof(*msgbuf), and then we pass
msgbuf top80211req_dorequest() which calls p80211req_handlemsg().  In
p80211req_handlemsg() then "req->len" has to be larger than
sizeof(struct p80211msg_lnxreq_hostwep).

   579  
   580          if (result == 0) {
   581                  if (copy_to_user
   582                      ((void __user *)req->data, msgbuf, req->len)) {
   583                          result = -EFAULT;
   584                  }
   585          }
   586          kfree(msgbuf);
   587  
   588  bail:
   589          /* If allocate,copyfrom or copyto fails, return errno */
   590          return result;
   591  }

Smatch has a problem parsing this code because struct ifreq *ifr is a
union and Smatch gets confused.  :/

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
