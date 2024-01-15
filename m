Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id F21E482E677
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jan 2024 02:17:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB0FD61410;
	Tue, 16 Jan 2024 01:17:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB0FD61410
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZTyiRiG4OgWo; Tue, 16 Jan 2024 01:17:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C9BF6140F;
	Tue, 16 Jan 2024 01:17:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C9BF6140F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 038C01BF2A4
 for <devel@linuxdriverproject.org>; Tue, 16 Jan 2024 01:17:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DBAB741748
 for <devel@linuxdriverproject.org>; Tue, 16 Jan 2024 01:17:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DBAB741748
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a3RTmhWNwMym for <devel@linuxdriverproject.org>;
 Tue, 16 Jan 2024 01:17:05 +0000 (UTC)
Received: from kernelhost.info (kernelhost.info [91.218.67.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E67C5404A0
 for <devel@linuxdriverproject.org>; Tue, 16 Jan 2024 01:17:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E67C5404A0
Received: from proservice.com
 (dynamic-046-114-197-051.46.114.pool.telefonica.de [46.114.197.51])
 by kernelhost.info (Postfix) with ESMTPA id 06B213A640D
 for <devel@linuxdriverproject.org>; Tue, 16 Jan 2024 00:58:36 +0100 (CET)
Received-SPF: pass (kernelhost.info: connection is authenticated)
From: dept1@proservice.com
To: devel@linuxdriverproject.org
Subject: Hello Good Friend
Date: 16 Jan 2024 00:58:37 +0100
Message-ID: <20240116005835.14C5251B44E8AD54@proservice.com>
MIME-Version: 1.0
X-Antivirus: AVG (VPS 240115-6, 1/15/2024), Outbound message
X-Antivirus-Status: Clean
X-PPP-Message-ID: <170536311833.15493.14544006867310530596@kernelhost.info>
X-PPP-Vhost: proservice.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=proservice.com; s=default; t=1705363131;
 bh=u53ObPI4G8xI27f+r/r70dk96PSvuk/VG2KS59IMtl0=; h=From:To:Subject;
 b=VYgmyQvpeLen42mHAhcxh+9YENoHfBhL17axKG55fzIXW+S5ldf/qG7rSwgpQDzfI
 56sphm/36WXJqQUF7dT86y9jBSKQDp6W/Yctr7K77D7vQy4EeAhfEYpXTSHeK/Ztow
 6v7Xr9fVPzpmVQRq5NleS0RKYWyGlYuMtWDxAWlbkjUH7SqiSQsiL5LgdlK/CWIN9h
 yXSQ1zoivN+GrCbe8xv+/QAVfZ9/tL6eU63L7xhi4AvsaRopiBFSIOprZJM7VFdAWR
 EFtKPiP/wX3mCQeGsMwWYdKfllM7UKfEFgYbgPJB+GhsUOAakMBDHOUznlFGaawMF2
 XGlE0gG1OpuZw==
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
