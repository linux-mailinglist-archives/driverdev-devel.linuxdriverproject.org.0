Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E78781E02
	for <lists+driverdev-devel@lfdr.de>; Sun, 20 Aug 2023 15:55:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7BEF04167F;
	Sun, 20 Aug 2023 13:55:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BEF04167F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FlzkNjAc3p1Y; Sun, 20 Aug 2023 13:55:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2728C41684;
	Sun, 20 Aug 2023 13:55:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2728C41684
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 099851BF46D
 for <devel@linuxdriverproject.org>; Sun, 20 Aug 2023 13:55:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D08B660B90
 for <devel@linuxdriverproject.org>; Sun, 20 Aug 2023 13:55:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D08B660B90
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i0UpLc2E3rMA for <devel@linuxdriverproject.org>;
 Sun, 20 Aug 2023 13:55:29 +0000 (UTC)
X-Greylist: delayed 11650 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 20 Aug 2023 13:55:29 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74A9E607EC
Received: from sproxy1.tnck-groups.com (unknown [62.76.142.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 74A9E607EC
 for <devel@linuxdriverproject.org>; Sun, 20 Aug 2023 13:55:29 +0000 (UTC)
Received: from User (unknown [45.41.205.55])
 by sproxy1.tnck-groups.com (Postfix) with ESMTPA id B10D870BD5B;
 Sun, 20 Aug 2023 11:28:54 +0300 (MSK)
Received-SPF: pass (sproxy1.tnck-groups.com: connection is authenticated)
From: "Frank Jody Dawson"<roinx@tnck-groups.com>
Subject: Loan/Investment offer..
Date: Sun, 20 Aug 2023 08:29:02 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-Id: <20230820135530.D08B660B90@smtp3.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tnck-groups.com; s=default; t=1692520149;
 bh=za2VdjbToxInwBcXYJtG2WHzMPVCkjT7pRsB7/w2IN8=; h=From:Subject;
 b=Y9+hR3ISVsGhn3RLv4Ez0HAQD8kdf3IGrWHNA3s4L+pW/ZSbd9dEqTPxEnU+J10a1
 66RrdpTE5bcllmTjC3an5DPUBkmA+iQha2OeP/MFXa6/uk+fj/Wh7eDmp7WBjXD44K
 X3xW0seLRlgQVYTjFQ1Xk9sXHDXgSinJmee/8rjk=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=tnck-groups.com header.i=@tnck-groups.com
 header.a=rsa-sha256 header.s=default header.b=Y9+hR3IS
X-Mailman-Original-Authentication-Results: sproxy1.tnck-groups.com;
 spf=pass (sender IP is 45.41.205.55) smtp.mailfrom=roinx@tnck-groups.com
 smtp.helo=User
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
Reply-To: frankjody21@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


Hello.
I am Frank Jody Dawson, I have investors and they are seeking to invest in any lucrative venture worldwide, like aviation, real estate, agriculture, industrial, medical equipment and renewable energy. My investors are mainly from the Arabian countries who are widely in real estate and oil and gas, but now they want to expand their businesses across the globe in any lucrative business.
Your profile caught my attention so I decided to message and see if we
can work together?
Thank you,
Frank
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
