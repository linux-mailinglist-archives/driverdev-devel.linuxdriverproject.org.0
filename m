Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E151E2FF2
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 May 2020 22:26:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 51144869C0;
	Tue, 26 May 2020 20:26:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hs34VmufNvn4; Tue, 26 May 2020 20:26:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF03F86207;
	Tue, 26 May 2020 20:26:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 874D51BF82F
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 20:26:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7EFFC86269
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 20:26:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Aya1gDzzyda8 for <devel@linuxdriverproject.org>;
 Tue, 26 May 2020 20:26:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0F1FC85EA7
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 20:26:41 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04QKLiRG108249;
 Tue, 26 May 2020 20:26:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=zp67SJ8wHWZ6NZ+pwGwU9iQZ1C5+zthzljWao4iQ30Q=;
 b=kZzF82xGeR2082VG/T17QanUig8g2TZWNTXFtn+6JRBJxhyXKctmbt1yHyerDnaU/qwS
 CL81kM5msFKRHxJ6862iSWZH2HVPzxu0u4RjTM+Z7QnEgb4R3Jq6yMCUoeYqRb8cXvZ9
 OUXCFMWY2gB4wXEYT0PY3/pMqRrM8crCwFRL/E73a0IYSUwsJYdV6LF1CDTNX+PNeawU
 /eo2ElbJMNThecOajPfmtoig86QForViPW5tUthsBULSpfMzPaoyEogKOfaSrZXzn5HR
 JQ/8xjVJCvLwFV5OAw/roqvKG4FwgkCts0HRWhotsWf62LiYslk+DpTK8VJzpHF+/6+R Xg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 318xbjv1k2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 26 May 2020 20:26:40 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04QKMtYi156141;
 Tue, 26 May 2020 20:24:40 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 317dry54fc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 26 May 2020 20:24:40 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 04QKOWPc030383;
 Tue, 26 May 2020 20:24:32 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 26 May 2020 13:24:32 -0700
Date: Tue, 26 May 2020 23:24:25 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Gaurav Pathak <gauravpathak129@gmail.com>
Subject: Re: [PATCH v3] Staging: comedi: dt2814: remove unused assignments
Message-ID: <20200526202425.GH22511@kadam>
References: <20200526174813.GB30374@kadam>
 <20200526185130.7160-1-gauravpathak129@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526185130.7160-1-gauravpathak129@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9633
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 malwarescore=0
 mlxlogscore=999 adultscore=0 suspectscore=0 bulkscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005260159
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9633
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 cotscore=-2147483648
 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005260159
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
 linux-kernel@vger.kernel.org, abbotti@mev.co.uk,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Oh, crap.  I'm really sorry but these lines of code can't be deleted.
Luc was suggesting that earlier and I saw what he said but I was sure
they could be deleted.  Now that I look at it more closely I see I was
wrong.

	hi = inb(dev->iobase + DT2814_DATA);
	lo = inb(dev->iobase + DT2814_DATA);

Every time we read from DT2814_DATA we get different data.  The first
time we get the byte and the second time we get the low byte.  In other
words reading from the register has side effects so if we delete a read
then the next thing to read from there will get the data that we were
supposed to read.

What we could do instead would be to remove the "hi = " assignment.
There is one other places where the assignment is not used.

	i = inb(dev->iobase + DT2814_DATA);
	i = inb(dev->iobase + DT2814_DATA);

I feel really bad for not seeing this earlier.  I know everyone hates
redoing patches.  I certain hate redoing patches.  This one was my
fault.  :/  The v3 was in the right format and all, but it will cause a
bug.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
