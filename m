Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A01AC3656F2
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Apr 2021 12:57:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB10583AFA;
	Tue, 20 Apr 2021 10:57:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kf1oNB6HZIsc; Tue, 20 Apr 2021 10:57:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F9B483AD2;
	Tue, 20 Apr 2021 10:57:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E4FB1BF2A9
 for <devel@linuxdriverproject.org>; Tue, 20 Apr 2021 10:57:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 036334022C
 for <devel@linuxdriverproject.org>; Tue, 20 Apr 2021 10:57:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 51EjDgJ66iFf for <devel@linuxdriverproject.org>;
 Tue, 20 Apr 2021 10:57:16 +0000 (UTC)
X-Greylist: delayed 00:29:10 by SQLgrey-1.8.0
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F03FA40214
 for <devel@driverdev.osuosl.org>; Tue, 20 Apr 2021 10:57:15 +0000 (UTC)
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 13KARIRk031344; Tue, 20 Apr 2021 10:28:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=CBC0ziPweSVN+s576SbWo6o6RPOr+hWP6QgYWwVJdhc=;
 b=m42z1RaUhhvl+HnWHNt/YeF7dHLlr9NgCJSFcLpVEY/Lvi9yNq7luAIX5OEvc8Q7onvh
 WftN37mj6rbCfkMskYdz8kc/Jn/OG0abTEMvuMHJZBW5mhiDYeCRpuxPBrsoDHH6TJNN
 x0LsF635NNDIBcXRbukPIGbxIsA+WnrHou1lHiW4kWN0lqq+0NCTwAucKbhZNXmuXAOY
 dJRvQKomFbHq9G5DjhLwR/DJIfcI6G9DIL2mYwWgFTFiuBdjW+6r6a68GYHmW/GUSDE1
 Jb4YfCZ4mraXTDhAnOsHyP/pc0D2NCcxEAZd55qpB14LNRQNOWE7FWP8b17TyiyQw0KE yQ== 
Received: from oracle.com (userp3020.oracle.com [156.151.31.79])
 by mx0b-00069f02.pphosted.com with ESMTP id 381tw0g0u9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 20 Apr 2021 10:28:00 +0000
Received: from userp3020.oracle.com (userp3020.oracle.com [127.0.0.1])
 by pps.podrdrct (8.16.0.36/8.16.0.36) with SMTP id 13KARxA3009216;
 Tue, 20 Apr 2021 10:27:59 GMT
Received: from pps.reinject (localhost [127.0.0.1])
 by userp3020.oracle.com with ESMTP id 3809esdbpt-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 20 Apr 2021 10:27:59 +0000
Received: from userp3020.oracle.com (userp3020.oracle.com [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 13KARxL0009161;
 Tue, 20 Apr 2021 10:27:59 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 3809esdbns-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 20 Apr 2021 10:27:59 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 13KARtpk017675;
 Tue, 20 Apr 2021 10:27:56 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 20 Apr 2021 10:27:55 +0000
Date: Tue, 20 Apr 2021 13:27:47 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: David Laight <David.Laight@ACULAB.COM>
Subject: Re: [PATCH] media: atomisp: silence "dubious: !x | !y" warning
Message-ID: <20210420102747.GB1981@kadam>
References: <20210417153627.GA50228@ashish-NUC8i5BEH>
 <20210417205613.5c1aac74@coco.lan>
 <509f019decae433cab6cb367cdfa6fa9@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <509f019decae433cab6cb367cdfa6fa9@AcuMS.aculab.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-GUID: ajAyLqlxgs9JqJzgjE3NUwOO8J1tKu7X
X-Proofpoint-ORIG-GUID: ajAyLqlxgs9JqJzgjE3NUwOO8J1tKu7X
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Ashish Kalra <eashishkalra@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 'Mauro Carvalho Chehab' <mchehab@kernel.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Apr 17, 2021 at 09:31:32PM +0000, David Laight wrote:
> From: Mauro Carvalho Chehab
> > Sent: 17 April 2021 19:56
> > 
> > Em Sat, 17 Apr 2021 21:06:27 +0530
> > Ashish Kalra <eashishkalra@gmail.com> escreveu:
> > 
> > > Upon running sparse, "warning: dubious: !x | !y" is brought to notice
> > > for this file.  Logical and bitwise OR are basically the same in this
> > > context so it doesn't cause a runtime bug.  But let's change it to
> > > logical OR to make it cleaner and silence the Sparse warning.
> 
> The old code is very likely to by slightly more efficient.
> 
> It may not matter here, but it might in a really hot path.
> 
> Since !x | !y and !x || !y always have the same value
> why is sparse complaining at all.
> 

Smatch doesn't warn about | vs || if both sides are true/false.  But
I've occasionally asked people if they were trying to do a fast path
optimization but it's always just a typo.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
