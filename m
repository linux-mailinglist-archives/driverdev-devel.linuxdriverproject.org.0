Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8CD28034A
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Oct 2020 17:56:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6158986A8F;
	Thu,  1 Oct 2020 15:55:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C0u2ozjcVL+l; Thu,  1 Oct 2020 15:55:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3C1008346C;
	Thu,  1 Oct 2020 15:55:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 024B61BF5B3
 for <devel@linuxdriverproject.org>; Thu,  1 Oct 2020 15:55:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A4233234BB
 for <devel@linuxdriverproject.org>; Thu,  1 Oct 2020 15:55:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cw5MXB-8Pbnx for <devel@linuxdriverproject.org>;
 Thu,  1 Oct 2020 15:55:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 1D99F233B0
 for <devel@driverdev.osuosl.org>; Thu,  1 Oct 2020 15:55:54 +0000 (UTC)
Received: from coco.lan (ip5f5ad5d2.dynamic.kabel-deutschland.de
 [95.90.213.210])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E9C2520759;
 Thu,  1 Oct 2020 15:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601567753;
 bh=vxyFRRU2qAS1XrbF1XrQWvqjNB7UV65Xf+brUtoe3do=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Sfy54yhGbYa7w21zEIpJyw5KYnX+DBYKYS8+qD/0ftQfoiIJ0FflX6B7dd55p7dRr
 UoghXz8We5TiQj8k/pLvpKzBozSGk0mtpfATNpWs6mXqhB67opL+btz3nLkg0F3HFZ
 fnG5Q92V4Agk7IoQS8xUb28Yvf7cOfQeddVtQzvA=
Date: Thu, 1 Oct 2020 17:55:47 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Subject: Re: [PATCH v3] media: atomisp: fixes build breakage for ISP2400 due
 to a cleanup
Message-ID: <20201001175547.1eb58b26@coco.lan>
In-Reply-To: <CAHp75Ve3B_YzC3JpswDv_8sYoMmvh58q4iWxfx2090Nfk3+_Fw@mail.gmail.com>
References: <490e5002c3fea266524c31e1a94853dca9c3286c.1601551027.git.mchehab+huawei@kernel.org>
 <CAHp75Ve3B_YzC3JpswDv_8sYoMmvh58q4iWxfx2090Nfk3+_Fw@mail.gmail.com>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Andy,

Em Thu, 1 Oct 2020 18:50:12 +0300
Andy Shevchenko <andy.shevchenko@gmail.com> escreveu:

> On Thu, Oct 1, 2020 at 2:17 PM Mauro Carvalho Chehab
> <mchehab+huawei@kernel.org> wrote:
> >
> > A temporary var needed for building with ISP2400 was removed
> > by accident on a cleanup patch.
> >
> > Fix the breakage.  
> 
> Is this in any of your branches?

I added v3 of the fixes today at the media tree master branch.

If no merge issues happen, it should be at tomorrow's linux-next.

Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
