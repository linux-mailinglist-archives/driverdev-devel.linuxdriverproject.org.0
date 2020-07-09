Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 611C3219E69
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Jul 2020 12:55:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B907898A0;
	Thu,  9 Jul 2020 10:55:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GB-2EsgpT2d5; Thu,  9 Jul 2020 10:55:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 87F3689885;
	Thu,  9 Jul 2020 10:55:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DC2D81BF37C
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 10:55:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D666A88DFA
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 10:55:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bJ8LxIpzf08r for <devel@linuxdriverproject.org>;
 Thu,  9 Jul 2020 10:55:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 56FDA88DC0
 for <devel@driverdev.osuosl.org>; Thu,  9 Jul 2020 10:55:10 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 069Aqbj4127137;
 Thu, 9 Jul 2020 10:55:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=YCKVfBgYuDlFwoPX0nnJZsCFqIZLZjCTRI5pmVMhbBQ=;
 b=zow3eax3pSoRSfZIv5MpYwyTNtsBKL2QBQzu8+c9/2eg9PTyzm7tcMWgx14N54NzFbLw
 tnC0iW0CGYm7s0MKoaFJl1Bv9Z4qDLnrCcOQl4QG2nwYHh23LDoFJm7zqXIKLMP4qg9H
 RCXx7+fcf+SG8I0K+yhnQDKCOPSTO6+baK8YWKSUXJxj1GFUGafLwmV4CPGR/VtFtDRD
 R1eQcYK371hSPRc0jCS25rAhaa3dtWb+StGMY/Xv7Ou8sVOuNKsXWKKOCpXb7igxLIOW
 rCXXtuwmS6QLTRF1IpbqxTgzw9sjBJXSz70Es+B0icDPTS9b2an7wI5RbGECmaPxRfOc NQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 325y0agxsj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 09 Jul 2020 10:55:09 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 069AnJGs074451;
 Thu, 9 Jul 2020 10:55:09 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 325k3h0c1g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 09 Jul 2020 10:55:09 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 069At73J028326;
 Thu, 9 Jul 2020 10:55:08 GMT
Received: from kadam (/105.59.63.18) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 09 Jul 2020 03:55:07 -0700
Date: Thu, 9 Jul 2020 13:55:02 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [bug report] staging: wfx: load the firmware faster
Message-ID: <20200709105502.GF2571@kadam>
References: <20200709092629.GA15532@mwanda>
 <1713581.OkoCJHJxr1@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1713581.OkoCJHJxr1@pc-42>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9676
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 bulkscore=0 mlxscore=0
 spamscore=0 malwarescore=0 phishscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007090086
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9676
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 adultscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 mlxlogscore=999
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2007090086
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 09, 2020 at 12:09:12PM +0200, J=E9r=F4me Pouiller wrote:
> On Thursday 9 July 2020 11:26:29 CEST dan.carpenter@oracle.com wrote:
> > Hello J=E9r=F4me Pouiller,
> > =

> > The patch a9408ad79ff3: "staging: wfx: load the firmware faster" from
> > Jul 1, 2020, leads to the following static checker warning:
> > =

> >         drivers/staging/wfx/fwio.c:192 upload_firmware()
> >         error: uninitialized symbol 'bytes_done'.
> =

> Hello Dan,
> =

> Colin has reacted faster:
>    https://lkml.org/lkml/2020/7/6/387
> =

> BTW, I though gcc was able to detect that, but I didn't get any warning =

> on my side.

GCC stopped working.  I don't know if it's because of the new pluggin
which initializes stack variables or what the heck is going on.  There
has been a bug with this for years, but it's suddenly got a lot worse...

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
