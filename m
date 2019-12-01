Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A521F10DFEB
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Dec 2019 01:15:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6D2BE87D92;
	Sun,  1 Dec 2019 00:15:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Header field occurs more than once: "To"
	occurs 3 times
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kuFT9blPyoGA; Sun,  1 Dec 2019 00:15:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 14A0787D5D;
	Sun,  1 Dec 2019 00:15:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8CE241BF5A3
 for <devel@linuxdriverproject.org>; Sun,  1 Dec 2019 00:15:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8560520486
 for <devel@linuxdriverproject.org>; Sun,  1 Dec 2019 00:15:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Header field occurs more than once: "To"
 occurs 3 times
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uv9YCR3ldhAP for <devel@linuxdriverproject.org>;
 Sun,  1 Dec 2019 00:15:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 0A9C52044B
 for <devel@driverdev.osuosl.org>; Sun,  1 Dec 2019 00:15:06 +0000 (UTC)
Received: from localhost (unknown [40.117.208.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 964E72075A;
 Sun,  1 Dec 2019 00:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575159305;
 bh=1lF5V996EOOZH6d6ldIpn5A37UV6aRgq5KOrQ3jFqZs=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Cc:Subject:In-Reply-To:References:
 From;
 b=kq+KlbSKYfkxVhFJZt3oYiJrvQzcPqUeIgYUSK2P5H/A0jlk8vu9hwBLV3mfWkh6r
 SPHGzuJfJY2KGCljc5kfcb4PYkt8OQKY4F3y/Jn7f8LUzze+2kXPF5fSvGuxhb9xfl
 NyHwZNtufVyqNiOP8fNI/eNvUIfCnVo9an8ePBBg=
Date: Sun, 01 Dec 2019 00:15:04 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 1/4] staging: gigaset: fix general protection fault on
 probe
In-Reply-To: <20191129101753.9721-2-johan@kernel.org>
References: <20191129101753.9721-2-johan@kernel.org>
Message-Id: <20191201001505.964E72075A@mail.kernel.org>
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
Cc: devel@driverdev.osuosl.org, , linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Tilman Schmidt <tilman@imap.cc>,
 Hansjoerg Lipp <hjlipp@web.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

[This is an automated email]

This commit has been processed because it contains a "Fixes:" tag,
fixing commit: 07dc1f9f2f80 ("[PATCH] isdn4linux: Siemens Gigaset drivers - M105 USB DECT adapter").

The bot has tested the following trees: v5.4.1, v5.3.14, v4.19.86, v4.14.156, v4.9.205, v4.4.205.

v5.4.1: Build OK!
v5.3.14: Build OK!
v4.19.86: Failed to apply! Possible dependencies:
    Unable to calculate

v4.14.156: Failed to apply! Possible dependencies:
    Unable to calculate

v4.9.205: Failed to apply! Possible dependencies:
    Unable to calculate

v4.4.205: Failed to apply! Possible dependencies:
    Unable to calculate


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks,
Sasha
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
