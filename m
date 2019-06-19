Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB40B4AF05
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 02:29:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9CA7A866F6;
	Wed, 19 Jun 2019 00:29:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KJ0sSwlfs0q2; Wed, 19 Jun 2019 00:29:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 238AD8666F;
	Wed, 19 Jun 2019 00:29:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3B64D1BF2B0
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 00:29:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 380CD87A6B
 for <devel@linuxdriverproject.org>; Wed, 19 Jun 2019 00:29:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K1FP2O38vrQ8 for <devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 00:29:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9CF5587A60
 for <devel@driverdev.osuosl.org>; Wed, 19 Jun 2019 00:29:21 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5J0P5rN178863;
 Wed, 19 Jun 2019 00:29:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2018-07-02;
 bh=tCFxvQTSWiPwXiY1UI1u6Ap1gLteDima4HMw6mezFSg=;
 b=jJout8DlUn5+fA6KgALWZKzp34qP+ePdeXbW8t1171VAmW6efPHe0QUFm/CbsIe4ATDf
 zrxBE7rr3Z8qwd08CP1zvtNP4kwXkuN5xWm273tSA4xIkQEwcLOLoFYYcxeffrTwkeJa
 zlvYq+mMqfHI0WaEmbCfq17SQG0Cdg2VyzD6ZMIJIf3unMgqxO81EI3yE+3IVtluN8zB
 ApiLMJZNAMzwIQQFK8btuQizXAMagIPt1Lv/VAP2hpeBH8foJpHd1Gv1YXkdVHgX0v6l
 dat3Hu5pXQ01I8YFw0GSnuNfbWYHXvQ6dnj8FacVYRUVMbhYa2fBcKnDbJBJFiaXFiqX LA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2t78098dhf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Jun 2019 00:29:17 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5J0SRhL046424;
 Wed, 19 Jun 2019 00:29:16 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2t77ynhn1v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 19 Jun 2019 00:29:16 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5J0T7J9013561;
 Wed, 19 Jun 2019 00:29:07 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 18 Jun 2019 17:29:06 -0700
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH V5 00/16] use sg helper to operate scatterlist
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20190618013757.22401-1-ming.lei@redhat.com>
Date: Tue, 18 Jun 2019 20:29:02 -0400
In-Reply-To: <20190618013757.22401-1-ming.lei@redhat.com> (Ming Lei's message
 of "Tue, 18 Jun 2019 09:37:41 +0800")
Message-ID: <yq11rzqzacx.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9292
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=573
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906190001
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9292
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=627 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906190001
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
 Hannes Reinecke <hare@suse.com>, Benjamin Block <bblock@linux.ibm.com>,
 linux-scsi@vger.kernel.org, "Martin K . Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 James Smart <james.smart@broadcom.com>, "Ewan D . Milne" <emilne@redhat.com>,
 Jim Gill <jgill@vmware.com>,
 James Bottomley <James.Bottomley@HansenPartnership.com>,
 Brian King <brking@us.ibm.com>, Finn Thain <fthain@telegraphics.com.au>,
 "Juergen E . Fischer" <fischer@norbit.de>, Christoph Hellwig <hch@lst.de>,
 Dan Carpenter <dan.carpenter@oracle.com>, Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


Hi Ming,

> So convert drivers to use scatterlist helper.

I applied this series with a bunch of edits and clarifying comments. It
was quite the nightmare to rebase 5.3/scsi-queue to satisfy the ordering
requirements, locate the scattered fixes, tweak tags, etc. Hope I got
everything right.

It was almost at the point where I gave up and postponed everything to
5.4. We're at -rc5 -- it's not exactly a good time to rebase the entire
tree. However, I know the static mq allocations are causing headaches
for several distro vendors so I begrudgingly bit the bullet.

I would have liked to see more reviews from the official driver
maintainers but at the same time I didn't want to wait any longer giving
this some soak time in linux-next.

Thanks for your work on getting all the drivers fixed up! Just goes to
show how large the fallout can be from a relatively innocuous core
change.

Oh, and I held back the rtsx patch due to lack of reviews. But since
that driver is in staging I'm not too worried about it. Hope we can get
the fix for that reviewed and merged soon.

-- 
Martin K. Petersen	Oracle Linux Engineering
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
