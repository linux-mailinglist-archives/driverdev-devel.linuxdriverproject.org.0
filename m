Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 877D11DEEA2
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 May 2020 19:50:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DAE7387845;
	Fri, 22 May 2020 17:50:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DJFvh0PixZwm; Fri, 22 May 2020 17:50:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 67AFC876BD;
	Fri, 22 May 2020 17:50:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3EDA01BF3BC
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 17:50:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 35D0320494
 for <devel@linuxdriverproject.org>; Fri, 22 May 2020 17:50:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LfyqP16Q3ZlW for <devel@linuxdriverproject.org>;
 Fri, 22 May 2020 17:50:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id 5776B1FFFF
 for <devel@driverdev.osuosl.org>; Fri, 22 May 2020 17:50:43 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04MHg0BB003279;
 Fri, 22 May 2020 17:50:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=Y5AXc/cpSAeSmxucaXQUpDP0kiRMqR98nq1i3vlmXro=;
 b=GUs3p2oTIgP2UCZ9nvvO+JUfUUnqedORu4HYHpVBhSGkNl+SBUeU6ymkKradd+x3VzPx
 YRG58/wdLXVXp1kAY3KXpD4P60I/9JqbTduDN0t1r/66U+ri2npaIZ7XWDlAjtWjD9Bk
 b5hoOWEUm6RsCXTT+Kectvb07ygYqr84QEcHj1Fo4dOO9+rpm5vMbFr/1jg3tcUZTevN
 qiE2gBMArgJzlAaLcRfTL9ZaXCvUpctTqUV1DIWwSCn8Mcqf9UnXL5CAsqjrMAR1YaXq
 tvoanOcxtK2pKuXO2RqMRxFBzcpopYNSRc1gDxLiJC5OHhHsFAi25FVOE2mfCwEe9JAN bA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 31284mf0w0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 22 May 2020 17:50:41 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04MHmjIm121754;
 Fri, 22 May 2020 17:50:41 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 313gj7un2r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 22 May 2020 17:50:41 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04MHockS008585;
 Fri, 22 May 2020 17:50:39 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 22 May 2020 10:50:38 -0700
Date: Fri, 22 May 2020 20:50:31 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Samuel Thibault <samuel.thibault@ens-lyon.org>,
 Joe Perches <joe@perches.com>, MugilRaj <dmugil2000@gmail.com>,
 devel@driverdev.osuosl.org, Kirk Reiser <kirk@reisers.ca>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
 Chris Brannon <chris@the-brannons.com>
Subject: Re: [PATCH] taging: speakup: remove volatile
Message-ID: <20200522175031.GO30374@kadam>
References: <1590138989-6091-1-git-send-email-dmugil2000@gmail.com>
 <20200522103406.GK30374@kadam>
 <6ab4139ec78928961a19e5fdbda139bb8cff9cb5.camel@perches.com>
 <20200522171312.s2ciifuxozwav2ym@function>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522171312.s2ciifuxozwav2ym@function>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9629
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 spamscore=0 malwarescore=0
 mlxscore=0 adultscore=0 bulkscore=0 suspectscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005220143
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9629
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxscore=0
 cotscore=-2147483648 impostorscore=0 malwarescore=0 mlxlogscore=999
 lowpriorityscore=0 phishscore=0 spamscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2005220142
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

I did *really look* at the code when I was reviewing this patch.  :P

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
