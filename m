Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E60DD251253
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Aug 2020 08:47:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A16787F6F;
	Tue, 25 Aug 2020 06:47:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6-Kgs0D6HaUT; Tue, 25 Aug 2020 06:47:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5700587E58;
	Tue, 25 Aug 2020 06:47:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D7A1B1BF35D
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 06:47:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D347F87E5F
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 06:47:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 158MXpVRG7py for <devel@linuxdriverproject.org>;
 Tue, 25 Aug 2020 06:47:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ECE8887E58
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 06:47:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=3yMsVhcdm4uIPL75zrjrinoFwmad7XMD+ITiKRaneHM=; b=OL1yuYpSoSeg7b8RYZkspFpNgE
 jGHr0Jo2wtiUXQ7rpIMh5dSb0GUCyHwBlhKWoWvR5STTN8EtQ8AqFoVkgeo4gjGIBPtYwVHqG7djz
 YBGviXedA+rHXNaD2Go5H4REGoQdAM9Jm2fBSWhTWjvgaLq+f5rCttagang4GztXzIDcYFK300wOf
 P3QzQ0YTz94jJgJpowD5eOTg1iUXDUTS7JY7N8GOgivWtNWO/QXt0wT6BUp3l7ySjBoEaR1q7Qm0o
 o/hrUZ6HfhUO72v0t9324on7jY770IUJ8MWKvaNP9bfX1bYbze9XabV9l6UgJZStT2UjzkaxBhPjt
 TQuBL+lQ==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kASjx-0000Ao-Vh; Tue, 25 Aug 2020 06:47:30 +0000
Date: Tue, 25 Aug 2020 07:47:29 +0100
From: Christoph Hellwig <hch@infradead.org>
To: Tomer Samara <tomersamara98@gmail.com>
Subject: Re: [PATCH v4 0/2] staging: android: Remove BUG/BUG_ON from ion
Message-ID: <20200825064729.GA30014@infradead.org>
References: <cover.1598023523.git.tomersamara98@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1598023523.git.tomersamara98@gmail.com>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Riley Andrews <riandrews@android.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Suren Baghdasaryan <surenb@google.com>,
 Hridya Valsaraju <hridya@google.com>, Arve Hj?nnev?g <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Laura Abbott <labbott@redhat.com>,
 Martijn Coenen <maco@android.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 21, 2020 at 06:27:04PM +0300, Tomer Samara wrote:
> Remove BUG/BUG_ON from androind/ion

Please just remove ion.  It has been rejected and we have developed
proper kernel subsystens to replace it.  Don't waste your time on it.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
