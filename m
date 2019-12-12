Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CD21811D1BE
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Dec 2019 17:03:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 36E868838C;
	Thu, 12 Dec 2019 16:03:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 747afBN1dtIq; Thu, 12 Dec 2019 16:03:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6CC828834C;
	Thu, 12 Dec 2019 16:03:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CBD041BF86C
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 16:03:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C37738834C
 for <devel@linuxdriverproject.org>; Thu, 12 Dec 2019 16:03:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8ACWTu0wMWlC for <devel@linuxdriverproject.org>;
 Thu, 12 Dec 2019 16:03:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 410F7882FC
 for <devel@driverdev.osuosl.org>; Thu, 12 Dec 2019 16:03:15 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A87C22173E;
 Thu, 12 Dec 2019 16:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576166595;
 bh=hfABrdLSbH0bF01p271neeli3FQecfhJg4XVLx7Gzt0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xoPRm99RqXB4G6cle4WwUEdyyR/xvWEN2/Pv6Q1/dEW7dcz94kHXPQUoWAlzNwVf6
 CfAhr/QJHu8bLnf8dLLvaKAuEubbTEUmyqMocdFxvWs8wxkeif566rlC19JCkNCBuo
 1ZP/hc43GyOhkAPxmlTplERgVf0xW5BcW91kOcy0=
Date: Thu, 12 Dec 2019 17:03:12 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Scott Schafer <schaferjscott@gmail.com>
Subject: Re: [PATCH v2 11/23] staging: qlge: Fix CHECK: braces {} should be
 used on all arms of this statement
Message-ID: <20191212160312.GA1672580@kroah.com>
References: <cover.1576086080.git.schaferjscott@gmail.com>
 <0e1fc1a16725094676fdab63d3a24a986309a759.1576086080.git.schaferjscott@gmail.com>
 <20191212121206.GB1895@kadam> <20191212150200.GA8219@karen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212150200.GA8219@karen>
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
 Manish Chopra <manishc@marvell.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Dan Carpenter <dan.carpenter@oracle.com>
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

Don't add a warning that you later fix up :)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
