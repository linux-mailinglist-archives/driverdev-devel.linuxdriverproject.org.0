Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D2977251269
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Aug 2020 08:52:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CA5CD86237;
	Tue, 25 Aug 2020 06:52:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jWH0QDX893Jg; Tue, 25 Aug 2020 06:52:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B24B886256;
	Tue, 25 Aug 2020 06:52:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 74BFA1BF35D
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 06:52:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6BF7587B05
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 06:52:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nOpSbFqxW8KK for <devel@linuxdriverproject.org>;
 Tue, 25 Aug 2020 06:52:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 02BA087AA5
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 06:52:12 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 499412076C;
 Tue, 25 Aug 2020 06:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1598338332;
 bh=ajZvLj9BjR77Id3A98oIhcvcaL+SUw6LfKF/69V/kLU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AN/lXcIxfDf5rJ39XYKzwtM/ZtuUuqNlw9WEZeCXlOiC9jx4t9aMg77SIGfl10uMU
 ObFPWpLwJv5bhPB7R2iP4LeNNf7JDyEjiQC2oN8EotTe6EtwKeba74Go7XyM5zqMD2
 aGjmG54a6XqEz1QwkWRq6eGNYuQuTecuhWBektsM=
Date: Tue, 25 Aug 2020 08:52:29 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v4 0/2] staging: android: Remove BUG/BUG_ON from ion
Message-ID: <20200825065229.GA1319770@kroah.com>
References: <cover.1598023523.git.tomersamara98@gmail.com>
 <20200825064729.GA30014@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200825064729.GA30014@infradead.org>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Martijn Coenen <maco@android.com>, Tomer Samara <tomersamara98@gmail.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Joel Fernandes <joel@joelfernandes.org>, Riley Andrews <riandrews@android.com>,
 Arve Hj?nnev?g <arve@android.com>, Hridya Valsaraju <hridya@google.com>,
 Laura Abbott <labbott@redhat.com>, Suren Baghdasaryan <surenb@google.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 25, 2020 at 07:47:29AM +0100, Christoph Hellwig wrote:
> On Fri, Aug 21, 2020 at 06:27:04PM +0300, Tomer Samara wrote:
> > Remove BUG/BUG_ON from androind/ion
> 
> Please just remove ion.  It has been rejected and we have developed
> proper kernel subsystens to replace it.  Don't waste your time on it.

It is going to be removed at the end of this year.  Why we keep it
around until then, I really don't know, but John and Laura have this as
the plan.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
