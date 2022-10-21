Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BB260908E
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Oct 2022 02:42:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DB561607DE;
	Sun, 23 Oct 2022 00:42:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DB561607DE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WoBRf39x-neZ; Sun, 23 Oct 2022 00:42:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9BABB607B4;
	Sun, 23 Oct 2022 00:41:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9BABB607B4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D36731BF95D
 for <devel@linuxdriverproject.org>; Sun, 23 Oct 2022 00:41:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AEDB440155
 for <devel@linuxdriverproject.org>; Sun, 23 Oct 2022 00:41:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEDB440155
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sWEZ1BPtgMHz for <devel@linuxdriverproject.org>;
 Sun, 23 Oct 2022 00:41:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 22BA7400BF
Received: from web.prohosting24.de (web.prohosting24.de
 [IPv6:2a00:ccc1:102:9c::])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 22BA7400BF
 for <devel@linuxdriverproject.org>; Sun, 23 Oct 2022 00:41:55 +0000 (UTC)
Received: from [192.168.1.116]
 (dynamic-046-114-193-095.46.114.pool.telefonica.de [46.114.193.95])
 by web.prohosting24.de (Postfix) with ESMTPA id 34AD22003D3;
 Fri, 21 Oct 2022 22:05:27 +0000 (UTC)
Received-SPF: pass (web.prohosting24.de: connection is authenticated)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Attention
To: Recipients <admin@azovstal.com>
From: "Eng. Terry Glenn" <admin@azovstal.com>
Date: Fri, 21 Oct 2022 23:08:41 +0200
X-Antivirus: Avast (VPS 221021-4, 10/21/2022), Outbound message
X-Antivirus-Status: Clean
Message-Id: <20221023004156.AEDB440155@smtp2.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=azovstal.com; s=default; t=1666389928;
 bh=P0C7hTgz4QokWHQpG6YNZfiax5Q6dXRj28aobnZXPXc=; h=Subject:To:From;
 b=gLfq3og5Tl2yydFZxScG8md5N9eF7oblsSoE/EtbFnWNQZ2zJ4yUSHOaY5M5d5bt7
 aO8A9GqLW2E1FbUQeM6RQCvGDQ7YG6b7uUC4qYujSxmB9emLDUIwm/YlXT9O7DK55A
 gVaau/oty7FU9cIF1jLiVbYXUkPYmzBPkLEV7R9M=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=azovstal.com header.i=@azovstal.com header.a=rsa-sha256
 header.s=default header.b=gLfq3og5
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
