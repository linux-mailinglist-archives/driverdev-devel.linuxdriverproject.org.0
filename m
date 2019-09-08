Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 841DAACFCC
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Sep 2019 18:41:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4241820455;
	Sun,  8 Sep 2019 16:41:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hvZ5-E13xiGZ; Sun,  8 Sep 2019 16:41:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 65DD52043B;
	Sun,  8 Sep 2019 16:41:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CF6AF1BF2BD
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 16:41:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CC5C785606
 for <devel@linuxdriverproject.org>; Sun,  8 Sep 2019 16:41:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d0nQ9iUnQuO3 for <devel@linuxdriverproject.org>;
 Sun,  8 Sep 2019 16:41:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4F5FB8558D
 for <devel@driverdev.osuosl.org>; Sun,  8 Sep 2019 16:41:43 +0000 (UTC)
Received: from localhost (unknown [62.28.240.114])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9DED3216C8;
 Sun,  8 Sep 2019 16:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567960903;
 bh=1Ubr+gGsLmIsNu1qigSSf3C36qMCG+gThIHB1/qjXbM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=G0dR+fwzv+HiRlPvPZgpyPA/9b5tH876J4gao/qK5/G9jfAKCFDV9xRDvEZZWPZ43
 Pt/05+DarYy6Vb5ZzIr1VB/m0UqxzwATWgVnSDRxt+HZIe9nMhC2FKFNE8Vw1RY2fg
 aVkrufZcQvjLFwmmNjts6uCj1v7tKWS3HVdPpiIg=
Date: Sun, 8 Sep 2019 17:41:40 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Valentin Vidic <vvidic@valentin-vidic.from.hr>
Subject: Re: [PATCH v2 2/3] staging: exfat: drop unused field access_time_ms
Message-ID: <20190908164140.GB8362@kroah.com>
References: <20190908161015.26000-1-vvidic@valentin-vidic.from.hr>
 <20190908161015.26000-2-vvidic@valentin-vidic.from.hr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190908161015.26000-2-vvidic@valentin-vidic.from.hr>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, Valdis Kletnieks <valdis.kletnieks@vt.edu>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 08, 2019 at 04:10:14PM +0000, Valentin Vidic wrote:
> Not used in the exfat-fuse implementation and spec defines
> this position should hold the value for CreateUtcOffset.

Then why not just put CreateUtcOffset in here instaed of deleting it?

I would much rather the fields match the spec in the structures for lots
of good reasons, instead of having loads of "reserved[]" variables.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
