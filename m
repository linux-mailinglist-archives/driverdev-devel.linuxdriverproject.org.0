Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C7602177894
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Mar 2020 15:16:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 26A4D20510;
	Tue,  3 Mar 2020 14:16:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2c85eleVW-tS; Tue,  3 Mar 2020 14:16:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D491E204E3;
	Tue,  3 Mar 2020 14:16:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9EEF61BF3A8
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 14:16:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9B04E204E3
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 14:16:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AnD+4hnzRCZC for <devel@linuxdriverproject.org>;
 Tue,  3 Mar 2020 14:16:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id D9B2E2001D
 for <devel@driverdev.osuosl.org>; Tue,  3 Mar 2020 14:16:16 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 023ECuOA151981;
 Tue, 3 Mar 2020 14:16:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=sL7wL8dxkuL7cejD6WDz6jQpyi/urX1RqkURUcQ6Hm0=;
 b=R8PIDa7h7n73FWTMf4ULgW7d4Sxbf6/7FwEtaw59UMThqkUhwYppNzzxPXfmiC5SyN6a
 uVqcxpRlPB+hclsL3pvwuXciDb6wVt3PMYqogu2NwpZxotE+z54W2L8glgtgssj4j4WA
 VcW7tVubSwDwrHxM3QsdYc56BofoBt7fpjJ9SdTQPpyIOiTrGoO1cXbF8loz9t8Sw4Qb
 ZyZNIXTOen1NLDgCW801FJInvMWik/RJqtBQUE83uYCUeVkLkWrHTGTy8RrZzdAW+rCq
 WsIlrsJSlnzrRYQ286qXEWyi8ja9VXxRS1K9XFYb8aPwUw4GWMfisw8G0SJMM5yHcAQf ew== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2yghn338ev-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Mar 2020 14:16:11 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 023EEhdE084667;
 Tue, 3 Mar 2020 14:16:10 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2yg1ekttds-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 03 Mar 2020 14:16:10 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 023EG5OL002159;
 Tue, 3 Mar 2020 14:16:05 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 03 Mar 2020 06:16:05 -0800
Date: Tue, 3 Mar 2020 17:15:54 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH v2 2/3] binder: do not initialize locals passed to
 copy_from_user()
Message-ID: <20200303141554.GG4118@kadam>
References: <20200302130430.201037-1-glider@google.com>
 <20200302130430.201037-2-glider@google.com>
 <0eaac427354844a4fcfb0d9843cf3024c6af21df.camel@perches.com>
 <CAG_fn=VNnxjD6qdkAW_E0v3faBQPpSsO=c+h8O=yvNxTZowuBQ@mail.gmail.com>
 <4cac10d3e2c03e4f21f1104405a0a62a853efb4e.camel@perches.com>
 <CAG_fn=XOyPGau9m7x8eCLJHy3m-H=nbMODewWVJ1xb2e+BPdFw@mail.gmail.com>
 <18b0d6ea5619c34ca4120a6151103dbe9bfa0cbe.camel@perches.com>
 <CAG_fn=U2T--j_uhyppqzFvMO3w3yUA529pQrCpbhYvqcfh9Z1w@mail.gmail.com>
 <20200303093832.GD24372@kadam>
 <58c1f1bf6b30bd5c39184cd9c09f25a9b9d67a68.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <58c1f1bf6b30bd5c39184cd9c09f25a9b9d67a68.camel@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9548
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 suspectscore=0 spamscore=0
 mlxlogscore=999 malwarescore=0 bulkscore=0 mlxscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003030108
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9548
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 phishscore=0 spamscore=0
 impostorscore=0 mlxscore=0 adultscore=0 mlxlogscore=999 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003030108
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Alexander Potapenko <glider@google.com>,
 Dmitriy Vyukov <dvyukov@google.com>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Mar 03, 2020 at 05:56:51AM -0800, Joe Perches wrote:
> > The real fix is to initialize everything manually, the automated
> > initialization is a hardenning feature which many people will disable.
> > So I don't think the hardenning needs to be perfect, it needs to simple
> > and fast.
> 
> Dan, perhaps I don't understand you.
> Can you clarify what you mean?

I'm basically agreeing with you.

Even though copy_from_user() might only initialize part of the struct
we should just record that it initializes the struct without getting
bogged down in details.  The annotation should be simple.

If the automated system to initialize stack variables doesn't work 100%
that's okay because it's a supplement and not a replacement for manually
initializing stack variables.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
