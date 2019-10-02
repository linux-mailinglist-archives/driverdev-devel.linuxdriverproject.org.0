Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 294BFC8689
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Oct 2019 12:44:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3A6B7860D2;
	Wed,  2 Oct 2019 10:44:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RZjpYSMRKO7y; Wed,  2 Oct 2019 10:44:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9B72F85FA4;
	Wed,  2 Oct 2019 10:44:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C7B091BF36F
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 10:44:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BEEBA854B3
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 10:44:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4PMqO1cuWeEr for <devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 10:44:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6322086382
 for <devel@driverdev.osuosl.org>; Wed,  2 Oct 2019 10:44:41 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x92AiPGf104779;
 Wed, 2 Oct 2019 10:44:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=qXQXU+vhH1G4zqTkC4BdGWIu4T24ijAOdoDsDXQ9Fe4=;
 b=AhPSbxjubhLnnQ40gW4DcDrI+UJX+Zvw8vqk3ABBF2SVj/JtuS1BvETE4BFqg8+leG8U
 1mGnpEPgPc29IYMtpilRz2LxJbZUKBKe8JH3A//RZwUYmd3BqJ0FePKrlk3Cq7nKSvA1
 V7QJSWwQzwocimugk89VpsI1QyAb2p1BtrDYN+IPBoZvSaDPAC2XuGCZ+4NbHp0LYqej
 jPCUxCB8yh6tXIn/vxEdZhSezWLFDKuTEMercJvmP6ZNk3tFH6p6OUGJuYiJmBl1kt1H
 K/d+6nC5oy0Ktd5cRK537VZt+4GDJ0Sc+5qxU9t8nE0T3x98vqwONWcglGPgDH8Yp6hr 8w== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2v9xxuv6e5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 02 Oct 2019 10:44:40 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x92AhRCP121083;
 Wed, 2 Oct 2019 10:44:39 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2vckynr341-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 02 Oct 2019 10:44:39 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x92Aic1I026374;
 Wed, 2 Oct 2019 10:44:38 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 02 Oct 2019 03:44:38 -0700
Date: Wed, 2 Oct 2019 13:44:31 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sumera Priyadarsini <sylphrenadin@gmail.com>
Subject: Re: [RESEND PATCH] staging: rtl8192u: Fix indentation for cleaner code
Message-ID: <20191002104431.GN29696@kadam>
References: <20190913180101.14573-1-sylphrenadin@gmail.com>
 <20190924151713.GA663334@kroah.com>
 <CACAkLuqtNGymScoRXKSkf_F3-qc=89za9S34hEwkT8FwH_8ujQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACAkLuqtNGymScoRXKSkf_F3-qc=89za9S34hEwkT8FwH_8ujQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9397
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=909
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910020101
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9397
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=991 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910020101
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 02, 2019 at 03:49:04PM +0530, Sumera Priyadarsini wrote:
> On Tue, Sep 24, 2019 at 8:47 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> >
> > On Fri, Sep 13, 2019 at 11:31:01PM +0530, Sumera Priyadarsini wrote:
> > > Fixes indentation for if condition in the file r8190_rtl8256.c for better readability as suggested by Dan Carpenter.
> >
> > Please wrap your lines at 72 columns.
> >
> >
> I will keep this in mind. I was under the impression that the line
> length must be 80 columns
> but will make the change immediately. To be able to wrap the lines,
> maybe code implementation
> needs to be changed slightly as there is a lot of nesting present in
> the current code?

The 72 character limit is for commit messages, not code.  Checkpatch.pl
will complain at 75 characters.  It's the same rule as email.

regards,
dan carepnter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
