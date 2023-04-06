Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AEF6D9101
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Apr 2023 10:01:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2C75C41D92;
	Thu,  6 Apr 2023 08:01:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C75C41D92
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u1rovkg6Q0OV; Thu,  6 Apr 2023 08:01:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DB91641D8F;
	Thu,  6 Apr 2023 08:01:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB91641D8F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B0AF51C2C98
 for <devel@linuxdriverproject.org>; Thu,  6 Apr 2023 08:01:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 975F36145A
 for <devel@linuxdriverproject.org>; Thu,  6 Apr 2023 08:01:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 975F36145A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kENCifUyhbLJ for <devel@linuxdriverproject.org>;
 Thu,  6 Apr 2023 08:01:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E56EC60FD8
Received: from mail.gramblingfirm.com (mail.gramblingfirm.com [89.40.118.123])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E56EC60FD8
 for <devel@linuxdriverproject.org>; Thu,  6 Apr 2023 08:01:38 +0000 (UTC)
Received: by mail.gramblingfirm.com (Postfix, from userid 1001)
 id 0156682875; Thu,  6 Apr 2023 09:01:31 +0100 (BST)
Received: by mail.gramblingfirm.com for <devel@linuxdriverproject.org>;
 Thu,  6 Apr 2023 08:01:29 GMT
Message-ID: <20230406074500-0.1.2s.4y4j.0.hd8vtpnmn5@gramblingfirm.com>
Date: Thu,  6 Apr 2023 08:01:29 GMT
From: "Daniel Musil" <daniel.musil@gramblingfirm.com>
To: <devel@linuxdriverproject.org>
Subject: Robotisation of production
X-Mailer: mail.gramblingfirm.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=gramblingfirm.com; s=mail; t=1680768096;
 bh=gqzZsu7MXwZPzlbvSQiKceUrEEFPNw9Lezccrk6Bymo=;
 h=Date:From:To:Subject:From;
 b=tF9Zu5zOMvG8pIDL2cQKaAPUxEtoFa+pUaCRydysDDeQd0KCyJs1jDNiUjmoA+dr5
 MEmNnOnlWM6KscZHANgy7YX1wNPjF9i0oalBhGLBodCOF5CytMtskfyITUhmRsMhtG
 BueTpU/Vii4mFZgdm5RlYi0MErXMPNcGBba1squbmZdTgly1/UR2HGZ1E6CjQWmEr5
 S20iTEXfx2PEU0nPfZ8RfS6ale6ex3IELO5meSZqq5E/JwWVq0Yb3I27zPU7jtqNuE
 w2Hmozfa2E8f+Q/kcMcLeYU9NQ8ogble+wWfUfBXuWpkOX+StqNHyzSrHbqnSVpmil
 GNmXTj3GXa7Sg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gramblingfirm.com
 header.i=@gramblingfirm.com header.a=rsa-sha256 header.s=mail
 header.b=tF9Zu5zO
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

I am trying to reach the person who manages your machinery and/or is responsible for the improvement and automation of production. 

We deal with processes related to broadly defined robotisation and automation of production. We support you in the design and implementation of automation and control systems, the construction of control cabinets, their servicing and diagnostics of already existing devices. 

Thanks to a large team of specialists in various fields, we are able to implement industrial robots, construct electrical installation facilities, provide solutions for monitoring of media consumption, and integrate machines and devices into complete assemblies.

What sets us apart is our versatility, many years of experience and a qualified team who have developed their knowledge over the years by carrying out projects for various industries and processes.

I think it is worth discussing what this looks like in your company and what we could offer. What do you think of my proposal?

Best regards
Daniel Musil
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
