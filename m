Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F131C5B96B9
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Sep 2022 10:56:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 822B183438;
	Thu, 15 Sep 2022 08:56:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 822B183438
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4KuzWu1Zmt-t; Thu, 15 Sep 2022 08:56:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 35A9783440;
	Thu, 15 Sep 2022 08:56:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 35A9783440
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B733F1BF475
 for <devel@linuxdriverproject.org>; Thu, 15 Sep 2022 08:56:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9E80E401C9
 for <devel@linuxdriverproject.org>; Thu, 15 Sep 2022 08:56:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E80E401C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NQWohnnRUtMg for <devel@linuxdriverproject.org>;
 Thu, 15 Sep 2022 08:56:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E660D401C4
Received: from puremedia.kr (unknown [112.217.191.162])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E660D401C4
 for <devel@linuxdriverproject.org>; Thu, 15 Sep 2022 08:56:53 +0000 (UTC)
Received: from [212.193.29.43] (unknown [212.193.29.43])
 by puremedia.kr (Postfix) with ESMTPSA id 2E8A2298A088;
 Thu, 15 Sep 2022 13:32:48 +0900 (KST)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Final Notice +
To: Recipients <help@puremedia.kr>
From: "info" <help@puremedia.kr>
Date: Wed, 14 Sep 2022 21:32:47 -0700
Message-Id: <20220915085654.9E80E401C9@smtp4.osuosl.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=puremedia.kr; s=default; t=1663216370;
 bh=2Rv2JnaWz+Rheki0Nd0sIyI2MTd7VYd8+0Ah19uULBA=;
 h=Subject:To:From:Date:Reply-To:From;
 b=Cmaw1v7t0/A9pwQ/DiA76fwEbp9R+yv8F5TI6C75EutsxwDdD7geTb2IXWd7E32rK
 2ZKj+iwfn8ulduprUpgwbF9V5oAxpYpc3cHr6me6lcYdCgUM8bzzUoddUhwdGuGAZ6
 7hlzxyHWl8QjEg14BMTZGfUj/nSJ17zVmd+mXWjwLHwWK7ouv8D+8R74NMi4g7fChJ
 S03i2ZuuP8yWXo0HKsLKIBFC2SRAUKTuM1eDSh7tBjT4r5pvCeuX7gzVoxt5uwO9BY
 8LfRwp7w9m8IkuQyRKCzPlDUzSHE8jBfTnGNyb1IpZrdAmtltK5J+T+kEO0WqsU9RJ
 z/Vbq+oU2uINQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=puremedia.kr header.i=@puremedia.kr
 header.a=rsa-sha256 header.s=default header.b=Cmaw1v7t
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
Reply-To: simpson1011@zohomail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

We are reaching you once again as regards the estate of Late George, you were made one of the beneficiaries of his estate. Do get back to me at your earliest convenience. Trustees
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
