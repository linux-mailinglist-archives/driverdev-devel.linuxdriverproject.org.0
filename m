Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 242BF160A46
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Feb 2020 07:12:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2A82885FC4;
	Mon, 17 Feb 2020 06:12:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uqldFFP4hRuv; Mon, 17 Feb 2020 06:11:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 06BC6855B4;
	Mon, 17 Feb 2020 06:11:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0934B1BF31F
 for <devel@linuxdriverproject.org>; Mon, 17 Feb 2020 06:11:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 036B985617
 for <devel@linuxdriverproject.org>; Mon, 17 Feb 2020 06:11:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SuA6MUc1NrgQ for <devel@linuxdriverproject.org>;
 Mon, 17 Feb 2020 06:11:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7E021855B5
 for <devel@driverdev.osuosl.org>; Mon, 17 Feb 2020 06:11:55 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D08B620679;
 Mon, 17 Feb 2020 06:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581919915;
 bh=Emlzzc2erw8Gutp6n3O2iO9K4KcYC3JCWbweTckIHkA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=z8PMynEbAw8Omnzwsxph7oqrZ4NWZsnwH1B9VK4q4SVCSwPxVS7NcOUx05kEfPtK6
 VZUx2OjvLIaGy2d1YOKH2J9cln6MrmVj3QR2doqIjGqIhpkOlt24GwnfXBn7hm5/U9
 oNQ0CLBdKMScHL6BWAOT4fIvffoTUu0EPW6x1VaI=
Date: Mon, 17 Feb 2020 07:11:51 +0100
From: 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>
To: "Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp"
 <Kohada.Tetsuhiro@dc.mitsubishielectric.co.jp>
Subject: Re: [PATCH v2 1/2] staging: exfat: remove DOSNAMEs.
Message-ID: <20200217061151.GA58638@kroah.com>
References: <20200214033140.72339-1-Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp>
 <20200214161810.GA3964830@kroah.com>
 <TY1PR01MB1578EA0B95FE3C29D0F9A64190160@TY1PR01MB1578.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <TY1PR01MB1578EA0B95FE3C29D0F9A64190160@TY1PR01MB1578.jpnprd01.prod.outlook.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 "Mori.Takahiro@ab.MitsubishiElectric.co.jp"
 <Mori.Takahiro@ab.mitsubishielectric.co.jp>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "Motai.Hirotaka@aj.MitsubishiElectric.co.jp"
 <Motai.Hirotaka@aj.mitsubishielectric.co.jp>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 17, 2020 at 01:54:07AM +0000, Kohada.Tetsuhiro@dc.MitsubishiElectric.co.jp wrote:
> > I think you might need to rebase again, this patch doesn't apply at all to my tree :(
> 
> Thanks for your comments.
> I'll try to rebase with 'staging-next' branch.
> Is this correct?

Yes it is, thanks.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
