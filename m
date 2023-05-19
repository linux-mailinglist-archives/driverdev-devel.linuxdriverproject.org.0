Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BC6708D65
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 May 2023 03:36:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D46B24298A;
	Fri, 19 May 2023 01:36:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D46B24298A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AJQKN7e26XRH; Fri, 19 May 2023 01:36:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7142F4298C;
	Fri, 19 May 2023 01:36:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7142F4298C
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 034461BF4E7
 for <devel@linuxdriverproject.org>; Fri, 19 May 2023 01:36:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA4C540236
 for <devel@linuxdriverproject.org>; Fri, 19 May 2023 01:36:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DA4C540236
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qQccfK74b4Kz for <devel@linuxdriverproject.org>;
 Fri, 19 May 2023 01:36:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3A3540223
Received: from mail.httek.vn (mail.httek.vn [123.30.107.92])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D3A3540223
 for <devel@driverdev.osuosl.org>; Fri, 19 May 2023 01:36:40 +0000 (UTC)
Received: from User (unknown [185.225.74.224])
 (Authenticated sender: bantin@khcndongnai.gov.vn)
 by mail.httek.vn (Postfix) with ESMTPA id 6E44F2EDB75;
 Fri, 19 May 2023 08:36:19 +0700 (+07)
From: "Angel Melissa"<bantin@khcndongnai.gov.vn>
Subject: Hello,
Date: Thu, 18 May 2023 18:36:36 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
X-Spam: Yes
Message-Id: <20230519013644.DA4C540236@smtp2.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=khcndongnai.gov.vn; 
 s=default; t=1684460196;
 h=from:from:reply-to:reply-to:subject:subject:date:date:to:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=D9s3G4zmmBAkroMf0KHyfzWiZdysE0LzYR+MJbdr+Jw=;
 b=APFQwTtqv8wV0Iij9Xy48iCYr7dDpSDR9BfSp6XZjcHwxQxIMvqJIU95IF1qnnCtVprSss
 g8NcASj6jf3dhiarVHyIwdDJwPIPLXO1+tE++A3f8PX/yCUdQPlLjqd4KGHbxJXT8vhOty
 rxEzoryhS22vjOfIaKxYHpFv+6naX6Ce6dmMIbMPvpPrJ6mg8f0cV6MLg6stsQpKmvx8gE
 rCXIzYNcwzWltA3Opd2df8yLfkN4UlqgjN4iLFZXEfG2TNI5DQp4A6wt610pFqAgCSterc
 0x9UJNOgpSzqzyorfilDn6HfgJaCDCxYdT1Pb2dpKiHfPYEQUoeHxMY0wPZpuQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=khcndongnai.gov.vn
 header.i=@khcndongnai.gov.vn header.a=rsa-sha256 header.s=default
 header.b=APFQwTtq
X-Mailman-Original-Authentication-Results: mail.httek.vn;
 auth=pass smtp.auth=bantin@khcndongnai.gov.vn
 smtp.mailfrom=bantin@khcndongnai.gov.vn
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
Reply-To: contact@unitednationteams.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In consideration of the legislative/legal resolution reached by the World Governing Bodies: The International Monetary Fund, United Nations Organization, World Bank Group, United States Government, British Government and the European Union Commission Committee on Financial and Allied Matters have good news for you contact the email below for more full details,

Email: contact@unitednationteams.org
Email: changeissure@usa.com
contact person: Angel Melissa.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
