Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EA669ED0A
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Feb 2023 03:49:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8BB881ECA;
	Wed, 22 Feb 2023 02:49:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8BB881ECA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1KUhYYWz9KDf; Wed, 22 Feb 2023 02:49:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86F7281EC9;
	Wed, 22 Feb 2023 02:49:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86F7281EC9
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 06B861BF312
 for <devel@linuxdriverproject.org>; Wed, 22 Feb 2023 02:49:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CE91060ADD
 for <devel@linuxdriverproject.org>; Wed, 22 Feb 2023 02:49:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE91060ADD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qsmv9ofFXKxu for <devel@linuxdriverproject.org>;
 Wed, 22 Feb 2023 02:49:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95A1560A93
Received: from mail.peterfykh.hu (mail.peterfykh.hu [84.206.67.96])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 95A1560A93
 for <devel@driverdev.osuosl.org>; Wed, 22 Feb 2023 02:48:59 +0000 (UTC)
Received: from mail.peterfykh.hu (localhost [127.0.0.1])
 by mail.peterfykh.hu (Postfix) with ESMTP id 36280113E;
 Wed, 22 Feb 2023 02:50:10 +0100 (CET)
MIME-Version: 1.0
Date: Wed, 22 Feb 2023 02:50:10 +0100
From: Charles <kiss.zsuzsa@peterfykh.hu>
To: undisclosed-recipients:;
Subject: Code: DON207110
Mail-Reply-To: Charlesjackson@bahnhof.se
Message-ID: <f0e384bce420799b67f601fc104de165@peterfykh.hu>
X-Sender: kiss.zsuzsa@peterfykh.hu
User-Agent: Roundcube Webmail/1.2.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=peterfykh.hu; s=mail; t=1677030614;
 bh=uVNklWDBlEGFG185BOwjB2ckIp+DTvPwPE+SeT4jxng=;
 h=MIME-Version:Content-Type:Content-Transfer-Encoding:Date:From:To:Subject:Reply-To:Message-ID;
 b=hcb/3L7Bb4shsxFg9mKMPxA7NP3FN0GBP9EIkcrrXqFmv9MM4Nw2vNCZO9p5WSCre2Y7C6ciA0zVimdrv+fFQCkRZaabL1l4bg6oCmK3A4YR+L/F8/7q5XDfj/9KLNk7rfyAt66uy2HU1j6x5c+qIw6HbpiV97SCL/s+U/8Lw2U=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=peterfykh.hu header.i=@peterfykh.hu
 header.a=rsa-sha256 header.s=mail header.b=hcb/3L7B
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
Reply-To: Charlesjackson@bahnhof.se
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Winner,

I am Mr. Charles W. Jackson Jr., the mega winner of $344.6 Million in 
the Mega Millions Jackpot, I am donating to 5 random individuals if you 
get this email then your email was selected after a spin ball. I have 
spread most of my wealth over a number of charities and organizations. I 
have voluntarily decided to donate the sum of $3 Million USD to you as 
one of the selected 5, to verify my winnings via YouTube page below.


WATCH ME HERE: https://www.youtube.com/watch?v=0MUR8QEIMQI


This $3 Million USD donation was made to enable you to strengthen your 
personal issues and to reach out generously to the least privileged, 
orphaned and charitable organizations in your community.

THIS IS YOUR DONATION CODE: DON207110

Reply with the DONATION CODE to this email as soon as possible so we can 
complete the procedure.


Email: jacksonjrmrcharles1945@gmail.com


Hope to make you and your family happy in the new year.


Regards,
Mr. Charles W. Jackson Jr
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
