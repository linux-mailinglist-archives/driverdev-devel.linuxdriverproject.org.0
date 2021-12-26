Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8886D47F600
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Dec 2021 10:29:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D8D1C8246F;
	Sun, 26 Dec 2021 09:29:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ivy-_xi3XUvw; Sun, 26 Dec 2021 09:29:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E9D881C56;
	Sun, 26 Dec 2021 09:29:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E745A1BF5E6
 for <devel@linuxdriverproject.org>; Sun, 26 Dec 2021 09:29:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D6BAA408A0
 for <devel@linuxdriverproject.org>; Sun, 26 Dec 2021 09:29:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=jllresort.com;
 domainkeys=pass (2048-bit key) header.from=ele.mon@jllresort.com
 header.d=jllresort.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0n6RpRGlXs7A for <devel@linuxdriverproject.org>;
 Sun, 26 Dec 2021 09:29:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from slot0.jllresort.com (slot0.jllresort.com [62.197.136.5])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 290EA4054A
 for <devel@driverdev.osuosl.org>; Sun, 26 Dec 2021 09:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim; d=jllresort.com;
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=ele.mon@jllresort.com; bh=Ygz83nMmzdt9tYkr43ke2InxIZE=;
 b=goBGrVjw5pJHiUQbhJPxAGfpPMai+IZMNOEP0XasX2bsfPawyK7ZGENa2JybVWV7UWn4KvF+Gz0K
 dE13T5xP9jRi0bkBO2bqVlaEurWSA53nawvxiptod+2elN/G7CBozOwbUuHmKpttzMfn/840Ag+/
 QZFZO4WD9ZFJa/4qGCfkxa6gORBOx991SkheERRuLnNc3VTZXATYHOnF1efwEEqd0CYK6nHg8taF
 XkYjfmr5AzMCGrueWQwdN9us2b8WdgXiQbbnvgOWLV2KEGF0MVziHTUoVY3/rz1fvIdJrvFNINMs
 H8aRNJDZNOUwuDy/Sb5uYsI5Zo7SlqY2lVgbaw==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=jllresort.com;
 b=w6xVwjnaTSwocwRMpxOyj4MvYX2KwoqV0LeUgIUPjxQ9ycAMgM0qXKInWfIR+DPnMwSfwm5csRRr
 K+oDMpV+Z2HWoYcLDGXjAVKl452Is6c/IF+6YenHUl89GDsrqFT1LRq0mma4FZy3mBN92KAKXCtB
 P4kX9zgoE6VQNlkQl5hobTCpfUsvhevM8zU5t9oQUVgKUlUWot3ptNHjuB9g9T4acSdxHt53W6r6
 zEYkKsyJlv4nox3GCw3sECGctVUCWa8RiNmUGsZiX19w1633vGecPp4LyPL7AWq8bg37m1dYb+i1
 MFOsJ+TySNOXwCkvbgC4bDFebP2JfrpBTCeu2Q==;
From: ele.mon@jllresort.com
To: devel@driverdev.osuosl.org
Subject: Happy Weekend:
Date: 26 Dec 2021 10:29:25 +0100
Message-ID: <20211226102855.0D9B426ECC9643C4@jllresort.com>
MIME-Version: 1.0
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
Reply-To: mustafa.ayvaz@ayvazburosu.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Greetings to you devel,

I was wondering if you got my previous email? I have been trying 
to reach you by email devel@driverdev.osuosl.org, kindly get back 
to me swiftly, it is very important and urgent.

Thanks
Mustafa Ayvaz
Email: mustafa.ayvaz@ayvazburosu.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
