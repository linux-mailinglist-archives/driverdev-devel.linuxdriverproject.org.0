Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D890450B2F
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2019 14:55:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D6F4A8710D;
	Mon, 24 Jun 2019 12:55:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7GyQR8OXgstN; Mon, 24 Jun 2019 12:55:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 865A586FE7;
	Mon, 24 Jun 2019 12:55:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7614C1BF387
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 12:54:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 728B8844EB
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2019 12:54:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xaoih8gDxzfi for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2019 12:54:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2AB77844E7
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2019 12:54:57 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5OCsH8T142990;
 Mon, 24 Jun 2019 12:54:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2018-07-02;
 bh=qBtE7sGwA87+xuHMqYneEv1QZDMB/76C0feGN55wyx0=;
 b=uWG74qSOevMqS3+3gY+xVCFUKT/S2CjrcyT8GpbVO7o4lS51CYzqQe3TPv2Q9/jDqh7M
 T1VtuMC79SxAgwvQgBGyCRV3E8PfZqxbAstE1fZC1zD5fV+LphmQqhwEvo7Ux5R4hUwD
 z337eR1PywfoYftfamjxIBKxI/yiOflJbDrqQ+6ZJdTSVZNp8G5E04g76HrdfzYF+yqy
 v6yszWVTJ+6ifeKFtNnOIIDT/NA9DGsQUw0Y6x3TKIUYI+e5+GbPzIwmDhvxj5pWezMq
 znoIjDt3Zo55K2FRiOSU73wk1J+RfB8rUw7YeoLwQQ+RKHKjLnaZZyyapt67QT2t75p+ jg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2t9cyq666q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Jun 2019 12:54:50 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5OCrn9W105054;
 Mon, 24 Jun 2019 12:54:49 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2t99f38p0u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 24 Jun 2019 12:54:49 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5OCsiOw018764;
 Mon, 24 Jun 2019 12:54:45 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 24 Jun 2019 05:54:43 -0700
To: Ming Lei <tom.leiming@gmail.com>
Subject: Re: [PATCH V5 00/16] use sg helper to operate scatterlist
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20190618013757.22401-1-ming.lei@redhat.com>
 <yq11rzqzacx.fsf@oracle.com>
 <3df71d64-78fb-c6fc-f456-a0b626abff3b@acm.org>
 <yq1wohhs62v.fsf@oracle.com>
 <CACVXFVM2ZiSwqy9QpE2A2VDWY5-dny-H=Lw2J0bEh7zuA5aj5Q@mail.gmail.com>
Date: Mon, 24 Jun 2019 08:54:39 -0400
In-Reply-To: <CACVXFVM2ZiSwqy9QpE2A2VDWY5-dny-H=Lw2J0bEh7zuA5aj5Q@mail.gmail.com>
 (Ming Lei's message of "Mon, 24 Jun 2019 20:40:15 +0800")
Message-ID: <yq1pnn3nnxs.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9297
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=677
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906240105
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9297
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=726 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906240105
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
Cc: Michael Schmitz <schmitzmic@gmail.com>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Hannes Reinecke <hare@suse.com>, Benjamin Block <bblock@linux.ibm.com>,
 Bart Van Assche <bvanassche@acm.org>,
 Linux SCSI List <linux-scsi@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb <linux-usb@vger.kernel.org>, James Smart <james.smart@broadcom.com>,
 "Ewan D . Milne" <emilne@redhat.com>, Ming Lei <ming.lei@redhat.com>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Brian King <brking@us.ibm.com>, Finn Thain <fthain@telegraphics.com.au>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "Juergen E . Fischer" <fischer@norbit.de>, Jim Gill <jgill@vmware.com>,
 Christoph Hellwig <hch@lst.de>, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


Ming,

> Today I found the whole patchset disappears from 5.3/scsi-queue, seems
> something is wrong?

Your changes are in 5.3/scsi-sg. I put them in a separate branch to
avoid having to rebase the rest of the queue in case we find more
issues.

My for-next branch is based on 5.3/scsi-queue and 5.3/scsi-sg.

-- 
Martin K. Petersen	Oracle Linux Engineering
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
