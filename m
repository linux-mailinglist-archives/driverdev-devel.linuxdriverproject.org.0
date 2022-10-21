Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 03249608F79
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Oct 2022 21:57:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78D6F82419;
	Sat, 22 Oct 2022 19:57:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78D6F82419
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x2hvZx9g6zWk; Sat, 22 Oct 2022 19:57:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3681E81A92;
	Sat, 22 Oct 2022 19:57:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3681E81A92
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E0DFD1BF275
 for <devel@linuxdriverproject.org>; Sat, 22 Oct 2022 19:57:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BA42441508
 for <devel@linuxdriverproject.org>; Sat, 22 Oct 2022 19:57:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA42441508
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z5J-YuevMApx for <devel@linuxdriverproject.org>;
 Sat, 22 Oct 2022 19:57:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4DB6B41507
Received: from web.prohosting24.de (web.prohosting24.de [45.142.115.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4DB6B41507
 for <devel@driverdev.osuosl.org>; Sat, 22 Oct 2022 19:57:07 +0000 (UTC)
Received: from [192.168.1.116]
 (dynamic-046-114-193-095.46.114.pool.telefonica.de [46.114.193.95])
 by web.prohosting24.de (Postfix) with ESMTPA id 55E5C200419;
 Fri, 21 Oct 2022 22:05:35 +0000 (UTC)
Received-SPF: pass (web.prohosting24.de: connection is authenticated)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Attention
To: Recipients <admin@azovstal.com>
From: "Eng. Terry Glenn" <admin@azovstal.com>
Date: Fri, 21 Oct 2022 23:08:49 +0200
X-Antivirus: Avast (VPS 221021-4, 10/21/2022), Outbound message
X-Antivirus-Status: Clean
Message-Id: <20221022195708.BA42441508@smtp4.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=azovstal.com; s=default; t=1666389937;
 bh=P0C7hTgz4QokWHQpG6YNZfiax5Q6dXRj28aobnZXPXc=; h=Subject:To:From;
 b=O7tb7g00Zbk5wJopogf6hyTy72eGKqikwh7DTLyQyB4heDH9X0FcgDrinBr/gTNtd
 incAXd/NCSUidMOjK1anLOF9sfeZKTswiVpykhmnu3gkaES1QouwbrRx9bOysnVuOE
 py1fu2xf2AmedM9nXu01qFo7fbyGdf4SenN6GVmQ=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=azovstal.com header.i=@azovstal.com header.a=rsa-sha256
 header.s=default header.b=O7tb7g00
X-Mailman-Original-Authentication-Results: web.prohosting24.de;
 spf=pass (sender IP is 46.114.193.95) smtp.mailfrom=admin@azovstal.com
 smtp.helo=[192.168.1.116]
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
Reply-To: terryglenn087@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Good Friend,

I am Engineer Terry Glenn, I work by Azovstal metallurgical plant in Mariupol Ukraine, I am getting in touch with you regarding an extremely important and urgent matter. If you would oblige me the opportunity, I shall provide you with details upon your response.

Please you can contact me through my personal email: terry-glenn09@outlook.com

Faithfully,
Eng. Terry Glenn

-- 
This email has been checked for viruses by Avast antivirus software.
www.avast.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
