Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 629B46D90D4
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Apr 2023 09:56:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C41FC41D66;
	Thu,  6 Apr 2023 07:56:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C41FC41D66
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u0wc7nL_OZv9; Thu,  6 Apr 2023 07:56:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61D5F41D60;
	Thu,  6 Apr 2023 07:56:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 61D5F41D60
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7906C1BF349
 for <devel@linuxdriverproject.org>; Thu,  6 Apr 2023 07:56:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 52D06822AB
 for <devel@linuxdriverproject.org>; Thu,  6 Apr 2023 07:56:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52D06822AB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b2nxQocavreZ for <devel@linuxdriverproject.org>;
 Thu,  6 Apr 2023 07:56:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A5F0A82287
Received: from mail.gramblingfirm.com (mail.gramblingfirm.com [89.40.118.123])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A5F0A82287
 for <devel@driverdev.osuosl.org>; Thu,  6 Apr 2023 07:56:27 +0000 (UTC)
Received: by mail.gramblingfirm.com (Postfix, from userid 1001)
 id 269D68272E; Thu,  6 Apr 2023 08:56:14 +0100 (BST)
Received: by mail.gramblingfirm.com for <devel@driverdev.osuosl.org>;
 Thu,  6 Apr 2023 07:56:06 GMT
Message-ID: <20230406074500-0.1.2s.4xy9.0.37cu2f58m9@gramblingfirm.com>
Date: Thu,  6 Apr 2023 07:56:06 GMT
From: "Daniel Musil" <daniel.musil@gramblingfirm.com>
To: <devel@driverdev.osuosl.org>
Subject: Robotisation of production
X-Mailer: mail.gramblingfirm.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=gramblingfirm.com; s=mail; t=1680767785;
 bh=gqzZsu7MXwZPzlbvSQiKceUrEEFPNw9Lezccrk6Bymo=;
 h=Date:From:To:Subject:From;
 b=BIlW+/uJm4u8AvxwtLm4G6XmOd4Qc9TL147et2A7uUMRxSUwuyGizgFevg4eJsFfC
 uCZ41O6ca6IkHv2bBDBRkMQXV81Y8R8CcrI85iCmnOVquZ3z50heG0SM+ECFG5ne5B
 aPcQ4cpqhqi9V0n3p7cazvzOBZa3wfuTvYAp8M8dZShWOGziPyEt77ckOB3x2wIl+N
 FV5FJ4rwUDxy2wg6aEw5GkEHHvsXoeCmHpdcDmk3yaRVCCV82zLQt0RIA/b7cg7OB9
 5P4jqqOZbwWbraDF+piUXBKd6uxuCMrGdlmDYueU6tTtfypOuERna5Ur6yegmchgn+
 94wSmMpNAVY2Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gramblingfirm.com
 header.i=@gramblingfirm.com header.a=rsa-sha256 header.s=mail
 header.b=BIlW+/uJ
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
