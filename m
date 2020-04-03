Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5059B19D127
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Apr 2020 09:25:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 60AA6204E7;
	Fri,  3 Apr 2020 07:25:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IT1TxVc-THql; Fri,  3 Apr 2020 07:25:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5480820396;
	Fri,  3 Apr 2020 07:25:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B316B1BF5A2
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 07:25:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AFE5188BFB
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 07:25:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ss7v3uq8xeQf for <devel@linuxdriverproject.org>;
 Fri,  3 Apr 2020 07:25:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 53A8F88A89
 for <devel@driverdev.osuosl.org>; Fri,  3 Apr 2020 07:25:10 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 93E96206F8;
 Fri,  3 Apr 2020 07:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585898710;
 bh=UrW0qh9b86HOoFRZ6/gp1zp7+bI3Pc9plhScThk4b/4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OPaopi7JNVueL99fqC5I2IPOvDiw5PKfVqx9nnXQdh4jBpwLu6GA5N+MIjudjKghG
 2rDOnIj44L9SSeMWA/kfFvQngwKidFl6YHO0Xhakwt8GUBA2/TjpIPM5idzX/gvI56
 ZegQxlDn6+iLUFYFEI8XXnz2kAs3z0qtrFjZMGYQ=
Date: Fri, 3 Apr 2020 09:25:02 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: Re: [PATCH 2/2] staging: gasket: Fix comment 75 character limit
 warning
Message-ID: <20200403072502.GD3405737@kroah.com>
References: <20200402053617.826678-1-jbwyatt4@gmail.com>
 <20200402053617.826678-3-jbwyatt4@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402053617.826678-3-jbwyatt4@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com, Rob Springer <rspringer@google.com>,
 Todd Poynor <toddpoynor@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Apr 01, 2020 at 10:36:17PM -0700, John B. Wyatt IV wrote:
> Fix 75 character limit warning in comment reported by checkpatch.

comments are not allowed to go beyond 75 columns now?  Is that something
new?

The code is fine as-is, sorry.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
