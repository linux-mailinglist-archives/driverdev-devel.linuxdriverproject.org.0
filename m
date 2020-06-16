Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B69BA1FABF4
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jun 2020 11:11:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 88F048944E;
	Tue, 16 Jun 2020 09:11:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2+m-JLtbwRDU; Tue, 16 Jun 2020 09:11:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE18E8942F;
	Tue, 16 Jun 2020 09:11:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2707E1BF29F
 for <devel@linuxdriverproject.org>; Tue, 16 Jun 2020 09:10:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2246E886B0
 for <devel@linuxdriverproject.org>; Tue, 16 Jun 2020 09:10:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N23B1wgoPMm0 for <devel@linuxdriverproject.org>;
 Tue, 16 Jun 2020 09:10:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8750688484
 for <devel@driverdev.osuosl.org>; Tue, 16 Jun 2020 09:10:38 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05G93Vcj108652;
 Tue, 16 Jun 2020 09:10:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=vHFhOuRLkm8vQDg8Dof4S5HKAiKznh8tBQ+Mr1OID/Q=;
 b=cVx0KE5h1EIzH/Nv6xjfZ5nTWCPzlMev+meeNe8ig/R6zGb1hcI4zPyrerRBxYg+mmc+
 qKwemscmFpcbtZudgCHIJKFWU2+MEqUR3sjHNYzDUDCSWPx5pmD4LBuQpWhngStPV5H0
 4QQ1w6PiSDdHFWQ+ndzL39yxLvqknoA5VRhKUkk0TCj0AiX8q664S4ecxGUJH34dsTgv
 f9QhZLAjaVCh+OyWTAfnAqTx90cKQuDChSnHHM+F7Utt0PRApBfU8iMActdQhiOLrCqP
 +xx+YuMkqnBp9yLLOcyvwHAC7rCtpaJ69Rrf1s2Xt7AKk0laObtgJ3Pt4+o8dQUQESCt bA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 31p6e5wptp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 16 Jun 2020 09:10:36 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05G933ih037660;
 Tue, 16 Jun 2020 09:08:35 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 31p6s6w4s2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 Jun 2020 09:08:35 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05G98O1L002227;
 Tue, 16 Jun 2020 09:08:25 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 16 Jun 2020 02:08:24 -0700
Date: Tue, 16 Jun 2020 12:08:07 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Michal Hocko <mhocko@kernel.org>
Subject: Re: [PATCH v4 1/3] mm/slab: Use memzero_explicit() in kzfree()
Message-ID: <20200616090807.GK4151@kadam>
References: <20200616015718.7812-1-longman@redhat.com>
 <20200616015718.7812-2-longman@redhat.com>
 <20200616064208.GA9499@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616064208.GA9499@dhcp22.suse.cz>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9653
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0 mlxscore=0
 suspectscore=0 mlxlogscore=781 phishscore=0 bulkscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006160066
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9653
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 adultscore=0
 mlxscore=0 phishscore=0 mlxlogscore=814 lowpriorityscore=0 clxscore=1011
 suspectscore=0 spamscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006160066
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>,
 virtualization@lists.linux-foundation.org, David Howells <dhowells@redhat.com>,
 linux-mm@kvack.org, linux-sctp@vger.kernel.org, keyrings@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-stm32@st-md-mailman.stormreply.com,
 devel@driverdev.osuosl.org, linux-cifs@vger.kernel.org,
 linux-scsi@vger.kernel.org, James Morris <jmorris@namei.org>,
 Matthew Wilcox <willy@infradead.org>, David Rientjes <rientjes@google.com>,
 Waiman Long <longman@redhat.com>, linux-pm@vger.kernel.org,
 ecryptfs@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 wireguard@lists.zx2c4.com, linux-fscrypt@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>, linux-nfs@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-wireless@vger.kernel.org,
 David Sterba <dsterba@suse.cz>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 linux-security-module@vger.kernel.org, target-devel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-crypto@vger.kernel.org,
 Johannes Weiner <hannes@cmpxchg.org>, Joe Perches <joe@perches.com>,
 linux-integrity@vger.kernel.org, linux-wpan@vger.kernel.org,
 netdev@vger.kernel.org, linux-btrfs@vger.kernel.org, linux-ppp@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 16, 2020 at 08:42:08AM +0200, Michal Hocko wrote:
> On Mon 15-06-20 21:57:16, Waiman Long wrote:
> > The kzfree() function is normally used to clear some sensitive
> > information, like encryption keys, in the buffer before freeing it back
> > to the pool. Memset() is currently used for the buffer clearing. However,
> > it is entirely possible that the compiler may choose to optimize away the
> > memory clearing especially if LTO is being used. To make sure that this
> > optimization will not happen, memzero_explicit(), which is introduced
> > in v3.18, is now used in kzfree() to do the clearing.
> > 
> > Fixes: 3ef0e5ba4673 ("slab: introduce kzfree()")
> > Cc: stable@vger.kernel.org
> > Signed-off-by: Waiman Long <longman@redhat.com>
> 
> Acked-by: Michal Hocko <mhocko@suse.com>
> 
> Although I am not really sure this is a stable material. Is there any
> known instance where the memset was optimized out from kzfree?

I told him to add the stable.  Otherwise it will just get reported to
me again.  It's a just safer to backport it before we forget.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
