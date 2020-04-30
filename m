Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC371BF4FB
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Apr 2020 12:10:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DC8D187E1F;
	Thu, 30 Apr 2020 10:10:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bMvN1odpLeL6; Thu, 30 Apr 2020 10:10:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9E8DA87E08;
	Thu, 30 Apr 2020 10:10:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C73FB1BF322
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 10:10:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B45E8204F1
 for <devel@linuxdriverproject.org>; Thu, 30 Apr 2020 10:10:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FLMaXXNTorLa for <devel@linuxdriverproject.org>;
 Thu, 30 Apr 2020 10:10:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id 85B35204DD
 for <devel@driverdev.osuosl.org>; Thu, 30 Apr 2020 10:10:40 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03U9wtDG044025;
 Thu, 30 Apr 2020 10:10:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=5WhGcq90rfMBRqKV0qb10Jbha9Kn+6XcelGD6TM+nHo=;
 b=jS4fO3pEbYQLmfAdBVeBEL97Vc+ySSqlzQqty9S2gK4Qdz8bU7ZTqWDfUVa3E6VAWz2u
 gAaVpz338nMUpXb1U7PZZyIZTdk7e/Oxg6Dvx+V+HMxNk6f7MzXo2FpgmK4r3Eq97ZUS
 sAdGfnpdqauMl2mP07sUtXHGUYdJgn6/c2mjyvehF3bnu7RGgBW+wqEwGMHhoQIaBAlT
 gMJjaD4siEPLuOlBuUcukGyuCGCueXATJ4YogQ4+QjDXEHEyIz5JLWoFyEKEdOAHZdjX
 zfg5c2wo8YJl1jzSih6Pm78hhwF5Fh0LnC9XDOPi6ZUdwV7IJHHVQ/PNfCHeHG721Po8 tA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 30nucgajn0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 30 Apr 2020 10:10:39 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03UA6XDC113255;
 Thu, 30 Apr 2020 10:08:39 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3030.oracle.com with ESMTP id 30qtkvykbc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 30 Apr 2020 10:08:38 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 03UA8bQi028097;
 Thu, 30 Apr 2020 10:08:37 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 30 Apr 2020 10:08:36 +0000
Date: Thu, 30 Apr 2020 13:08:28 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Joe Perches <joe@perches.com>
Subject: Re: [PATCH v2 2/7] staging: qlge: Remove gotos from
 ql_set_mac_addr_reg
Message-ID: <20200430100828.GU2014@kadam>
References: <cover.1588209862.git.mail@rylan.coffee>
 <a6f485e43eb55e8fdc64a7a346cb0419b55c3cb6.1588209862.git.mail@rylan.coffee>
 <20200430093835.GT2014@kadam>
 <4c91091b304fc5df2a2f292a1e0c78d80217bb94.camel@perches.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4c91091b304fc5df2a2f292a1e0c78d80217bb94.camel@perches.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9606
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 suspectscore=0 mlxscore=0
 phishscore=0 mlxlogscore=991 adultscore=0 malwarescore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004300081
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9606
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015
 priorityscore=1501
 mlxlogscore=999 impostorscore=0 suspectscore=0 malwarescore=0
 lowpriorityscore=0 mlxscore=0 spamscore=0 adultscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004300081
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
Cc: devel@driverdev.osuosl.org, GR-Linux-NIC-Dev@marvell.com,
 Manish Chopra <manishc@marvell.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rylan Dmello <mail@rylan.coffee>, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Apr 30, 2020 at 03:03:07AM -0700, Joe Perches wrote:
> On Thu, 2020-04-30 at 12:38 +0300, Dan Carpenter wrote:
> > On Wed, Apr 29, 2020 at 09:33:04PM -0400, Rylan Dmello wrote:
> > > As suggested by Joe Perches, this patch removes the 'exit' label
> > > from the ql_set_mac_addr_reg function and replaces the goto
> > > statements with break statements.
> []
> > > diff --git a/drivers/staging/qlge/qlge_main.c b/drivers/staging/qlge/qlge_main.c
> []
> > > @@ -336,22 +336,20 @@ static int ql_set_mac_addr_reg(struct ql_adapter *qdev, u8 *addr, u32 type,
> > >  
> > >  		status = ql_wait_reg_rdy(qdev, MAC_ADDR_IDX, MAC_ADDR_MW, 0);
> > >  		if (status)
> > > -			goto exit;
> > > +			break;
> > 
> > Just "return status".  A direct return is immediately clear but with a
> > break statement then you have to look down a bit and then scroll back.
> 
> To me, 6 of 1, half dozen of other as
> all the case breaks could be returns.
> 
> So either form is fine with me.
> 
> The old form was poor through.

With a goto exit or a break you have to scroll down to exactly the same
place.  There is no difference at all.

Anyway, I'm actually fine with this patch series as-is.  It improves
a whole lot of stuff and doesn't cause any problems which weren't
there to begin with.

Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
