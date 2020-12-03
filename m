Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A95FA2CD846
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Dec 2020 14:57:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3F7D887976;
	Thu,  3 Dec 2020 13:57:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lGEgu864RrNq; Thu,  3 Dec 2020 13:57:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A0E698791B;
	Thu,  3 Dec 2020 13:57:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3F3141BF5A5
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 13:57:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3B55E86D38
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 13:57:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mQ7-sKY3PZMS for <devel@linuxdriverproject.org>;
 Thu,  3 Dec 2020 13:57:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CB49486D37
 for <devel@driverdev.osuosl.org>; Thu,  3 Dec 2020 13:57:01 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B3Dt4S5149893;
 Thu, 3 Dec 2020 13:56:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=+1N8mqMKsZKiLOq1eUSX0dnvawOP7u5ut7g73azXomY=;
 b=0dyHqQ1pMp4quGYHNjh3i9g8fesNeIdEzusvADrEG5XgmFsUlZaxIHa3JpFKb3dcI4zv
 SM8Wgl9InEv40buevN1Ohjyh2YzEKeBjEfLYQYD+FlKVmBTLowSPxR4psC9X1rjEUcTc
 d6THaS98YgnXnqYRZV2LGTntwCoW15nmzmx8ft2ZJKVLEIviU2ooSPORmtfJ7e8tS+Dw
 /sD7GEv8cVmuqkXSop8KX/KQzqeiGT0qmRidb4hIMDBDoLbWEwLfeEd01UA5fuYrzhzs
 VYqQ1jarH8v9h0YRYtmhNznG8s8dsTZ1AcXfTxm7zItCkfCXlsrEDtX1a3uILmB1dCt/ bw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 353egkx092-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 03 Dec 2020 13:56:58 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0B3DuMfG036368;
 Thu, 3 Dec 2020 13:56:58 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 3540aw5muw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 03 Dec 2020 13:56:57 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0B3DuoaH011497;
 Thu, 3 Dec 2020 13:56:50 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 03 Dec 2020 05:56:50 -0800
Date: Thu, 3 Dec 2020 16:56:40 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Greg KH <greg@kroah.com>
Subject: Re: [PATCH 01/11] drivers: staging: speakup: remove unneeded
 MODULE_VERSION() call
Message-ID: <20201203135640.GS2767@kadam>
References: <20201203124803.23390-1-info@metux.net>
 <X8jnO5cPUQGEK9cr@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <X8jnO5cPUQGEK9cr@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9823
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 bulkscore=0
 phishscore=0 mlxscore=0 adultscore=0 malwarescore=0 suspectscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2012030084
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9823
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 bulkscore=0 suspectscore=0
 phishscore=0 mlxlogscore=999 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1011 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2012030084
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
Cc: devel@driverdev.osuosl.org, f.fainelli@gmail.com, sbranden@broadcom.com,
 rjui@broadcom.com, speakup@linux-speakup.org, linux-kernel@vger.kernel.org,
 rcy@google.com, toddpoynor@google.com, rspringer@google.com,
 laurent.pinchart@ideasonboard.com, netdev@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, mchehab@kernel.org, "Enrico Weigelt,
 metux IT consult" <info@metux.net>, nsaenzjulienne@suse.de,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Dec 03, 2020 at 02:25:15PM +0100, Greg KH wrote:
> On Thu, Dec 03, 2020 at 01:47:53PM +0100, Enrico Weigelt, metux IT consult wrote:
> > Remove MODULE_VERSION(), as it doesn't seem to serve any practical
> > purpose. For in-tree drivers, the kernel version matters.
> > 
> > The drivers have received lots of changes, without the module version
> > (or the underlying DRV_VERSION macro) ever changed, since the code
> > landed in the kernel tree. So, it doesn't seem to have any practical
> > meaning anymore.
> > 
> > Signed-off-by: Enrico Weigelt <info@metux.net>
> > ---
> >  drivers/accessibility/speakup/main.c           | 1 -
> 
> <snip>
> 
> Yous subject line is odd, these are not "staging" drivers anymore, so
> why do you say they are there?

Also putting "drivers:" in the subject always seems superfluous.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
