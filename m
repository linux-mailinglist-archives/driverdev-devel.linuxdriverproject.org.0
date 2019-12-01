Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 224A010DFEC
	for <lists+driverdev-devel@lfdr.de>; Sun,  1 Dec 2019 01:15:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9518487D89;
	Sun,  1 Dec 2019 00:15:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Header field occurs more than once: "To"
	occurs 3 times
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BdHPjoew8q+z; Sun,  1 Dec 2019 00:15:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0742187D7F;
	Sun,  1 Dec 2019 00:15:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 474F31BF5A3
 for <devel@linuxdriverproject.org>; Sun,  1 Dec 2019 00:15:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 42F8885BDF
 for <devel@linuxdriverproject.org>; Sun,  1 Dec 2019 00:15:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
X-Amavis-Alert: BAD HEADER SECTION, Header field occurs more than once: "To"
 occurs 3 times
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CiRRbj1H0_Rh for <devel@linuxdriverproject.org>;
 Sun,  1 Dec 2019 00:15:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1BCF18665F
 for <devel@driverdev.osuosl.org>; Sun,  1 Dec 2019 00:15:07 +0000 (UTC)
Received: from localhost (unknown [40.117.208.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B548520873;
 Sun,  1 Dec 2019 00:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575159306;
 bh=vZrebsEwI/V9tg93wGWKSbYtRnu+FqZcCotq42UvDpY=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Subject:In-Reply-To:References:From;
 b=G8SiIUefvDX0DNofvfPLdnSbk/to0igJF47CKPEvMGyO5mv2Y+CzSth8aJlWVmS3T
 /xtmLQfbztN34WTfN7J8ueDfQDIcQ2+8fHwLhCmTTKdL8BsKPLbAVVUvvXT+zN/MqK
 bOwKaCfU/npXFs93i8hsbGizsSn1x6lzDTtNG43E=
Date: Sun, 01 Dec 2019 00:15:06 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Johan Hovold <johan@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 2/4] staging: gigaset: fix illegal free on probe errors
In-Reply-To: <20191129101753.9721-3-johan@kernel.org>
References: <20191129101753.9721-3-johan@kernel.org>
Message-Id: <20191201001506.B548520873@mail.kernel.org>
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
Cc: devel@driverdev.osuosl.org, , Tilman Schmidt <tilman@imap.cc>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

[This is an automated email]

This commit has been processed because it contains a "Fixes:" tag,
fixing commit: 2032e2c2309d ("usb_gigaset: code cleanup").

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
