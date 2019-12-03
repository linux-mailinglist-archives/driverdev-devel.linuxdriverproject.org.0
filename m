Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C0A11044B
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Dec 2019 19:33:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 93E1F8787F;
	Tue,  3 Dec 2019 18:33:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RoIizR0WS7ZF; Tue,  3 Dec 2019 18:33:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 17ADF87784;
	Tue,  3 Dec 2019 18:33:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 868F51BF57C
 for <devel@linuxdriverproject.org>; Tue,  3 Dec 2019 18:33:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7F079877F1
 for <devel@linuxdriverproject.org>; Tue,  3 Dec 2019 18:33:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wyriDr7Q2Wmf for <devel@linuxdriverproject.org>;
 Tue,  3 Dec 2019 18:33:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2CF8C87784
 for <devel@driverdev.osuosl.org>; Tue,  3 Dec 2019 18:33:09 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xB3ITjOB107843;
 Tue, 3 Dec 2019 18:33:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=Ns9OTYLHtfmNlpkPP5XIB4KLWreMsRUX0w1J7Z3QTF4=;
 b=MmUq4Op/htDTIuZRYX4gH5C0CL2W9C2kVR4Gquvbid+PtqzxdXfANRTIMLKW0LGs2YGe
 n4rb/WC62/F1o4yWpWcc0FI9fqQGQ0VHnzTdMQNQPRVaLnK+nqiPfuDr5gCaPtGTisOG
 NrRDt9iuwK3KxWSG99iQlnf7osGaXN8AM00ZXs+KBIt0SXDc+z2iXLP+MyZMAak19vvk
 rnvF4OwJhldquEv+nsdgQ0Se145Knli2tmmbZ2SYj0rXGJIG94yJVsGL/gKd5jHLm8ZC
 xKl00BI2tJvPsRJtA6XQwossj2ZRhUD2BP2Rx2sHPsrN1+huvvvouZBmNk1EIPBa2SZH VA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2wkh2r9gb0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Dec 2019 18:33:08 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xB3ITa6K194607;
 Tue, 3 Dec 2019 18:31:07 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2wn7pqh59d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Dec 2019 18:31:07 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id xB3IV35T002000;
 Tue, 3 Dec 2019 18:31:03 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 03 Dec 2019 10:31:02 -0800
Date: Tue, 3 Dec 2019 21:30:56 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sven Leykauf <sven_leykauf1@web.de>
Subject: Re: [PATCH 2/2] pi433: Fix indentation according to coding style
Message-ID: <20191203183056.GH1787@kadam>
References: <20191203175447.28765-1-sven_leykauf1@web.de>
 <20191203175447.28765-2-sven_leykauf1@web.de>
 <20191203181417.GD1765@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203181417.GD1765@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9460
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912030136
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9460
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912030136
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
Cc: devel@driverdev.osuosl.org, Daniel Bauer <daniel.j.bauer@fau.de>,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 03, 2019 at 09:14:17PM +0300, Dan Carpenter wrote:
> You can't have two patches with the same subject.
> 
> On Tue, Dec 03, 2019 at 06:54:49PM +0100, Sven Leykauf wrote:
> > Fix indentation so that no line exceeds the 80 character border.
> > 
> > Put the return command one line under the default case, so it looks
> > better.
> > 
> > Co-developed-by: Daniel Bauer <daniel.j.bauer@fau.de>
> > Signed-off-by: Daniel Bauer <daniel.j.bauer@fau.de>
> > Signed-off-by: Sven Leykauf <sven_leykauf1@web.de>
> > ---
> >  drivers/staging/pi433/rf69.c | 56 ++++++++++++++++++++++++------------
> >  1 file changed, 37 insertions(+), 19 deletions(-)
> > 
> > diff --git a/drivers/staging/pi433/rf69.c b/drivers/staging/pi433/rf69.c
> > index 6b13f92028c7..6cdd46682aa9 100644
> > --- a/drivers/staging/pi433/rf69.c
> > +++ b/drivers/staging/pi433/rf69.c
> > @@ -596,42 +596,60 @@ bool rf69_get_flag(struct spi_device *spi, enum flag flag)
> >  {
> >  	switch (flag) {
> >  	case mode_switch_completed:
> > -		return (rf69_read_reg(spi, REG_IRQFLAGS1) & MASK_IRQFLAGS1_MODE_READY);
> > +		return (rf69_read_reg(spi, REG_IRQFLAGS1) &
> > +				MASK_IRQFLAGS1_MODE_READY);

For patch 1 it would be pretty easy to re-write the function to be
cleaner and under 80 characters.  For this function it's quite a bit
trickier.  You could sit for a long time thinking about it.

Is MASK_IRQFLAGS1_MODE_READY the exact perfect name?  Why does the
"enum flag flag" enum exist?  Is it perfectly named?  How much of this
function is dead code?

It's probably better to start cleaning up the rest of the driver and
then by the time you get back to this function maybe the answer will
be obvious.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
