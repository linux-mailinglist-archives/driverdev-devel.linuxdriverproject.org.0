Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A65319F486
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Apr 2020 13:27:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CD32D884BB;
	Mon,  6 Apr 2020 11:27:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id taR4Mif2gyoE; Mon,  6 Apr 2020 11:27:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 59B59882C3;
	Mon,  6 Apr 2020 11:27:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E0471BF3DA
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 11:27:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 87724868CA
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 11:27:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SaxcJC1uvv9s for <devel@linuxdriverproject.org>;
 Mon,  6 Apr 2020 11:27:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 28D3A86856
 for <devel@driverdev.osuosl.org>; Mon,  6 Apr 2020 11:27:29 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 036BNuWP058699;
 Mon, 6 Apr 2020 11:27:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=jdymwg49u9z6nptWp8aWE8NhMrcTghUd7TN0UKmJrqQ=;
 b=SiNBix7zKxvhm2nQwnn4ctQVK1Fo71/bh8e1Z/OKpN64YAr2q1E977K4YxY6dTwLcPP5
 PXcNCEdUZyWvkEAMlGiLjE1dD6wUtQ4xY7E/P0JagBMBG1jVSzjIBV3iNAqkCXsahVPj
 1OlDr2CbVeR8nCS+aCtSYWUWfUs527GVQNGIyJftbMyuf6PBFRT8xkcn7O1sEcwnQVfN
 ajOmVIgl5fQ20eU4yvsJyc4y+kiPXH6Coqi12YkT940mbij4SByvU3PNGJ/yRSXqD+OF
 lwr5BezhfyBF/m+8PQcsOw5uHetlTp1WWaES4FfOPIh4+yeW5/2Q8gmSAbwT5gA+c1NC 4g== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 306hnqx87c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 06 Apr 2020 11:27:28 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 036BNC7Y184986;
 Mon, 6 Apr 2020 11:25:28 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 3073qcur47-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 06 Apr 2020 11:25:28 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 036BPQaf013856;
 Mon, 6 Apr 2020 11:25:26 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 06 Apr 2020 04:25:26 -0700
Date: Mon, 6 Apr 2020 14:25:20 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Michael Straube <straube.linux@gmail.com>
Subject: Re: [PATCH 1/2] staging: rtl8188eu: remove unnecessary asignment
Message-ID: <20200406112519.GH2001@kadam>
References: <20200405112230.31975-1-straube.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200405112230.31975-1-straube.linux@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9582
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxscore=0 mlxlogscore=999
 spamscore=0 bulkscore=0 adultscore=0 malwarescore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004060100
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9582
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0 adultscore=0
 priorityscore=1501 mlxscore=0 malwarescore=0 mlxlogscore=999
 lowpriorityscore=0 spamscore=0 impostorscore=0 suspectscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004060100
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Apr 05, 2020 at 01:22:29PM +0200, Michael Straube wrote:
> Remove unnecessary asignment in SwLedBlink1(). The code path with the
> asignment 'pLed->BlinkTimes = 0' is only executed when
> 'pLed->BlinkTimes' is already zero and the value is not changed between
> the test 'if (pLed->BlinkTimes == 0)' and the asignment.
> 

Better to get rid of the bStopBlinking variable and this becomes more
obvious.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
