Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E954A82A33A
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Jan 2024 22:25:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8F92F43765;
	Wed, 10 Jan 2024 21:25:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8F92F43765
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yv1Oc3lhmPRY; Wed, 10 Jan 2024 21:25:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D35243772;
	Wed, 10 Jan 2024 21:25:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D35243772
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E2A321BF2CA
 for <devel@linuxdriverproject.org>; Wed, 10 Jan 2024 21:24:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BB48761543
 for <devel@linuxdriverproject.org>; Wed, 10 Jan 2024 21:24:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BB48761543
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kQnudSqpRpry for <devel@linuxdriverproject.org>;
 Wed, 10 Jan 2024 21:24:51 +0000 (UTC)
Received: from mail.dairikab.go.id (unknown [103.186.192.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A39FF61536
 for <devel@driverdev.osuosl.org>; Wed, 10 Jan 2024 21:24:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A39FF61536
Received: from localhost (localhost [127.0.0.1])
 by mail.dairikab.go.id (Postfix) with ESMTP id 4C02045BD50D;
 Thu, 11 Jan 2024 02:31:20 +0700 (WIB)
Received: from mail.dairikab.go.id ([127.0.0.1])
 by localhost (mail.dairikab.go.id [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id S4Dx7swLioea; Thu, 11 Jan 2024 02:31:19 +0700 (WIB)
Received: from localhost (localhost [127.0.0.1])
 by mail.dairikab.go.id (Postfix) with ESMTP id 079BD45BD515;
 Thu, 11 Jan 2024 02:31:11 +0700 (WIB)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.dairikab.go.id 079BD45BD515
X-Virus-Scanned: amavisd-new at dairikab.go.id
Received: from mail.dairikab.go.id ([127.0.0.1])
 by localhost (mail.dairikab.go.id [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id JUbnKHEbUgQu; Thu, 11 Jan 2024 02:31:10 +0700 (WIB)
Received: from [192.168.152.246] (unknown [197.211.58.104])
 by mail.dairikab.go.id (Postfix) with ESMTPSA id 7D5E445BD521;
 Thu, 11 Jan 2024 02:30:34 +0700 (WIB)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Representative Needed
To: Recipients <info@dairikab.go.id>
From: Mrs Elizabeth Moore <info@dairikab.go.id>
Date: Wed, 10 Jan 2024 20:30:18 +0100
Message-Id: <20240110193034.7D5E445BD521@mail.dairikab.go.id>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dairikab.go.id; 
 s=7AEC4404-F04A-11EB-AB9E-BF45B53556D9; t=1704915071;
 bh=9zg8m0QNhmSXRFRZisoKUeCC2wHANxPJgp72vVGEc5U=;
 h=MIME-Version:To:From:Date:Message-Id;
 b=Dz0qAfjzEUefVvPvQjjgPlkDx5rF0v184oWI2NJsOKd0qR1TAHVVPfottgQBcMJJK
 KZ5YL6vopDlmxufGgXDizgPK5g56XJDUyNFtEWFUEKJI0tHJ54HBjJElqJod4qNbIq
 CAIMJi0iVPZ+U3qEQCt4vdNBCH64rUiDzVFNurDMG/1OpffoY2jcWNqIAlHGOxDZLh
 7oYMXmzM9YUyEgZ8EmGZXr9UkTASKdMBgy3XuUthezJXVEhsYIuOiN5cgmhLTixNM3
 xqQ+xdug7Fguz/wHO05vqJ9U9crJT0ab9i7Yv8aPJEaHafV9x9EhBQo1etKBVSSW7H
 zp4eMPFbO3uTg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=fail reason="signature verification failed" (2048-bit key)
 header.d=dairikab.go.id header.i=@dairikab.go.id header.a=rsa-sha256
 header.s=7AEC4404-F04A-11EB-AB9E-BF45B53556D9 header.b=Dz0qAfjz
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
Reply-To: rep76611@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My name is  Mrs Elizabeth Moore we need a Company Representative in your city location, you can work online or at home and get good payment, contact us if interested on this Email: rep76611@gmail.com


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
