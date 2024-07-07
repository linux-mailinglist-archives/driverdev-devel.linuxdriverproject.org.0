Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 316BA9297B4
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Jul 2024 13:49:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E68E580DC8;
	Sun,  7 Jul 2024 11:49:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DC0hGt6ftEqG; Sun,  7 Jul 2024 11:49:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0CCBD80DC9
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0CCBD80DC9;
	Sun,  7 Jul 2024 11:49:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A9F01BF831
 for <devel@linuxdriverproject.org>; Sun,  7 Jul 2024 11:49:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 548AE40670
 for <devel@linuxdriverproject.org>; Sun,  7 Jul 2024 11:49:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XwIzAmZcp0Av for <devel@linuxdriverproject.org>;
 Sun,  7 Jul 2024 11:49:46 +0000 (UTC)
X-Greylist: delayed 902 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 07 Jul 2024 11:49:45 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 416A84066F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 416A84066F
Received-SPF: Permerror (mailfrom) identity=mailfrom; client-ip=80.253.163.146;
 helo=mail.croz.net; envelope-from=muhitdinov@unicon.uz; receiver=<UNKNOWN> 
Received: from mail.croz.net (outbound-mail-1.croz.net [80.253.163.146])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 416A84066F
 for <devel@driverdev.osuosl.org>; Sun,  7 Jul 2024 11:49:45 +0000 (UTC)
X-AuditID: 0a0009c8-ca74c24000002100-eb-668a7d4cba9d
Received: from [103.195.236.30] (Unknown_Domain [103.195.236.30])
 (using TLS with cipher DHE-RSA-AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 by mail.croz.net (mail.croz.net) with SMTP id DE.92.08448.C4D7A866;
 Sun,  7 Jul 2024 13:34:37 +0200 (CEST)
Message-ID: <DE.92.08448.C4D7A866@mail.croz.net>
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Re:
To: devel@driverdev.osuosl.org
From: "PRIVATE" <muhitdinov@unicon.uz>
Date: Sun, 07 Jul 2024 18:34:26 +0700
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprFIsWRmVeSWpSXmKPExsWSfviNnK5vbVeawfy9yhZ7zvxid2D0uLfv
 MEsAYxSXTUpqTmZZapG+XQJXxrs1H9gLNCrOt35ibWCU72Lk5JAQMJHovdXN0sXIxSEkMJlJ
 4s6PZkaQBLOAnsSNqVPYQGxeAQOJ16cmskPYghInZz5hgajRlli28DVzFyMHkK0m8bWrBCQs
 LMAj8fnYRLASEQE5iaufHrKC2GxAJQda9jCB2CwCqhI/TzeCrRICijcvb2ebwMgzC8nmWUi2
 zUKybRbCtgWMLKsYBYpz0/VScqv0kovyq/TyUks2MQIDhYuB88QOxikP3Q4xMnEwHmKU5GBS
 EuXdb9qRJsSXlJ9SmZFYnBFfVJqTWnyIUYKDWUmE9/Tj9jQh3pTEyqrUonyYlDQHi5I4r3Ns
 RpqQQHpiSWp2ampBahFMVoaDQ0mC16amK01IsCg1PbUiLTOnBCHNxMEJMpwHaDhHHlANb3FB
 Ym5xZjpCnv8UozHH5oV79zJzfN3WdYBZiCUvPy9VSpx3cjVQvQBIfUZpHtxIWGy/YhTnYFQS
 5uUG2cwDTAtwQ6UaGKtfLD/C0BPaMjWv/cJbrfsVzJ8PHHqnsMPowfzJM+3+6RiWPpf1rEk1
 cZ12z6G3e9IRTYnHn7d8v7vPYsaV7FmTzmR6da+b3H2sh2/hoRZd39KbXhFl+oJVsvPMFvEu
 rxJL/qtRY9S7f0JdgfKDE7ryTKvXhAse6bp4QjJ0WbPOar6wtzfUkpVYijMSDbWYi4oTAdlb
 Tg+tAgAA
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=unicon.uz
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
Reply-To: privateidentity034@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Can you do a private business with me?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
