Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 212A35645E
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 10:17:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A05A48598E;
	Wed, 26 Jun 2019 08:17:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D2KbignfCE3W; Wed, 26 Jun 2019 08:17:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 995F6859D1;
	Wed, 26 Jun 2019 08:17:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4825B1BF423
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 08:17:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3F16987762
 for <devel@linuxdriverproject.org>; Wed, 26 Jun 2019 08:17:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oAxP5EsxsSJb for <devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 08:17:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 810C486FF9
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 08:17:44 +0000 (UTC)
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5Q8HQs4077979
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 04:17:43 -0400
Received: from e06smtp01.uk.ibm.com (e06smtp01.uk.ibm.com [195.75.94.97])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2tc3n8kmc6-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <devel@driverdev.osuosl.org>; Wed, 26 Jun 2019 04:17:43 -0400
Received: from localhost
 by e06smtp01.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <devel@driverdev.osuosl.org> from <maier@linux.ibm.com>;
 Wed, 26 Jun 2019 09:17:41 +0100
Received: from b06cxnps4075.portsmouth.uk.ibm.com (9.149.109.197)
 by e06smtp01.uk.ibm.com (192.168.101.131) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 26 Jun 2019 09:17:35 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x5Q8HZfM34340886
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 26 Jun 2019 08:17:35 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id E5A67A4040;
 Wed, 26 Jun 2019 08:17:34 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0BAC0A4051;
 Wed, 26 Jun 2019 08:17:34 +0000 (GMT)
Received: from oc4120165700.ibm.com (unknown [9.152.99.211])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Wed, 26 Jun 2019 08:17:33 +0000 (GMT)
Subject: Re: [PATCH V5 10/16] s390: zfcp_fc: use sg helper to operate
 scatterlist
To: Ming Lei <ming.lei@redhat.com>
References: <20190618013757.22401-1-ming.lei@redhat.com>
 <20190618013757.22401-11-ming.lei@redhat.com>
 <95bfa1fb-d0eb-fc61-ecc0-001ae52a326f@linux.ibm.com>
 <20190625011902.GA23777@ming.t460p>
 <93d3d89e-a9ae-691f-d1f8-0463f714957d@linux.ibm.com>
 <20190626030751.GA26340@ming.t460p>
From: Steffen Maier <maier@linux.ibm.com>
Date: Wed, 26 Jun 2019 10:17:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190626030751.GA26340@ming.t460p>
Content-Language: en-US
X-TM-AS-GCONF: 00
x-cbid: 19062608-4275-0000-0000-000003465983
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19062608-4276-0000-0000-000038565D75
Message-Id: <1353d755-de62-d575-4c7b-d20d59d07f23@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-26_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1906260101
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
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>, Jim Gill <jgill@vmware.com>,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Finn Thain <fthain@telegraphics.com.au>, Christoph Hellwig <hch@lst.de>,
 devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 Hannes Reinecke <hare@suse.com>, Bart Van Assche <bvanassche@acm.org>,
 linux-scsi@vger.kernel.org, James Smart <james.smart@broadcom.com>,
 "Ewan D . Milne" <emilne@redhat.com>,
 "Juergen E . Fischer" <fischer@norbit.de>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Benjamin Block <bblock@linux.ibm.com>, Brian King <brking@us.ibm.com>,
 Michael Schmitz <schmitzmic@gmail.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Martin Schwidefsky <schwidefsky@de.ibm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Ming,

On 6/26/19 5:07 AM, Ming Lei wrote:
> On Tue, Jun 25, 2019 at 12:51:04PM +0200, Steffen Maier wrote:
>> I don't mind doing this change for zfcp. However, I'm having doubts
>> regarding the rationale in the commit description.

> However, I still suggest to do it because it will make us to audit SCSI chained
> sg uses much easier. And the change shouldn't have performance effect.

>> If I was not mistaken above, the following could be more descriptive parts
>> of a patch/commit description, with hopefully less confusion for anyone
>> having to look at zfcp git history a few weeks/months/years from now:
>>
>> "While not required for this SCSI MQ change regarding scatterlist
>> allocation, change all other scatterlist iterators in zfcp to the safe
>> sg_next() even if not necessary as these changed zfcp-internal scatterlists
>> are linear and unchained. This may avoid confusion about a potential need
>> for conversions in the future."

Sure, let's change the code, but could you please update the description of 
your below new patch to something like I drafted above regarding rationale?

If you would like to send a V2, I'll be happy to give a Reviewed-by.

>>>   From c9c368308fefbf034d670984fe9746a4181fe514 Mon Sep 17 00:00:00 2001
>>> From: Ming Lei <ming.lei@redhat.com>
>>> Date: Tue, 25 Jun 2019 09:15:34 +0800
>>> Subject: [PATCH] s390: scsi: use sg helper to iterate over scatterlist

>>> Unlike the legacy I/O path, scsi-mq preallocates a large array to hold
>>> the scatterlist for each request. This static allocation can consume
>>> substantial amounts of memory on modern controllers which support a
>>> large number of concurrently outstanding requests.

>>> To facilitate a switch to a smaller static allocation combined with a
>>> dynamic allocation for requests that need it, we need to make sure all
>>> SCSI drivers handle chained scatterlists correctly.

>>> Convert remaining drivers that directly dereference the scatterlist
>>> array to using the iterator functions.

> OK, I still suggest to apply the patch for the mentioned reason if you
> are fine.



-- 
Mit freundlichen Gruessen / Kind regards
Steffen Maier

Linux on IBM Z Development

https://www.ibm.com/privacy/us/en/
IBM Deutschland Research & Development GmbH
Vorsitzender des Aufsichtsrats: Matthias Hartmann
Geschaeftsfuehrung: Dirk Wittkopp
Sitz der Gesellschaft: Boeblingen
Registergericht: Amtsgericht Stuttgart, HRB 243294

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
