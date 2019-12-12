Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBAA11CC0E
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Dec 2019 12:18:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 87F4B8881C;
	Thu, 12 Dec 2019 11:18:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Iv7vl4VE-D+F; Thu, 12 Dec 2019 11:18:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4AC1B887EA;
	Thu, 12 Dec 2019 11:18:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C15D1BF3EC
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 11:18:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1788B8829F
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 11:18:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e+10DlzbLA0c for <devel@linuxdriverproject.org>;
 Thu, 12 Dec 2019 11:18:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2636987FA5
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 11:18:05 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBCBEGZb069194;
 Thu, 12 Dec 2019 11:18:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=d4MdoY6N+v+K3WPQHuafJC/CqPbOGWJY82uCtk/epbY=;
 b=YZZqbiP7glUoytwVEbmZ+tpCWrnpcD5BmvreEfTXEZz16bIO7rISD3UPynyygcCX2LZD
 AmbFQWB2GH+EygqkPgzOYT2hCepocbADv6DZICU1Sd1VE847zPe7eK47b8uV/0mRZize
 /TwtMs5d810ZWlfTt3AL4g4FeUj2xt3XSVqJuA8Xipy87Z3kE8WWnum7Cqz8zvIcyahW
 R4je6hsF7SY9XAOL6LsI4bnNJGP38TtRrrTtFeGQ1dXIdsMtzrHe9oizT2c5V0MPWBwC
 ttnS3eVoO+zQ0cJHshHzIHrqy9Vj2YThs9f/1GeWvkmyRMM8ar0d2JQWgzy3WD91L2qw oA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2wr41qjbvm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 12 Dec 2019 11:18:03 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBCBHCjD070987;
 Thu, 12 Dec 2019 11:18:02 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2wu2fw5qqh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 12 Dec 2019 11:17:48 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xBCBD15M032746;
 Thu, 12 Dec 2019 11:13:01 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 12 Dec 2019 03:13:00 -0800
Date: Thu, 12 Dec 2019 14:12:46 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Scott Schafer <schaferjscott@gmail.com>
Subject: Re: [PATCH v2 20/23] staging: qlge: Fix CHECK: usleep_range is
 preferred over udelay
Message-ID: <20191212111245.GE2070@kadam>
References: <cover.1576086080.git.schaferjscott@gmail.com>
 <a3f14b13d76102cd4e536152e09517a69ddbe9f9.1576086080.git.schaferjscott@gmail.com>
 <337af773-a1da-0c04-6180-aa3597372522@cogentembedded.com>
 <20191212110057.GA7934@karen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212110057.GA7934@karen>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9468
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912120084
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9468
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912120084
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Manish Chopra <manishc@marvell.com>, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Dec 12, 2019 at 05:00:57AM -0600, Scott Schafer wrote:
> On Thu, Dec 12, 2019 at 01:45:57PM +0300, Sergei Shtylyov wrote:
> > Hello!
> > 
> > On 11.12.2019 21:12, Scott Schafer wrote:
> > 
> > > chage udelay() to usleep_range()
> > 
> >    Change?
> > 
> > > Signed-off-by: Scott Schafer <schaferjscott@gmail.com>
> > > ---
> > >   drivers/staging/qlge/qlge_main.c | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
> > > index e18aa335c899..9427386e4a1e 100644
> > > --- a/drivers/staging/qlge/qlge_main.c
> > > +++ b/drivers/staging/qlge/qlge_main.c
> > > @@ -147,7 +147,7 @@ int ql_sem_spinlock(struct ql_adapter *qdev, u32 sem_mask)
> > >   	do {
> > >   		if (!ql_sem_trylock(qdev, sem_mask))
> > >   			return 0;
> > > -		udelay(100);
> > > +		usleep_range(100, 200);
> > 
> >    I hope you're not in atomic context...
> > 
> > >   	} while (--wait_count);
> > >   	return -ETIMEDOUT;
> > >   }
> > 
> > MBR, Sergei
> 
> Im not quite what you mean by "I hope you're not in atomic context",
> could you please explain why you said this? 

You can't sleep from certain IRQs or when you are holding certain locks
(spin_locks and rwlocks).  The we have preempt_disable() then you can't
sleep.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
