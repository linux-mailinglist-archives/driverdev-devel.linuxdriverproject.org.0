Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A747C82E85C
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jan 2024 04:57:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A8349403D6;
	Tue, 16 Jan 2024 03:57:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8349403D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yLjokvg3ES4N; Tue, 16 Jan 2024 03:57:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3CBAF400D6;
	Tue, 16 Jan 2024 03:57:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CBAF400D6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5D3411BF39D
 for <devel@linuxdriverproject.org>; Tue, 16 Jan 2024 03:57:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2D841403D6
 for <devel@linuxdriverproject.org>; Tue, 16 Jan 2024 03:57:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D841403D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IcQqpdx_QeYm for <devel@linuxdriverproject.org>;
 Tue, 16 Jan 2024 03:57:20 +0000 (UTC)
Received: from kernelhost.info (kernelhost.info [91.218.67.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 06851400D6
 for <devel@driverdev.osuosl.org>; Tue, 16 Jan 2024 03:57:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06851400D6
Received: from proservice.com
 (dynamic-046-114-197-051.46.114.pool.telefonica.de [46.114.197.51])
 by kernelhost.info (Postfix) with ESMTPA id E75F23A6806
 for <devel@driverdev.osuosl.org>; Tue, 16 Jan 2024 00:59:54 +0100 (CET)
Received-SPF: pass (kernelhost.info: connection is authenticated)
From: dept1@proservice.com
To: devel@driverdev.osuosl.org
Subject: Hello Good Friend
Date: 16 Jan 2024 00:59:55 +0100
Message-ID: <20240116005955.7B616369E1E44AC8@proservice.com>
MIME-Version: 1.0
X-Antivirus: AVG (VPS 240115-6, 1/15/2024), Outbound message
X-Antivirus-Status: Clean
X-PPP-Message-ID: <170536319537.25813.9583522805894043316@kernelhost.info>
X-PPP-Vhost: proservice.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=proservice.com; s=default; t=1705363195;
 bh=u53ObPI4G8xI27f+r/r70dk96PSvuk/VG2KS59IMtl0=; h=From:To:Subject;
 b=bOXn6BsGDzTaYxkXzMKALc5UkuGvL/pm+J+ixDHM7g5+5vb+KdySxmt8ofIPxlT3p
 lreqZGIBOS01hqCOK0F6PdZmHQBZTj2xZJZgC5HJXHRK7M34vnT78EN+sRCf43Vz+Z
 D7QMbo3FqNrOQjKvZKFzbqw+TIj0L+IgTOFqpNhIboEStcSt5vOsCDWKQBiEGFu4jN
 4wKPRi1JL2rcAfj/oAwJLTyJl8ajVARCFDL4sJk3WIfVBv4mkDRhIzrzvlUGZGJR1G
 LGbPfkHsZqCfqzf3WjtTWYhSMkFKGFLAgtuEbB0wU4TVqDmRZZIjXJpFIEeAn71LRS
 rzeFpZgPJibKA==
X-Mailman-Original-Authentication-Results: kernelhost.info;
 spf=pass (sender IP is 46.114.197.51) smtp.mailfrom=dept1@proservice.com
 smtp.helo=proservice.com
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
Reply-To: raymond.mcniel9@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dearly Friend,

Ref: Introduction / Curious to know whether you'll be interested 
to help me?

Good day to you,

How are you doing today? I hope everything is well with you.

Well, i am contacting you based on an important issues that i 
will like us to discuss.

Please, do get back to me first to confirm that this your E-mail 
address is still valid before giving you any further details. 

Thanks for your time and welcome a positive response through My 
private email:  raymond.mcneill@aol.com


Thanks in anticipation.
Mr. Raymond Mcniel

-- 
This email has been checked for viruses by AVG antivirus software.
www.avg.com
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
