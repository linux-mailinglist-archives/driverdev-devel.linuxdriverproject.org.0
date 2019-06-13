Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C6843542
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 12:24:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CF939877B3;
	Thu, 13 Jun 2019 10:24:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zk4D3TJmnvbJ; Thu, 13 Jun 2019 10:24:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A61A78772C;
	Thu, 13 Jun 2019 10:24:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E52E71BF3DC
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 10:24:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E21A6840E4
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 10:24:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0sD5deBO6ajz for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 10:24:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B0096840BF
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 10:24:50 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5DAEIYU188848;
 Thu, 13 Jun 2019 10:24:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=FlLKK2CmsWq3FkbB9G88Bk5zDp2pwPWbamC0wr3NdLM=;
 b=aiWcOxJjJt/zIja22X4lJPuueJhmck61ySZcVqX99X/CRR8D6ODciS9GhgNr9PWWNfoA
 vSmEEJV6tYS65D38QSoXyQlu5o2NX90Wz//N9+Z/jQfE5IW13GmPbf+zt2abcNVDkf7g
 0NOfDspdJjHIp4xD1GQb4u80VAa7VW1qLc2bx2BecELQ5cmRwBIbl/BFHKA2V0IgamGD
 Gvi7vbVBkSJ2HqkygWXd4SwKe0pxIy+xLruSUZdqvlmx8q5Wlb35houd8bjep1aMoW5n
 aYfYoR0daU0BGwoYKbs2mLWWupAwpI0p0ZkHNrYMJ7J1ZhWXPcH9LRY8WaMhYt4HLcYY kw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2t05nr0kbp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 13 Jun 2019 10:24:45 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5DAMq9m153687;
 Thu, 13 Jun 2019 10:24:45 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2t1jpjfpqq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 13 Jun 2019 10:24:44 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5DAObQd008792;
 Thu, 13 Jun 2019 10:24:37 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 13 Jun 2019 03:24:36 -0700
Date: Thu, 13 Jun 2019 13:24:25 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH V2 08/15] staging: unisys: visorhba: use sg helper to
 operate sgl
Message-ID: <20190613102425.GB28859@kadam>
References: <20190613071335.5679-1-ming.lei@redhat.com>
 <20190613071335.5679-9-ming.lei@redhat.com>
 <20190613095214.GA18796@kroah.com>
 <20190613100410.GA10829@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613100410.GA10829@ming.t460p>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9286
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=949
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906130081
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9286
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=995 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906130081
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
Cc: Michael Schmitz <schmitzmic@gmail.com>, devel@driverdev.osuosl.org,
 Hannes Reinecke <hare@suse.com>, linux-scsi@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 James Smart <james.smart@broadcom.com>, "Ewan D . Milne" <emilne@redhat.com>,
 Jim Gill <jgill@vmware.com>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Brian King <brking@us.ibm.com>, Finn Thain <fthain@telegraphics.com.au>,
 "Juergen E . Fischer" <fischer@norbit.de>, Christoph Hellwig <hch@lst.de>,
 Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 13, 2019 at 06:04:11PM +0800, Ming Lei wrote:
> On Thu, Jun 13, 2019 at 11:52:14AM +0200, Greg Kroah-Hartman wrote:
> > On Thu, Jun 13, 2019 at 03:13:28PM +0800, Ming Lei wrote:
> > > The current way isn't safe for chained sgl, so use sg helper to
> > > operate sgl.
> > 
> > I can not make any sense out of this changelog.
> > 
> > What "isn't safe"?  What is a "sgl"?
> 
> sgl is 'scatterlist' in kernel, and several linear sgl can be chained
> together, so accessing the sgl in linear way may see a chained sg, which
> is like a link pointer, then may cause trouble for driver.
> 

So from a user perspective it results in an Oops?  It would be really
cool if you had the copy of the Oops btw so people could grep the git
history for it.

(You need to resend with the improved commit message).

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
