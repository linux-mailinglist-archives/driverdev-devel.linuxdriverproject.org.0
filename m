Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8304F1EC237
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jun 2020 20:56:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D86D62282E;
	Tue,  2 Jun 2020 18:56:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TG5l+3QEdPg3; Tue,  2 Jun 2020 18:56:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0BFEE227FA;
	Tue,  2 Jun 2020 18:56:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3BA341BF97E
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 18:56:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3883E879AB
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 18:56:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C1ZuhyvKB4CV for <devel@linuxdriverproject.org>;
 Tue,  2 Jun 2020 18:56:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 87C458699B
 for <devel@driverdev.osuosl.org>; Tue,  2 Jun 2020 18:56:36 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 052Im6fp051721;
 Tue, 2 Jun 2020 18:56:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=cXPrppqHkISNja9HBBAo1BlILsN/hj+lR9AXtTE7Oqg=;
 b=r4tSOSiVMkAr27VpbEFsxdwU0zDXaaAlwtJmlrb5MFmhCaQLiP8j7sjCey8GkSZJk8FP
 i7EYa02Fp54yAunSzoeeDKr34Q0R36DetpIeEcTWv/e0mkt4AUGIP3OjmjmRBAHkhcGg
 gzPZcgzprojEeDtiL+umetqDLWt09r+gdUVM9lutwtc9zPDWqgEQGr93jMSRQpcZXm5w
 vj2lTB87ucqtdIdcGvuuyl0EDM6m/7IoWsAOnZqdhSGIxV7a7SxP5+nMX1izytj2mEQS
 dLlGO8AKsJpAt6OJ0t2aVmLn2080na2Q6LCyXgxKqgUsEyH7EyrF6Q8C7v5acev7STWe ow== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 31dkrujp4v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 02 Jun 2020 18:56:35 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 052InGW0040278;
 Tue, 2 Jun 2020 18:56:35 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 31c1dxr5bj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Jun 2020 18:56:35 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 052IuXGL007999;
 Tue, 2 Jun 2020 18:56:34 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 02 Jun 2020 11:56:33 -0700
Date: Tue, 2 Jun 2020 21:56:26 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Pascal Terjan <pterjan@google.com>
Subject: Re: [PATCH] staging: rtl8712: switch to common ieee80211 headers
Message-ID: <20200602185626.GJ30374@kadam>
References: <20200601202410.124593-1-pterjan@google.com>
 <e668fc72-9103-70cd-e545-095e88c53dcf@lwfinger.net>
 <CAANdO=KBPh81Jaxhta8k3ipnwWbr5xdhTuRW6GNEZsTTpyMjXQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAANdO=KBPh81Jaxhta8k3ipnwWbr5xdhTuRW6GNEZsTTpyMjXQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9640
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxlogscore=999
 spamscore=0 bulkscore=0 adultscore=0 suspectscore=0 mlxscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006020136
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9640
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 priorityscore=1501
 mlxscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 clxscore=1011
 adultscore=0 mlxlogscore=999 cotscore=-2147483648 phishscore=0 bulkscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006020136
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 linux-kernel@vger.kernel.org, Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 02, 2020 at 04:58:46PM +0100, Pascal Terjan wrote:
> On Tue, 2 Jun 2020 at 15:57, Larry Finger <Larry.Finger@lwfinger.net> wrote:
> >
> > On 6/1/20 3:24 PM, Pascal Terjan wrote:
> > > This patch switches to <linux/ieee80211.h> and <net/cfg80211.h> and
> > > deletes a lot of duplicate definitions plus many unused ones.
> > >
> > > Non obvious changes:
> > > - struct ieee80211_ht_cap is different enough that I preferred to keep
> > >    (and rename) it for now.
> > > - mcs_rate in translate_scan was not read after being set, so I deleted
> > >    that part rather than using the renamed struct
> > > - WLAN_CAPABILITY_BSS is replaced with WLAN_CAPABILITY_ESS which is the
> > >    corresponding one with same value
> > >
> > > Signed-off-by: Pascal Terjan <pterjan@google.com>
> >
> > This patch does not apply to the staging repo, current mainline, or
> > wireless-drivers-next. Where did you intend it to go? Staging is the correct tree.
> 
> It was against staging-testing as there is a (trivial) merge conflict
> in there with https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git/commit/?h=staging-testing&id=2aaeaaff1ae21b2817256435c7fc0095eeda61ae
> which is also in staging-next
> What is the best practice in such case?

It has to apply against staging-next so that's fine.

> 
> Thanks to kbuild test robot I found that it is failing to build there
> because I forgot to add a dependency on CFG80211 in Kconfig, so I will
> need to send a v2.

Yup.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
