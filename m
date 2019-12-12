Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9581B11D259
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Dec 2019 17:32:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8208C20485;
	Thu, 12 Dec 2019 16:32:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EzAgP6yVTPKP; Thu, 12 Dec 2019 16:32:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 36EC620115;
	Thu, 12 Dec 2019 16:32:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C20B51BF3D8
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 16:31:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BE2348839C
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 16:31:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qMEDvhg3OaEs for <devel@linuxdriverproject.org>;
 Thu, 12 Dec 2019 16:31:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0C7C887EF8
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 16:31:58 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBCGMKph142384;
 Thu, 12 Dec 2019 16:31:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=1Me3TBEuSHGpaj+SzUfnUPEsajZ9tscnXl2BKzzAHAo=;
 b=Mc3B9sTmqgyhNVLCEl8Z8AWM+4aWiWhZiD4hQGAJbIeXfc8Lvoj6FoHXkbvrPHLl+VkB
 +x9isSX6UYVdMNKpYqkUzXe+2/j30zglR0VKakb0u2wCyromovCgLRUIzYfGoLGTgUWS
 mwNJWqLjF9LF3yS7fb8snEk/7dvtemVwO6f1gYxNxuPkYjkYolqxSjXPxTZGqPFc2qcD
 3zAg+ve5jEZfHfUei4O6fHnn1vF49wbgWkHbAFFyov08AUf/FLGXcdDa89Fmpel514a5
 0uI3FYGkb9XPm/N+WJIhRmXGau6Tkr016LmK7SZmtLq9IrLIu03eaeTf0g6uu7o/sgki lA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2wr41qm5cn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 12 Dec 2019 16:31:58 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xBCGTUMO155730;
 Thu, 12 Dec 2019 16:31:57 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2wumw0b25d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 12 Dec 2019 16:31:57 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xBCGVvGw026605;
 Thu, 12 Dec 2019 16:31:57 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 12 Dec 2019 08:31:56 -0800
Date: Thu, 12 Dec 2019 19:31:49 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Scott Schafer <schaferjscott@gmail.com>
Subject: Re: [PATCH v2 11/23] staging: qlge: Fix CHECK: braces {} should be
 used on all arms of this statement
Message-ID: <20191212163149.GA1873@kadam>
References: <cover.1576086080.git.schaferjscott@gmail.com>
 <0e1fc1a16725094676fdab63d3a24a986309a759.1576086080.git.schaferjscott@gmail.com>
 <20191212121206.GB1895@kadam> <20191212150200.GA8219@karen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212150200.GA8219@karen>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9469
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912120128
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9469
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912120127
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
 Manish Chopra <manishc@marvell.com>, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Dec 12, 2019 at 09:02:00AM -0600, Scott Schafer wrote:
> On Thu, Dec 12, 2019 at 03:12:06PM +0300, Dan Carpenter wrote:
> > On Wed, Dec 11, 2019 at 12:12:40PM -0600, Scott Schafer wrote:
> > > @@ -351,8 +352,9 @@ static int ql_aen_lost(struct ql_adapter *qdev, struct mbox_params *mbcp)
> > >  	mbcp->out_count = 6;
> > >  
> > >  	status = ql_get_mb_sts(qdev, mbcp);
> > > -	if (status)
> > > +	if (status) {
> > >  		netif_err(qdev, drv, qdev->ndev, "Lost AEN broken!\n");
> > > +	}
> > >  	else {
> > 
> > The close } should be on the same line as the else.
> > 
> > >  		int i;
> > >  
> > 
> > regards,
> > dan carpenter
> 
> this was fixed in patch 22

The truth is that I don't care at all about tiny typos like this, but
in the future then the right way to fix these is to create a separate
patch for this, and the use git rebase to fold it back into this patch.
It's a pretty straight forward process.

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
