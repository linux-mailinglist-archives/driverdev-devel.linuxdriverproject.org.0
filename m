Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E386E38C
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jul 2019 11:39:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5B84322B6D;
	Fri, 19 Jul 2019 09:39:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZCmBn1xj2iiE; Fri, 19 Jul 2019 09:39:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9B2E720521;
	Fri, 19 Jul 2019 09:39:17 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8048E1BF2FC
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 19 Jul 2019 09:39:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 773F884AE7
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 19 Jul 2019 09:39:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8vJ2l-8J6SjA
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 19 Jul 2019 09:39:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8FE7C84AAD
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 19 Jul 2019 09:39:14 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6J9ce1X130015;
 Fri, 19 Jul 2019 09:39:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=a2RQGq2CNAqGqL5fmfx90I1spUclTqhpxzT9Pe1mzEs=;
 b=1UkClif4OXPMZdyovXZ2bgY7G3WajtVXaRf6w5p70LgMNyJKroEkkekq3wsbMTA9lk8t
 vAmUBEEDxSCu6eYmUgRO/uXetqx7TbRngQfl99EyaU9F0VcGj63qcobMQguWO6xQyQnz
 yK72csMJa/NwJHPX5VLyVb1lzA46F3vnId6bjq9CcJTTT6+a7cqBUdlBPmmisln08+3m
 YaYaFX1aoPL5WiHV18+UU2vcfPABppcplBfp9+oA7vrbsY0Sw+KWsH3CEVP743eviy6B
 OP3FvsUqAXXxbJBsysn55KJ4SLkOvbQPPCc1eYxoktz8Gd7AffhWa2CHQMC23Zt2LfTM Xw== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2tq6qu5r7q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Jul 2019 09:39:10 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6J9WdGm146014;
 Fri, 19 Jul 2019 09:37:10 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2tt77j7h4p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Jul 2019 09:37:09 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x6J9b6AE008381;
 Fri, 19 Jul 2019 09:37:07 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 19 Jul 2019 09:37:06 +0000
Date: Fri, 19 Jul 2019 12:36:58 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "Tobin C. Harding" <me@tobin.cc>
Subject: Re: [OSSNA] Intro to kernel hacking tutorial
Message-ID: <20190719093658.GF3111@kadam>
References: <20190705025055.GA7037@ares>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190705025055.GA7037@ares>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9322
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907190109
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9322
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907190111
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org,
 Kernelnewbies <kernelnewbies@kernelnewbies.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Jul 05, 2019 at 12:50:55PM +1000, Tobin C. Harding wrote:
> Outcome will (hopefully) be a small patch set into drivers/staging/.
> (Don't worry Greg only one group got to this stage last time, you
> won't get flooded with patches :)

We're good at reviewing floods of patches.  Send away.

In the end what we want is people who will take over a driver and
understand it completely and become the maintainer.  We've had a few
people that did appointed themselves to become the maintainer of a
random driver and move it out of staging.  But even if people don't make
it all the way to become a maintainer, it's nice when they start down
that path by focusing on one driver and trying to understand it as much
as possible.

Most of the time when you look at a new staging driver, then you do want
to clean up the white space just because it's hard to look at
non-standard code.  So that's the first step.  But then maybe start at
the probe and release functions and clean it up.  Keep your eyes open
to any other mistakes or bugs you see.  Write them down.  Then the
ioctls.  Etc.  Look at the TODO too.

The other thing I wish people knew was about the relationship with
maintainers.  When you start out, you're virtually anonymous for the
first couple patchsets.  We get so many and they blend together so we
don't remember your name.  So don't think that we mean anything
personally if we don't apply your patch.  We have forgotten about the
patch as soon as we reply to it.  Don't panic and resend quickly.  You
will be too stressed.  Wait until the next day.

In staging we really want to apply patches (unless it's in staging
because we're going to remove the code).  I get annoyed with other
staging reviewers who NAK patches because "I don't like churn" or
whatever.

On the other hand, patches just "silencing checkpatch.pl" is not a valid
justification for sending a patch.  Patches should make the code more
readable.

Anyway, maintainers are not monsters.  Very few people have made me
annoyed to the point where I refuse to review their code.  And everyone
else is in my good books so that's fine.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
