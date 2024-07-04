Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 940829270D6
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jul 2024 09:46:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 64C7A409B0;
	Thu,  4 Jul 2024 07:46:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2DNeYXkDgnVZ; Thu,  4 Jul 2024 07:46:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5FA15409C5
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5FA15409C5;
	Thu,  4 Jul 2024 07:46:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 45F4A1BF983
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2024 07:46:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 32EE0409B0
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2024 07:46:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0NHiOUXtAvzx for <devel@linuxdriverproject.org>;
 Thu,  4 Jul 2024 07:46:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=91.134.88.143;
 helo=mail.provomint.com; envelope-from=phil.westbrook@provomint.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CF4B64073B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF4B64073B
Received: from mail.provomint.com (mail.provomint.com [91.134.88.143])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CF4B64073B
 for <devel@linuxdriverproject.org>; Thu,  4 Jul 2024 07:46:28 +0000 (UTC)
Received: by mail.provomint.com (Postfix, from userid 1002)
 id 46E4D21554; Thu,  4 Jul 2024 09:46:21 +0200 (CEST)
Received: by mail.provomint.com for <devel@linuxdriverproject.org>;
 Thu,  4 Jul 2024 07:46:18 GMT
Message-ID: <20240704084500-0.1.40.3hkt.0.9pvwcaj8l7@provomint.com>
Date: Thu,  4 Jul 2024 07:46:18 GMT
From: "Phil Westbrook" <phil.westbrook@provomint.com>
To: <devel@linuxdriverproject.org>
Subject: Mobile Phone Wholesale
X-Mailer: mail.provomint.com
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=provomint.com; s=mail; t=1720079185;
 bh=XboPJ9RovlrhSSBmzlgl4Pp4USKge3mlBjemRqwuODM=;
 h=Date:From:To:Subject:From;
 b=fwPGxyw46Eh00+7IQy3ctmuyEtjQm7yH8ZtSzAgYyhqv3pU5Tmq5RVmGt8J2TpjtI
 Kypi6A4K+o56Z9WDSrwgpQF6iFSVV76DFtnBJAwaiV7FdmKcRsTb9zVVW4dxHpJr72
 SR7SHRGS/JkoYETxX1gDHTk2CtxwobVypeOQ3zuu1W1HsiPBbdqw5Gw0km4S4j8Ki9
 vLrK/Gdb9tjjDZLsCVBdQ6DClIMskyIi/uKoHmVvC/CxcKhgYVdCP8uxixsZ/WpAa9
 VUxpmIj++1ZZR7RM2Kqjeb3J4FzAS1Y6Sm46IA6gVuFWvcgSnoaZnmXgLwMlJBPHHw
 7BXzKuNaAS9mQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=provomint.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=provomint.com header.i=@provomint.com
 header.a=rsa-sha256 header.s=mail header.b=fwPGxyw4
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

As a wholesaler of mobile phones and GSM accessories, we supply the latest smartphones from top manufacturers.

Our offer includes the newest models of smartphones from reputable brands such as Motorola, Google, Honor, OnePlus, Oppo, POCO, Samsung, and Xiaomi. By eliminating intermediaries in the distribution process, we can ensure competitive prices, allowing you to achieve higher margins.

All phones are available immediately for immediate shipping. Fast delivery ensures that your customers can enjoy their new devices within just 48 hours of placing an order.

If you are interested in cooperation or have any questions, please reply to this email address.


Best regards
Phil Westbrook
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
