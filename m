Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B399C1FB3FF
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jun 2020 16:17:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8BE6C89476;
	Tue, 16 Jun 2020 14:17:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GPK1yOY+eG8E; Tue, 16 Jun 2020 14:17:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D37258928B;
	Tue, 16 Jun 2020 14:17:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 763C91BF870
 for <devel@linuxdriverproject.org>; Tue, 16 Jun 2020 14:17:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 663EA253E2
 for <devel@linuxdriverproject.org>; Tue, 16 Jun 2020 14:17:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uitmwypzjGeT for <devel@linuxdriverproject.org>;
 Tue, 16 Jun 2020 14:17:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 9B1F420496
 for <devel@driverdev.osuosl.org>; Tue, 16 Jun 2020 14:17:38 +0000 (UTC)
Received: from embeddedor (unknown [189.207.59.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E1B7220707;
 Tue, 16 Jun 2020 14:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592317058;
 bh=+O0CnnRUJdu+JCJnU5gJSNhUSjE9EWQ0ZLIhtsKRDzU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BQPe3lFHPo1RlAvbHTkhWgBPlsHijmgvFeif+FE3JqnHt4E5t2mEXZK6HZr4q/kHb
 V4mfO16Sn3eU8TNUHl1wU+i3cY8uZRFldCOoRz5CiLq7jjry2IA+WCHUu24ASxPOew
 Un28yHkCOjtxzgAmrfvBWy1gMtBi+mPUeIIB30hQ=
Date: Tue, 16 Jun 2020 09:22:57 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [PATCH][next] staging: rts5208: Use array_size() helper in
 vmalloc()
Message-ID: <20200616142257.GL10051@embeddedor>
References: <20200615230811.GA18818@embeddedor> <20200616101312.GM4151@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616101312.GM4151@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 16, 2020 at 01:13:12PM +0300, Dan Carpenter wrote:
> On Mon, Jun 15, 2020 at 06:08:11PM -0500, Gustavo A. R. Silva wrote:
> > and memset()
> 
> Please don't start the commit message in the middle of a sentence.  It's
> 

That was, certainly, unintentional. Thanks for letting me know.

--
Gustavo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
