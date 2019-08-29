Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 74362A11AE
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 08:23:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BDEAA26209;
	Thu, 29 Aug 2019 06:23:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZwlmGlW5Utov; Thu, 29 Aug 2019 06:23:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 456F22612E;
	Thu, 29 Aug 2019 06:23:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6C8BC1BF2C8
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 06:23:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 64CF78738F
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 06:23:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x9PzjtMaLcWD for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 06:23:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F131E8708C
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 06:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Pnilb35Nyis35kILCtEZc4I5Fc543LaqAnG843dbBy8=; b=dk56+zO//nXBQQbjht/htHClI
 TMTs0VFQIU6jekV/YQ1dUzCP5SBy7nW3gmVc8b7NH7GRAwfwJvhz/jhrE3DkFGyKTeyD0v4Zbutox
 3wWHhcPePqmFoqNiv6KKjgg28GrJ9iZC81N8kZQGjueCucTfndbxggKNEI2N4iyM1xJaKLRIL8iB5
 pdHBEP//K+StFX3bZNedh4q+vL0DYHc7lTrXUgH3VWji8372/ZtvYeBLEW3/j2KUSg2ouxlKJ/XDl
 S2+9AaAwRPhjHhcwK3o//a7PQCq2pjL4RvAC9NSTyoiQ3jlvRe9ASOFD0H+a102Cvc9ohUeWBsnLr
 WZ92GXE+g==;
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i3DqO-0002Sx-AL; Thu, 29 Aug 2019 06:23:40 +0000
Date: Wed, 28 Aug 2019 23:23:40 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: exfat: add exfat filesystem code to staging
Message-ID: <20190829062340.GB3047@infradead.org>
References: <20190828160817.6250-1-gregkh@linuxfoundation.org>
 <20190828170022.GA7873@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828170022.GA7873@kroah.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
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
Cc: devel@driverdev.osuosl.org, linux-fsdevel@vger.kernel.org,
 Sasha Levin <alexander.levin@microsoft.com>,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Can we please just review the damn thing and get it into the proper
tree?  That whole concept of staging file systems just has been one
fricking disaster, including Greg just moving not fully reviewed ones
over like erofs just because he feels like it.  I'm getting sick and
tired of this scheme.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
