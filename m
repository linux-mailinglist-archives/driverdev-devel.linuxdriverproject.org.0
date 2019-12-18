Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EED124D44
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Dec 2019 17:25:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 105452291B;
	Wed, 18 Dec 2019 16:25:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sd0EDWVUP3ir; Wed, 18 Dec 2019 16:25:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C35A5203C4;
	Wed, 18 Dec 2019 16:25:55 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 772E41BF41C
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 16:25:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5CB5D85D11
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 16:25:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pD7Bf71vTJ8Q
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 16:25:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E477C853D3
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 16:25:38 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2FC4F24650;
 Wed, 18 Dec 2019 16:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576686338;
 bh=qQiXJA27JjFJ95iJ+tHn6uXg+tdRZ42es5nTBLhXvv4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VDl2nL51cfS2ryVAxWiBRADc5iPD2apcfs8/K1BIEOPqYn99LRfRmSotjOdRukgvm
 MeS56SVukqtwhENOcXU7BB/sR0dxgvH20MsydKNZaB3VFNZMpNZfI/NHA6746nEN2+
 88dPcZB6KeAdBu/RO0IdA0K19ctMVIYohBV0pVqY=
Date: Wed, 18 Dec 2019 17:25:36 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian.Gromm@microchip.com
Subject: Re: [PATCH RFC v2 7/9] staging: most: move core files out of the
 staging area
Message-ID: <20191218162536.GB482612@kroah.com>
References: <1576238662-16512-1-git-send-email-christian.gromm@microchip.com>
 <1576238662-16512-8-git-send-email-christian.gromm@microchip.com>
 <20191217130548.GA3227907@kroah.com>
 <553516df78dcb750d107ad35bd56a164e7fe7e72.camel@microchip.com>
 <20191218140842.GA234539@kroah.com>
 <a1544f39e1849f0db2809a93f226bb107423d485.camel@microchip.com>
 <20191218150233.GA428016@kroah.com>
 <1dbe471036c7e539d3d75d1b78435513d9820205.camel@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1dbe471036c7e539d3d75d1b78435513d9820205.camel@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Dec 18, 2019 at 04:12:57PM +0000, Christian.Gromm@microchip.com wrote:
> > You owe me 5 recitations of Documentation/driver-api/driver-model/*
> > and
> > Documentation/kobject.txt :)
> 
> Sorry! Can I buy you a beer next ELCE?

Always!
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
