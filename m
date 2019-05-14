Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1CC1CF0C
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 May 2019 20:28:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC1688709D;
	Tue, 14 May 2019 18:28:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zMQBJQZaK6t1; Tue, 14 May 2019 18:28:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 106D886003;
	Tue, 14 May 2019 18:28:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D06C61BF3FF
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 18:28:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CCF7685EC4
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 18:28:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cOWuM_TUQUkp for <devel@linuxdriverproject.org>;
 Tue, 14 May 2019 18:28:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3F68F8455D
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 18:28:03 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4EI9b9R006311;
 Tue, 14 May 2019 18:28:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=8r30PkRsHvWaziWucHJm97P5D3C4909UgzMo3HE6TXo=;
 b=ym2O1c0IObC/8hkNIsEwdXlKwPDvXxsqEbkTxcmfqPXhmqqXdYRXPaLaHphmrIMvEr/a
 DX3MNPdERVY0pmpey+BTRP+75yZxbvmwb6FwPqJzbHYh315dwbNuBj2Y7X+EvrcfvWkY
 ESAamalhXzx44r8M1KF75FcwGkCvC6fzah2psaxhD4y+1oLyxQktAcq3JTb8dhZlqQ1z
 iOuI/UuveQSBj7EWapPVnVpNslCZmAkRiWW4dAO37jt/Fxjinq1MGYYrBwcz1deeqLq2
 /uM80HE8AAeZOiloLoN6V/CVOkcS6+hamWt2UyTjdfwUJYFVPJRZf39X2HfDy7FW1iPm nQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2130.oracle.com with ESMTP id 2sdkwdr8w1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 May 2019 18:28:02 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4EIRsR2145970;
 Tue, 14 May 2019 18:28:01 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2sf3cndwje-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 14 May 2019 18:28:01 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x4EIS0IZ011433;
 Tue, 14 May 2019 18:28:00 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 14 May 2019 11:27:59 -0700
Date: Tue, 14 May 2019 21:27:54 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Puranjay Mohan <puranjay12@gmail.com>
Subject: Re: [PATCH V2 1/5] Staging: rtl8192u: ieee80211: Fix coding style
 warning
Message-ID: <20190514182753.GB19380@kadam>
References: <20190514091224.GA786@arch> <20190514140905.GA16844@kroah.com>
 <20190514155434.GA1371@arch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514155434.GA1371@arch>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9257
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=825
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905140125
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9257
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=855 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905140124
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

On Tue, May 14, 2019 at 09:24:38PM +0530, Puranjay Mohan wrote:
> On Tue, May 14, 2019 at 04:09:05PM +0200, Greg KH wrote:
> > On Tue, May 14, 2019 at 02:42:31PM +0530, Puranjay Mohan wrote:
> > > Remove braces around a single if statement to fix following
> > > checkpatch.pl warning.
> > > WARNING: braces {} are not necessary for single statement blocks
> > > 
> > > Signed-off-by: Puranjay Mohan <puranjay12@gmail.com>
> > > ---
> > > 
> > > V2 - remove extra blank line before the closing brace.
> > 
> > When you fix up a patch in a series, please resend the _whole_ series,
> > otherwise I have to try to piece together the different patches and put
> > them in the proper place.  When dealing with 1000+ emails a day, that's
> > a hard thing to ask a maintainer to do.
> I am sorry! 
> > So please just resend this whole thing, in a threaded email series (such
> > that they are all grouped together.  You are sending these as individual
> > emails, and so email clients do not link them, making them harder to
> > manage :(
> > 
> > thanks,
> > 
> > greg k-h
> I will resend it again properly.
> Sorry for doing mistakes everytime.

Don't stress....  We all started as newbies.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
