Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0951466305
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Jul 2019 02:48:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E1A4322739;
	Fri, 12 Jul 2019 00:48:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N7F7GAjikL+e; Fri, 12 Jul 2019 00:48:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 43202226A9;
	Fri, 12 Jul 2019 00:48:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 15F461BF40A
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 00:48:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0CAF420429
 for <devel@linuxdriverproject.org>; Fri, 12 Jul 2019 00:48:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RJCvRWNXBSWO for <devel@linuxdriverproject.org>;
 Fri, 12 Jul 2019 00:48:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id 861972000A
 for <devel@driverdev.osuosl.org>; Fri, 12 Jul 2019 00:48:02 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6C0hjBs185711;
 Fri, 12 Jul 2019 00:47:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=to : cc : subject :
 from : references : date : in-reply-to : message-id : mime-version :
 content-type; s=corp-2018-07-02;
 bh=bswtM7KXfcTUrZa5tnJd6JLuh5yaxIc3HYQdk3Zuwr4=;
 b=QkEPqMp3mKHL42qF1Uaya2p5wJUkj3FO2QR4290uZjskPuH+45kpwJstRfLq2CQZsHXI
 bGvmrTEyFoUgSvLt9UqzWx7zuKq7gXPjoHJOqOB0OAWocwzVyE1jI5VIB2qLUVXOLTb1
 4MoD99TdxTY0/Md8hMz/ROHW3oDkPYr5AA+HrV0/VUqyykGXJH0uy+ZwC0SE6Oyxg0CI
 k6XtjbOE5Z3qGpSgkbdih4M3+q5Dl7s00OOj1iOH7Vyd09uDepWKW+k/jFw9uxUfLhJQ
 J1oZl4Ro0Zzn3tcGseuiYkmMIrHIitgN27aZoCxwFCHhGWunD9ZG7RQtqLkGTv4rsDw4 AQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 2tjkkq2vb2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 12 Jul 2019 00:47:25 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6C0gtFo163677;
 Fri, 12 Jul 2019 00:47:25 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2tmwgyfrj1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 12 Jul 2019 00:47:25 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x6C0l81a008418;
 Fri, 12 Jul 2019 00:47:10 GMT
Received: from ca-mkp.ca.oracle.com (/10.159.214.123)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 11 Jul 2019 17:47:08 -0700
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 2/4] lpfc: reduce stack size with
 CONFIG_GCC_PLUGIN_STRUCTLEAK_VERBOSE
From: "Martin K. Petersen" <martin.petersen@oracle.com>
Organization: Oracle Corporation
References: <20190628123819.2785504-1-arnd@arndb.de>
 <20190628123819.2785504-2-arnd@arndb.de>
Date: Thu, 11 Jul 2019 20:47:03 -0400
In-Reply-To: <20190628123819.2785504-2-arnd@arndb.de> (Arnd Bergmann's message
 of "Fri, 28 Jun 2019 14:37:47 +0200")
Message-ID: <yq1y3146pvc.fsf@oracle.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1.92 (gnu/linux)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9315
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907120007
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9315
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907120008
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
Cc: James Morris <jmorris@namei.org>, devel@driverdev.osuosl.org,
 Hannes Reinecke <hare@suse.com>, linux-scsi@vger.kernel.org,
 James Smart <james.smart@broadcom.com>, lvs-devel@vger.kernel.org,
 Julian Anastasov <ja@ssi.bg>, coreteam@netfilter.org,
 Pablo Neira Ayuso <pablo@netfilter.org>, Wensong Zhang <wensong@linux-vs.org>,
 Dick Kennedy <dick.kennedy@broadcom.com>, Kees Cook <keescook@chromium.org>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Silvio Cesare <silvio.cesare@gmail.com>, Simon Horman <horms@verge.net.au>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Willy Tarreau <w@1wt.eu>, netfilter-devel@vger.kernel.org,
 netdev@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


Arnd,

> The lpfc_debug_dump_all_queues() function repeatedly calls into
> lpfc_debug_dump_qe(), which has a temporary 128 byte buffer.  This was
> fine before the introduction of CONFIG_GCC_PLUGIN_STRUCTLEAK_VERBOSE
> because each instance could occupy the same stack slot. However, now
> they each get their own copy, which leads to a huge increase in stack
> usage as seen from the compiler warning:

Applied to 5.3/scsi-fixes. Thank you!

-- 
Martin K. Petersen	Oracle Linux Engineering
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
