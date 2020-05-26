Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 268881E250F
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 May 2020 17:10:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0C034233A6;
	Tue, 26 May 2020 15:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tRWq2RBm4fP5; Tue, 26 May 2020 15:10:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 13950233B8;
	Tue, 26 May 2020 15:10:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C16FE1BF842
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 15:10:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BB38787804
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 15:10:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GekyAd2lphpl for <devel@linuxdriverproject.org>;
 Tue, 26 May 2020 15:10:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 28A49877FD
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 15:10:08 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04QF85lJ070012;
 Tue, 26 May 2020 15:10:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=ZOr1VcRREznxIQgGfsM1wm47OiDUEuIfZ1m11gcxhz0=;
 b=p2bdzANU+Bj/HIxmKhacjR94duHnsJ2zqw3yfIZNJ0PT0TbdsuylcNYnQ7griC723dZa
 qxZRXJ+qxdK07ecHLUY7btbjkVOMO857zwYO3SJEpkuUUNg7gHlF6s9w3p/kuVt/O2y4
 rRUIl0CRk++GTIDwvPl4dlGMItL0lX95YgQscqrx/KT1Wfuv4/nsXAZZyZ//W2ClERaI
 xEamFGkD3q4rheBcVA2oeBS+bBLwNGNF0h17XKMK1+U2mgQJDJZvXMZVFlenKs7+Te9y
 JVgVMH3CxliXI6bffMSn58F2DS/6ZR4XqY+2FI3686JwinjUHpL4fGn0+nbYWyMydPaA 7Q== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 318xe1af0n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 26 May 2020 15:10:07 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04QF8piN174854;
 Tue, 26 May 2020 15:10:06 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 317drxmd71-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 26 May 2020 15:10:06 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04QFA4xg020270;
 Tue, 26 May 2020 15:10:04 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 26 May 2020 08:10:03 -0700
Date: Tue, 26 May 2020 18:09:54 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: GAURAV PATHAK <gauravpathak129@gmail.com>
Subject: Re: [PATCH] Removing ununsed variable int lo, hi, int data and int i
 from comedi/drivers/dt2814.c.
Message-ID: <20200526150954.GA30374@kadam>
References: <20200524113613.GA19734@xebrium.com> <20200526141346.GV30374@kadam>
 <20200526145448.GA5197@xebrium.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526145448.GA5197@xebrium.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9632
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 malwarescore=0
 mlxlogscore=999 adultscore=0 suspectscore=0 bulkscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005260118
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9632
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 mlxlogscore=999
 adultscore=0 cotscore=-2147483648 mlxscore=0 bulkscore=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 suspectscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005260118
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org, abbotti@mev.co.uk,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 26, 2020 at 08:24:50PM +0530, GAURAV PATHAK wrote:
> On Tue, May 26, 2020 at 05:13:46PM +0300, Dan Carpenter wrote:
> > Your subject doesn't use the correct patch prefix please use.
> > 
> > [PATCH] Staging: comedi: dt2814: remove unused assignments
> > 
> > Please resend a v2.
> > 
> > Correct the references to Sparse as well like Luc said.
> > 
> > regards,
> > dan carpenter
> > 
> 
> Hello Dan,
> Thank you for reviewing and suggesting changes. I have modified the
> patch and attached it with the e-mail to keep this thread conversation.
> I hope I have made the changes correctly.
> 

No, this isn't how to send a v2 patch.

https://www.google.com/search?client=firefox-b-d&q=how+to+send+a+v2+patch

Put [PATCH v2] in the subject.  Don't send patches as attachments.
Put a comment after the --- cut off line:

Signed-off...
---
v2: Update subject and commit message.

If you want to reply to the thread, that's good.  Use --in-reply-to=<Message-id>
But don't worry about it too much.  Greg applies or deletes patches as
soon as he sees them so either way he's not going to have the original
thread in his inbox.

regards,
dan carpenter


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
