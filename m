Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4825A1B30CA
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Apr 2020 21:56:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5F15885778;
	Tue, 21 Apr 2020 19:56:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Header field occurs more than once: "To"
	occurs 3 times
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sq3QWE70sKuc; Tue, 21 Apr 2020 19:56:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4E48C8521D;
	Tue, 21 Apr 2020 19:56:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DD32C1BF3A1
 for <devel@linuxdriverproject.org>; Tue, 21 Apr 2020 19:56:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D89A6882E7
 for <devel@linuxdriverproject.org>; Tue, 21 Apr 2020 19:56:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Header field occurs more than once: "To"
 occurs 3 times
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 25TCUqcJOzWK for <devel@linuxdriverproject.org>;
 Tue, 21 Apr 2020 19:56:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8831488236
 for <devel@driverdev.osuosl.org>; Tue, 21 Apr 2020 19:56:23 +0000 (UTC)
Received: from localhost (unknown [137.135.114.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A91020747;
 Tue, 21 Apr 2020 19:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587498983;
 bh=92sqrSPkQErIEihvZCpDELC2haa1dFyWUE+gZfEtXRQ=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=O2Zi+FG3u9nlMDf57NjvQUINE8D3D8DoqXOXphjpTaDpP5bB3ki67yXqPKiCU4ZMM
 /UkWTmCwsI+6Dfp60w1I3WIB3gRw+8a+f2x8sI4mf+FjC/PzFlR0kVJfudJ7tGRebN
 6YfjZnGpc4bxuIp4+geH1owrviG2qjdWrIae6Uhs=
Date: Tue, 21 Apr 2020 19:56:22 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Malcolm Priestley <tvboxspy@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: vt6656: Fix pairwise key entry save.
In-Reply-To: <da2f7e7f-1658-1320-6eee-0f55770ca391@gmail.com>
References: <da2f7e7f-1658-1320-6eee-0f55770ca391@gmail.com>
Message-Id: <20200421195623.2A91020747@mail.kernel.org>
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
 stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi

[This is an automated email]

This commit has been processed because it contains a "Fixes:" tag
fixing commit: f9ef05ce13e4 ("staging: vt6656: Fix pairwise key for non station modes").

The bot has tested the following trees: v5.6.5, v5.5.18, v5.4.33, v4.19.116, v4.14.176, v4.9.219, v4.4.219.

v5.6.5: Build OK!
v5.5.18: Build OK!
v5.4.33: Build OK!
v4.19.116: Build OK!
v4.14.176: Build OK!
v4.9.219: Failed to apply! Possible dependencies:
    5e38e15e689b ("staging:vt6656:key.c Aligned code with open parenthesis")

v4.4.219: Failed to apply! Possible dependencies:
    5e38e15e689b ("staging:vt6656:key.c Aligned code with open parenthesis")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks
Sasha
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
