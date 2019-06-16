Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 012B047393
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Jun 2019 09:14:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D9FD186322;
	Sun, 16 Jun 2019 07:14:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dmgNF6l10voZ; Sun, 16 Jun 2019 07:14:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7DD208613C;
	Sun, 16 Jun 2019 07:14:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0C9B31BF2FA
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 07:14:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 07FF98613C
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2019 07:14:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hbqw9w+hgYy2 for <devel@linuxdriverproject.org>;
 Sun, 16 Jun 2019 07:14:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5307786030
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2019 07:14:42 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 95789216C8;
 Sun, 16 Jun 2019 07:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560669282;
 bh=TsEIfqrLetJOZ1J+ofJiABOKfbOjLk50JJQme18BgQg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nM3sukd611tDM48gnQkh0krGzYijVO4UchfAxNp5bo89tXxJ7mkqsgZ688zODdf7J
 hBrV7qnyTvk86W4otao3xudQX+G6dQc7mTSbjWL8c3kzfFAxb9MNZT0On+7vI05b4h
 +JMSHwCs3TYT2HwFk5MzFR/hPqPB8LWPSvaRZhSQ=
Date: Sun, 16 Jun 2019 09:14:39 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Gao Xiang <gaoxiang25@huawei.com>
Subject: Re: [PATCH v3 1/2] staging: erofs: add requirements field in
 superblock
Message-ID: <20190616071439.GA11880@kroah.com>
References: <20190611024220.86121-1-gaoxiang25@huawei.com>
 <20190613083541.67091-1-gaoxiang25@huawei.com>
 <a4d587eb-c4f0-b9e5-7ece-1ac38c2735f3@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a4d587eb-c4f0-b9e5-7ece-1ac38c2735f3@huawei.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: devel@driverdev.osuosl.org, Chao Yu <yuchao0@huawei.com>,
 Miao Xie <miaoxie@huawei.com>, Chao Yu <chao@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, stable@vger.kernel.org,
 weidu.du@huawei.com, Fang Wei <fangwei1@huawei.com>,
 linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jun 16, 2019 at 03:00:38PM +0800, Gao Xiang wrote:
> Hi Greg,
> 
> Sorry for annoying... Could you help merge these two fixes? Thanks in advance...

It was only 3 days, please give me at the very least, a week or so for
staging patches.

> decompression inplace optimization needs these two patches and I will integrate
> erofs decompression inplace optimization later for linux-next 5.3, and try to start 
> making effort on moving to fs/ directory on kernel 5.4...

You can always send follow-on patches, I apply them in the correct
order.  I will get to these next week, thanks.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
