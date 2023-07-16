Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01CDA75589F
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jul 2023 00:55:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E327C400D0;
	Sun, 16 Jul 2023 22:55:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E327C400D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sCNxxCMbE_7Y; Sun, 16 Jul 2023 22:55:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C0D31408A8;
	Sun, 16 Jul 2023 22:55:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C0D31408A8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6394A1BF2FD
 for <devel@linuxdriverproject.org>; Sun, 16 Jul 2023 22:55:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4A47F80C05
 for <devel@linuxdriverproject.org>; Sun, 16 Jul 2023 22:55:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4A47F80C05
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ll6qd36YdCmW for <devel@linuxdriverproject.org>;
 Sun, 16 Jul 2023 22:55:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4E2880C01
Received: from kernelhost.info (kernelhost.info [91.218.67.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A4E2880C01
 for <devel@linuxdriverproject.org>; Sun, 16 Jul 2023 22:55:34 +0000 (UTC)
Received: from [192.168.1.116]
 (dynamic-046-114-039-041.46.114.pool.telefonica.de [46.114.39.41])
 by kernelhost.info (Postfix) with ESMTPA id 9FD8F15DE19;
 Sun, 16 Jul 2023 21:53:00 +0200 (CEST)
Received-SPF: pass (kernelhost.info: connection is authenticated)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Hello Good Friend
To: Recipients <glennterry@azovstal.org>
From: "Eng. Terry Glenn" <glennterry@azovstal.org>
Date: Sun, 16 Jul 2023 21:52:53 +0200
X-Antivirus: Avast (VPS 230716-8, 7/16/2023), Outbound message
X-Antivirus-Status: Clean
X-PPP-Message-ID: <168953718546.20879.14589312994123827805@kernelhost.info>
X-PPP-Vhost: azovstal.org
Message-Id: <20230716225535.4A47F80C05@smtp1.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=azovstal.org; s=default; t=1689537185;
 bh=wA2I3hYIO9lGXYkWDvKUWzT1T9/vFaQq7c8LdyrqQIU=; h=Subject:To:From;
 b=Y1e6BixA2ThG4/4ruH6UbH1C31jJCNe8N7I+mkMuLPe+28Qrnd71/cwIEiSajaGlz
 RK2WTI5xHrtvoYedBiuGZQ6/8TpdD0uAl+AnUeCfQ2UAJfIxOX/ULnaDyHzSghc1J8
 dqCxURroOSuh/yuV/ixQc3mV9I2yTg50OZfa0tRw=
X-Mailman-Original-Authentication-Results: kernelhost.info;
 spf=pass (sender IP is 46.114.39.41) smtp.mailfrom=glennterry@azovstal.org
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
Reply-To: azovstal@mail2engineer.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Friend,

I am Engineer Terry Glenn, I work by Azovstal metallurgical plant in
Mariupol Ukraine, I am getting in touch with you regarding an
extremely important and urgent matter. If you would oblige me the
opportunity, I shall provide you with details upon your response.

Please you can contact me through my personal email: terryglenn050@gmail.com

Faithfully,
Eng. Terry Glenn

-- 
This email has been checked for viruses by Avast antivirus software.
www.avast.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
