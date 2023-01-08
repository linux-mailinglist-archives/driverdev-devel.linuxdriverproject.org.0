Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D017661938
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Jan 2023 21:21:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B0EC1408DA;
	Sun,  8 Jan 2023 20:21:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0EC1408DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9ySnJmF8Qm59; Sun,  8 Jan 2023 20:21:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 672EE408C8;
	Sun,  8 Jan 2023 20:21:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 672EE408C8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 925691BF4E2
 for <devel@linuxdriverproject.org>; Sun,  8 Jan 2023 20:21:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6DE4340143
 for <devel@linuxdriverproject.org>; Sun,  8 Jan 2023 20:21:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6DE4340143
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WT2sLJCKE1F1 for <devel@linuxdriverproject.org>;
 Sun,  8 Jan 2023 20:21:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C057D400C8
Received: from mail.kv.npu.gov.ua (h15.195-230-133.ukrpack.net
 [195.230.133.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C057D400C8
 for <devel@linuxdriverproject.org>; Sun,  8 Jan 2023 20:21:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.kv.npu.gov.ua (Postfix) with ESMTP id 7C24F6469C;
 Sun,  8 Jan 2023 22:21:38 +0200 (EET)
Received: from mail.kv.npu.gov.ua ([127.0.0.1])
 by localhost (mail.kv.npu.gov.ua [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id SgqS08Zt0_cS; Sun,  8 Jan 2023 22:21:38 +0200 (EET)
Received: from localhost (localhost [127.0.0.1])
 by mail.kv.npu.gov.ua (Postfix) with ESMTP id 2CD4C646A5;
 Sun,  8 Jan 2023 22:21:38 +0200 (EET)
X-Virus-Scanned: amavisd-new at kv.npu.gov.ua
Received: from mail.kv.npu.gov.ua ([127.0.0.1])
 by localhost (mail.kv.npu.gov.ua [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id HUkZNXDG-8XE; Sun,  8 Jan 2023 22:21:38 +0200 (EET)
Received: from THEATRE89KLM.home (216-131-111-21.fra.as62651.net
 [216.131.111.21])
 by mail.kv.npu.gov.ua (Postfix) with ESMTPSA id 339486468B;
 Sun,  8 Jan 2023 22:21:35 +0200 (EET)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Re:
To: Recipients <barch01@kv.npu.gov.ua>
From: "MacKenzie Scott" <barch01@kv.npu.gov.ua>
Date: Mon, 09 Jan 2023 04:21:31 +0800
Message-Id: <20230108202135.339486468B@mail.kv.npu.gov.ua>
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
Reply-To: mackenziescott@kitchensetpalembang.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello dearest one, 
                          
I'm MacKenzie Scott Ex-wife of Amazon CEO and founder, I'm donating $ 4 billion Dollars to charities, individuals, colleges across the Globe from Scott's foundation, to provide immediate support to people suffering economically from COVID-19 pandemic and you're one of the lucky winners, i have a donation grant worth $100,800,000.00 Dollars for you, you can contact me for more information if you're interested.

Regards,
MacKenzie Scott.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
